struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = false;
    let var_1 = min(min(u_input.b.x, abs(_wgslsmith_mod_i32(40139i, u_input.b.x))), 2147483647i);
    var var_2 = Struct_1(u_input.a);
    var var_3 = _wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-73337i, var_1, 12688i), vec3<i32>(2147483647i, -1i, -2147483647i)) << (_wgslsmith_mult_u32(73878u, u_input.a) % 32u), -2147483647i, abs(-10560i), abs(~var_1)), _wgslsmith_mult_vec4_i32(firstTrailingBit(-firstLeadingBit(vec4<i32>(var_1, u_input.b.x, var_1, -4551i))), vec4<i32>(u_input.b.x, -(var_1 | u_input.b.x), 1i, ~var_1 & firstTrailingBit(var_1))));
    var_2 = Struct_1(var_2.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -318f);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-539f + -101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f * 562f) * _wgslsmith_f_op_f32(func_3(false, Struct_2(vec3<bool>(false, false, false))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-749f, 414f), _wgslsmith_f_op_f32(1342f - -216f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-398f, 245f)) + _wgslsmith_f_op_f32(f32(-1f) * -1115f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1085f, -331f, -382f, 661f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, -482f, -1296f, -1064f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-277f, 457f, 516f, 286f) - vec4<f32>(576f, -469f, -336f, -472f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(983f)), _wgslsmith_f_op_f32(-1605f + -443f), -225f, -353f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(272f, -754f, 1177f, -977f)))))));
    var var_1 = Struct_4(Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)))));
    var var_2 = true;
    var_2 = any(vec3<bool>(true, var_1.a.a.x, true));
    var_2 = true;
    return Struct_3(countOneBits(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 977u, u_input.a), vec3<u32>(28123u, 1u, u_input.a)), vec3<u32>(0u, u_input.a, u_input.a), true)) >> (~(vec3<u32>(10539u, 20641u, u_input.a) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, 1u))) % vec3<u32>(32u)), u_input.a, !var_1.a.a);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(abs((vec2<u32>(4294967295u, 21700u) ^ vec2<u32>(0u, arg_2.b)) | vec2<u32>(0u, 0u)), firstTrailingBit(arg_2.a.xx)));
    var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, var_0.a), _wgslsmith_mod_u32(arg_2.a.x, arg_2.b)));
    var_0 = Struct_1(_wgslsmith_mod_u32(countOneBits(select(var_0.a, 38540u, true)), 23448u) << ((arg_2.b ^ 33912u) % 32u));
    var_0 = Struct_1(1u ^ _wgslsmith_dot_vec3_u32(~select(arg_2.a, vec3<u32>(var_0.a, 606u, u_input.a), vec3<bool>(false, false, arg_2.c.x)), _wgslsmith_div_vec3_u32(arg_2.a, vec3<u32>(4294967295u, arg_2.b, u_input.a))));
    var var_1 = arg_2.a;
    return Struct_4(Struct_2(vec3<bool>(arg_0 <= ~arg_1, arg_2.c.x, !all(arg_2.c.zy))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(vec3<bool>(false, true, true));
    let var_1 = ~(~(-_wgslsmith_mult_i32(21021i, 0i))) & u_input.b.x;
    let var_2 = func_4(-1053i, 26229i, func_2());
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1663f) - 1f)))), 440f);
    var var_1 = func_1();
    var_1 = Struct_2(vec3<bool>(false, all(select(!vec4<bool>(var_1.a.x, true, true, false), select(vec4<bool>(var_1.a.x, false, false, false), vec4<bool>(var_1.a.x, false, false, var_1.a.x), vec4<bool>(true, var_1.a.x, false, var_1.a.x)), true)), false));
    var var_2 = !var_1.a.x;
    var_1 = Struct_2(func_4(abs(min(~u_input.b.x, select(19465i, -1i, var_1.a.x))), 12212i, func_2()).a.a);
    let var_3 = select(reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 0u)), ~(~vec2<u32>(u_input.a, 1u)))), vec2<u32>(34084u, max(0u, reverseBits(4294967295u & u_input.a))), any(select(!(!var_1.a.yx), vec2<bool>(true, func_2().c.x), u_input.b.x >= u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<u32>(~17598u << ((~u_input.a | (29178u | u_input.a)) % 32u), var_3.x, var_3.x, var_3.x));
}

