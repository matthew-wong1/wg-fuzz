struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<u32>, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yy, _wgslsmith_mult_vec2_u32(vec2<u32>(106600u, arg_0), u_input.c.wz)), u_input.c.wy), min(~(vec2<u32>(u_input.c.x, 45115u) & u_input.c.ww), countOneBits(select(vec2<u32>(0u, arg_0), u_input.c.ww, vec2<bool>(true, true))))));
    let var_1 = ~(select(u_input.c.x, 0u, false) >> (~(arg_0 << (_wgslsmith_div_u32(var_0.a.x, 13071u) % 32u)) % 32u));
    global1 = array<vec4<u32>, 14>();
    var_0 = Struct_1(var_0.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(559f + -301f), -735f), vec2<f32>(global0.x, -1381f)) + global0.yx) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1051f, 1000f) * _wgslsmith_f_op_vec2_f32(-global0.yw)))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1007f + global0.x), _wgslsmith_f_op_f32(step(1000f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1524f, 1161f)) * _wgslsmith_f_op_f32(sign(var_2.x)))))));
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_u32(u_input.c.x, ~reverseBits(3293u));
    global1 = array<vec4<u32>, 14>();
    var var_1 = Struct_1(vec2<u32>(1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(111176u, 1u)), ~var_0)) ^ select(~(~vec2<u32>(38844u, u_input.c.x)), u_input.c.wx, true));
    let var_2 = true;
    var var_3 = !select(select(vec3<bool>(all(vec2<bool>(var_2, var_2)), var_2, var_2), vec3<bool>(!var_2, true, true), var_2), select(select(select(vec3<bool>(false, true, true), vec3<bool>(var_2, false, var_2), true), !vec3<bool>(var_2, false, true), !var_2), !select(vec3<bool>(var_2, false, false), vec3<bool>(var_2, var_2, true), var_2), !vec3<bool>(true, true, var_2)), !(!select(vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, var_2, true), vec3<bool>(false, true, false))));
    return firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, var_1.a.x), vec2<u32>(abs(var_1.a.x), u_input.c.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.c.zxy), vec3<u32>(80140u, var_0, var_0)), vec3<u32>(var_0, var_1.a.x & var_0, 0u)), u_input.c.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(func_3(_wgslsmith_f_op_vec3_f32(func_2(min(u_input.c.x, u_input.c.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 2003f)), _wgslsmith_f_op_vec3_f32(global0.zxx + vec3<f32>(1286f, 226f, global0.x)))))) - vec3<f32>(-951f, _wgslsmith_div_f32(-1333f, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global0.x)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec2_u32(arg_2.a, vec2<u32>(arg_0.a.a.x, firstLeadingBit(1u)))));
    let var_3 = Struct_1(arg_0.a.a);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.a.x, var_2.a.a.x, 30030u), countOneBits(u_input.c.xzz))))).x);
    return Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(48930u, 58473u), _wgslsmith_mod_vec2_u32(var_3.a, var_2.a.a)) | ~(~_wgslsmith_mult_vec2_u32(u_input.c.wy, arg_2.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global1 = array<vec4<u32>, 14>();
    let var_0 = true;
    let var_1 = Struct_1(vec2<u32>(func_1(Struct_2(arg_1.a), select(vec4<bool>(true, true, var_0, true), select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, true, var_0, var_0), var_0), vec4<bool>(var_0, var_0, false, var_0)), arg_1.a).a.x, 1u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-271f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f)), _wgslsmith_f_op_vec3_f32(func_2(firstLeadingBit(4294967295u))).x, _wgslsmith_div_f32(global0.x, global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 606f, _wgslsmith_f_op_f32(sign(1579f)), global0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1250f, -344f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-186f, global0.x, 409f, 536f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(461f, 1560f, global0.x, -558f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(366f, 174f)), global0.x, -341f, _wgslsmith_f_op_f32(-950f + _wgslsmith_f_op_f32(f32(-1f) * -326f)))), false));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1523f, -619f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, 2767f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(261f, global0.x, -444f, global0.x))))));
    var var_0 = u_input.a.wzy;
    let var_1 = _wgslsmith_f_op_vec3_f32(global0.yzy + vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_4(u_input.a, Struct_2(Struct_1(u_input.c.zz)), Struct_2(func_1(Struct_2(Struct_1(u_input.c.xy)), vec4<bool>(true, true, true, true), Struct_1(u_input.c.xx))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1610f, _wgslsmith_f_op_f32(exp2(global0.x))))))));
    var var_2 = select(vec2<bool>(all(vec4<bool>(false, true, true, any(vec2<bool>(true, false)))), false || all(vec4<bool>(true, true, true, true))), vec2<bool>(true, ((u_input.b <= u_input.a.x) == any(vec3<bool>(false, true, false))) == any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec2<bool>(false, any(vec3<bool>(all(vec3<bool>(false, true, true)), false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~countOneBits(u_input.c), ~_wgslsmith_add_vec4_u32(firstTrailingBit(u_input.c), vec4<u32>(1u, u_input.c.x, 21122u, 40492u))), 1322f, 2147483647i, max(max(26159i, firstTrailingBit(42288i)), max(2147483647i, abs(1i))));
}

