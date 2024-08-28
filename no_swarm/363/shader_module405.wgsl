struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(1i, -6272i, i32(-2147483648), 25505i));

var<private> global1: i32 = -14817i;

var<private> global2: array<bool, 30>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    global2 = array<bool, 30>();
    global2 = array<bool, 30>();
    var var_0 = Struct_2(Struct_1(arg_0.a), vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x ^ u_input.b.x, _wgslsmith_mod_i32(arg_1.x, u_input.b.x), arg_1.x), -2147483647i) | -(_wgslsmith_div_vec2_i32(arg_1.zy, u_input.b.xw) | vec2<i32>(52645i, arg_1.x)));
    let var_1 = Struct_2(var_0.a, ~(-vec2<i32>(countOneBits(var_0.b.x), arg_1.x)));
    global2 = array<bool, 30>();
    return !any(!(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(1u, 30u)])));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    global2 = array<bool, 30>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 373f), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-177f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -568f, -899f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))), global2[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(u_input.a.x, u_input.c.x)), 30u)])), select(func_3(Struct_1(vec3<f32>(590f, -321f, arg_0)), vec3<i32>(31902i, 2147483647i, u_input.b.x), Struct_1(vec3<f32>(arg_0, arg_0, 1597f))), true, false) != global2[_wgslsmith_index_u32(u_input.a.x ^ u_input.c.x, 30u)])));
    global2 = array<bool, 30>();
    var var_1 = vec2<u32>(~(u_input.c.x ^ u_input.a.x), ~(~41796u));
    global2 = array<bool, 30>();
    return vec2<bool>(true, true);
}

fn func_1() -> Struct_2 {
    let var_0 = !select(select(vec2<bool>(all(vec2<bool>(true, global2[_wgslsmith_index_u32(31815u, 30u)])), global2[_wgslsmith_index_u32(32117u, 30u)]), func_2(274f), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 30u)]))), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy) < (u_input.a.x & 22144u), select(false, u_input.a.x < u_input.a.x, false)), func_2(_wgslsmith_f_op_f32(-886f + _wgslsmith_f_op_f32(-609f * 823f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1700f, -196f), _wgslsmith_f_op_f32(312f * -117f), -139f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-224f * -768f), _wgslsmith_f_op_f32(floor(-547f)), _wgslsmith_f_op_f32(trunc(175f)))))) * vec3<f32>(1365f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1781f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(522f, 2219f, global2[_wgslsmith_index_u32(u_input.c.x, 30u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(408f)))))));
    var var_2 = ~vec4<u32>(abs(~1u) ^ reverseBits(u_input.c.x), u_input.a.x, select(31241u, 54053u, u_input.b.x < _wgslsmith_add_i32(u_input.b.x, -14689i)), u_input.c.x);
    var var_3 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1255f, var_1.x)), _wgslsmith_f_op_f32(1316f * var_1.x), true)), -481f, var_1.x)), u_input.b.xw);
    let var_4 = vec3<bool>(false && all(!var_0), true & (var_3.b.x >= _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(var_2.x, 1u)], u_input.b & u_input.b)), !global2[_wgslsmith_index_u32(40274u, 30u)] & any(select(vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 30u)], true, true), !vec3<bool>(var_0.x, true, true), vec3<bool>(global2[_wgslsmith_index_u32(9698u, 30u)], var_0.x, true))));
    return Struct_2(var_3.a, vec2<i32>(-2147483647i, i32(-1i) * -62638i));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global2 = array<bool, 30>();
    let var_0 = Struct_1(arg_2.a.a);
    let var_1 = u_input.a;
    var var_2 = Struct_2(func_1().a, max(countOneBits(vec2<i32>(2147483647i, 13153i)), arg_2.b));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, var_2.a.a.x, -1458f)))) * var_2.a.a));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_clamp_i32(0i, u_input.b.x, u_input.b.x);
    let var_0 = func_4(u_input.b, -1000f, func_1());
    let var_1 = func_4(firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, 0u >> (u_input.a.x % 32u)) >> (~abs(0u) % 32u), 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(-var_0.a.x)))), func_1());
    var var_2 = true;
    var var_3 = abs(u_input.b.zyx);
    let var_4 = any(func_2(func_4(vec4<i32>(var_3.x, firstLeadingBit(u_input.b.x), select(u_input.b.x, 17148i, true), u_input.b.x & -34076i), -1825f, func_1()).a.x));
    global0 = array<vec4<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.ywy);
}

