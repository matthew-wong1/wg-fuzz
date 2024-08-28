struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1572f - -693f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f) * _wgslsmith_f_op_f32(f32(-1f) * -623f))), 1020f);
    let var_1 = max(u_input.c.x, -14397i);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-509f)) - _wgslsmith_f_op_f32(-2148f * 1878f))));
    var_0 = 921f;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(348f, -1180f)))) - vec2<f32>(1f, 1f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    let var_0 = arg_0.a.x;
    let var_1 = vec2<i32>(-u_input.b, reverseBits(-1i)) & vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(19335i, u_input.c.x) | vec2<i32>(u_input.d.x, 2147483647i), min(u_input.d, vec2<i32>(42890i, u_input.c.x))), firstLeadingBit(-1i));
    let var_2 = vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a), u_input.e.x), vec4<u32>(u_input.a, firstLeadingBit(u_input.e.x), ~u_input.e.x, ~4294967295u)) & _wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(0u), 0u << (u_input.a % 32u)), ~u_input.a), 3928u, 70902u);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(2265f, arg_1.a.a.x, arg_1.a.a.x) + vec3<f32>(1922f, 1180f, arg_1.a.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x), vec3<f32>(arg_1.a.a.x, -1078f, arg_1.a.a.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2610f, arg_1.a.a.x, 295f)))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(arg_1.a.a.x - 915f), 659f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.a.x, -327f, -1788f))), _wgslsmith_div_vec3_f32(vec3<f32>(-718f, 582f, 1281f), vec3<f32>(1000f, 1083f, arg_1.a.a.x)), vec3<bool>(arg_0.a.x, true, var_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x)) * vec3<f32>(arg_1.a.a.x, 1385f, 935f)) + vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.a.a.x, arg_1.a.a.x, true)), arg_1.a.a.x, _wgslsmith_f_op_f32(floor(-1000f)))))));
    var var_4 = Struct_2(arg_1.a, func_1(), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-889f + 210f), _wgslsmith_f_op_f32(round(var_3.x)))));
    return ~(~(~(~0u | _wgslsmith_mult_u32(var_2.x, var_2.x))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_4(arg_2);
    let var_1 = Struct_2(arg_2, Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.a.x)), 1174f)))), Struct_1(arg_2.a));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a.x))) - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-528f + _wgslsmith_f_op_f32(var_1.c.a.x - 389f))), false)) > _wgslsmith_div_f32(-1615f, arg_0);
    let var_3 = var_0;
    var_2 = any(vec2<bool>(14710u <= (func_3(Struct_3(vec3<bool>(false, true, false)), var_3) & (u_input.e.x >> (u_input.a % 32u))), false));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1184f + -1619f), _wgslsmith_f_op_f32(f32(-1f) * -639f)))), -_wgslsmith_mult_i32(-(~u_input.b), u_input.b), func_1(), -(~_wgslsmith_add_i32(u_input.b, u_input.b)));
    var var_1 = Struct_4(var_0.b);
    var_1 = Struct_4(Struct_1(var_0.a.a));
    var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_1().a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1276f, var_1.a.a.x) + var_0.b.a)))));
    var_1 = Struct_4(func_1());
    let var_2 = func_2(_wgslsmith_f_op_f32(-var_0.a.a.x), u_input.d.x, Struct_1(var_0.b.a), u_input.c.x).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.x, -148f, -855f) * vec3<f32>(var_1.a.a.x, 983f, -840f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1612f, var_2.a.x, var_0.a.a.x)))))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.c.x), vec2<i32>(u_input.b, u_input.d.x)), ~abs(u_input.c.x)), u_input.c.wz), vec3<f32>(var_1.a.a.x, var_1.a.a.x, -423f));
}

