struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2) -> f32 {
    let var_0 = 0i;
    var var_1 = vec3<bool>((select(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), any(vec4<bool>(true, false, arg_0.x, false)), true) || (-1399f >= _wgslsmith_f_op_f32(arg_2.c.a + -296f))) || false, true, arg_0.x && false);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)))));
    let var_3 = _wgslsmith_mod_i32(~u_input.c.x, _wgslsmith_mod_i32(2147483647i, _wgslsmith_clamp_i32(var_0, 16508i, abs(_wgslsmith_clamp_i32(-4325i, 52508i, 0i)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.a)), _wgslsmith_f_op_f32(1085f + 872f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + arg_2.a) + _wgslsmith_f_op_f32(f32(-1f) * -394f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2)) * _wgslsmith_f_op_f32(arg_2.c.a * -1275f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, -172f, arg_2.c.a, _wgslsmith_f_op_f32(var_2 + arg_2.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 180f, -1076f, arg_2.a)))), var_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1667f, 920f)))), _wgslsmith_f_op_f32(arg_2.c.a + var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -1554f))) * var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1056f)))))));
    return _wgslsmith_f_op_f32(round(var_2));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<bool>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_3(!(!(!arg_2.xz)), 4120u, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -370f), u_input.d, Struct_1(_wgslsmith_f_op_f32(abs(-1335f))), abs(abs(u_input.e)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d.x, u_input.e, 1u, u_input.d.x), ~vec4<u32>(u_input.d.x, u_input.e, 15081u, 0u), vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.d.x))))), ~u_input.d & u_input.d, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f + _wgslsmith_div_f32(-2408f, -1862f)) * _wgslsmith_f_op_f32(func_3(arg_2.yx, 11091u, Struct_2(1745f, vec3<u32>(u_input.d.x, 1u, u_input.e), Struct_1(469f), u_input.d.x, vec4<u32>(4294967295u, 57870u, u_input.e, 0u)))))), abs((u_input.d.x ^ countOneBits(101860u)) | u_input.d.x), ~(vec4<u32>(0u, 4294967295u << (u_input.d.x % 32u), 54100u, 0u) << ((vec4<u32>(65540u, u_input.e, u_input.e, u_input.d.x) | ~vec4<u32>(u_input.d.x, u_input.e, u_input.e, u_input.d.x)) % vec4<u32>(32u))));
    let var_1 = min(~(~((var_0.e & var_0.e) | var_0.e)), var_0.e);
    var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-953f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-944f, 275f)) + _wgslsmith_f_op_f32(var_0.a - -993f))))), ~countOneBits(var_0.e.wyw), Struct_1(var_0.c.a), 1u, var_0.e);
    let var_2 = select(!select(vec2<bool>(true, true | arg_2.x), vec2<bool>(false, true), false && (-210f == var_0.a)), vec2<bool>(true, true), true);
    var var_3 = var_2;
    return 1000f;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(276f - arg_0.d.a), _wgslsmith_f_op_f32(func_2(false, u_input.b, vec3<bool>(arg_0.b, arg_0.b, false))), -567f, _wgslsmith_f_op_f32(1127f * arg_1.x))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.d.a, 619f, _wgslsmith_f_op_f32(526f * 1607f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, arg_0.c.a, 288f, arg_1.x))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -455f));
    var var_2 = false;
    var var_3 = !(!(all(!vec3<bool>(arg_0.b, arg_0.b, true)) || true));
    let var_4 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(11173i, arg_0.a), ~2147483647i)), arg_0.a << (u_input.d.x % 32u)), firstLeadingBit(_wgslsmith_div_i32(~_wgslsmith_add_i32(1i, 16944i), reverseBits(firstLeadingBit(37729i)))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(-1054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) - 2441f), true));
    let var_1 = vec4<i32>(i32(-1i) * -select(u_input.a.x, 0i, true), -2147483647i, -func_1(Struct_3(_wgslsmith_clamp_i32(-1i, 28947i, u_input.a.x), true, Struct_1(-1023f), Struct_1(651f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-931f, var_0, -2302f))), _wgslsmith_div_vec3_u32(min(u_input.d, vec3<u32>(u_input.d.x, 1u, u_input.e)), ~vec3<u32>(u_input.d.x, 38435u, 54095u))), 0i);
    var var_2 = Struct_1(1629f);
    var_2 = Struct_1(var_2.a);
    let var_3 = reverseBits(vec2<u32>(u_input.e, 1u) & _wgslsmith_mult_vec2_u32(~(~u_input.d.xx), ~abs(vec2<u32>(u_input.d.x, 14072u))));
    let var_4 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(415f, var_0))) * 1317f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(344f, _wgslsmith_f_op_f32(ceil(-424f))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_0, var_0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2004f, var_0, var_2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-458f - _wgslsmith_f_op_f32(-399f * 1394f)), 1493f))), var_2.a);
}

