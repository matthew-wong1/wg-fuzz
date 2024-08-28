struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(Struct_1(1u, 26116u), 0i, vec4<i32>(i32(-2147483648), 11319i, i32(-2147483648), -1i), Struct_4(Struct_3(Struct_1(0u, 41248u), Struct_2(Struct_1(20472u, 37327u), true)), Struct_3(Struct_1(4294967295u, 8892u), Struct_2(Struct_1(17401u, 4294967295u), false)), Struct_1(1u, 4294967295u), vec3<u32>(23192u, 4294967295u, 25241u))), Struct_5(Struct_1(0u, 65210u), i32(-2147483648), vec4<i32>(2147483647i, 36804i, -1i, -51996i), Struct_4(Struct_3(Struct_1(49507u, 28497u), Struct_2(Struct_1(34900u, 4294967295u), true)), Struct_3(Struct_1(27564u, 4294967295u), Struct_2(Struct_1(4294967295u, 1u), false)), Struct_1(4294967295u, 4294967295u), vec3<u32>(7872u, 74507u, 1u))), Struct_5(Struct_1(4294967295u, 0u), -27683i, vec4<i32>(-9134i, i32(-2147483648), -15964i, 0i), Struct_4(Struct_3(Struct_1(1u, 1u), Struct_2(Struct_1(31750u, 3796u), false)), Struct_3(Struct_1(4001u, 8386u), Struct_2(Struct_1(0u, 1u), true)), Struct_1(4717u, 0u), vec3<u32>(14612u, 1u, 0u))), Struct_5(Struct_1(4575u, 26763u), 0i, vec4<i32>(29412i, -52776i, i32(-2147483648), 1i), Struct_4(Struct_3(Struct_1(64345u, 9597u), Struct_2(Struct_1(1u, 4294967295u), false)), Struct_3(Struct_1(77704u, 29633u), Struct_2(Struct_1(1u, 4294967295u), false)), Struct_1(0u, 442u), vec3<u32>(113032u, 72553u, 0u))), Struct_5(Struct_1(0u, 4294967295u), -5435i, vec4<i32>(9342i, 1i, -1i, 0i), Struct_4(Struct_3(Struct_1(0u, 13102u), Struct_2(Struct_1(4294967295u, 4294967295u), false)), Struct_3(Struct_1(66766u, 1u), Struct_2(Struct_1(25692u, 4294967295u), false)), Struct_1(4294967295u, 7264u), vec3<u32>(1u, 40943u, 1u))), Struct_5(Struct_1(1u, 72732u), 2147483647i, vec4<i32>(i32(-2147483648), 2147483647i, 16810i, 26083i), Struct_4(Struct_3(Struct_1(4294967295u, 1u), Struct_2(Struct_1(0u, 1u), true)), Struct_3(Struct_1(0u, 4294967295u), Struct_2(Struct_1(41908u, 4294967295u), false)), Struct_1(1u, 0u), vec3<u32>(1u, 25621u, 0u))), Struct_5(Struct_1(10299u, 0u), i32(-2147483648), vec4<i32>(2147483647i, 2147483647i, 1i, i32(-2147483648)), Struct_4(Struct_3(Struct_1(22825u, 12669u), Struct_2(Struct_1(0u, 0u), false)), Struct_3(Struct_1(13304u, 0u), Struct_2(Struct_1(66995u, 0u), true)), Struct_1(80155u, 12301u), vec3<u32>(41379u, 1u, 1u))), Struct_5(Struct_1(4294967295u, 4294967295u), 47885i, vec4<i32>(-6850i, -37410i, -9754i, 0i), Struct_4(Struct_3(Struct_1(1u, 4294967295u), Struct_2(Struct_1(31642u, 45140u), false)), Struct_3(Struct_1(55117u, 1u), Struct_2(Struct_1(1u, 0u), true)), Struct_1(1u, 38348u), vec3<u32>(24681u, 78891u, 1u))), Struct_5(Struct_1(2441u, 1u), -21964i, vec4<i32>(7541i, i32(-2147483648), 0i, 38866i), Struct_4(Struct_3(Struct_1(7275u, 886u), Struct_2(Struct_1(0u, 38117u), true)), Struct_3(Struct_1(48424u, 75591u), Struct_2(Struct_1(10047u, 1u), true)), Struct_1(1u, 46843u), vec3<u32>(0u, 45091u, 0u))), Struct_5(Struct_1(4294967295u, 0u), 28316i, vec4<i32>(8083i, -1i, 50935i, -27074i), Struct_4(Struct_3(Struct_1(1175u, 38335u), Struct_2(Struct_1(0u, 4294967295u), false)), Struct_3(Struct_1(9490u, 18557u), Struct_2(Struct_1(1u, 17029u), false)), Struct_1(28056u, 3135u), vec3<u32>(39746u, 1u, 42156u))), Struct_5(Struct_1(33887u, 13834u), -1i, vec4<i32>(55466i, -30932i, 2147483647i, -13974i), Struct_4(Struct_3(Struct_1(4294967295u, 47953u), Struct_2(Struct_1(0u, 4294967295u), true)), Struct_3(Struct_1(32343u, 41934u), Struct_2(Struct_1(0u, 4294967295u), false)), Struct_1(0u, 56216u), vec3<u32>(0u, 1u, 6740u))), Struct_5(Struct_1(0u, 4294967295u), -1i, vec4<i32>(6803i, 2147483647i, 2147483647i, 1i), Struct_4(Struct_3(Struct_1(0u, 1u), Struct_2(Struct_1(0u, 4935u), false)), Struct_3(Struct_1(1u, 1u), Struct_2(Struct_1(0u, 4294967295u), false)), Struct_1(0u, 21205u), vec3<u32>(1u, 45857u, 11662u))), Struct_5(Struct_1(0u, 74632u), 71084i, vec4<i32>(-13400i, 0i, 5051i, -60122i), Struct_4(Struct_3(Struct_1(4294967295u, 18697u), Struct_2(Struct_1(4294967295u, 4294967295u), false)), Struct_3(Struct_1(23280u, 45056u), Struct_2(Struct_1(1u, 97188u), false)), Struct_1(1u, 7523u), vec3<u32>(1u, 14023u, 4175u))), Struct_5(Struct_1(28790u, 1u), -1i, vec4<i32>(i32(-2147483648), 55765i, i32(-2147483648), 25797i), Struct_4(Struct_3(Struct_1(1u, 0u), Struct_2(Struct_1(1u, 74311u), false)), Struct_3(Struct_1(7683u, 0u), Struct_2(Struct_1(57634u, 1u), true)), Struct_1(15402u, 4294967295u), vec3<u32>(15401u, 0u, 57417u))), Struct_5(Struct_1(0u, 11741u), 49450i, vec4<i32>(9409i, 38359i, -13254i, 22286i), Struct_4(Struct_3(Struct_1(30072u, 117555u), Struct_2(Struct_1(44760u, 78215u), true)), Struct_3(Struct_1(31096u, 59633u), Struct_2(Struct_1(4294967295u, 0u), false)), Struct_1(3035u, 84337u), vec3<u32>(1u, 35167u, 39590u))), Struct_5(Struct_1(65370u, 25844u), 0i, vec4<i32>(23234i, 23237i, -11879i, -34040i), Struct_4(Struct_3(Struct_1(1u, 4294967295u), Struct_2(Struct_1(51192u, 1u), false)), Struct_3(Struct_1(4294967295u, 47901u), Struct_2(Struct_1(78610u, 43672u), false)), Struct_1(0u, 0u), vec3<u32>(1u, 52680u, 80614u))), Struct_5(Struct_1(0u, 4294967295u), -28566i, vec4<i32>(-1i, 1i, 1i, 0i), Struct_4(Struct_3(Struct_1(43691u, 68287u), Struct_2(Struct_1(14477u, 5941u), false)), Struct_3(Struct_1(44533u, 0u), Struct_2(Struct_1(4294967295u, 1u), true)), Struct_1(0u, 0u), vec3<u32>(4294967295u, 0u, 12604u))), Struct_5(Struct_1(1u, 1u), -70761i, vec4<i32>(-3893i, -8345i, i32(-2147483648), i32(-2147483648)), Struct_4(Struct_3(Struct_1(71003u, 65108u), Struct_2(Struct_1(117637u, 62384u), true)), Struct_3(Struct_1(1u, 41360u), Struct_2(Struct_1(1125u, 4294967295u), true)), Struct_1(27425u, 4294967295u), vec3<u32>(0u, 55790u, 0u))), Struct_5(Struct_1(19903u, 49919u), i32(-2147483648), vec4<i32>(2147483647i, 28100i, -39296i, -1i), Struct_4(Struct_3(Struct_1(31051u, 9468u), Struct_2(Struct_1(30103u, 34320u), false)), Struct_3(Struct_1(4294967295u, 8306u), Struct_2(Struct_1(39208u, 63202u), true)), Struct_1(0u, 33846u), vec3<u32>(65270u, 4294967295u, 68730u))), Struct_5(Struct_1(42040u, 18851u), 31528i, vec4<i32>(i32(-2147483648), -20854i, 0i, 48288i), Struct_4(Struct_3(Struct_1(0u, 61839u), Struct_2(Struct_1(0u, 12611u), false)), Struct_3(Struct_1(0u, 4294967295u), Struct_2(Struct_1(14089u, 4864u), true)), Struct_1(69463u, 4294967295u), vec3<u32>(2069u, 9010u, 65954u))), Struct_5(Struct_1(62341u, 118214u), 8950i, vec4<i32>(i32(-2147483648), -55451i, 17277i, -17987i), Struct_4(Struct_3(Struct_1(0u, 0u), Struct_2(Struct_1(0u, 1u), true)), Struct_3(Struct_1(1u, 27757u), Struct_2(Struct_1(68233u, 20492u), false)), Struct_1(0u, 93918u), vec3<u32>(56818u, 1u, 29309u))), Struct_5(Struct_1(42184u, 26169u), 1i, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 0i), Struct_4(Struct_3(Struct_1(4294967295u, 9678u), Struct_2(Struct_1(25226u, 53348u), true)), Struct_3(Struct_1(4294967295u, 1u), Struct_2(Struct_1(4294967295u, 1u), true)), Struct_1(4294967295u, 1u), vec3<u32>(48138u, 0u, 39997u))), Struct_5(Struct_1(8492u, 4294967295u), 2147483647i, vec4<i32>(i32(-2147483648), -10915i, 61442i, -44397i), Struct_4(Struct_3(Struct_1(4294967295u, 0u), Struct_2(Struct_1(0u, 1u), true)), Struct_3(Struct_1(68528u, 39013u), Struct_2(Struct_1(16222u, 4294967295u), false)), Struct_1(14651u, 4294967295u), vec3<u32>(29634u, 1u, 29429u))), Struct_5(Struct_1(36685u, 0u), 15926i, vec4<i32>(i32(-2147483648), -17561i, 40126i, -47969i), Struct_4(Struct_3(Struct_1(36921u, 19817u), Struct_2(Struct_1(4294967295u, 0u), true)), Struct_3(Struct_1(34502u, 35325u), Struct_2(Struct_1(0u, 66918u), true)), Struct_1(4294967295u, 0u), vec3<u32>(0u, 0u, 7792u))), Struct_5(Struct_1(1u, 1u), 0i, vec4<i32>(-1367i, 29046i, -7325i, i32(-2147483648)), Struct_4(Struct_3(Struct_1(4294967295u, 60131u), Struct_2(Struct_1(4294967295u, 68804u), false)), Struct_3(Struct_1(1u, 1u), Struct_2(Struct_1(1u, 4294967295u), false)), Struct_1(112627u, 49749u), vec3<u32>(4294967295u, 3587u, 83574u))), Struct_5(Struct_1(43036u, 24148u), -654i, vec4<i32>(-1i, 1i, -1i, 1682i), Struct_4(Struct_3(Struct_1(7246u, 118657u), Struct_2(Struct_1(4294967295u, 35861u), true)), Struct_3(Struct_1(56130u, 2074u), Struct_2(Struct_1(34017u, 4294967295u), false)), Struct_1(4294967295u, 28874u), vec3<u32>(0u, 57819u, 6131u))), Struct_5(Struct_1(1u, 4294967295u), 2147483647i, vec4<i32>(82635i, 6813i, 2147483647i, 0i), Struct_4(Struct_3(Struct_1(4294967295u, 4294967295u), Struct_2(Struct_1(4294967295u, 4294967295u), true)), Struct_3(Struct_1(44490u, 10823u), Struct_2(Struct_1(1u, 37530u), true)), Struct_1(4294967295u, 1u), vec3<u32>(1u, 16548u, 17539u))), Struct_5(Struct_1(34446u, 0u), i32(-2147483648), vec4<i32>(-68690i, -57939i, 27988i, 0i), Struct_4(Struct_3(Struct_1(48924u, 8071u), Struct_2(Struct_1(1u, 4294967295u), true)), Struct_3(Struct_1(0u, 1u), Struct_2(Struct_1(767u, 28634u), false)), Struct_1(4294967295u, 10477u), vec3<u32>(10180u, 1u, 64079u))), Struct_5(Struct_1(0u, 34439u), 13966i, vec4<i32>(38670i, -16279i, -1i, -5117i), Struct_4(Struct_3(Struct_1(4294967295u, 71970u), Struct_2(Struct_1(28689u, 4294967295u), false)), Struct_3(Struct_1(1u, 35335u), Struct_2(Struct_1(4294967295u, 1u), false)), Struct_1(1u, 55531u), vec3<u32>(30562u, 1u, 34401u))), Struct_5(Struct_1(20721u, 4294967295u), -1i, vec4<i32>(12459i, 22413i, i32(-2147483648), -3360i), Struct_4(Struct_3(Struct_1(1u, 0u), Struct_2(Struct_1(0u, 0u), true)), Struct_3(Struct_1(24626u, 4294967295u), Struct_2(Struct_1(0u, 4294967295u), false)), Struct_1(44054u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u))), Struct_5(Struct_1(12527u, 1u), -21463i, vec4<i32>(30593i, -24036i, 19389i, -2414i), Struct_4(Struct_3(Struct_1(31978u, 4294967295u), Struct_2(Struct_1(4294967295u, 44325u), true)), Struct_3(Struct_1(32534u, 0u), Struct_2(Struct_1(68735u, 0u), true)), Struct_1(20634u, 29005u), vec3<u32>(38383u, 4294967295u, 1u))));

var<private> global1: u32;

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(Struct_1(0u, 1u), Struct_2(Struct_1(41580u, 20011u), true)), Struct_3(Struct_1(0u, 57163u), Struct_2(Struct_1(37134u, 1u), true)), Struct_1(4294967295u, 49164u), vec3<u32>(21264u, 63u, 0u)), Struct_4(Struct_3(Struct_1(4294967295u, 4294967295u), Struct_2(Struct_1(17008u, 15286u), true)), Struct_3(Struct_1(4294967295u, 63829u), Struct_2(Struct_1(4294967295u, 4294967295u), true)), Struct_1(52460u, 44408u), vec3<u32>(8124u, 0u, 0u)), Struct_4(Struct_3(Struct_1(0u, 1u), Struct_2(Struct_1(30862u, 0u), true)), Struct_3(Struct_1(0u, 64918u), Struct_2(Struct_1(1u, 0u), false)), Struct_1(4294967295u, 4294967295u), vec3<u32>(5224u, 4294967295u, 50929u)), Struct_4(Struct_3(Struct_1(1u, 3957u), Struct_2(Struct_1(14347u, 0u), true)), Struct_3(Struct_1(9123u, 0u), Struct_2(Struct_1(4294967295u, 1u), false)), Struct_1(4294967295u, 1u), vec3<u32>(18483u, 14968u, 32367u)), Struct_4(Struct_3(Struct_1(4294967295u, 4294967295u), Struct_2(Struct_1(4294967295u, 4294967295u), false)), Struct_3(Struct_1(1u, 0u), Struct_2(Struct_1(13772u, 1u), false)), Struct_1(10280u, 16233u), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(Struct_3(Struct_1(28176u, 34561u), Struct_2(Struct_1(0u, 39786u), false)), Struct_3(Struct_1(4294967295u, 68423u), Struct_2(Struct_1(86755u, 29717u), true)), Struct_1(16313u, 1u), vec3<u32>(12358u, 4294967295u, 10719u)), Struct_4(Struct_3(Struct_1(43503u, 0u), Struct_2(Struct_1(0u, 4294967295u), false)), Struct_3(Struct_1(0u, 51135u), Struct_2(Struct_1(77406u, 8711u), true)), Struct_1(4294967295u, 1131u), vec3<u32>(32790u, 1u, 2880u)), Struct_4(Struct_3(Struct_1(5590u, 19615u), Struct_2(Struct_1(44355u, 0u), false)), Struct_3(Struct_1(1u, 50433u), Struct_2(Struct_1(1u, 28954u), false)), Struct_1(74327u, 4294967295u), vec3<u32>(95587u, 47162u, 1u)), Struct_4(Struct_3(Struct_1(0u, 41679u), Struct_2(Struct_1(1u, 12192u), false)), Struct_3(Struct_1(4294967295u, 42354u), Struct_2(Struct_1(1u, 0u), false)), Struct_1(4294967295u, 1u), vec3<u32>(8491u, 12966u, 16111u)), Struct_4(Struct_3(Struct_1(4294967295u, 4294967295u), Struct_2(Struct_1(4294967295u, 40198u), true)), Struct_3(Struct_1(18762u, 4294967295u), Struct_2(Struct_1(45821u, 4294967295u), false)), Struct_1(10663u, 1u), vec3<u32>(15943u, 34352u, 10614u)), Struct_4(Struct_3(Struct_1(22647u, 44401u), Struct_2(Struct_1(16579u, 0u), false)), Struct_3(Struct_1(64046u, 3478u), Struct_2(Struct_1(0u, 4294967295u), true)), Struct_1(15497u, 1u), vec3<u32>(4014u, 1u, 1u)), Struct_4(Struct_3(Struct_1(1u, 36500u), Struct_2(Struct_1(1u, 4294967295u), true)), Struct_3(Struct_1(1u, 42710u), Struct_2(Struct_1(63454u, 0u), false)), Struct_1(64499u, 4294967295u), vec3<u32>(19514u, 88232u, 39037u)), Struct_4(Struct_3(Struct_1(41813u, 711u), Struct_2(Struct_1(14256u, 1u), true)), Struct_3(Struct_1(10063u, 1u), Struct_2(Struct_1(0u, 4294967295u), false)), Struct_1(1u, 31136u), vec3<u32>(22942u, 36028u, 54724u)), Struct_4(Struct_3(Struct_1(0u, 54522u), Struct_2(Struct_1(18371u, 4359u), true)), Struct_3(Struct_1(40556u, 17773u), Struct_2(Struct_1(4294967295u, 19650u), false)), Struct_1(4294967295u, 10389u), vec3<u32>(27033u, 75411u, 1u)), Struct_4(Struct_3(Struct_1(4294967295u, 4294967295u), Struct_2(Struct_1(0u, 1u), false)), Struct_3(Struct_1(70340u, 23216u), Struct_2(Struct_1(35467u, 1115u), false)), Struct_1(0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 98972u)), Struct_4(Struct_3(Struct_1(0u, 1u), Struct_2(Struct_1(77521u, 4294967295u), true)), Struct_3(Struct_1(17296u, 15405u), Struct_2(Struct_1(1u, 0u), true)), Struct_1(5616u, 0u), vec3<u32>(4294967295u, 1u, 0u)), Struct_4(Struct_3(Struct_1(1u, 0u), Struct_2(Struct_1(4294967295u, 0u), true)), Struct_3(Struct_1(30977u, 67065u), Struct_2(Struct_1(29998u, 53946u), true)), Struct_1(6307u, 18920u), vec3<u32>(60112u, 0u, 1u)), Struct_4(Struct_3(Struct_1(0u, 4294967295u), Struct_2(Struct_1(50067u, 63191u), true)), Struct_3(Struct_1(0u, 114135u), Struct_2(Struct_1(105786u, 17170u), false)), Struct_1(2551u, 4294967295u), vec3<u32>(73006u, 4294967295u, 11322u)), Struct_4(Struct_3(Struct_1(0u, 47661u), Struct_2(Struct_1(0u, 22291u), true)), Struct_3(Struct_1(1u, 4294967295u), Struct_2(Struct_1(1u, 1u), false)), Struct_1(4294967295u, 6759u), vec3<u32>(63777u, 0u, 1u)), Struct_4(Struct_3(Struct_1(44652u, 0u), Struct_2(Struct_1(534u, 0u), true)), Struct_3(Struct_1(40827u, 48332u), Struct_2(Struct_1(1u, 4294967295u), true)), Struct_1(26217u, 1u), vec3<u32>(0u, 0u, 1u)), Struct_4(Struct_3(Struct_1(4145u, 0u), Struct_2(Struct_1(0u, 1u), false)), Struct_3(Struct_1(22277u, 1u), Struct_2(Struct_1(1u, 0u), false)), Struct_1(28938u, 106438u), vec3<u32>(22882u, 0u, 1u)), Struct_4(Struct_3(Struct_1(25847u, 4294967295u), Struct_2(Struct_1(1u, 31644u), false)), Struct_3(Struct_1(10457u, 43890u), Struct_2(Struct_1(1u, 49105u), false)), Struct_1(68300u, 1u), vec3<u32>(48564u, 1u, 74642u)), Struct_4(Struct_3(Struct_1(708u, 4294967295u), Struct_2(Struct_1(19612u, 36176u), true)), Struct_3(Struct_1(4294967295u, 7173u), Struct_2(Struct_1(1u, 0u), true)), Struct_1(52819u, 0u), vec3<u32>(4294967295u, 39917u, 16431u)), Struct_4(Struct_3(Struct_1(1u, 0u), Struct_2(Struct_1(4294967295u, 18572u), false)), Struct_3(Struct_1(4294967295u, 1u), Struct_2(Struct_1(37831u, 58809u), true)), Struct_1(4294967295u, 4294967295u), vec3<u32>(4294967295u, 15033u, 0u)), Struct_4(Struct_3(Struct_1(69539u, 5389u), Struct_2(Struct_1(1u, 4294967295u), false)), Struct_3(Struct_1(55997u, 1u), Struct_2(Struct_1(1u, 0u), false)), Struct_1(4294967295u, 19479u), vec3<u32>(1u, 1233u, 8228u)), Struct_4(Struct_3(Struct_1(43240u, 24422u), Struct_2(Struct_1(0u, 22127u), true)), Struct_3(Struct_1(1u, 4294967295u), Struct_2(Struct_1(0u, 14179u), true)), Struct_1(37774u, 0u), vec3<u32>(21006u, 2522u, 76464u)), Struct_4(Struct_3(Struct_1(1u, 54690u), Struct_2(Struct_1(1u, 0u), false)), Struct_3(Struct_1(0u, 39878u), Struct_2(Struct_1(8998u, 22105u), true)), Struct_1(0u, 110406u), vec3<u32>(4294967295u, 1u, 0u)), Struct_4(Struct_3(Struct_1(4294967295u, 4294967295u), Struct_2(Struct_1(61494u, 37025u), true)), Struct_3(Struct_1(45357u, 5806u), Struct_2(Struct_1(18236u, 31751u), false)), Struct_1(4294967295u, 28571u), vec3<u32>(0u, 14611u, 4294967295u)), Struct_4(Struct_3(Struct_1(14364u, 59888u), Struct_2(Struct_1(4294967295u, 2903u), true)), Struct_3(Struct_1(32424u, 1u), Struct_2(Struct_1(46164u, 4294967295u), true)), Struct_1(44083u, 40104u), vec3<u32>(1u, 131u, 0u)), Struct_4(Struct_3(Struct_1(0u, 9212u), Struct_2(Struct_1(54312u, 43834u), true)), Struct_3(Struct_1(1u, 17809u), Struct_2(Struct_1(4294967295u, 0u), false)), Struct_1(4294967295u, 1u), vec3<u32>(1u, 71790u, 29108u)), Struct_4(Struct_3(Struct_1(0u, 1u), Struct_2(Struct_1(16621u, 1u), false)), Struct_3(Struct_1(3559u, 1u), Struct_2(Struct_1(4294967295u, 0u), true)), Struct_1(1u, 45481u), vec3<u32>(4294967295u, 4294967295u, 7558u)), Struct_4(Struct_3(Struct_1(1u, 1u), Struct_2(Struct_1(6809u, 75821u), true)), Struct_3(Struct_1(1u, 1u), Struct_2(Struct_1(42639u, 0u), true)), Struct_1(1u, 31009u), vec3<u32>(11831u, 2911u, 63201u)));

var<private> global3: array<vec4<u32>, 15>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = any(!select(!(!vec2<bool>(arg_0, false)), select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, false), vec2<bool>(false, arg_0), vec2<bool>(true, arg_0)), false), all(vec4<bool>(false, arg_0, arg_0, false))));
    let var_1 = any(select(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, true), u_input.a.x == u_input.a.x), vec2<bool>(false, !var_0), var_0)) & var_0;
    var var_2 = ~1256u;
    global2 = array<Struct_4, 32>();
    var var_3 = ~u_input.a.x != u_input.a.x;
    return 10130u;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_4) -> bool {
    global1 = arg_2.b.b.a.a;
    var var_0 = Struct_4(arg_2.a, arg_2.a, Struct_1(func_3(false), arg_2.a.a.a), firstTrailingBit(_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(27677u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 93609u, 4294967295u)), vec3<u32>(arg_2.b.a.a, ~u_input.a.x, 1u), arg_2.d ^ arg_2.d)));
    let var_1 = var_0.a;
    global0 = array<Struct_5, 31>();
    global0 = array<Struct_5, 31>();
    return arg_2.b.b.b;
}

fn func_1(arg_0: Struct_5, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_1(((_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b, u_input.a.x, 1u), arg_0.d.d) << (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u)) << (31128u % 32u)) << (~arg_0.d.c.b % 32u), (1u & ~(~arg_0.d.a.a.b)) >> (40241u % 32u));
    global3 = array<vec4<u32>, 15>();
    var var_1 = false;
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec3_u32(max(~arg_0.d.d, ~arg_0.d.d), vec3<u32>(~52960u, u_input.a.x, ~19008u))) | arg_0.d.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(452f - 975f))));
    return !select(select(vec3<bool>(true, any(vec2<bool>(arg_0.d.a.b.b, true)), arg_0.a.b >= 0u), select(vec3<bool>(false, false, arg_1.x), select(vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_0.d.a.b.b, false, true), vec3<bool>(false, arg_1.x, false)), select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, true, arg_0.d.b.b.b))), func_2(-1000f, 61940u > var_0.b, arg_0.d)), select(select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_0.d.b.b.b, arg_1.x), arg_0.d.a.b.b), !select(vec3<bool>(true, true, arg_0.d.a.b.b), vec3<bool>(true, false, arg_1.x), arg_1.x), !select(vec3<bool>(false, arg_1.x, arg_0.d.b.b.b), vec3<bool>(false, arg_0.d.a.b.b, true), vec3<bool>(arg_1.x, arg_1.x, arg_0.d.b.b.b))), !any(!vec3<bool>(false, false, arg_0.d.b.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(vec3<bool>(true, all(vec3<bool>(false, false, false)), true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), func_1(Struct_5(Struct_1(u_input.a.x, 4294967295u), 0i, vec4<i32>(-1i, 2147483647i, 0i, 56189i), global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<bool>(false, false))), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~(-(~_wgslsmith_mult_i32(-1i, 0i))));
}

