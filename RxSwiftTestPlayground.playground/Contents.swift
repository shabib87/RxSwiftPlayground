import UIKit
import RxSwift
import RxCocoa
import PlaygroundSupport

let disposeBag = DisposeBag()

/* ignoreElement */

//let strikes = PublishSubject<String>()
//strikes.ignoreElements().subscribe { _ in
//    print("subscription called")
//}.disposed(by: disposeBag)
//
//strikes.onNext("A")
//strikes.onNext("B")
//strikes.onNext("C")
//strikes.onCompleted()
//strikes.onNext("D")

/* prints "subscription called" once */

/*elementAt(i)*/

//let strikes = PublishSubject<String>()
//strikes.elementAt(2).subscribe { _ in
//    print("you are out")
//}.disposed(by: disposeBag)
//
//strikes.onNext("x")
//strikes.onNext("x")
//strikes.onNext("x")

/* prints "you are out" twice, last one for onCompleted  */

/* filter */

//Observable.of(1, 2, 3, 4, 5, 6, 7, 8, 9, 10).filter {
//    $0 % 2 == 0
//}.subscribe(onNext: {
//    print($0)
//    }).disposed(by: disposeBag)

/* prints "2 4 6 8 10" */

/* skip */

//Observable.of("A", "B", "C", "D", "E", "F").skip(4).subscribe(onNext: {
//    print($0)
//    }).disposed(by: disposeBag)
/* prints "E F" */

/* skip while */

//Observable.of(2, 2, 4, 3, 8, 5, 6, 10).skipWhile{ $0 % 2 == 0 }.subscribe(onNext: {
//print($0)
//}).disposed(by: disposeBag)

/* prints "3 8 5 6 10" */

/* skip unti */

//let subject = PublishSubject<String>()
//let trigger = PublishSubject<String>()
//
//subject.skipUntil(trigger).subscribe(onNext: {
//    print($0)
//    }).disposed(by: disposeBag)
//
//subject.onNext("A")
//subject.onNext("B")
//subject.onNext("C")
//
//trigger.onNext("x")
//
//subject.onNext("D")

/* prints "D" */

/* take */

//Observable.of(1, 2, 3, 4, 5, 6).take(2).subscribe(onNext: { print($0) }).disposed(by: disposeBag)

/* prints "1 2" */

/* take while */

//Observable.of(2, 4, 3, 6, 7, 8, 10).takeWhile { return $0 % 2 == 0 }.subscribe(onNext: { print($0) }).disposed(by: disposeBag)
/* prints "2 4" */

/* take until */

//let subject = PublishSubject<String>()
//let trigger = PublishSubject<String>()
//
//subject.takeUntil(trigger).subscribe(onNext: {
//    print($0)
//    }).disposed(by: disposeBag)
//
//subject.onNext("1")
//subject.onNext("2")
//subject.onNext("3")
//
//trigger.onNext("x")
//
//subject.onNext("4")

/* prints "1 2 3" */

/* toArray */

//Observable.of(1, 2, 3, 4, 5).toArray().asObservable().subscribe(onNext: {
//    print($0)
//    }).disposed(by: disposeBag)

/* prints "[1, 2, 3, 4, 5]" */

/* map */

//Observable.of(1, 2, 3, 4, 5).map { $0 * 2 }.subscribe(onNext: { print($0) }).disposed(by: disposeBag)

/* prints "2 4 6 8 10" */

/* flat map */

//struct Student {
//    var score: BehaviorRelay<Int>
//}
//
//let john = Student(score: BehaviorRelay(value: 75))
//let mary = Student(score: BehaviorRelay(value: 85))
//
//let student = PublishSubject<Student>()

//student.asObservable().flatMap { $0.score.asObservable() }.subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)
//student.onNext(john)
//student.onNext(mary)
//john.score.accept(90)
//mary.score.accept(80)
//john.score.accept(33)

/* prints "75 85 90 80 33" */

/* flatMapLatest */

//student.asObservable().flatMapLatest { $0.score.asObservable() }.subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)
//
//student.onNext(john)
//john.score.accept(90)
//
//student.onNext(mary)
//mary.score.accept(80)
//john.score.accept(33)

// prints only for latest subscriber
/* prints "75 90 85 80" */
