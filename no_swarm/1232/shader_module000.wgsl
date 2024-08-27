struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(574f)))) + 1000f)));
    return u_input.b.x;
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<f32>) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 334f, -535f, arg_2.x) - vec4<f32>(arg_0, 2388f, -266f, arg_1.a.x))))), arg_1.a.zz, max(~vec4<u32>(_wgslsmith_mult_u32(u_input.c, 13849u), 1u, u_input.a, reverseBits(u_input.d.x)), abs(~vec4<u32>(7117u, u_input.c, u_input.d.x, u_input.c))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-369f, var_0.a))))));
    var var_2 = -u_input.b.x ^ ((i32(-1i) * -arg_1.c.a) ^ -31143i);
    var_2 = 2147483647i ^ ~(u_input.b.x << (min(u_input.a, u_input.a) % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_2.zx - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1450f, var_0.c.x), vec2<f32>(var_0.a, arg_2.x)))))))));
    return _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, min(1i, 0i) ^ ~u_input.b.x)), vec2<i32>(-_wgslsmith_dot_vec2_i32(-u_input.b, arg_1.e), arg_1.e.x));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_3(true);
    var var_1 = ~(~func_3(-2914f, Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, arg_3.a, arg_3.b.x)), _wgslsmith_f_op_vec2_f32(-arg_3.c), Struct_2(0i), vec3<bool>(false, arg_0.a, arg_0.a), -u_input.b), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3.a)), -371f, -1914f)));
    var_0 = Struct_3(arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) - _wgslsmith_f_op_f32(-402f * _wgslsmith_f_op_f32(round(-1055f)))));
    let var_3 = max(reverseBits(_wgslsmith_mod_i32(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(-28329i, arg_1, var_1.x, -2147483647i), vec4<i32>(var_1.x, var_1.x, 670i, 13958i)))), 45409i) >> (u_input.c % 32u);
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(890f, _wgslsmith_f_op_f32(step(-1867f, _wgslsmith_f_op_f32(656f - 2016f)))))));
    var_0 = vec2<f32>(var_0.x, -1315f);
    var var_1 = _wgslsmith_mult_u32(0u, ~u_input.c);
    var var_2 = -1256f;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), _wgslsmith_div_u32(u_input.c, 0u)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.d.x), u_input.d.yy, vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.c, 11511u), true)), vec2<u32>(~1u, ~(~4469u)), func_1() <= ~(-u_input.b.x)), ~1u | (u_input.a & func_2(Struct_3(true), -u_input.b.x, false, Struct_1(-746f, vec4<f32>(var_0.x, -1000f, var_0.x, -157f), vec2<f32>(var_0.x, 139f), vec4<u32>(u_input.d.x, u_input.d.x, 1u, 0u)))), 0i, 57736u, -1i);
}

