struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(vec4<i32>(10320i, -5096i, -1i, 17450i), 62625u, 12798u), true, Struct_2(495f, vec3<u32>(0u, 1u, 1u), Struct_1(vec4<i32>(-1i, -1i, 40562i, -43229i), 0u, 47862u), vec4<f32>(1541f, 618f, 1000f, 492f), true), false);

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(1i, i32(-2147483648), 11655i, 1i), vec4<i32>(2147483647i, -18915i, 13239i, -54855i), vec4<i32>(-24027i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-1i, 1i, 0i, 38055i), vec4<i32>(21061i, 2147483647i, i32(-2147483648), 4464i), vec4<i32>(-7417i, 0i, -21288i, 0i), vec4<i32>(-30000i, 1i, 1i, -38604i), vec4<i32>(1i, 14630i, 0i, i32(-2147483648)), vec4<i32>(1i, 0i, -46911i, -41851i), vec4<i32>(i32(-2147483648), -21185i, i32(-2147483648), 0i), vec4<i32>(1i, -14887i, 13169i, -1i), vec4<i32>(12963i, 2147483647i, 44487i, 60464i), vec4<i32>(2147483647i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(87884i, 17209i, 2147483647i, 38862i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 1i), vec4<i32>(0i, 1i, -1i, 0i), vec4<i32>(-3261i, 66992i, -46683i, -7095i), vec4<i32>(2147483647i, -72895i, 0i, 1i), vec4<i32>(-103i, 0i, 27969i, 23553i), vec4<i32>(2147483647i, 1i, -31556i, 1i));

var<private> global2: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec4<f32>(405f, -974f, -250f, 938f), Struct_1(vec4<i32>(54918i, -1i, 38757i, -6406i), 37798u, 4294967295u), Struct_2(-704f, vec3<u32>(89907u, 17207u, 31543u), Struct_1(vec4<i32>(-36i, 1i, 27729i, i32(-2147483648)), 55333u, 125911u), vec4<f32>(617f, 873f, -307f, -986f), false), vec3<f32>(769f, 1000f, 1000f), -445f), Struct_4(vec4<f32>(-784f, 712f, 857f, 1000f), Struct_1(vec4<i32>(2147483647i, 17247i, 1i, -1942i), 28321u, 34103u), Struct_2(927f, vec3<u32>(1u, 85669u, 18954u), Struct_1(vec4<i32>(33945i, 1i, 30097i, 1i), 29967u, 25495u), vec4<f32>(-636f, 2782f, 206f, 1138f), true), vec3<f32>(176f, -1678f, -1145f), 1752f), Struct_4(vec4<f32>(1423f, 145f, -1656f, -1322f), Struct_1(vec4<i32>(16848i, -7573i, 31064i, -38254i), 0u, 1u), Struct_2(-1054f, vec3<u32>(1u, 324u, 4294967295u), Struct_1(vec4<i32>(2147483647i, -8767i, 2147483647i, -1i), 0u, 0u), vec4<f32>(343f, -201f, 393f, -957f), true), vec3<f32>(330f, 1962f, -1638f), -655f), Struct_4(vec4<f32>(1000f, -211f, 1000f, 221f), Struct_1(vec4<i32>(17740i, i32(-2147483648), -20366i, -83809i), 42758u, 0u), Struct_2(-1000f, vec3<u32>(4294967295u, 1u, 1100u), Struct_1(vec4<i32>(0i, 2147483647i, 13444i, 2147483647i), 4135u, 8427u), vec4<f32>(2458f, -399f, 2344f, 769f), true), vec3<f32>(-1088f, 457f, 899f), -1887f), Struct_4(vec4<f32>(769f, 1366f, 791f, 1350f), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 10837i), 4294967295u, 1u), Struct_2(154f, vec3<u32>(15721u, 1u, 4294967295u), Struct_1(vec4<i32>(15340i, -47392i, -12875i, -15360i), 31807u, 4294967295u), vec4<f32>(634f, -1719f, 313f, 206f), false), vec3<f32>(-371f, 1000f, -971f), 691f), Struct_4(vec4<f32>(719f, -597f, 1196f, 1000f), Struct_1(vec4<i32>(-1i, 2147483647i, 11310i, -31215i), 28104u, 59511u), Struct_2(320f, vec3<u32>(3873u, 1u, 1u), Struct_1(vec4<i32>(0i, -3075i, -38044i, 1i), 1u, 0u), vec4<f32>(102f, -583f, -387f, 1405f), true), vec3<f32>(1193f, 259f, -504f), -736f), Struct_4(vec4<f32>(-676f, -818f, -1000f, -302f), Struct_1(vec4<i32>(-1i, -1i, -1i, 0i), 4294967295u, 54255u), Struct_2(-1064f, vec3<u32>(57202u, 0u, 0u), Struct_1(vec4<i32>(32730i, 20070i, 4648i, -30338i), 12919u, 65926u), vec4<f32>(-582f, 884f, -602f, 286f), false), vec3<f32>(1000f, 1265f, 2169f), 193f), Struct_4(vec4<f32>(1163f, -1656f, 1287f, -1232f), Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, -9856i), 17800u, 1u), Struct_2(-1933f, vec3<u32>(47621u, 1u, 1u), Struct_1(vec4<i32>(0i, 12950i, 30310i, -1i), 1u, 1u), vec4<f32>(179f, -815f, 1525f, 833f), false), vec3<f32>(-1943f, 381f, -1000f), 492f), Struct_4(vec4<f32>(-110f, -1158f, -492f, 328f), Struct_1(vec4<i32>(25100i, -5478i, 20997i, 11596i), 4294967295u, 24648u), Struct_2(2929f, vec3<u32>(61738u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), 54328i, i32(-2147483648), -11590i), 0u, 48403u), vec4<f32>(679f, 707f, 203f, -777f), false), vec3<f32>(-336f, -513f, -410f), 1500f), Struct_4(vec4<f32>(-216f, -301f, -326f, -758f), Struct_1(vec4<i32>(-11686i, -1i, -1i, 10455i), 4294967295u, 0u), Struct_2(301f, vec3<u32>(1u, 4294967295u, 104283u), Struct_1(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), 17335u, 70764u), vec4<f32>(671f, 488f, 809f, 450f), true), vec3<f32>(-1207f, -312f, 329f), 2118f), Struct_4(vec4<f32>(-2588f, 134f, -360f, -594f), Struct_1(vec4<i32>(-1i, -15016i, 18704i, 2147483647i), 71849u, 9768u), Struct_2(1114f, vec3<u32>(18107u, 4294967295u, 25406u), Struct_1(vec4<i32>(0i, i32(-2147483648), -57311i, 0i), 23160u, 4294967295u), vec4<f32>(1000f, -638f, 295f, 140f), true), vec3<f32>(1112f, 726f, 1229f), -713f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec2<u32>(_wgslsmith_mult_u32(~58531u, global0.c.c.b | 1u), global0.c.c.c) & global0.c.b.xx);
    var var_1 = global0.c.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.c, vec3<u32>(10629u, _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, global0.c.c.c, ~global0.c.c.c, ~var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.a.b, 4294967295u, global0.c.c.b), ~vec4<u32>(0u, 37255u, global0.c.b.x, var_0.x))), global0.a.b), 1u, global1[_wgslsmith_index_u32(global0.a.c, 20u)], global0.c.d.xyx);
}

