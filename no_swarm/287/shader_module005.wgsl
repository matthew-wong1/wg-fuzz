struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> vec4<f32> {
    var var_0 = Struct_1(6853i);
    var var_1 = Struct_1(2147483647i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(224f)) * _wgslsmith_f_op_f32(f32(-1f) * -964f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2451f), 1644f)))));
    var_1 = Struct_1(countOneBits(_wgslsmith_sub_i32(i32(-1i) * -91168i, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.x, 32159i), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)))));
    var var_3 = Struct_1(~_wgslsmith_dot_vec4_i32(~u_input.b ^ min(u_input.b, vec4<i32>(var_1.a, arg_0.x, var_0.a, -24227i)), vec4<i32>(min(u_input.d, var_0.a), 57160i, -arg_1.a, -49435i)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-839f))), _wgslsmith_f_op_f32(f32(-1f) * -168f)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1556f, 516f, -1115f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1404f, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(-165f, arg_1.x, arg_1.x, arg_1.x)) * vec4<f32>(-107f, -465f, 1182f, arg_1.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~vec2<i32>(2147483647i, arg_0), Struct_1(-2147483647i), false)) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_add_vec2_i32(u_input.b.xw, vec2<i32>(arg_2.a, -2147483647i)), Struct_1(-2147483647i), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 454f, arg_1.x))), firstLeadingBit(arg_2.a) <= -4309i))));
    let var_1 = !vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)) & select(true, true, true), true, true, false);
    let var_2 = arg_3;
    let var_3 = u_input.a.x;
    var var_4 = arg_3.a;
    return ~abs(-u_input.d << (1u % 32u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-933f, -515f, -673f, -679f) + vec4<f32>(137f, 519f, 1657f, -2029f))))));
    let var_3 = -arg_1.a;
    var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1311f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-653f)) - var_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))));
    return Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.zw, vec2<i32>(func_2(var_0, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, 132f, var_2.x))), Struct_1(arg_1.a), Struct_1(arg_1.a)), arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true), Struct_1(u_input.c));
    let var_1 = func_1(select(vec2<bool>(false, true), !vec2<bool>(true, any(vec4<bool>(false, false, false, false))), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))))), Struct_1(max(u_input.b.x, ~(-2147483647i)) ^ _wgslsmith_mult_i32(u_input.c, u_input.e)));
    let var_2 = Struct_1(u_input.b.x);
    var var_3 = ~(~vec2<u32>(28755u, ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    var_0 = var_2;
    var_0 = Struct_1(var_2.a);
    let var_4 = _wgslsmith_mult_i32(-1i, min(-34094i, var_2.a));
    var_3 = select(vec2<u32>(u_input.a.x, ~9663u), vec2<u32>(var_3.x, _wgslsmith_dot_vec3_u32(~u_input.a.wyz, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))) >> (abs(~u_input.a.zx) % vec2<u32>(32u)), !select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(u_input.a.x == 28556u, false), vec2<bool>(true, select(true, false, true))));
    let var_5 = _wgslsmith_div_vec3_u32(reverseBits(abs(u_input.a.zzx)), vec3<u32>(countOneBits(35193u ^ _wgslsmith_dot_vec3_u32(u_input.a.wwz, vec3<u32>(var_3.x, u_input.a.x, 0u))), 27309u, max(0u, 86205u)));
    let x = u_input.a;
    s_output = StorageBuffer(39295u, -u_input.d, _wgslsmith_dot_vec3_u32(var_5, vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(var_5), var_5 >> (u_input.a.yyw % vec3<u32>(32u))), ~_wgslsmith_mod_u32(4294967295u, 10873u), select(1u, var_5.x & var_5.x, all(vec3<bool>(false, false, true))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1454f, 479f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, 1912f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(603f, 2223f)))) * vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(var_0.a, u_input.d), var_2, false)).x, _wgslsmith_div_f32(1234f, -1019f)))));
}

