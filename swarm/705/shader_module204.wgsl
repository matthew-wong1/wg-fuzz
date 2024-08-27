struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: bool = false;

var<private> global2: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(189f, 191f), vec2<f32>(-2895f, 1301f));

var<private> global3: vec4<f32> = vec4<f32>(721f, -686f, -333f, 500f);

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - -765f) + 793f);
    global1 = true;
    var_0 = arg_1;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_1)))), 1218f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -832f))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = max(-u_input.e, vec4<i32>(-6429i, 12668i, ~(_wgslsmith_mult_i32(u_input.a.x, -18704i) >> (u_input.c % 32u)), -(~select(18168i, -2147483647i, arg_1))));
    var var_1 = global4[_wgslsmith_index_u32(~1u, 30u)];
    var var_2 = Struct_2(~var_1.a, var_1.b, vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-377f, global3.x, var_1.b.x)) + global3.x)), _wgslsmith_f_op_f32(func_3(Struct_1(-u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.d), var_0.wyx), global3.x <= global3.x, select(arg_2.yx, var_1.b.zy, var_1.b.yz)), Struct_1(vec3<i32>(u_input.d, 15850i, -2147483647i), abs(u_input.a.x), arg_2.x, var_1.b.yw))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1771f)), 1489f)));
    var var_3 = 58844u & var_2.a.x;
    var var_4 = var_2.a.x;
    return Struct_1(u_input.a, 14904i, any(select(select(select(vec3<bool>(false, arg_2.x, false), var_1.b.yww, true), vec3<bool>(false, arg_1, arg_1), true), select(vec3<bool>(false, var_1.b.x, var_2.b.x), vec3<bool>(true, true, true), all(var_2.b.ywz)), vec3<bool>(arg_1, true, arg_2.x))), select(vec2<bool>(arg_2.x, true), vec2<bool>(_wgslsmith_f_op_f32(step(var_2.c.x, var_2.c.x)) == _wgslsmith_f_op_f32(min(-279f, -217f)), var_2.b.x), arg_2.yy));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    let var_0 = func_2(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.c, ~u_input.c), min(43427u, 18580u), _wgslsmith_mod_u32(27300u, ~17626u)), false, !(!vec3<bool>(all(vec2<bool>(arg_1.b.x, arg_1.b.x)), !arg_1.b.x, !arg_1.b.x)));
    let var_1 = global0[_wgslsmith_index_u32(arg_1.a.x, 16u)];
    var var_2 = arg_1.b;
    let var_3 = Struct_2(var_1.a ^ ~(~arg_1.a), !arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1021f) + var_1.c.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1.c.x))))), _wgslsmith_f_op_f32(-var_1.c.x), global3.x, _wgslsmith_f_op_f32(516f + _wgslsmith_f_op_f32(-global3.x))));
    let var_4 = any(!select(select(select(vec3<bool>(false, true, true), arg_1.b.zxz, var_3.b.xzx), select(vec3<bool>(false, true, arg_1.b.x), var_1.b.xxz, true), vec3<bool>(true, true, true)), select(select(var_2.yxy, vec3<bool>(var_0.c, var_1.b.x, false), vec3<bool>(false, var_1.b.x, var_3.b.x)), select(var_2.wwz, vec3<bool>(false, var_1.b.x, arg_1.b.x), true), vec3<bool>(true, var_0.c, true)), select(arg_1.b.xzz, var_1.b.yxw, var_1.b.wxz)));
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(963f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.e, Struct_2(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec4<bool>(false, false, true, false), vec4<f32>(-1320f, -2730f, -458f, -1101f))))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x * global3.x)))))));
    let var_1 = true;
    global4 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 1000f))))), _wgslsmith_f_op_f32(min(1264f, _wgslsmith_f_op_f32(func_3(Struct_1(-vec3<i32>(u_input.e.x, -6148i, u_input.e.x), 1i, all(vec3<bool>(var_1, true, false)), vec2<bool>(var_1, false)), func_2(select(vec4<u32>(u_input.c, u_input.c, u_input.c, 35259u), vec4<u32>(u_input.c, u_input.c, u_input.c, 77753u), false), true, !vec3<bool>(var_1, var_1, false)))))), ~select(firstLeadingBit(vec4<u32>(u_input.c, 39526u, u_input.c, 0u)), ~vec4<u32>(u_input.c, 11186u, 4294967295u, 0u), !(!vec4<bool>(true, false, var_1, var_1))), reverseBits(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-34227i, 1i, 2147483647i, u_input.a.x)))));
}

