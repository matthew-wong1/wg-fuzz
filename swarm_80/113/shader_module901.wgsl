struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = ~abs(u_input.b.x);
    var_0 = u_input.d.x;
    var var_1 = Struct_3(vec3<u32>(~u_input.b.x << (~11918u % 32u), ~(~u_input.a.x), u_input.b.x), Struct_1(_wgslsmith_add_vec2_i32(max(_wgslsmith_div_vec2_i32(u_input.c, u_input.c), firstTrailingBit(u_input.e)), u_input.c), vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) >> (_wgslsmith_mult_u32(17920u, 2192u) % 32u), firstLeadingBit(_wgslsmith_mult_u32(u_input.d.x, u_input.b.x)), ~u_input.b.x)));
    var_1 = Struct_3(select(~(~countOneBits(u_input.d.zxw)), max(_wgslsmith_clamp_vec3_u32(u_input.d.zzy, ~vec3<u32>(44627u, 4294967295u, 27681u), ~vec3<u32>(1u, 0u, 58783u)), ~max(var_1.b.b, vec3<u32>(u_input.b.x, var_1.a.x, 0u))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false))), var_1.b);
    var var_2 = Struct_3(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, 1u) >> (select(4294967295u, var_1.a.x, false) % 32u), var_1.a.x), 5214u, reverseBits(~(~var_1.b.b.x))), var_1.b);
    return u_input.b.x;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> i32 {
    let var_0 = vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, -60753i, u_input.c.x), vec4<i32>(0i, u_input.c.x, 1i, 2147483647i)), select(vec4<i32>(-66616i, u_input.c.x, 16434i, u_input.e.x), vec4<i32>(1i, u_input.e.x, u_input.c.x, -8771i), false)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 1i, -u_input.e.x), vec4<i32>(-(~6170i), -2147483647i, u_input.e.x, 0i)));
    let var_1 = Struct_2(false, 160167u, vec3<bool>(true && arg_0, all(vec3<bool>(arg_0, true, false)) & all(vec2<bool>(arg_0, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_f_op_f32(sign(-354f)), true)) < _wgslsmith_f_op_f32(f32(-1f) * -1308f)));
    let var_2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(func_3(), 4294967295u, 0u), ~(min(arg_1, arg_1) | firstLeadingBit(vec3<u32>(0u, u_input.a.x, 57683u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(413f, -171f, -783f, -615f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1265f, 1652f, 1066f, 786f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-707f, 727f, -327f, 148f), vec4<f32>(-787f, -702f, -1098f, -1936f))), !var_1.c.x))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-704f, -181f, -653f, -1055f) * vec4<f32>(-1007f, 1284f, 452f, 1000f)), vec4<f32>(-497f, -295f, -165f, 1717f), any(var_1.c.zy))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-344f, -1000f, 1410f, -700f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-490f, 502f, 698f, -167f) - vec4<f32>(1000f, 735f, -1169f, -236f))))))));
    let var_4 = Struct_1(u_input.c, _wgslsmith_mod_vec3_u32(arg_1 | ~vec3<u32>(arg_1.x, arg_1.x, 0u), abs(vec3<u32>(1u, 25365u, var_1.b))) ^ min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 0u, arg_1.x) ^ u_input.b.zwy, _wgslsmith_mod_vec3_u32(u_input.b.zzy, var_2)), u_input.b.xzz));
    return 40209i;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = vec3<i32>(~(~24538i), _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_clamp_i32(-u_input.c.x, func_2(true, vec3<u32>(arg_0.x, 1u, arg_0.x)), u_input.c.x | -2147483647i) >> (~_wgslsmith_mult_u32(u_input.b.x, arg_0.x) % 32u), u_input.e.x), 44998i);
    let var_1 = vec2<i32>(u_input.c.x | abs(u_input.c.x), var_0.x) & var_0.zx;
    let var_2 = Struct_3(min(~arg_0, arg_0) ^ _wgslsmith_mod_vec3_u32(u_input.d.xyw, vec3<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(u_input.b.wwz, arg_0), u_input.a.x | 8867u)), Struct_1(~var_0.yy, arg_0));
    var var_3 = u_input.d;
    var var_4 = vec3<bool>(true, true, true);
    return Struct_2(true, countOneBits(arg_0.x), !(!select(select(vec3<bool>(true, var_4.x, var_4.x), vec3<bool>(true, var_4.x, true), vec3<bool>(true, var_4.x, var_4.x)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(abs(u_input.b.yxz), Struct_1(-select(u_input.e & vec2<i32>(-36564i, u_input.c.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), u_input.c), func_1(vec3<u32>(arg_2.b, arg_2.b, arg_2.b)).c.zz), vec3<u32>(20254u, firstLeadingBit(0u), ~u_input.a.x << (arg_2.b % 32u))));
    var var_1 = Struct_1(vec2<i32>(abs(_wgslsmith_sub_i32(-1i, -1i)), _wgslsmith_dot_vec2_i32(var_0.b.a, _wgslsmith_div_vec2_i32(vec2<i32>(-19399i, 1i) ^ vec2<i32>(7874i, u_input.e.x), u_input.e | var_0.b.a))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_mod_u32(0u, arg_2.b), reverseBits(7213u)), u_input.b.yzz), _wgslsmith_div_vec3_u32(~(~var_0.a), ~u_input.a >> (firstTrailingBit(u_input.b.www) % vec3<u32>(32u)))));
    return Struct_1((vec2<i32>(_wgslsmith_sub_i32(0i, var_0.b.a.x), max(2147483647i, -4395i)) | _wgslsmith_div_vec2_i32(firstLeadingBit(var_0.b.a), var_1.a)) ^ (vec2<i32>(-u_input.e.x, _wgslsmith_mod_i32(u_input.c.x, var_0.b.a.x)) << (vec2<u32>(u_input.a.x, countOneBits(22252u)) % vec2<u32>(32u))), vec3<u32>(var_1.b.x, firstLeadingBit(arg_2.b), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 28894u), vec2<u32>(0u, arg_2.b), vec2<u32>(u_input.a.x, 37499u)), u_input.b.wx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 35422u;
    var var_1 = Struct_1(-vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-27873i, u_input.e.x), _wgslsmith_mod_i32(u_input.c.x, -16474i)), u_input.c.x), vec3<u32>(4294967295u, min(_wgslsmith_mult_u32(52745u, var_0), ~(u_input.d.x >> (u_input.b.x % 32u))), (~1u ^ var_0) & 0u));
    var_1 = func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -2065f) - vec2<f32>(1573f, -335f))))))), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), select(true, true, true))), func_1(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.x, var_0, 1u), vec3<u32>(var_1.b.x, u_input.a.x, u_input.b.x)))));
    var var_2 = func_1(var_1.b);
    var_2 = Struct_2(!var_2.a, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x << (4294967295u % 32u), ~0u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.d), 46121u & var_2.b), vec4<u32>(27708u | var_0, 1u, _wgslsmith_sub_u32(u_input.a.x, 28762u), var_2.b), ~select(u_input.d, u_input.d, var_2.c.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(24571u, var_0, 26604u, var_0), max(vec4<u32>(1u, 4294967295u, 695u, var_0), vec4<u32>(1u, 0u, var_2.b, 2039u)))), var_2.c);
    var_1 = Struct_1(_wgslsmith_sub_vec2_i32(select(var_1.a, vec2<i32>(~(-717i), -u_input.c.x), !(var_2.c.x || var_2.c.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, func_2(var_2.a, vec3<u32>(var_0, 12246u, var_1.b.x))), vec2<i32>(~var_1.a.x, 1i))), vec3<u32>(u_input.d.x, ~(~var_1.b.x), ~(var_0 & var_1.b.x) | 26530u));
    var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(864f, 299f) * vec2<f32>(-522f, 1000f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-181f, 1000f)))))), select(!select(!var_2.c, vec3<bool>(true, var_2.c.x, true), var_2.c.x), func_1(~(vec3<u32>(var_0, var_2.b, 1u) & vec3<u32>(var_0, var_1.b.x, 4294967295u))).c, select(var_2.c, vec3<bool>(true, true, !var_2.a), false)), func_1(u_input.d.xxw & vec3<u32>(var_1.b.x | var_1.b.x, var_2.b | var_1.b.x, ~22097u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -614f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1486f, -1092f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-672f - _wgslsmith_f_op_f32(f32(-1f) * -475f))))), 0u, vec2<u32>(var_1.b.x, 7190u), firstLeadingBit(select(-vec3<i32>(1i, -3066i, 25999i), ~vec3<i32>(var_1.a.x, -2147483647i, u_input.e.x), !vec3<bool>(false, var_2.a, var_2.a)) << (max(vec3<u32>(8510u, u_input.d.x, 31108u) << (vec3<u32>(var_2.b, u_input.a.x, var_0) % vec3<u32>(32u)), abs(var_1.b)) % vec3<u32>(32u))));
}

