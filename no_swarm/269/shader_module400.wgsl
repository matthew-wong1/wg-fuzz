struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: i32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(true, all(vec2<bool>(any(vec4<bool>(false, false, false, true)), true)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.e.x, u_input.e.x, 41798u, 4294967295u), vec4<u32>(u_input.e.x, 31420u, 13575u, u_input.b), true) >> (vec4<u32>(1u, 1u, u_input.b, 4294967295u) % vec4<u32>(32u)), min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 40840u, 4294967295u, 1u), vec4<u32>(u_input.b, 29143u, u_input.e.x, 91212u)), vec4<u32>(u_input.e.x, u_input.e.x, 34598u, u_input.b) ^ vec4<u32>(u_input.e.x, u_input.e.x, 31692u, 58873u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1476f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-835f, _wgslsmith_f_op_f32(f32(-1f) * -193f)))))), vec3<i32>(1i, -1i, _wgslsmith_dot_vec3_i32(-u_input.a, reverseBits(u_input.a))) | vec3<i32>(i32(-1i) * -26944i, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-5679i, u_input.d, 1694i, 1093i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -21590i, 113i, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.d, u_input.c)))), -1288f, ~u_input.e.x);
    var var_1 = _wgslsmith_f_op_f32(exp2(var_0.b));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(0u), var_0.e, u_input.e.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, u_input.e.x, u_input.b), vec3<u32>(1u, 43164u, u_input.b) >> (vec3<u32>(592u, 4294967295u, 40016u) % vec3<u32>(32u))), firstTrailingBit(15770u))), ~(~firstLeadingBit(vec4<u32>(u_input.e.x, var_0.a.c, var_0.a.c, 0u) << (vec4<u32>(var_0.e, 8945u, u_input.b, 17738u) % vec4<u32>(32u)))));
    let var_3 = abs(vec3<i32>(abs(1i), -_wgslsmith_clamp_i32(u_input.a.x, 14455i, -97591i), select(-u_input.c, i32(-1i) * -31057i, var_0.a.a)) << ((~(~vec3<u32>(var_2, u_input.b, 0u)) << (~reverseBits(vec3<u32>(84789u, var_0.e, var_0.e)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_1 = _wgslsmith_f_op_f32(sign(517f));
    return _wgslsmith_mod_vec3_i32(min(vec3<i32>(-6574i, i32(-1i) * -1i, firstLeadingBit(_wgslsmith_mult_i32(7730i, u_input.a.x))), _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(var_0.c, var_3)), select(_wgslsmith_div_vec3_i32(vec3<i32>(12421i, 1i, u_input.d), var_0.c), vec3<i32>(35873i, 0i, 37792i), !vec3<bool>(var_0.a.a, var_0.a.b, false)))), ~(~(_wgslsmith_clamp_vec3_i32(vec3<i32>(4272i, -25677i, 2147483647i), vec3<i32>(var_3.x, 13823i, var_3.x), var_3) ^ -u_input.a)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_u32(firstTrailingBit(~46535u), u_input.b);
    var var_1 = Struct_2(Struct_1(any(vec3<bool>(true, true, true)) | false, _wgslsmith_mod_u32(abs(u_input.b), 13316u) == ~(~u_input.b), _wgslsmith_div_u32(var_0, 1u)), arg_0.x, _wgslsmith_sub_vec3_i32(func_3(), _wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 1i, u_input.c)), u_input.a)), -170f, var_0);
    var_1 = Struct_2(Struct_1(true, !(!all(vec4<bool>(var_1.a.a, var_1.a.a, false, var_1.a.b))), var_1.a.c), var_1.d, firstLeadingBit(firstLeadingBit(vec3<i32>(var_1.c.x >> (1u % 32u), _wgslsmith_div_i32(-1i, -23106i), -u_input.a.x))), _wgslsmith_f_op_f32(-var_1.d), firstLeadingBit(var_0));
    let var_2 = ~vec2<u32>(var_1.a.c, 72230u);
    let var_3 = u_input.c;
    return Struct_4(true, vec2<bool>(!(_wgslsmith_mod_u32(var_1.a.c, var_2.x) > reverseBits(var_2.x)), true), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(u_input.c, 0i, 18064i)), _wgslsmith_div_i32(var_3, 1i)) & _wgslsmith_div_i32(~var_1.c.x, u_input.a.x), var_1.c.x), 23820i);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    var var_0 = Struct_1(true, arg_0, 30681u);
    var var_1 = Struct_4(any(!(!vec3<bool>(false, arg_0, true))), !(!select(!vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), 0u >= u_input.e.x)), max(u_input.c, max(max(~1i, ~1i), -(~u_input.c))), -(_wgslsmith_dot_vec4_i32(vec4<i32>(23143i, u_input.c, u_input.c, 0i), vec4<i32>(25503i, 1i, -9008i, u_input.c)) | -2147483647i));
    var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(998f, -1446f) - vec2<f32>(-1156f, -1228f)), vec2<f32>(-1190f, 173f), vec2<bool>(var_0.a, arg_0))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1645f, 515f))))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))), 315f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1909f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1167f, -673f)) + 1000f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1076f, -747f, -1049f, -100f) + vec4<f32>(-1548f, -639f, -451f, -826f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2087f, -318f, -910f, 1363f)))))));
    var_1 = func_2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.x))))));
    return abs(abs(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, var_0.c), u_input.e | vec2<u32>(var_0.c, var_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(57855u, 4294967295u & u_input.e.x), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e), ~(~u_input.b)) >> ((~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, 11085u), u_input.e) & ~reverseBits(u_input.e)) % vec2<u32>(32u)));
    let var_1 = 10405i;
    var_0 = u_input.e;
    let var_2 = Struct_1(true, var_0.x < reverseBits(var_0.x), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, u_input.e.x), ~vec3<u32>(4294967295u, 0u, 0u))));
    var_0 = u_input.e;
    var_0 = select(_wgslsmith_sub_vec2_u32(u_input.e, abs(u_input.e)), ~(~(func_1(var_2.a) | ~vec2<u32>(u_input.e.x, 47268u))), vec2<bool>(var_2.b, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -524f), ~44124u, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -341f))), -208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-488f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1274f)) + 1f)), ~(-2147483647i));
}

