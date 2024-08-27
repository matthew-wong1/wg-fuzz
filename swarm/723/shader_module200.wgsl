struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, Struct_1(vec2<bool>(false, false), true, vec3<f32>(865f, -454f, 1219f), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(false, true), true, vec3<f32>(-438f, -186f, -1000f), vec3<bool>(true, true, false)), vec3<u32>(1u, 4294967295u, 46483u), Struct_1(vec2<bool>(true, true), false, vec3<f32>(125f, -1805f, 1336f), vec3<bool>(false, false, true)));

var<private> global1: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(false, Struct_3(Struct_1(vec2<bool>(false, true), true, vec3<f32>(802f, 800f, 832f), vec3<bool>(false, false, true)), 0u), 1i, vec3<u32>(122122u, 61702u, 18611u), -1025f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(true, true), true, vec3<f32>(-795f, -1737f, 783f), vec3<bool>(false, false, false)), 1u), 28013i, vec3<u32>(1u, 6139u, 16361u), 314f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(false, false), true, vec3<f32>(-365f, -702f, -1000f), vec3<bool>(true, true, false)), 0u), i32(-2147483648), vec3<u32>(59664u, 4294967295u, 4294967295u), -549f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(false, true), true, vec3<f32>(-402f, 1022f, 228f), vec3<bool>(false, false, true)), 70283u), -20508i, vec3<u32>(1u, 0u, 1u), -537f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(true, true), false, vec3<f32>(845f, 1269f, 853f), vec3<bool>(false, false, true)), 34111u), -16194i, vec3<u32>(53188u, 1u, 56392u), 559f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(true, true), true, vec3<f32>(993f, 1000f, 1062f), vec3<bool>(false, true, false)), 10020u), -33304i, vec3<u32>(34979u, 1u, 0u), -1104f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(false, false), false, vec3<f32>(1000f, 933f, 222f), vec3<bool>(true, true, false)), 1u), -22241i, vec3<u32>(24829u, 4294967295u, 1u), -1186f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(true, false), true, vec3<f32>(-2567f, 1718f, -1103f), vec3<bool>(false, false, true)), 5913u), i32(-2147483648), vec3<u32>(0u, 44072u, 69675u), -209f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(true, false), true, vec3<f32>(-1524f, 425f, -1022f), vec3<bool>(true, true, false)), 1u), -70107i, vec3<u32>(4294967295u, 49294u, 4294967295u), 2195f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(false, true), false, vec3<f32>(-1096f, -1750f, 1000f), vec3<bool>(false, true, true)), 1u), 0i, vec3<u32>(4294967295u, 50308u, 0u), -632f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(false, true), true, vec3<f32>(259f, -200f, 162f), vec3<bool>(false, false, false)), 4294967295u), 3407i, vec3<u32>(4294967295u, 1u, 1u), 562f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(true, true), true, vec3<f32>(-1343f, -838f, 1589f), vec3<bool>(true, true, true)), 0u), 2147483647i, vec3<u32>(1u, 32041u, 75384u), 415f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(false, false), true, vec3<f32>(1000f, -558f, 779f), vec3<bool>(true, true, true)), 41760u), -20882i, vec3<u32>(37987u, 0u, 9487u), 474f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(false, false), true, vec3<f32>(-904f, 1685f, -979f), vec3<bool>(false, false, false)), 29882u), -12360i, vec3<u32>(54040u, 1u, 45565u), 403f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(false, true), true, vec3<f32>(-318f, -1775f, -784f), vec3<bool>(false, false, true)), 0u), 0i, vec3<u32>(1u, 4294967295u, 74768u), -303f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(true, true), false, vec3<f32>(396f, -113f, -1089f), vec3<bool>(true, false, true)), 0u), 28424i, vec3<u32>(58426u, 1u, 9357u), 531f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(false, false), false, vec3<f32>(-1000f, -596f, -949f), vec3<bool>(true, true, false)), 60056u), -11843i, vec3<u32>(0u, 1u, 4494u), -309f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(true, false), true, vec3<f32>(-579f, 839f, 473f), vec3<bool>(false, true, true)), 4294967295u), 11617i, vec3<u32>(7517u, 1u, 4294967295u), 871f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(true, true), false, vec3<f32>(1278f, 1505f, 631f), vec3<bool>(false, false, true)), 46874u), 1i, vec3<u32>(93869u, 0u, 44664u), -335f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(true, false), false, vec3<f32>(-559f, 622f, 261f), vec3<bool>(false, true, true)), 21694u), 4058i, vec3<u32>(15596u, 73095u, 1u), 826f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(true, true), false, vec3<f32>(-375f, 512f, 1000f), vec3<bool>(false, true, true)), 4294967295u), 27422i, vec3<u32>(1u, 4294967295u, 1u), 2621f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(false, true), true, vec3<f32>(-1273f, -805f, -547f), vec3<bool>(false, false, true)), 1u), 56262i, vec3<u32>(4294967295u, 54749u, 46813u), 286f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(true, false), false, vec3<f32>(891f, 274f, 1520f), vec3<bool>(false, true, false)), 38838u), -15278i, vec3<u32>(28699u, 0u, 4294967295u), -1323f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(false, true), false, vec3<f32>(-149f, -747f, -2470f), vec3<bool>(true, true, false)), 42865u), -33958i, vec3<u32>(0u, 4294967295u, 63346u), -1000f), Struct_5(false, Struct_3(Struct_1(vec2<bool>(true, false), true, vec3<f32>(-779f, 319f, 2189f), vec3<bool>(true, false, true)), 66613u), 9816i, vec3<u32>(25411u, 14661u, 0u), 547f), Struct_5(true, Struct_3(Struct_1(vec2<bool>(false, false), true, vec3<f32>(147f, 1000f, 458f), vec3<bool>(false, true, true)), 51395u), 1i, vec3<u32>(40441u, 1u, 53688u), -611f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.b;
    var var_1 = 48745i;
    global1 = array<Struct_5, 26>();
    var_1 = ~u_input.c;
    global1 = array<Struct_5, 26>();
    let var_2 = -189f;
    let var_3 = false;
    var_1 = -u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, vec2<i32>(u_input.c, abs(abs(-u_input.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 * global0.b.c.x))), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, countOneBits(19704i)), max(u_input.c, 2147483647i)), 11655u);
}

