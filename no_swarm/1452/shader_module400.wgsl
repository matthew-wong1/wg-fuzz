struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> vec3<bool> {
    global0 = u_input.b;
    return arg_0.a;
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = Struct_1(select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0, false, arg_0), select(true, true, arg_0)), select(func_3(Struct_1(vec3<bool>(arg_0, arg_0, true), arg_0, vec2<f32>(1525f, -356f), vec2<i32>(u_input.d.x, -2147483647i), u_input.c), u_input.c, vec3<u32>(u_input.c, 0u, 0u)), !vec3<bool>(false, arg_0, arg_0), arg_0 | false), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, false, true), arg_0)), select(func_3(Struct_1(vec3<bool>(arg_0, arg_0, arg_0), arg_0, vec2<f32>(1102f, -1040f), u_input.d.yx, u_input.c), ~u_input.c, abs(vec3<u32>(1u, 33650u, 4294967295u))), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, false), arg_0), true), any(func_3(Struct_1(vec3<bool>(arg_0, true, true), false, vec2<f32>(-946f, -791f), vec2<i32>(1i, global0.x), 42045u), u_input.c, ~vec3<u32>(67606u, u_input.c, 1206u)).yy)), arg_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(162f + -1649f), -313f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-306f * -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1710f, -798f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1299f, 1583f), vec2<f32>(-138f, 716f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(549f, -985f) * vec2<f32>(-993f, -1000f))), func_3(Struct_1(vec3<bool>(arg_0, false, false), func_3(Struct_1(vec3<bool>(false, arg_0, arg_0), arg_0, vec2<f32>(-375f, -395f), vec2<i32>(u_input.a, -2147483647i), u_input.c), 1u, vec3<u32>(u_input.c, u_input.c, u_input.c)).x, vec2<f32>(778f, -1087f), vec2<i32>(global0.x, 1i) << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)), u_input.c), _wgslsmith_add_u32(~4294967295u, u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1441u, 86897u) & vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, 0u) << (vec3<u32>(4265u, 46840u, 43430u) % vec3<u32>(32u)), vec3<u32>(u_input.c, u_input.c, 10192u))).xy)), abs(-select(-vec2<i32>(823i, u_input.b.x), ~u_input.d.xz, !vec2<bool>(arg_0, true))), _wgslsmith_mult_u32(u_input.c, 4294967295u));
    let var_1 = Struct_3(var_0.c.x);
    global0 = abs(-min(min(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -29460i), var_0.d), vec2<i32>(global0.x, 1i)), vec2<i32>(1i, i32(-1i) * -1i)));
    var var_2 = Struct_1(!vec3<bool>(!(!arg_0), true, !all(var_0.a.yx)), false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))), u_input.d.xz, countOneBits(~abs(var_0.e)));
    let var_3 = vec2<u32>(reverseBits(_wgslsmith_add_u32(37254u, _wgslsmith_mult_u32(~47451u, var_0.e))), var_0.e);
    return var_2.d;
}

fn func_1() -> vec4<i32> {
    global0 = func_2(!(true | any(vec2<bool>(true, true))));
    let var_0 = ~(u_input.a << (~43707u % 32u));
    global0 = _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(var_0, 0i)) | -firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), u_input.d.xz, vec2<i32>(-50235i, -70682i))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 13881i, var_0) ^ -u_input.d, u_input.d & -u_input.d), 2147483647i));
    var var_1 = vec2<i32>(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, max(_wgslsmith_mod_i32(u_input.e, 36510i), -11453i), var_0), select(vec3<i32>(2147483647i, u_input.a, 2147483647i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 2953u, u_input.c), vec3<u32>(4294967295u, 0u, u_input.c)) % vec3<u32>(32u)), ~vec3<i32>(global0.x, -1500i, u_input.d.x), !all(vec2<bool>(true, true)))));
    var_1 = vec2<i32>(-1i) * -u_input.d.xx;
    return _wgslsmith_add_vec4_i32(select(~(vec4<i32>(var_0, global0.x, -1i, var_1.x) ^ vec4<i32>(var_1.x, -23685i, -2147483647i, 2147483647i)) << (abs(vec4<u32>(0u, 33540u, 1u, u_input.c)) % vec4<u32>(32u)), select(vec4<i32>(u_input.e, global0.x, var_0, -58072i) >> ((vec4<u32>(26704u, 1u, u_input.c, u_input.c) | vec4<u32>(0u, u_input.c, u_input.c, 4294967295u)) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(18239i, global0.x, global0.x, -2147483647i), vec4<i32>(var_0, 8963i, u_input.d.x, -29114i))), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), false)), -_wgslsmith_add_vec4_i32(min(firstTrailingBit(vec4<i32>(var_1.x, u_input.e, 2147483647i, 1i)), select(vec4<i32>(u_input.d.x, global0.x, var_1.x, var_1.x), vec4<i32>(u_input.b.x, 2147483647i, 0i, u_input.e), vec4<bool>(false, true, false, false))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -80641i, -1i, 32233i), vec4<i32>(-2147483647i, var_0, global0.x, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(-50947i, _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.e, global0.x, global0.x)), u_input.d | u_input.d, -vec3<i32>(-2982i, global0.x, -8812i)), vec3<i32>(-1i << ((u_input.c & 95017u) % 32u), -3530i, 3142i)));
    let var_0 = select(select(_wgslsmith_add_vec4_i32(func_1(), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, u_input.a, -16966i, u_input.a), vec4<i32>(global0.x, 9024i, 524i, global0.x)), countOneBits(vec4<i32>(-29576i, u_input.b.x, u_input.d.x, u_input.d.x)))), ~(max(vec4<i32>(2147483647i, global0.x, -3341i, 0i), vec4<i32>(u_input.b.x, -1i, u_input.d.x, 36865i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 41979u, 4294967295u, u_input.c), vec4<u32>(16029u, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u))), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), !any(vec4<bool>(false, false, true, false)))), -vec4<i32>(13923i, -28835i, u_input.d.x, u_input.b.x) & select(vec4<i32>(max(u_input.b.x, global0.x), ~global0.x, u_input.a, global0.x >> (7195u % 32u)), ~vec4<i32>(u_input.e, u_input.a, u_input.a, -30413i) ^ vec4<i32>(1i, global0.x, 0i, global0.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(false, true, u_input.c < 4965u, false)));
    global0 = vec2<i32>(_wgslsmith_sub_i32(countOneBits(~_wgslsmith_div_i32(global0.x, var_0.x)), _wgslsmith_div_i32(abs(1i), -61569i)), global0.x);
    let var_1 = vec2<f32>(-442f, 491f);
    let var_2 = vec4<bool>(true && !select(true, 1i >= u_input.a, var_0.x <= var_0.x), any(vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, true)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x <= u_input.a, true, true, true), false)), min(reverseBits(~(-2147483647i)), u_input.d.x) != -min(reverseBits(u_input.a), _wgslsmith_dot_vec4_i32(var_0, var_0)));
    var var_3 = vec4<bool>(true, false, !(!select(true & var_2.x, true, var_2.x)), !func_3(Struct_1(var_2.yxy, var_2.x || var_2.x, _wgslsmith_f_op_vec2_f32(-var_1), ~vec2<i32>(var_0.x, u_input.e), u_input.c), select(u_input.c, ~u_input.c, true), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, 4609u), vec3<u32>(8622u, u_input.c, 0u)))).x);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~var_0), _wgslsmith_div_i32(u_input.d.x, -57359i), -(~vec2<i32>(u_input.e, global0.x | u_input.b.x)), u_input.a, _wgslsmith_dot_vec4_i32(var_0, -vec4<i32>(var_0.x, 2147483647i, 0i, global0.x)) & _wgslsmith_mult_i32(~455i, _wgslsmith_div_i32(i32(-1i) * -1i, var_0.x)));
}

