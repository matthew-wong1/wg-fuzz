struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(2147483647i, 2147483647i, -28029i), vec4<u32>(36519u, 27495u, 1u, 1282u), true, vec4<u32>(81757u, 0u, 101739u, 3893u), vec2<f32>(-698f, 477f)), Struct_1(vec3<i32>(65890i, 1i, -24013i), vec4<u32>(0u, 102344u, 1u, 19412u), true, vec4<u32>(1329u, 1u, 77559u, 0u), vec2<f32>(-973f, 529f)), Struct_1(vec3<i32>(21553i, 8121i, -18545i), vec4<u32>(4294967295u, 26793u, 6973u, 27046u), true, vec4<u32>(4294967295u, 4294967295u, 1u, 22927u), vec2<f32>(-495f, 983f)), Struct_1(vec3<i32>(i32(-2147483648), 15395i, 1i), vec4<u32>(1u, 4294967295u, 4818u, 4294967295u), false, vec4<u32>(64047u, 1u, 56559u, 4294967295u), vec2<f32>(1360f, -290f)), Struct_1(vec3<i32>(0i, 1i, -40954i), vec4<u32>(68836u, 4294967295u, 1u, 18472u), true, vec4<u32>(39294u, 4294967295u, 0u, 16215u), vec2<f32>(640f, -305f)), Struct_1(vec3<i32>(-31744i, 0i, 1i), vec4<u32>(0u, 0u, 1u, 0u), true, vec4<u32>(1u, 0u, 1u, 4294967295u), vec2<f32>(-583f, -259f)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -25150i), vec4<u32>(47702u, 8851u, 5537u, 0u), true, vec4<u32>(30409u, 0u, 9302u, 46933u), vec2<f32>(386f, 1000f)), Struct_1(vec3<i32>(1i, 56517i, -1824i), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), false, vec4<u32>(98573u, 1772u, 4294967295u, 52957u), vec2<f32>(1058f, -652f)), Struct_1(vec3<i32>(i32(-2147483648), -27613i, -30584i), vec4<u32>(0u, 0u, 1u, 1u), true, vec4<u32>(35769u, 0u, 47785u, 0u), vec2<f32>(450f, 107f)), Struct_1(vec3<i32>(4056i, 1i, -1i), vec4<u32>(41169u, 498u, 4294967295u, 58631u), true, vec4<u32>(40904u, 39840u, 15218u, 1u), vec2<f32>(320f, -1572f)), Struct_1(vec3<i32>(2147483647i, 0i, 6373i), vec4<u32>(1u, 74414u, 91053u, 124945u), true, vec4<u32>(0u, 43759u, 115808u, 69925u), vec2<f32>(1968f, -1860f)), Struct_1(vec3<i32>(33493i, 6603i, 5389i), vec4<u32>(49762u, 0u, 4294967295u, 0u), true, vec4<u32>(1u, 4294967295u, 4294967295u, 101501u), vec2<f32>(100f, 1769f)), Struct_1(vec3<i32>(-11222i, i32(-2147483648), 50882i), vec4<u32>(4294967295u, 22223u, 0u, 35782u), false, vec4<u32>(0u, 1u, 45429u, 0u), vec2<f32>(-748f, -390f)), Struct_1(vec3<i32>(-49145i, 31703i, 2147483647i), vec4<u32>(0u, 4294967295u, 20895u, 1u), true, vec4<u32>(0u, 24025u, 19522u, 1u), vec2<f32>(764f, -438f)), Struct_1(vec3<i32>(26621i, 2147483647i, 2147483647i), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), true, vec4<u32>(36909u, 2212u, 64181u, 20667u), vec2<f32>(-1038f, -795f)), Struct_1(vec3<i32>(2147483647i, 7271i, i32(-2147483648)), vec4<u32>(4294967295u, 13763u, 0u, 0u), false, vec4<u32>(26717u, 73328u, 20033u, 2269u), vec2<f32>(-788f, -134f)), Struct_1(vec3<i32>(i32(-2147483648), -54199i, -1i), vec4<u32>(6976u, 2191u, 24756u, 1u), false, vec4<u32>(27345u, 0u, 4294967295u, 46893u), vec2<f32>(-1842f, -354f)), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), vec4<u32>(66825u, 13626u, 34566u, 28571u), false, vec4<u32>(23460u, 4294967295u, 21530u, 4294967295u), vec2<f32>(-1164f, 351f)), Struct_1(vec3<i32>(0i, -12698i, 0i), vec4<u32>(4294967295u, 40844u, 1u, 1u), false, vec4<u32>(4294967295u, 24665u, 26997u, 4294967295u), vec2<f32>(1237f, 641f)), Struct_1(vec3<i32>(28575i, 1i, -1i), vec4<u32>(20920u, 117188u, 0u, 46821u), true, vec4<u32>(4294967295u, 4294967295u, 26935u, 0u), vec2<f32>(-650f, 305f)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 1u, 1u, 18710u), false, vec4<u32>(25848u, 4294967295u, 4294967295u, 4294967295u), vec2<f32>(-1737f, 833f)), Struct_1(vec3<i32>(-56122i, 0i, -17875i), vec4<u32>(0u, 52969u, 0u, 0u), false, vec4<u32>(1u, 34442u, 3800u, 0u), vec2<f32>(-944f, 1608f)), Struct_1(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec4<u32>(69351u, 4294967295u, 4294967295u, 1u), true, vec4<u32>(20597u, 4294967295u, 1u, 4294967295u), vec2<f32>(-307f, 1310f)), Struct_1(vec3<i32>(1i, 2147483647i, -15739i), vec4<u32>(4294967295u, 77191u, 41066u, 27794u), true, vec4<u32>(34095u, 22901u, 14582u, 0u), vec2<f32>(164f, 1208f)), Struct_1(vec3<i32>(-10796i, 0i, 1i), vec4<u32>(1u, 15716u, 1u, 1u), false, vec4<u32>(0u, 13534u, 32462u, 34744u), vec2<f32>(641f, -945f)), Struct_1(vec3<i32>(0i, 1i, 0i), vec4<u32>(3987u, 4294967295u, 0u, 32021u), true, vec4<u32>(4294967295u, 55415u, 0u, 4294967295u), vec2<f32>(597f, 230f)), Struct_1(vec3<i32>(-27959i, i32(-2147483648), 1i), vec4<u32>(15850u, 1u, 58018u, 0u), true, vec4<u32>(0u, 0u, 81070u, 0u), vec2<f32>(1115f, -899f)), Struct_1(vec3<i32>(1i, 10490i, 17011i), vec4<u32>(28974u, 35034u, 0u, 90274u), true, vec4<u32>(70770u, 0u, 40752u, 25774u), vec2<f32>(-1085f, 675f)));

var<private> global1: f32;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<i32>(-35342i, 2147483647i, -20858i), vec4<u32>(4294967295u, 55787u, 1u, 1u), false, vec4<u32>(4294967295u, 1u, 4294967295u, 72509u), vec2<f32>(402f, 1000f)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 8483i), vec4<u32>(30608u, 5787u, 280u, 64104u), false, vec4<u32>(69413u, 21715u, 4294967295u, 26893u), vec2<f32>(206f, 288f)), Struct_1(vec3<i32>(47853i, 0i, -19932i), vec4<u32>(75313u, 46872u, 61519u, 77731u), true, vec4<u32>(9412u, 1u, 1u, 1u), vec2<f32>(1000f, 1033f)), Struct_1(vec3<i32>(-56485i, 878i, 1i), vec4<u32>(0u, 67879u, 60150u, 69340u), true, vec4<u32>(0u, 41846u, 7805u, 19077u), vec2<f32>(1237f, -2445f)), Struct_1(vec3<i32>(-16765i, -33635i, 0i), vec4<u32>(80684u, 1u, 1u, 12399u), true, vec4<u32>(16127u, 0u, 4294967295u, 1u), vec2<f32>(-1246f, -523f)), Struct_1(vec3<i32>(1i, 1i, -1i), vec4<u32>(70041u, 59792u, 5093u, 18221u), true, vec4<u32>(4294967295u, 4294967295u, 1u, 66702u), vec2<f32>(169f, 1206f)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> u32 {
    global2 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_sub_vec2_u32(abs(countOneBits(vec2<u32>(u_input.b.x, 22150u) ^ u_input.b.yx)), u_input.b.xx);
    let var_1 = Struct_2(~(~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(18170u, var_0.x, var_0.x), u_input.b.yxy, vec3<bool>(true, arg_0, arg_0)), countOneBits(vec3<u32>(90215u, 60600u, u_input.b.x)), vec3<u32>(var_0.x, 94571u, 4294967295u))), vec2<i32>(i32(-1i) * -u_input.a, 1151i));
    var var_2 = arg_0;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -163f);
    return _wgslsmith_clamp_u32(~countOneBits((var_0.x ^ u_input.b.x) ^ var_0.x), u_input.b.x, _wgslsmith_sub_u32(~(~29038u), var_1.a.x));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(8439u, abs(_wgslsmith_add_u32(abs(12184u) << (func_3(false) % 32u), 1u))), 28u)];
    let var_1 = Struct_2(u_input.b.xyz, select(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, abs(-10062i)), -vec2<i32>(u_input.a, -2147483647i)), ~abs(var_0.a.zx), any(select(vec3<bool>(var_0.c, false, arg_1.a), vec3<bool>(false, var_0.c, false), vec3<bool>(false, true, arg_1.a))) | all(select(vec2<bool>(true, true), vec2<bool>(var_0.c, arg_1.a), arg_1.a))));
    let var_2 = !select(select(select(vec2<bool>(true, true), vec2<bool>(var_0.c, true), !vec2<bool>(arg_1.a, var_0.c)), vec2<bool>(var_0.c, !var_0.c), any(vec3<bool>(true, arg_1.a, arg_1.a))), vec2<bool>((true && arg_1.a) & any(vec4<bool>(true, var_0.c, arg_1.a, var_0.c)), arg_1.a), !select(vec2<bool>(true, true), vec2<bool>(var_0.c, var_0.c), !vec2<bool>(arg_1.a, arg_1.a)));
    var var_3 = reverseBits(abs(vec4<i32>(var_0.a.x, 0i, u_input.a, u_input.a)) | abs(countOneBits(vec4<i32>(var_1.b.x, -10923i, -5609i, var_0.a.x)))) << (~abs(u_input.b) % vec4<u32>(32u));
    var_0 = Struct_1(var_0.a, min(_wgslsmith_div_vec4_u32(~select(vec4<u32>(1u, 29435u, 4294967295u, 246u), vec4<u32>(4294967295u, var_0.b.x, 4294967295u, var_1.a.x), true), var_0.b ^ select(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, var_0.d.x, var_1.a.x), false)), var_0.d), true, vec4<u32>(~63084u, max(_wgslsmith_dot_vec2_u32(var_1.a.xx, var_0.b.xy), ~8227u), 1u, ~(var_1.a.x << (27157u % 32u))) & select(_wgslsmith_add_vec4_u32(var_0.d, countOneBits(u_input.b)), ~reverseBits(u_input.b), arg_1.a & true), _wgslsmith_f_op_vec2_f32(step(var_0.e, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_0.e.x), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.e.x, arg_0), var_0.e), true)), vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.e.x)), _wgslsmith_f_op_f32(-var_0.e.x))))));
    return vec3<bool>(true, true, true);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_1, 6>();
    let var_0 = Struct_2(vec3<u32>(countOneBits(~45826u), ~(arg_3.x ^ 28947u), func_3(true)) >> (max(_wgslsmith_add_vec3_u32(vec3<u32>(9493u, 0u, u_input.b.x), vec3<u32>(arg_3.x, u_input.b.x, arg_3.x)) & vec3<u32>(18574u, 4294967295u, arg_3.x), abs(arg_3)) % vec3<u32>(32u)), -_wgslsmith_clamp_vec2_i32(arg_0.yy, vec2<i32>(-2147483647i, min(u_input.a, -22973i)), max(arg_0.xz, vec2<i32>(-1i, -1i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(f32(-1f) * -775f)) * arg_2);
    var var_2 = false;
    let var_3 = Struct_1(arg_0 | vec3<i32>(2147483647i, reverseBits(~2147483647i), ~(-2147483647i << (u_input.b.x % 32u))), u_input.b | u_input.b, true, vec4<u32>(abs(1u), var_0.a.x << (50854u % 32u), max(~(0u ^ u_input.b.x), firstTrailingBit(4294967295u)), _wgslsmith_div_u32(14349u, ~arg_3.x << (20211u % 32u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1063f, 1895f), vec2<f32>(-278f, -1424f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(696f, _wgslsmith_f_op_f32(f32(-1f) * -446f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-322f, arg_2)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))), select(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), arg_1.x), select(vec2<bool>(true, arg_1.x), arg_1.yy, false), select(true, arg_1.x, arg_1.x))))));
    return var_3;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = ~vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(reverseBits(~u_input.b.x), arg_0.b.x));
    let var_1 = ~(-2147483647i) >> (0u % 32u);
    return Struct_3(arg_0.c);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_u32(~0u, u_input.b.x, 14388u);
    global1 = -649f;
    var var_1 = vec2<i32>(select(2147483647i, u_input.a, arg_0.a), u_input.a);
    let var_2 = Struct_3(false);
    let var_3 = u_input.b.x;
    return Struct_2(u_input.b.zyy << (vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(0u, var_0, var_3, var_0))), var_3, var_0) % vec3<u32>(32u)), abs(_wgslsmith_add_vec2_i32(~firstTrailingBit(vec2<i32>(0i, var_1.x)), select(abs(vec2<i32>(u_input.a, var_1.x)), reverseBits(vec2<i32>(0i, 1i)), true))));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_0.zy;
    var var_1 = var_0.x;
    var_1 = arg_0.x;
    var var_2 = any(select(vec4<bool>(!(var_0.x <= var_0.x), false, true, func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, arg_1.b.x), vec3<i32>(34707i, u_input.a, arg_1.b.x)), vec3<bool>(false, false, true), -1326f, vec3<u32>(12332u, 3556u, arg_1.a.x)).c), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), true), vec4<bool>(false, false, select(any(vec3<bool>(false, true, true)), true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(21645u, u_input.b.x), u_input.b.zy) < _wgslsmith_add_u32(83418u, 17760u))));
    var var_3 = _wgslsmith_f_op_f32(sign(arg_0.x));
    return Struct_3(select(any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), var_0.x <= 953f)), true, true));
}

fn func_1(arg_0: bool) -> bool {
    global0 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(547f)) + _wgslsmith_div_f32(1058f, 1166f)), -1805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1679f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1652f, -174f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f - -1125f) * 781f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-531f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1284f) * _wgslsmith_div_f32(-298f, -485f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1777f, 286f))))));
    var var_1 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, firstLeadingBit(u_input.b.x)), ~_wgslsmith_div_vec2_u32(~u_input.b.wz, vec2<u32>(u_input.b.x, u_input.b.x))));
    var var_2 = Struct_3(true);
    let var_3 = func_7(var_0.wyz, func_6(func_5(func_4(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -4314i)), func_2(629f, Struct_3(var_2.a)), _wgslsmith_f_op_f32(step(var_0.x, -2162f)), vec3<u32>(1u, 29451u, 9462u))), Struct_3(var_2.a)));
    return !(select(var_3.a && (true & var_3.a), !arg_0 == (-1505f > var_0.x), arg_0) & true);
}

fn func_8(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2004f + _wgslsmith_f_op_f32(1246f + -144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-311f))), func_4(vec3<i32>(func_6(Struct_3(arg_0.a), arg_0).b.x, 1i, u_input.a & -3560i), vec3<bool>(true, true, arg_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1685f)))), vec3<u32>(u_input.b.x, firstLeadingBit(9710u), 21944u)).e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1083f - -1052f) * func_4(vec3<i32>(u_input.a, u_input.a, -1i), select(vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.a, true, arg_0.a), true), _wgslsmith_f_op_f32(f32(-1f) * -1104f), abs(vec3<u32>(0u, arg_1.x, 4294967295u))).e.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1203f, -1229f, -772f, -243f), vec4<f32>(1067f, 915f, 1190f, -613f), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false))) - _wgslsmith_div_vec4_f32(vec4<f32>(304f, -497f, -500f, -1125f), vec4<f32>(-1000f, 1493f, -2158f, 1211f)))) + vec4<f32>(-630f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1316f, 674f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(-559f))))));
    let var_1 = _wgslsmith_f_op_f32(-1096f * var_0.x);
    return func_4(vec3<i32>(44550i, ((i32(-1i) * -1i) | u_input.a) << (arg_1.x % 32u), 1i ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.a, u_input.a, 16945i), -vec4<i32>(3202i, 18237i, u_input.a, u_input.a))), !vec3<bool>(!arg_0.a, arg_0.a || func_1(false), true), _wgslsmith_div_f32(_wgslsmith_div_f32(719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_1))), 294f), ~vec3<u32>(18988u, 1u, abs(_wgslsmith_mult_u32(1u, u_input.b.x))));
}

fn func_9(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-793f, -1047f)) * -809f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(321f, arg_0.e.x) + 580f)))));
    let var_1 = func_5(Struct_1(vec3<i32>(abs(~u_input.a), _wgslsmith_add_i32(-arg_0.a.x, arg_3.b.x ^ -52134i), func_6(Struct_3(false), arg_2).b.x), ~(~(~arg_0.b)), !(!arg_0.c & false), u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    global1 = _wgslsmith_f_op_f32(step(-954f, -786f));
    var var_2 = arg_2;
    let var_3 = func_5(func_8(var_1, _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(1u), abs(u_input.b.x), arg_3.a.x), vec3<u32>(arg_0.d.x, _wgslsmith_div_u32(22188u, 26192u), abs(u_input.b.x)))));
    return Struct_2(arg_3.a, arg_0.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-116f, 1674f)));
    global0 = array<Struct_1, 28>();
    var var_1 = func_9(func_8(Struct_3(func_1(true)), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)), u_input.b, Struct_3(func_4(vec3<i32>(-u_input.a, func_8(Struct_3(true), vec3<u32>(u_input.b.x, u_input.b.x, 54466u)).a.x, abs(10034i)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), ~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)).c), Struct_2(u_input.b.yxw, ~select(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a), func_7(vec3<f32>(-641f, -768f, var_0.x), Struct_2(vec3<u32>(1u, u_input.b.x, 4294967295u), vec2<i32>(-14079i, u_input.a))).a)));
    let var_2 = Struct_2(~(~vec3<u32>(1u, _wgslsmith_clamp_u32(1u, 4294967295u, var_1.a.x), var_1.a.x)), vec2<i32>(-u_input.a, var_1.b.x));
    var var_3 = func_9(Struct_1(select(max(vec3<i32>(var_1.b.x, u_input.a, -36028i) << (var_1.a % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, u_input.a), vec3<i32>(var_1.b.x, -18908i, var_1.b.x), vec3<i32>(2147483647i, 33817i, 1i))), vec3<i32>(~31482i, ~2147483647i, var_1.b.x), false), u_input.b, any(vec3<bool>(true, 11447u > var_2.a.x, func_8(Struct_3(true), var_2.a).c)), u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1394f, _wgslsmith_f_op_f32(-var_0.x)))), vec4<u32>(_wgslsmith_sub_u32(~func_4(vec3<i32>(13825i, var_1.b.x, -6503i), vec3<bool>(false, false, false), var_0.x, vec3<u32>(37631u, var_2.a.x, 51637u)).d.x, 1u), countOneBits(~_wgslsmith_sub_u32(1u, u_input.b.x)), ~abs(4294967295u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_2.a.x, ~var_1.a.x), var_2.a.x)), Struct_3(var_0.x <= _wgslsmith_f_op_f32(exp2(var_0.x))), func_9(global2[_wgslsmith_index_u32(40926u, 6u)], vec4<u32>(func_8(func_5(Struct_1(vec3<i32>(1i, var_2.b.x, 36705i), vec4<u32>(var_2.a.x, var_1.a.x, var_2.a.x, 42231u), true, vec4<u32>(u_input.b.x, var_2.a.x, 21994u, var_2.a.x), vec2<f32>(-486f, 1366f))), var_1.a).b.x, ~(~0u), firstLeadingBit(abs(u_input.b.x)), ~abs(1u)), Struct_3(true), Struct_2(~(~u_input.b.www), func_8(func_7(vec3<f32>(var_0.x, var_0.x, var_0.x), var_2), vec3<u32>(39983u, u_input.b.x, u_input.b.x)).a.xy))).b.x;
    let var_4 = select(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !func_2(_wgslsmith_div_f32(var_0.x, -1795f), Struct_3(false)).x, all(func_2(_wgslsmith_f_op_f32(481f * var_0.x), func_5(global2[_wgslsmith_index_u32(12413u, 6u)])).yx)), !(!func_2(var_0.x, func_7(vec3<f32>(var_0.x, var_0.x, var_0.x), var_2))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f), var_0.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(719f + var_0.x)))) == var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(var_1.b.x, 2147483647i), i32(-1i) * -43213i, -var_2.b.x), ~vec4<i32>(-5399i, -39100i, var_1.b.x, 1i)), vec4<i32>(0i, -var_2.b.x, _wgslsmith_mult_i32(var_1.b.x ^ 1i, -53040i << (u_input.b.x % 32u)), -var_1.b.x)), u_input.b.x);
}

