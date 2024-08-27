struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(25013i, -25079i, 36306i, 1i);

var<private> global1: array<Struct_2, 1>;

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec4<f32>(-467f, -612f, 783f, 465f), Struct_2(12586u, Struct_1(32316u, -63284i), vec4<bool>(false, true, false, false)), 41753i, Struct_1(123957u, 62609i), 4294967295u), Struct_3(vec4<f32>(811f, -414f, 1287f, 2050f), Struct_2(1u, Struct_1(4294967295u, -1i), vec4<bool>(true, true, true, false)), -23710i, Struct_1(1u, 2147483647i), 4294967295u), Struct_3(vec4<f32>(572f, 199f, -1000f, 986f), Struct_2(4294967295u, Struct_1(1u, 2147483647i), vec4<bool>(true, false, true, false)), -31458i, Struct_1(0u, 11012i), 23053u), Struct_3(vec4<f32>(2312f, 536f, -1929f, -269f), Struct_2(83764u, Struct_1(4294967295u, -1i), vec4<bool>(false, true, true, true)), 584i, Struct_1(1u, 0i), 0u), Struct_3(vec4<f32>(1000f, -1000f, -723f, 277f), Struct_2(28175u, Struct_1(1u, 2147483647i), vec4<bool>(true, true, false, false)), i32(-2147483648), Struct_1(18589u, i32(-2147483648)), 40883u), Struct_3(vec4<f32>(690f, -2058f, 1000f, 2045f), Struct_2(1u, Struct_1(55698u, 1482i), vec4<bool>(true, false, true, true)), -1i, Struct_1(71063u, 11480i), 1501u), Struct_3(vec4<f32>(-716f, 1000f, -1105f, -2056f), Struct_2(20356u, Struct_1(47275u, 0i), vec4<bool>(false, true, true, true)), 0i, Struct_1(1u, -1i), 23872u), Struct_3(vec4<f32>(448f, 488f, 172f, 161f), Struct_2(0u, Struct_1(30595u, 1i), vec4<bool>(false, true, false, true)), 1i, Struct_1(81619u, -1i), 30280u), Struct_3(vec4<f32>(2049f, -435f, -864f, 582f), Struct_2(40479u, Struct_1(1u, 41095i), vec4<bool>(true, true, false, false)), 1i, Struct_1(26517u, -9764i), 110775u), Struct_3(vec4<f32>(1000f, 347f, 1115f, -872f), Struct_2(48164u, Struct_1(4294967295u, 1i), vec4<bool>(true, false, false, false)), -23278i, Struct_1(31466u, 28315i), 26545u), Struct_3(vec4<f32>(935f, -1000f, -204f, -217f), Struct_2(13903u, Struct_1(1u, -3452i), vec4<bool>(false, true, true, false)), -1i, Struct_1(0u, 2147483647i), 33189u), Struct_3(vec4<f32>(676f, -570f, 535f, -173f), Struct_2(24169u, Struct_1(40616u, 1131i), vec4<bool>(true, true, false, true)), 0i, Struct_1(1u, -4477i), 0u), Struct_3(vec4<f32>(-1178f, 1589f, -978f, 1000f), Struct_2(71420u, Struct_1(4845u, -41613i), vec4<bool>(true, false, true, false)), -60868i, Struct_1(0u, i32(-2147483648)), 0u), Struct_3(vec4<f32>(1516f, 1000f, 564f, 1160f), Struct_2(39568u, Struct_1(4294967295u, -20021i), vec4<bool>(true, false, true, false)), -49443i, Struct_1(14676u, -15195i), 6317u), Struct_3(vec4<f32>(-1730f, -1000f, -939f, 1035f), Struct_2(0u, Struct_1(4163u, 540i), vec4<bool>(false, true, false, true)), -8809i, Struct_1(74828u, -1i), 82359u), Struct_3(vec4<f32>(194f, 159f, -1104f, -513f), Struct_2(6297u, Struct_1(0u, 23630i), vec4<bool>(false, true, true, true)), -9049i, Struct_1(18547u, -9266i), 1u), Struct_3(vec4<f32>(-654f, -1229f, -379f, -587f), Struct_2(13671u, Struct_1(0u, 53113i), vec4<bool>(true, false, true, true)), 2147483647i, Struct_1(1u, 649i), 4771u), Struct_3(vec4<f32>(592f, -777f, 366f, 313f), Struct_2(53858u, Struct_1(1u, -38931i), vec4<bool>(false, false, false, true)), i32(-2147483648), Struct_1(40353u, 20195i), 4294967295u), Struct_3(vec4<f32>(569f, -280f, -509f, 166f), Struct_2(71025u, Struct_1(4294967295u, -1i), vec4<bool>(false, false, false, false)), -40027i, Struct_1(10868u, i32(-2147483648)), 0u), Struct_3(vec4<f32>(-1265f, 439f, 811f, 696f), Struct_2(106484u, Struct_1(1u, -5016i), vec4<bool>(true, true, true, false)), 2147483647i, Struct_1(13025u, 1i), 1u), Struct_3(vec4<f32>(920f, -1428f, 540f, 274f), Struct_2(79051u, Struct_1(4562u, 1i), vec4<bool>(false, false, false, true)), 5607i, Struct_1(70384u, 3275i), 4294967295u), Struct_3(vec4<f32>(-1379f, 1721f, 1389f, 1010f), Struct_2(4294967295u, Struct_1(20773u, 778i), vec4<bool>(false, false, true, true)), 2147483647i, Struct_1(4294967295u, 0i), 4294967295u), Struct_3(vec4<f32>(329f, -429f, 109f, -1275f), Struct_2(51553u, Struct_1(958u, 0i), vec4<bool>(true, true, true, false)), -1i, Struct_1(50123u, -51788i), 26904u), Struct_3(vec4<f32>(1417f, -815f, -1173f, -476f), Struct_2(4294967295u, Struct_1(0u, -5548i), vec4<bool>(true, false, false, true)), 38725i, Struct_1(4294967295u, 2147483647i), 14519u), Struct_3(vec4<f32>(664f, -272f, 712f, 183f), Struct_2(94119u, Struct_1(1u, -1i), vec4<bool>(false, false, true, true)), i32(-2147483648), Struct_1(1u, 0i), 4294967295u), Struct_3(vec4<f32>(-975f, 302f, 1572f, -346f), Struct_2(99553u, Struct_1(4294967295u, 1i), vec4<bool>(true, false, false, false)), 2147483647i, Struct_1(1u, -14822i), 29393u), Struct_3(vec4<f32>(651f, 220f, -635f, -1755f), Struct_2(1u, Struct_1(0u, -1i), vec4<bool>(true, true, true, false)), 18197i, Struct_1(4294967295u, i32(-2147483648)), 1u), Struct_3(vec4<f32>(-465f, 1187f, 1219f, 204f), Struct_2(1u, Struct_1(39164u, i32(-2147483648)), vec4<bool>(true, true, false, false)), 12318i, Struct_1(4294967295u, -1i), 97550u), Struct_3(vec4<f32>(2138f, 347f, 1077f, -307f), Struct_2(47167u, Struct_1(1u, 2147483647i), vec4<bool>(false, true, true, false)), 9887i, Struct_1(0u, 33117i), 14356u), Struct_3(vec4<f32>(-2046f, -372f, -358f, -180f), Struct_2(0u, Struct_1(1077u, 21493i), vec4<bool>(false, false, true, true)), 2147483647i, Struct_1(63487u, -3318i), 7741u), Struct_3(vec4<f32>(-585f, -1000f, 1366f, -1483f), Struct_2(1u, Struct_1(58534u, i32(-2147483648)), vec4<bool>(false, false, false, true)), i32(-2147483648), Struct_1(25046u, 2147483647i), 14363u));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(377f, vec2<u32>(~35533u, 4294967295u));
}

