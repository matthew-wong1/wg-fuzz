struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = u_input.b;
    var var_1 = min(~_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(2147483647i), 0i, ~(-30614i)), select(countOneBits(vec3<i32>(-1i, 2147483647i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, 3900i), vec3<i32>(1i, 1i, 24387i)), arg_2.a.zxw)), vec3<i32>(reverseBits(firstLeadingBit(0i)) ^ select(1i, -6072i, arg_3), select(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -18394i, -1i), vec3<i32>(-2147483647i, 45921i, 29590i), vec3<i32>(1i, 20408i, -465i)), vec3<i32>(-4892i, 2147483647i, 0i)), ~(-1i) >> (~u_input.a % 32u), !select(true, arg_3, arg_2.a.x)), 1i));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, -1000f, -555f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-637f, arg_2.b, arg_2.b) + vec3<f32>(arg_1, arg_2.b, arg_2.b))))), vec3<f32>(arg_1, arg_2.b, _wgslsmith_f_op_f32(ceil(-364f)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -212f, arg_1)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(-1349f)), -216f, _wgslsmith_f_op_f32(exp2(arg_1))))))));
    let var_3 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -157f);
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<bool> {
    var var_0 = -abs(max(-vec3<i32>(1i, arg_1, -1i), ~(vec3<i32>(arg_1, arg_1, arg_1) & vec3<i32>(arg_1, arg_1, arg_1))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1908u, 38746u, 21766u) | vec4<u32>(arg_0, 107653u, u_input.a, 0u), ~vec4<u32>(u_input.b, arg_0, 1u, 43140u))), -1825f, Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-349f, 703f) - _wgslsmith_f_op_f32(1054f * -1000f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(863f, 967f)), vec2<f32>(647f, 1819f), select(vec2<bool>(true, false), vec2<bool>(true, true), false))), any(vec3<bool>(true, true, true))), !(-710f == _wgslsmith_f_op_f32(func_3(-554f))))) * 1f);
    var var_2 = Struct_3(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_0) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(arg_0, u_input.a))) ^ vec2<u32>(0u, ~(~arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2475f - -527f), _wgslsmith_div_f32(-185f, -533f), -1000f, 167f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1032f, -364f, 1503f, 422f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(131f, 802f, 1000f, 912f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-228f, -151f, -881f, 1529f)), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-796f, -719f, 147f, 449f), vec4<f32>(-1000f, 1107f, 998f, 1301f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-505f, -1133f, 516f, 1271f), vec4<f32>(956f, -837f, 1012f, -802f)))))), Struct_2(_wgslsmith_sub_u32(~4423u, select(_wgslsmith_mult_u32(u_input.b, 19483u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, arg_0), vec3<u32>(arg_0, arg_0, 1u)), true)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f - _wgslsmith_f_op_f32(-2474f - 908f)) + -2730f), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 1u, arg_0, 70172u), select(vec4<u32>(34416u, u_input.a, arg_0, arg_0), vec4<u32>(29894u, 64499u, 1u, u_input.b), vec4<bool>(true, true, true, true))) | vec4<u32>(0u, _wgslsmith_sub_u32(25493u, 1u), 1u, u_input.b)));
    var_1 = _wgslsmith_f_op_f32(var_2.c.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(-var_2.c.c)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f), var_2.b.x)))));
    var var_3 = var_2.c.b;
    return vec3<bool>(var_2.c.b, var_2.c.d.x, var_2.c.b);
}

fn func_1() -> Struct_2 {
    return Struct_2(abs(u_input.b) << (u_input.b % 32u), (u_input.a > ~39271u) && !(_wgslsmith_f_op_f32(-261f * -275f) == _wgslsmith_f_op_f32(sign(-906f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-394f + 1049f), -830f))))), !vec3<bool>(all(func_2(u_input.a, 1i)), func_2(u_input.b, ~(-20156i)).x, any(vec3<bool>(true, false, false))), select(~(~vec4<u32>(u_input.b, 0u, 19423u, 7120u)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.b, 4294967295u), vec4<u32>(83806u, u_input.a, 4294967295u, 25645u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 13533u, u_input.b), vec4<u32>(7908u, 1u, 0u, u_input.a))), vec4<bool>(true, true, true, true)) >> (vec4<u32>(0u, 68988u, u_input.a, u_input.a >> (~u_input.a % 32u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, ~1i, 1i), vec3<i32>(-1i, reverseBits(0i), -39153i));
    var var_1 = func_1();
    let var_2 = ~var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(635f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c), func_1().c))))), vec2<u32>(25069u, _wgslsmith_div_u32(var_2, _wgslsmith_mod_u32(~var_2, var_2))), _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(var_2) ^ 4294967295u, 1u), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, var_2), var_1.e.xz))), select(vec3<i32>(var_0, 1i, 9487i), -(vec3<i32>(var_0, -1i, -2147483647i) & vec3<i32>(-2147483647i, var_0, 1i)), vec3<bool>(!(!var_1.b), false, true)), -19085i);
}

