struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_3(1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))) - 1739f), 1821f)));
    var var_2 = var_0;
    var var_3 = 689f;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(-463f, 996f), vec2<bool>(true, arg_0.x))), _wgslsmith_f_op_vec2_f32(arg_1 + var_1)))));
    return var_1.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-298f)) - _wgslsmith_f_op_f32(f32(-1f) * -150f)) * _wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-260f, 1033f))), ~vec3<u32>(u_input.d, u_input.d, u_input.a))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-361f, -603f))) + -183f), u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-475f, _wgslsmith_div_f32(489f, -1419f), _wgslsmith_div_f32(-750f, 1380f), 1269f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-570f, -774f, -720f, 492f) + vec4<f32>(-1343f, -1490f, -763f, -199f)))), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)), var_0.b);
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(u_input.d), _wgslsmith_mod_u32(select(~1u, ~u_input.d, true), ~u_input.a ^ _wgslsmith_mod_u32(u_input.d, u_input.a))), vec2<u32>(firstLeadingBit(~u_input.d), u_input.a ^ 1u) | _wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, u_input.a)), firstTrailingBit(vec2<u32>(u_input.a, 24139u))));
    let var_2 = var_0.a;
    let var_3 = Struct_2(-474f, Struct_1(-620f, u_input.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.b.c)))), var_0.b.d));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(125f)), var_0.b.a)) * var_3.a)), -1029f));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-897f - _wgslsmith_f_op_f32(-arg_1.c.x)), Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.a)), 7551i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(max(arg_1.a, arg_1.a)), 951f, _wgslsmith_f_op_f32(-arg_1.c.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 455f, -1411f, 1318f))), !arg_1.d));
    var_0 = var_1.b.c.x;
    var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c.x))))), _wgslsmith_f_op_f32(-arg_1.c.x))), Struct_1(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-arg_1.a)), var_1.b.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(1580f, -1000f, var_1.b.c.x, var_1.a) * vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.x * 566f), _wgslsmith_div_f32(var_1.a, arg_1.c.x), _wgslsmith_f_op_f32(var_1.a + arg_1.a), _wgslsmith_f_op_f32(abs(1000f)))), false));
    let var_2 = !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -622f), var_1.a)) != arg_1.a);
    return _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.b.c.x))) + vec2<f32>(1290f, _wgslsmith_f_op_f32(-arg_1.c.x))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.a) * _wgslsmith_div_vec2_f32(vec2<f32>(-293f, arg_1.c.x), var_1.b.c.zz))))), _wgslsmith_div_vec3_u32(firstLeadingBit(arg_0 ^ ~arg_0), ~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, -150f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(873f, -1577f) * vec2<f32>(-867f, 781f))) * vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f * 1936f))))));
    let var_1 = ~vec2<i32>(u_input.e.x, -1i);
    let var_2 = vec4<bool>(true, true, true, true);
    var var_3 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(reverseBits(vec3<u32>(u_input.d, u_input.d, 24003u)), Struct_1(1777f, 55090i, vec4<f32>(var_0.x, 1977f, var_0.x, var_0.x), true))) * var_0.x) - _wgslsmith_f_op_f32(func_2())));
    let var_4 = Struct_3(_wgslsmith_div_i32(u_input.e.x, var_1.x));
    var var_5 = var_3.yy;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.d, 20309u), vec3<u32>(30767u, 0u, u_input.c)), ~vec3<u32>(19831u, u_input.c, u_input.c)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1738u, 9006u), vec2<u32>(u_input.d, 1u))));
}

