struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(arg_0.x)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))));
    var var_1 = arg_0.x;
    var_1 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(1f + arg_0.x));
    let var_2 = !select(vec2<bool>(true, global0[_wgslsmith_index_u32(56872u, 21u)]), select(vec2<bool>(true, arg_0.x > -1860f), !select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), vec2<bool>(true, false)), !(!vec2<bool>(arg_1, false))), vec2<bool>(true, false));
    global0 = array<bool, 21>();
    return vec3<bool>(var_2.x, (-arg_2.x | arg_2.x) == arg_2.x, !(arg_1 == (true | !global0[_wgslsmith_index_u32(u_input.a.x, 21u)])));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = u_input.a;
    let var_1 = arg_0.x;
    global0 = array<bool, 21>();
    var var_2 = Struct_1(!(!arg_1.x));
    let var_3 = vec3<u32>(73456u, var_0.x, ~4294967295u);
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    let var_0 = ~min(abs(vec2<i32>(1i, 1i)), abs(vec2<i32>(1i, 1i)));
    let var_1 = max(_wgslsmith_sub_u32(6984u, func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, arg_2, -172f))))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) * vec3<f32>(735f, arg_2, -138f)), global0[_wgslsmith_index_u32(4294967295u, 21u)], ~var_0))), 4294967295u);
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i, var_0.x), ~(~var_0.x), ~var_0.x & _wgslsmith_mod_i32(62687i, var_0.x)), min(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(var_0.x, -2147483647i, 0i)), vec3<i32>(-1i, 38821i, -17179i)), -vec3<i32>(29950i, var_0.x, var_0.x))), _wgslsmith_mod_i32(var_0.x, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0)), vec2<i32>(_wgslsmith_clamp_i32(-38110i, var_0.x, -1i), var_0.x | var_0.x))));
    var_2 = var_0.x & var_0.x;
    var var_3 = Struct_1(true && !all(vec2<bool>(true, true)));
    return abs(countOneBits(_wgslsmith_div_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_0.x, -2147483647i), vec3<i32>(19094i, var_0.x, -2147483647i)), vec3<i32>(var_0.x, ~1i, var_0.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(((true != global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 695u), vec3<u32>(u_input.a.x, 41083u, u_input.a.x)), 21u)]) != select(global0[_wgslsmith_index_u32(~21748u, 21u)], false || global0[_wgslsmith_index_u32(0u, 21u)], !global0[_wgslsmith_index_u32(4294967295u, 21u)])) && !all(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 21u)])));
    let var_1 = vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 21u)], all(select(select(!vec4<bool>(arg_1.a, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], arg_1.a, true), !vec4<bool>(false, var_0.a, true, global0[_wgslsmith_index_u32(25169u, 21u)])), !select(vec4<bool>(false, var_0.a, var_0.a, arg_1.a), vec4<bool>(false, arg_1.a, true, true), true), all(func_2(arg_2, true, arg_0.yy)))), !(!var_0.a | true) | all(func_2(_wgslsmith_f_op_vec3_f32(round(arg_2)), var_0.a, ~vec2<i32>(arg_0.x, -2147483647i))));
    var var_2 = arg_1;
    let var_3 = vec4<u32>(u_input.a.x, ~(select(42878u, u_input.a.x, true) >> (u_input.a.x % 32u)) << (~0u % 32u), _wgslsmith_mod_u32(4294967295u, ~(~1u)), ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a, u_input.a))));
    global0 = array<bool, 21>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(max(arg_2.x, 333f)))) + _wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) * _wgslsmith_f_op_f32(-arg_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(~1665u != _wgslsmith_add_u32(u_input.a.x, 4294967295u), false));
    var_0 = !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true));
    var_0 = select(vec2<bool>(true, true), select(vec2<bool>(any(!vec4<bool>(var_0.x, false, var_0.x, true)), true), select(vec2<bool>(!var_0.x, all(vec2<bool>(false, global0[_wgslsmith_index_u32(9053u, 21u)]))), select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 21u)], true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(var_0.x, false)), var_0.x == true), !(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), !(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)])))));
    var_0 = select(vec2<bool>(true, !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(0u, u_input.a.x)), 21u)]), vec2<bool>(true, false), global0[_wgslsmith_index_u32(max(3172u, 0u), 21u)]);
    var var_1 = abs(abs(~(~vec3<i32>(1i, 1i, 1i))));
    global0 = array<bool, 21>();
    let var_2 = var_1.x;
    let var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec3_i32(-(firstLeadingBit(vec3<i32>(var_1.x, -1i, var_1.x)) >> (firstTrailingBit(vec3<u32>(1u, 0u, 1u)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(func_1(Struct_1(var_0.x), Struct_1(global0[_wgslsmith_index_u32(6040u, 21u)]), 1104f) ^ vec3<i32>(var_1.x, 2147483647i, var_1.x), vec3<i32>(-1i) * -vec3<i32>(var_1.x, var_1.x, -52565i))), Struct_1(func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(-213f)), _wgslsmith_f_op_f32(min(855f, -529f)), _wgslsmith_f_op_f32(-633f * 1000f)), global0[_wgslsmith_index_u32(~54582u, 21u)], ~var_1.zz).x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-148f, -1953f)), _wgslsmith_f_op_f32(max(-1000f, 459f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(860f, -749f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~(select(~vec4<u32>(0u, u_input.a.x, 76983u, u_input.a.x), select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(0u, 0u, 21226u, 1u), global0[_wgslsmith_index_u32(604u, 21u)]), all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], false))) | min(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), select(vec4<u32>(19423u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 32361u, u_input.a.x), false))));
}

