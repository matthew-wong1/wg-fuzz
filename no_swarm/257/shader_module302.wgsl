struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1945f - arg_2.a.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(371f)), arg_2.a.d)), -432f, arg_2.b.a & true))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.c.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(100f)), _wgslsmith_f_op_f32(-arg_2.a.c.x)))), arg_2.b.c.x);
    var var_2 = !(!vec4<bool>(select(true && arg_2.b.a, true, any(vec4<bool>(arg_2.b.a, true, false, arg_2.b.a))), var_0 == -332f, arg_2.a.c.x <= _wgslsmith_f_op_f32(-897f * var_0), true));
    var var_3 = ~(~u_input.d);
    var_2 = vec4<bool>(true, any(select(var_2.xz, !(!var_2.wz), !select(var_2.zz, var_2.yx, arg_2.a.a))), !var_2.x, _wgslsmith_dot_vec3_i32(-(arg_1 | arg_1), vec3<i32>(u_input.c.x, -arg_2.a.e, arg_0 & 31315i)) == max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_0, -9296i, 2147483647i), -vec4<i32>(arg_0, u_input.a.x, arg_1.x, -54929i)), ~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c)));
    return var_1;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = ~4294967295u;
    var_0 = min(~9489u, ~(~0u));
    var var_1 = _wgslsmith_f_op_f32(-1703f + _wgslsmith_f_op_f32(select(874f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -753f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c.x, vec3<i32>(2147483647i, u_input.a.x, 30138i), Struct_3(Struct_1(true, u_input.d, vec4<f32>(-468f, -1332f, -124f, -140f), 1108f, u_input.a.x), Struct_1(arg_0.x, vec2<u32>(u_input.d.x, 3667u), vec4<f32>(-1119f, 294f, 355f, 395f), -1533f, u_input.c.x)))) - _wgslsmith_div_f32(535f, 1225f))), ~_wgslsmith_div_u32(u_input.e, 4294967295u) >= (1003u >> (u_input.d.x % 32u)))));
    var var_2 = vec3<f32>(-775f, 153f, -346f);
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x)));
    return Struct_1(all(vec2<bool>(true, arg_0.x)), ~firstTrailingBit(u_input.d >> (u_input.d % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(var_2.x + -827f)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2.x)), -1792f, arg_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)), var_2.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(step(2110f, -1000f))))), -751f, _wgslsmith_dot_vec3_i32(u_input.c.zyz, ~min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, -38259i, 4030i), vec3<i32>(0i, u_input.a.x, 46647i)), u_input.c.yyx)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec2<bool>(!(false || (u_input.d.x <= 50714u)), !any(vec4<bool>(true, false, true, false))));
    let var_1 = Struct_2(func_2(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, var_0.a)), vec2<bool>(var_0.b.x > 1u, true), var_0.a)), u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(305f + var_1.a.d) - _wgslsmith_f_op_f32(max(var_1.a.c.x, -364f))), _wgslsmith_f_op_f32(f32(-1f) * -1128f))) * vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -536f, _wgslsmith_f_op_f32(max(var_1.a.d, _wgslsmith_div_f32(var_0.d, var_0.d)))));
    var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * -1682f))) + -115f), _wgslsmith_f_op_f32(func_2(vec2<bool>(var_0.a, var_0.a)).d * _wgslsmith_f_op_f32(floor(-860f))), var_1.a.c.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.xxy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.ywx * var_0.c.xxw))), vec3<f32>(_wgslsmith_f_op_f32(-722f + _wgslsmith_f_op_f32(1517f + var_1.a.d)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(func_3(var_0.e, vec3<i32>(u_input.c.x, -6187i, var_1.a.e), Struct_3(Struct_1(var_1.a.a, vec2<u32>(1u, 0u), var_1.a.c, 588f, -22540i), Struct_1(true, vec2<u32>(0u, u_input.d.x), vec4<f32>(1294f, 868f, var_0.c.x, var_1.a.c.x), -1071f, u_input.c.x))))), _wgslsmith_f_op_f32(sign(var_2.x)))))));
    var var_3 = var_0.b.x;
    return func_2(select(select(!select(vec2<bool>(var_0.a, var_1.a.a), vec2<bool>(true, var_0.a), var_1.a.a), select(!vec2<bool>(var_0.a, false), !vec2<bool>(false, var_0.a), true), !vec2<bool>(var_0.a, true)), vec2<bool>(true, true || all(vec4<bool>(false, false, var_1.a.a, true))), var_1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var_0 = u_input.b.yx ^ _wgslsmith_clamp_vec2_u32(u_input.d, min(u_input.d << (firstLeadingBit(u_input.b.yx) % vec2<u32>(32u)), vec2<u32>(0u >> (var_0.x % 32u), abs(u_input.d.x))), u_input.b.zw ^ u_input.d);
    var var_1 = u_input.b;
    var var_2 = Struct_2(Struct_1(true, max(_wgslsmith_mod_vec2_u32(var_1.wx, vec2<u32>(var_0.x, var_1.x)) >> (~u_input.d % vec2<u32>(32u)), ~u_input.d), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1392f + -647f)), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-947f + -1521f), _wgslsmith_f_op_f32(step(-1101f, 1434f))), -301f), 334f, u_input.c.x), ~1u);
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.c)), var_2.a.e);
}

