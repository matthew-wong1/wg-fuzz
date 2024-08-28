struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-450f, -258f), vec2<f32>(223f, -213f), vec2<f32>(-1000f, -342f), vec2<f32>(-1071f, 1551f), vec2<f32>(271f, -143f), vec2<f32>(-456f, 930f), vec2<f32>(-567f, -1365f), vec2<f32>(1856f, 2152f), vec2<f32>(-617f, 1340f), vec2<f32>(-110f, 944f), vec2<f32>(-782f, 548f), vec2<f32>(-287f, -808f), vec2<f32>(-1925f, 1000f), vec2<f32>(-1064f, 196f), vec2<f32>(557f, -361f), vec2<f32>(527f, 1384f));

var<private> global1: array<vec4<u32>, 4>;

var<private> global2: array<vec2<bool>, 23>;

var<private> global3: i32 = -36437i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    global2 = array<vec2<bool>, 23>();
    let var_0 = u_input.b.yz;
    global3 = _wgslsmith_div_i32(max(-23444i, firstLeadingBit(arg_0)), _wgslsmith_clamp_i32(select(~arg_0, arg_0, true) ^ arg_0, arg_0, -_wgslsmith_mod_i32(arg_1.e.x, 6214i)));
    return vec4<bool>(true, (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(266f * arg_1.b))) != _wgslsmith_f_op_f32(arg_1.b + 1000f)) && true, false, any(vec2<bool>(true, true)));
}

fn func_3() -> vec4<bool> {
    let var_0 = 2147483647i;
    let var_1 = !(countOneBits(_wgslsmith_div_i32(countOneBits(var_0), 0i)) < 1i);
    let var_2 = Struct_1(-_wgslsmith_clamp_i32(-31663i, _wgslsmith_sub_i32(2147483647i, var_0), ~min(-53641i, 30218i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f + 426f) - _wgslsmith_f_op_f32(min(-1353f, 1014f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, max(36703u, ~u_input.a))), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(39697u, u_input.a, 0u, u_input.b.x)), vec4<u32>(u_input.b.x, select(_wgslsmith_sub_u32(u_input.a, 32065u), 58171u, var_1), 67596u, ~(u_input.a & 1u))), vec3<i32>(firstTrailingBit(var_0), ~(i32(-1i) * -1i) | _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(-74483i, -1i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0, 46040i), vec2<i32>(-2147483647i, var_0))), abs(87114i)));
    var var_3 = Struct_2(var_2, ~vec2<u32>(~283u >> (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), select(var_2.c, firstTrailingBit(var_2.c), true)), Struct_1(~var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b)) * -554f), ~u_input.a, 4294967295u, vec3<i32>(var_0, var_2.e.x, ~56725i)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~8254u) & firstTrailingBit(_wgslsmith_div_u32(4294967295u, u_input.a)), ~0u), 4u)]);
    let var_4 = var_2.c;
    return !vec4<bool>(!(~var_2.a == var_2.e.x), true, true, false);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    global1 = array<vec4<u32>, 4>();
    let var_0 = select(!select(!func_2(2147483647i, arg_0), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), func_3(), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)))), func_2(arg_0.e.x, arg_0), true);
    global1 = array<vec4<u32>, 4>();
    let var_1 = false;
    var var_2 = Struct_2(arg_0, vec2<u32>(u_input.b.x, arg_1), Struct_1(arg_0.e.x, 268f, _wgslsmith_mod_u32(0u, u_input.b.x), 27088u, arg_0.e), vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, u_input.b.x), u_input.b)), vec3<u32>(_wgslsmith_clamp_u32(75648u, 1u, arg_1), u_input.b.x, max(arg_1, u_input.b.x))), 1u, ~(~1u), 1u));
    return ~_wgslsmith_mod_vec2_u32(abs(var_2.d.wx), ~vec2<u32>(9508u, _wgslsmith_mult_u32(arg_0.c, 68950u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zy, abs(func_1(Struct_1(4240i, 2022f, 0u, 11846u, vec3<i32>(51700i, -1i, 1i)), 0u))), vec2<u32>(~4294967295u, ~firstTrailingBit(3525u)));
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-760f)))), var_0, _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, _wgslsmith_div_u32(~min(u_input.b.x, u_input.a), _wgslsmith_mult_u32(0u, func_1(Struct_1(-43346i, 249f, 0u, u_input.b.x, vec3<i32>(124i, -1i, -38132i)), 4294967295u).x))), max(vec3<i32>(-47400i, firstTrailingBit(min(-1i, 1i)), 1i), vec3<i32>(~0i, ~10167i, _wgslsmith_dot_vec2_i32(vec2<i32>(-23619i, 1i), vec2<i32>(2147483647i, 0i))) & vec3<i32>(0i, -2147483647i, i32(-1i) * -34476i)));
    var_1 = vec2<bool>(!any(select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x))), var_1.x);
    var var_3 = Struct_1(-1i, var_2.b, ~countOneBits(~(var_2.c ^ 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(20820u, var_0, _wgslsmith_div_u32(var_2.d | 4294967295u, ~74381u), 12021u << (firstTrailingBit(41532u) % 32u)), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_2.d, u_input.b.x) | abs(~var_0), 4u)]), select(select(countOneBits(vec3<i32>(51843i, var_2.e.x, var_2.a)), vec3<i32>(max(-15264i, var_2.a), _wgslsmith_clamp_i32(var_2.e.x, 2147483647i, var_2.e.x), var_2.a), vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, true, true)), false, var_1.x)), abs(~vec3<i32>(var_2.a, -4459i, var_2.e.x)) & vec3<i32>(-56529i ^ var_2.a, 1i, var_2.a), select(vec3<bool>(true, any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), false | var_1.x), !vec3<bool>(true, var_1.x, var_1.x), func_2(min(6271i, 5559i), Struct_1(var_2.e.x, -787f, 53996u, var_2.d, var_2.e)).xyw)));
    let var_4 = min(-(-1i & ~var_2.e.x), -var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~countOneBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, 24796u), func_1(Struct_1(2147483647i, var_3.b, var_2.d, var_0, var_3.e), 1u).x)), 4u)], vec3<i32>(2147483647i, -32250i, _wgslsmith_add_i32(reverseBits(var_3.a >> (64133u % 32u)), 1863i ^ _wgslsmith_sub_i32(var_2.a, -18214i))), vec2<f32>(var_2.b, var_2.b), _wgslsmith_div_vec3_i32(~firstLeadingBit(select(var_3.e, vec3<i32>(2147483647i, 29365i, var_4), true)), var_2.e));
}

