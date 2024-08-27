struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-673f, 1242f)), vec2<f32>(-1051f, -128f), arg_2.wx)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1330f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1129f * -360f), _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(362f, 1254f) + vec2<f32>(609f, 955f)) * vec2<f32>(1099f, -128f)))), true)));
    var var_1 = Struct_3(vec2<bool>(all(vec4<bool>(true != arg_2.x, arg_3 <= u_input.a.x, true, any(arg_2.ywx))), arg_2.x), Struct_1(all(select(arg_2, vec4<bool>(arg_2.x, true, true, false), arg_2.x & arg_2.x)), _wgslsmith_sub_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, 9968i), vec2<i32>(arg_1, arg_1))), ~(~vec2<i32>(25706i, 19799i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(868f, var_0.x))), arg_2, _wgslsmith_div_vec4_u32((vec4<u32>(0u, 4294967295u, arg_3, 73820u) | vec4<u32>(u_input.a.x, 1u, 90855u, u_input.a.x)) | vec4<u32>(4294967295u, arg_0.x, 1u, arg_0.x), vec4<u32>(arg_0.x, ~arg_0.x, 502u, 1u))), reverseBits(-(min(arg_1, arg_1) ^ 1i)), 10474u);
    let var_2 = ~(~arg_3);
    var var_3 = vec3<f32>(var_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-805f * var_0.x) + _wgslsmith_f_op_f32(-364f * var_1.b.c.x)), var_0.x)), var_0.x);
    let var_4 = Struct_3(vec2<bool>(var_1.b.b.x <= _wgslsmith_dot_vec2_i32(vec2<i32>(25005i, var_1.c), vec2<i32>(var_1.b.b.x, 39779i) & var_1.b.b), !(var_1.a.x && arg_2.x) && false), Struct_1(arg_2.x, ~(~(~var_1.b.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.b.c))), select(var_1.b.d, !(!vec4<bool>(var_1.b.a, true, true, true)), var_1.b.d), max(var_1.b.e, ~var_1.b.e >> (vec4<u32>(arg_3, 4259u, arg_3, 40089u) % vec4<u32>(32u)))), firstLeadingBit(_wgslsmith_mult_i32(arg_1, arg_1 | var_1.b.b.x) << (var_1.d % 32u)), arg_3);
    return vec2<f32>(_wgslsmith_f_op_f32(var_1.b.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.b.c.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -594f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-411f + var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1228f, var_3.x)) - _wgslsmith_f_op_f32(-461f - var_3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.x))))));
}

fn func_2() -> f32 {
    var var_0 = Struct_4(Struct_1(!(firstTrailingBit(1i) <= 1i), ~(~vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(u_input.a, -2147483647i, vec4<bool>(true, true, true, false), 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1237f, 652f)), vec2<bool>(true, true))))), vec4<bool>(true, !all(vec3<bool>(true, true, false)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))), ~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(16595u, 13371u, 71985u, 4294967295u), vec4<u32>(u_input.a.x, 12043u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1122f + -1544f), 819f))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1026f)), -1033f, any(vec4<bool>(false, true, false, true)))))));
    let var_1 = Struct_2(!(abs(var_0.a.b.x) <= var_0.a.b.x));
    var_0 = Struct_4(Struct_1(true, var_0.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.c + vec2<f32>(1000f, 142f)) * var_0.a.c), vec4<bool>(select(true, true, var_0.b), (u_input.a.x != var_0.a.e.x) && true, all(vec4<bool>(false, false, false, true)), any(!var_0.a.d)), var_0.a.e), true);
    var var_2 = vec4<f32>(var_0.a.c.x, 1150f, 1967f, _wgslsmith_div_f32(var_0.a.c.x, var_0.a.c.x));
    let var_3 = select(abs(vec4<i32>(1i, 1i, var_0.a.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-12784i, 20663i, var_0.a.b.x), vec3<i32>(-78339i, var_0.a.b.x, var_0.a.b.x)))) >> (~(vec4<u32>(38962u, u_input.a.x, var_0.a.e.x, 1u) | (vec4<u32>(u_input.a.x, u_input.a.x, 17638u, 8272u) << (var_0.a.e % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, max(-1i, 19599i), _wgslsmith_dot_vec2_i32(var_0.a.b, firstLeadingBit(vec2<i32>(var_0.a.b.x, var_0.a.b.x))), reverseBits(~var_0.a.b.x)), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-12164i, var_0.a.b.x, var_0.a.b.x, 2147483647i), vec4<i32>(-26774i, var_0.a.b.x, 16404i, var_0.a.b.x)), abs(vec4<i32>(-2147483647i, var_0.a.b.x, -12682i, -1i))))), var_2.x > var_2.x);
    return var_2.x;
}

fn func_1(arg_0: Struct_4) -> i32 {
    var var_0 = abs(max(1u, ~(arg_0.a.e.x ^ 0u))) ^ _wgslsmith_div_u32(arg_0.a.e.x, 2941u);
    var_0 = ~(~(~(0u | arg_0.a.e.x)) & 59360u);
    let var_1 = arg_0.a.b.x;
    var var_2 = _wgslsmith_dot_vec3_u32(~arg_0.a.e.xzx, arg_0.a.e.yxw);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x) * vec4<f32>(1318f, 530f, -594f, 1309f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, 471f, -163f) - vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, 1118f, arg_0.a.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(110f, -739f, 606f, arg_0.a.c.x))), vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, _wgslsmith_f_op_f32(sign(-484f)), _wgslsmith_f_op_f32(-arg_0.a.c.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(3663f, _wgslsmith_f_op_f32(1077f * _wgslsmith_f_op_f32(floor(arg_0.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f)), 128f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.c.x)), _wgslsmith_f_op_f32(arg_0.a.c.x + -1344f), 918f, _wgslsmith_f_op_f32(-arg_0.a.c.x)) * vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.c.x - 1000f), _wgslsmith_f_op_f32(select(arg_0.a.c.x, -693f, false)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(-594f, arg_0.a.c.x)))));
    return abs(reverseBits(_wgslsmith_clamp_i32(reverseBits(_wgslsmith_add_i32(1i, var_1)), i32(-1i) * -var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-13393i, 55771i, var_1), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.b.x, 25967i, 10267i), vec3<i32>(var_1, -2147483647i, 0i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(reverseBits(abs(vec3<i32>(firstTrailingBit(-2147483647i), abs(1i), 1i << (1u % 32u)))), vec3<i32>(_wgslsmith_mod_i32(-9131i, 505i), -2147483647i, ~(-func_1(Struct_4(Struct_1(true, vec2<i32>(-44361i, -2147483647i), vec2<f32>(-1000f, 1364f), vec4<bool>(true, false, true, false), vec4<u32>(0u, 53849u, u_input.a.x, 20369u)), true)))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(-countOneBits(vec3<i32>(-24389i, 13278i, 2147483647i)), -vec3<i32>(-1i, -1i, -25131i))));
    let var_1 = vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, select(any(vec2<bool>(true, any(vec2<bool>(true, true)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true));
    var var_2 = Struct_4(Struct_1(!(!(!var_1.x)), var_0.xy, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1173f, 1323f) - vec2<f32>(792f, -202f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, 2498f) + vec2<f32>(-1584f, -668f))))), !(!select(var_1, vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, false))), ~abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), var_1.x);
    var_2 = Struct_4(Struct_1(all(vec3<bool>(false, var_2.a.b.x < var_2.a.b.x, all(vec3<bool>(false, true, true)))), min(firstTrailingBit(var_0.zx) ^ -var_2.a.b, vec2<i32>(var_2.a.b.x, select(1i, 56356i, var_2.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.a.c + var_2.a.c), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a.c.x, -1000f))), false)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(var_2.a.c.x + var_2.a.c.x))), var_1, vec4<u32>(u_input.a.x, 0u, ~_wgslsmith_div_u32(u_input.a.x, 16755u), firstLeadingBit(~11563u))), select(any(var_2.a.d), !var_2.a.a, all(var_1.xz)));
    var_2 = Struct_4(var_2.a, any(!select(vec2<bool>(var_2.a.a, var_1.x), var_1.yz, all(var_1.yz))));
    var var_3 = var_1.x;
    var var_4 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(var_2.a.e.x, u_input.a.x, var_2.a.e.x, 11682u) & var_2.a.e)), ~select(vec4<u32>(33024u, 1u, 0u, 1u) << (var_2.a.e % vec4<u32>(32u)), ~vec4<u32>(var_2.a.e.x, var_2.a.e.x, u_input.a.x, u_input.a.x), !var_2.b)), firstLeadingBit(74095u));
    var_2 = Struct_4(Struct_1(false, select(vec2<i32>(_wgslsmith_add_i32(var_2.a.b.x, var_2.a.b.x), 1i), _wgslsmith_div_vec2_i32(abs(var_0.zz), var_0.xz), vec2<bool>(var_1.x, !var_2.a.d.x)), vec2<f32>(-297f, _wgslsmith_f_op_f32(var_2.a.c.x * -332f)), !(!select(vec4<bool>(var_1.x, true, var_2.b, var_1.x), vec4<bool>(var_2.b, false, var_1.x, var_1.x), true)), max(_wgslsmith_clamp_vec4_u32(var_2.a.e, vec4<u32>(1u, 6655u, 1u, 52035u), countOneBits(var_2.a.e)), ~vec4<u32>(4294967295u, var_2.a.e.x, u_input.a.x, 1u) | firstTrailingBit(vec4<u32>(var_2.a.e.x, 57966u, var_2.a.e.x, u_input.a.x)))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.c + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.c.x, var_2.a.c.x), var_2.a.c, vec2<bool>(true, var_2.a.a)))), var_2.a.c)), ~select(u_input.a, vec2<u32>(var_2.a.e.x, ~0u), select(select(var_2.a.d.yx, vec2<bool>(true, true), vec2<bool>(false, var_1.x)), var_2.a.d.yx, !var_2.a.d.xx)));
}

