struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 10u)]))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1562f)), _wgslsmith_f_op_f32(select(653f, global0[_wgslsmith_index_u32(u_input.c, 10u)], true)))))), global0[_wgslsmith_index_u32(u_input.a, 10u)]);
}

fn func_2(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, global0[_wgslsmith_index_u32(u_input.a, 10u)], 425f, arg_1))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1739f, -195f, arg_1, arg_1)))), vec4<f32>(_wgslsmith_div_f32(arg_1, 322f), _wgslsmith_f_op_f32(func_3()), arg_1, -1000f), true)))));
    let var_1 = Struct_1(any(select(vec4<bool>(!arg_0, true, true, all(vec4<bool>(arg_0, true, arg_0, arg_0))), !(!vec4<bool>(arg_0, arg_0, true, true)), arg_0)));
    var var_2 = arg_0;
    var var_3 = select(vec3<bool>(53732u < u_input.a, !arg_0, true), select(vec3<bool>(!var_1.a, true, !all(vec4<bool>(true, false, arg_0, false))), !select(!vec3<bool>(true, true, var_1.a), select(vec3<bool>(true, true, true), vec3<bool>(var_1.a, arg_0, arg_0), var_1.a), !vec3<bool>(arg_0, arg_0, true)), any(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, var_1.a), arg_0))), true);
    global0 = array<f32, 10>();
    return var_1.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = all(vec3<bool>(arg_0.x, false, any(arg_2.ww)));
    let var_1 = select(select(select(vec2<bool>(true, arg_0.x), !(!arg_0), select(arg_2.yy, vec2<bool>(arg_0.x, false), global0[_wgslsmith_index_u32(arg_1.b.x, 10u)] <= global0[_wgslsmith_index_u32(u_input.a, 10u)])), arg_2.wz, !(!arg_2.x) | all(vec3<bool>(true, arg_0.x, arg_2.x))), vec2<bool>(!arg_0.x, true), arg_0);
    let var_2 = 944f;
    let var_3 = _wgslsmith_f_op_f32(var_2 - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zw, ~(~vec2<u32>(1u, 0u))), 10u)], global0[_wgslsmith_index_u32(73882u, 10u)]));
    var_0 = var_1.x;
    return arg_1;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec4<bool> {
    global0 = array<f32, 10>();
    var var_0 = false;
    let var_1 = func_4(vec2<bool>(!any(vec2<bool>(true, true)), func_2(true, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~14068u, 10u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(18812u, 10u)])))), Struct_2(~countOneBits(vec3<u32>(u_input.a, arg_0.a.a.x, arg_0.a.b.x)), vec3<u32>(~(~1u), 1u, 4294967295u)), !(!vec4<bool>(arg_1 > arg_1, any(vec4<bool>(false, true, true, false)), true, any(vec4<bool>(true, false, true, true)))));
    var var_2 = global0[_wgslsmith_index_u32(~15416u, 10u)];
    let var_3 = vec4<i32>(_wgslsmith_add_i32(arg_1, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, arg_1), -vec2<i32>(36201i, 0i)) << (7098u % 32u)), i32(-1i) * -arg_1, _wgslsmith_mult_i32(1i, arg_1), arg_1);
    return !(!vec4<bool>(true, _wgslsmith_div_u32(var_1.a.x, u_input.b.x) >= _wgslsmith_clamp_u32(var_1.b.x, 0u, 8431u), false, true));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>) -> StorageBuffer {
    global0 = array<f32, 10>();
    var var_0 = Struct_1(!(!func_1(Struct_3(Struct_2(u_input.b.yzz, vec3<u32>(u_input.b.x, 22968u, 0u)), arg_0), -1i).x));
    let var_1 = Struct_1(arg_1.x);
    let var_2 = vec4<u32>(select(_wgslsmith_div_u32(~(~u_input.c), 7405u), min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b.wxw, u_input.b.zyx), u_input.c, 0u), ~1u), !(!all(vec4<bool>(var_0.a, arg_1.x, arg_1.x, var_1.a)))), u_input.b.x, abs(1u), select(_wgslsmith_dot_vec3_u32(~min(u_input.b.zzw, u_input.b.zwy), vec3<u32>(4294967295u, min(112460u, 35784u), min(0u, 69725u))), min(u_input.a, u_input.b.x), arg_1.x));
    let var_3 = Struct_1(true);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-920f, arg_0, -1208f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0[_wgslsmith_index_u32(36106u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]))))))), _wgslsmith_f_op_f32(165f * arg_0), 1229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f))), vec4<i32>(~(~2147483647i), -35650i, 2147483647i, firstLeadingBit(_wgslsmith_mod_i32(-3888i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -35028i), vec2<i32>(1i, -281i))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 10>();
    var var_0 = abs(~vec2<u32>(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mod_u32(u_input.b.x, 4294967295u)), countOneBits(u_input.b.x) << (u_input.c % 32u)));
    let x = u_input.a;
    s_output = func_5(-192f, select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), func_1(Struct_3(Struct_2(u_input.b.zxz, u_input.b.wyx), global0[_wgslsmith_index_u32(var_0.x, 10u)]), 1i)), vec4<bool>(true, true, true, true)));
}

