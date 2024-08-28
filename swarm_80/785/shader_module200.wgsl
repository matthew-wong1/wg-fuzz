struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(2147483647i, -1i, -5965i, 1i), vec4<i32>(-53468i, -1418i, 2147483647i, -1i), vec4<i32>(-12176i, -1776i, 0i, -1i), vec4<i32>(0i, 60543i, -1i, 6127i), vec4<i32>(1i, -3261i, -32793i, -12686i), vec4<i32>(36721i, 1i, 0i, -7067i), vec4<i32>(0i, i32(-2147483648), -21934i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), -7071i, 2147483647i), vec4<i32>(-17284i, 19221i, 50441i, 16438i), vec4<i32>(-1i, 20561i, 3375i, 1i), vec4<i32>(-1i, -14202i, -333i, i32(-2147483648)), vec4<i32>(-17590i, 2147483647i, -37217i, 30127i), vec4<i32>(25331i, 0i, 13175i, 23238i), vec4<i32>(11516i, 0i, 0i, i32(-2147483648)), vec4<i32>(-8745i, -26921i, -47387i, 4667i), vec4<i32>(-1i, i32(-2147483648), 1i, 1i), vec4<i32>(-63473i, -5378i, i32(-2147483648), i32(-2147483648)), vec4<i32>(50046i, -1i, i32(-2147483648), -57490i), vec4<i32>(-47234i, 2147483647i, -6905i, -18836i), vec4<i32>(35722i, 0i, 1i, 2147483647i), vec4<i32>(25335i, i32(-2147483648), 0i, -17246i), vec4<i32>(21958i, 1i, -20085i, -23201i), vec4<i32>(31425i, 2147483647i, -49236i, -65410i), vec4<i32>(1i, i32(-2147483648), 20376i, 11677i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: f32, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_4(Struct_1(!(arg_1.b.a || true)), arg_0.xw, arg_0.x);
    var var_1 = ~(-arg_0.x);
    var var_2 = arg_2;
    let var_3 = Struct_1(all(!vec3<bool>(var_0.a.a, var_0.a.a, true)));
    var var_4 = 796f;
    return arg_1.d;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> f32 {
    global0 = array<vec4<i32>, 24>();
    let var_0 = Struct_3(arg_1.a, arg_1.b, ~(-(23251i | _wgslsmith_sub_i32(arg_1.c, -53449i))), arg_1.d);
    let var_1 = var_0.b;
    let var_2 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-820f + -211f) * -1532f))) >= 753f);
    let var_3 = var_1;
    return 1303f;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(410f * 837f), _wgslsmith_div_f32(153f, 153f), -521f))), vec3<f32>(_wgslsmith_f_op_f32(func_4(true, Struct_3(Struct_1(true), Struct_1(true), 1i, func_3(global0[_wgslsmith_index_u32(162196u, 24u)], Struct_3(Struct_1(true), Struct_1(false), u_input.b, vec4<u32>(u_input.c, u_input.c, 1u, arg_0)), 484f, vec2<bool>(false, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1279f + 829f) * 896f)), -2863f)));
    let var_1 = Struct_3(Struct_1(all(vec2<bool>(-1i < u_input.a.x, true))), Struct_1(~(u_input.c | 4294967295u) != countOneBits(0u >> (arg_0 % 32u))), _wgslsmith_sub_i32(min(33758i, u_input.b ^ max(-2147483647i, 44441i)), u_input.a.x), _wgslsmith_mult_vec4_u32(abs(min(select(vec4<u32>(arg_0, u_input.c, 55177u, arg_0), vec4<u32>(u_input.c, 952u, u_input.c, u_input.c), true), vec4<u32>(u_input.c, arg_0, u_input.c, 12011u))), func_3(-vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, -1i), Struct_3(Struct_1(true), Struct_1(false), 2147483647i, ~vec4<u32>(u_input.c, u_input.c, u_input.c, arg_0)), _wgslsmith_f_op_f32(ceil(-1171f)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true))));
    let var_2 = Struct_1(-563f <= var_0.x);
    global0 = array<vec4<i32>, 24>();
    var var_3 = Struct_5(Struct_2(var_1.d, var_2, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 0u, u_input.c, arg_0), var_1.d), ~var_1.d), ~(0u & u_input.c)), countOneBits(firstTrailingBit(vec3<u32>(u_input.c, 29468u, 1u)) | _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0, 20979u), vec3<u32>(u_input.c, 0u, 20584u))), var_1.b), vec4<bool>(!var_1.b.a, !(!all(vec2<bool>(var_2.a, false))), true, true), 0i, Struct_3(Struct_1(var_2.a || (var_0.x <= var_0.x)), Struct_1(true), reverseBits(i32(-1i) * -1i), vec4<u32>(arg_0, 0u, (arg_0 & 30651u) << (_wgslsmith_div_u32(u_input.c, var_1.d.x) % 32u), ~35957u)), var_1.b);
    return vec3<u32>(var_1.d.x, ~24167u, var_1.d.x);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_5(Struct_2(vec4<u32>(u_input.c, select(abs(u_input.c), 45668u, arg_0.x), ~_wgslsmith_mod_u32(94325u, 4294967295u), 0u), Struct_1(all(vec2<bool>(arg_0.x, false))), u_input.c, select(~reverseBits(vec3<u32>(u_input.c, 0u, 40232u)), ~func_2(0u), any(!arg_0)), Struct_1(false)), vec4<bool>(false, arg_0.x, true, arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, _wgslsmith_div_i32(0i, u_input.b), -u_input.a.x) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(5305u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, u_input.c, 40587u, 43433u), vec4<u32>(u_input.c, 72206u, u_input.c, 7836u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, -25292i), -34111i >> (u_input.c % 32u)), max(_wgslsmith_mult_i32(-57637i, 1i), u_input.b), _wgslsmith_sub_i32(~u_input.a.x, -u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-29815i, u_input.a.x, u_input.b), vec3<i32>(u_input.b, u_input.a.x, u_input.b)) | min(u_input.a.x, -1i))), Struct_3(Struct_1(arg_0.x), Struct_1(any(select(vec2<bool>(arg_0.x, arg_0.x), arg_0, arg_0))), _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(countOneBits(-18346i), 1i >> (u_input.c % 32u))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 86470u, 4294967295u, u_input.c), vec4<u32>(1u, u_input.c, u_input.c, 0u)) | func_3(vec4<i32>(3217i, u_input.a.x, u_input.a.x, u_input.b), Struct_3(Struct_1(false), Struct_1(arg_0.x), 26242i, vec4<u32>(u_input.c, u_input.c, 49462u, 1u)), 1552f, arg_0), min(vec4<u32>(u_input.c, 30976u, u_input.c, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c) << (vec4<u32>(u_input.c, 31014u, 17371u, u_input.c) % vec4<u32>(32u))), arg_0.x)), Struct_1(true));
    var var_1 = Struct_4(Struct_1(any(arg_0)), u_input.a, _wgslsmith_clamp_i32(0i, u_input.b, -21811i));
    let var_2 = false;
    global0 = array<vec4<i32>, 24>();
    var_0 = Struct_5(Struct_2(vec4<u32>(~_wgslsmith_add_u32(var_0.d.d.x, u_input.c), ~(~u_input.c), var_0.a.d.x, _wgslsmith_sub_u32(~0u, 1u)), Struct_1(any(vec3<bool>(true, var_1.a.a, true))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_0.a.a, var_0.a.a, var_0.d.d), var_0.d.d), var_0.d.d.zzw, Struct_1(arg_0.x)), vec4<bool>(!var_1.a.a, select(any(vec2<bool>(false, false)), all(var_0.b.zzx), var_2), true, 41454u != ~(~var_0.a.d.x)), -4967i, Struct_3(Struct_1(true), Struct_1(var_0.b.x), _wgslsmith_mult_i32(firstTrailingBit(var_0.c), -1i), min(var_0.d.d, select(vec4<u32>(u_input.c, var_0.d.d.x, var_0.d.d.x, 0u) & vec4<u32>(9272u, var_0.d.d.x, 16967u, u_input.c), ~vec4<u32>(39719u, 54085u, u_input.c, 4294967295u), true))), Struct_1(all(!var_0.b)));
    return var_0.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = Struct_2(reverseBits(vec4<u32>((u_input.c >> (u_input.c % 32u)) >> (0u % 32u), _wgslsmith_div_u32(abs(u_input.c), 1u), countOneBits(1u >> (u_input.c % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 26837u), vec3<u32>(76647u, 4294967295u, u_input.c)) & u_input.c)), Struct_1(!any(vec4<bool>(true, true, true, true))), firstTrailingBit(min(u_input.c >> (~u_input.c % 32u), u_input.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(u_input.c, 0u, 0u), ~(~1u), min(u_input.c, u_input.c) | u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(~12502u, u_input.c, reverseBits(54916u)), vec3<u32>(u_input.c, 12112u, u_input.c))), func_1(!vec2<bool>(all(vec2<bool>(false, true)), true)));
    let var_2 = Struct_3(var_1.b, func_1(!select(vec2<bool>(var_1.e.a, false), vec2<bool>(false, var_1.b.a), any(vec4<bool>(var_1.b.a, true, false, var_1.e.a)))), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, -36770i))) ^ -1i, vec4<u32>(89535u, 13113u, u_input.c, ~u_input.c));
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    let var_3 = -1094f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 28096i), u_input.a), abs(0i), ~(-1i)) >> (vec3<u32>(u_input.c, ~0u, _wgslsmith_sub_u32(var_1.d.x, var_2.d.x)) % vec3<u32>(32u)), ~vec3<i32>(0i, var_2.c, -22576i)), _wgslsmith_f_op_f32(func_4(true, Struct_3(Struct_1(var_2.b.a), func_1(select(vec2<bool>(true, false), vec2<bool>(true, var_1.e.a), vec2<bool>(true, var_2.b.a))), u_input.b, ~var_2.d))), vec2<u32>(var_2.d.x, ~52596u));
}

