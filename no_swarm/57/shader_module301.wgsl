struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = abs(firstTrailingBit(u_input.a));
    global0 = array<vec4<bool>, 21>();
    let var_1 = arg_0;
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    return reverseBits(0u) > countOneBits(~_wgslsmith_mod_u32(1u, ~u_input.b));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(2289f, global1.d.x, global1.d.x, global1.d.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.b.x, -766f, global1.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_f_op_f32(global1.b.x * -525f))), _wgslsmith_f_op_f32(abs(global1.d.x)), global1.d.x, global1.d.x), vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), true, 13147u != countOneBits(u_input.b)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-596f, 153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.d.x))), global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.ww - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1.d.x) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-123f, global1.d.x)))))));
    let var_1 = Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.x, -1101f, var_0.d.x, 951f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.a.x, global1.b.x, global1.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b.x))), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-277f - _wgslsmith_div_f32(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1.b.x))))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(42122u, u_input.b, u_input.b), 21u)], vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, 16323u), vec2<u32>(1u, u_input.b), false), ~vec2<u32>(u_input.b, 1u)), 21u)]))), min(_wgslsmith_mod_i32(467i, ~_wgslsmith_div_i32(u_input.a.x, -52461i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(-15360i, max(46731i, u_input.a.x)), reverseBits(_wgslsmith_mult_i32(-20833i, 72852i)))), _wgslsmith_f_op_vec2_f32(-global1.b.xy));
    var var_2 = ~u_input.a;
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, global1.d.x) + -502f), _wgslsmith_f_op_f32(round(854f)), 538f, _wgslsmith_f_op_f32(var_1.a.x * global1.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.d.x)), _wgslsmith_f_op_f32(-global1.b.x), var_1.b.x, _wgslsmith_f_op_f32(sign(-934f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, 566f, var_0.d.x, -744f) + vec4<f32>(var_0.a.x, 1000f, var_1.b.x, 1000f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(666f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.a.x * -1000f), _wgslsmith_f_op_f32(2198f * 1000f)) * var_1.b) + var_0.b), select(~(countOneBits(-70i) << (u_input.b % 32u)), -var_2.x & firstTrailingBit(-var_0.c), abs(31307i) >= ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, var_0.c, -2147483647i), vec4<i32>(-1i, var_1.c, var_0.c, var_2.x))), var_0.b.xx);
    var var_3 = vec2<u32>(reverseBits(_wgslsmith_add_u32(u_input.b, u_input.b)), _wgslsmith_clamp_u32(28967u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(6711u, u_input.b)), countOneBits(vec2<u32>(u_input.b, 31278u))) | 38226u, ~firstTrailingBit(~1243u)));
    return !select(vec3<bool>(false, any(vec3<bool>(true, true, true)), true), !vec3<bool>(all(vec4<bool>(true, false, true, false)), true, all(vec3<bool>(false, false, true))), true);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))));
    var var_1 = !(!select(all(select(vec4<bool>(true, true, false, true), global0[_wgslsmith_index_u32(4294967295u, 21u)], false)), false, !func_2(Struct_1(vec4<f32>(global1.d.x, -2077f, 669f, global1.a.x), global1.a, u_input.a.x, vec2<f32>(1000f, -1653f)), -1641f)));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(arg_2, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.b, arg_2)) | (_wgslsmith_mult_u32(u_input.b, 1u) ^ 0u)), ~vec2<u32>(0u, arg_2));
    let var_3 = select(all(select(vec4<bool>(false, 4294967295u < arg_2, all(vec2<bool>(true, true)), select(false, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), all(func_3()))), !(!all(vec3<bool>(true, true, true))), true);
    let var_4 = ~(var_2.x >> (44115u % 32u));
    return 8738i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    global1 = arg_0;
    var var_0 = arg_0;
    var var_1 = vec4<u32>(u_input.b, u_input.b | (countOneBits(0u) & ~(1u & u_input.b)), 45128u, 8333u);
    var_0 = arg_0;
    var var_2 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~vec3<u32>(u_input.b & ~24349u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, u_input.b)), 0u));
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 1510f, global1.d.x, -575f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b + vec4<f32>(global1.d.x, global1.b.x, -764f, -817f)))), ~19987i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, -329f) + global1.d), vec2<f32>(global1.b.x, 239f), true)))), _wgslsmith_mult_i32(global1.c, func_1(~vec3<i32>(23038i, -1i, -34920i), -2147483647i, u_input.b)) & ~u_input.c.x, true);
    let var_2 = _wgslsmith_clamp_u32(0u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, 0u, u_input.b, 4294967295u)), vec4<u32>(u_input.b, 49255u, 4294967295u, var_0.x) | vec4<u32>(79089u, 22388u, 1u, 72598u), vec4<u32>(var_0.x, u_input.b, u_input.b, 88979u)), vec4<u32>(u_input.b, ~4294967295u, var_0.x << (u_input.b % 32u), ~25972u)), u_input.b);
    let var_3 = (var_2 >= firstLeadingBit(var_2)) & (true || (min(6991u, ~var_0.x) <= 1u));
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, var_1.b.x, ~(min(~vec4<u32>(7507u, 58897u, var_2, var_0.x), ~vec4<u32>(1u, 9226u, var_0.x, var_0.x)) << (vec4<u32>(countOneBits(u_input.b), ~29817u, 93019u, 51478u) % vec4<u32>(32u))));
}

