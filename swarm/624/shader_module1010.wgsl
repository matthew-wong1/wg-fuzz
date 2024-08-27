struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(-2147483647i, -_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x & u_input.a.x, i32(-1i) * -2147483647i), 1i));
    let var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return ~_wgslsmith_mult_u32(1u >> (1u % 32u), 22157u);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: i32) -> u32 {
    let var_0 = ~select(_wgslsmith_add_vec4_i32(~(vec4<i32>(arg_0.x, 26155i, 8503i, arg_0.x) | vec4<i32>(u_input.a.x, arg_1.b, 23916i, arg_1.b)), firstLeadingBit(~vec4<i32>(arg_1.b, -1i, arg_1.b, -7984i))), vec4<i32>(i32(-1i) * -1i, abs(arg_1.b), 0i, arg_3), true);
    var var_1 = -794f;
    var var_2 = select(~arg_1.b >> (~4294967295u % 32u), -2147483647i, 1f <= _wgslsmith_f_op_f32(trunc(-1053f)));
    var var_3 = Struct_3(-vec3<i32>(_wgslsmith_div_i32(-2461i, _wgslsmith_clamp_i32(-1i, arg_0.x, 0i)), var_0.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 46478i, -2147483647i), arg_0))));
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1376f, 276f, -749f, 620f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -2519f, 531f, 680f))) - vec4<f32>(510f, 546f, 911f, 411f))), vec4<bool>(all(!arg_2.b.a), true, true, arg_2.a > 40210u)))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32((vec2<u32>(62798u, arg_2.a) & vec2<u32>(arg_2.a, 18688u)) >> (max(vec2<u32>(32833u, 48985u), vec2<u32>(19798u, 38379u)) % vec2<u32>(32u)), vec2<u32>(~arg_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, arg_2.a, 0u, 48823u), vec4<u32>(2317u, 1u, arg_2.a, 1u))), vec2<u32>(_wgslsmith_sub_u32(arg_2.a, arg_2.a), ~1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a, 8877u), vec2<u32>(arg_2.a, arg_2.a))), vec2<u32>(0u, func_3() >> (60044u % 32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = -710i;
    var var_2 = vec4<u32>(min(func_4(countOneBits(~vec3<i32>(0i, 2147483647i, 6309i)), Struct_4(Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, false)), 0i << (arg_2.x % 32u)), Struct_5(func_3(), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false))), ~(-1i)), ~max(~arg_2.x, 1u)), 62717u, ((25531u << (func_3() % 32u)) >> (func_4(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), Struct_4(Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false)), u_input.a.x), Struct_5(1u, Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true))), _wgslsmith_mult_i32(10065i, 0i)) % 32u)) & max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, 1u, arg_2.x), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(134797u, arg_2.x, 1u, 4294967295u))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 1u), 0u, ~arg_2.x)), _wgslsmith_sub_u32(40172u, ~arg_2.x));
    var var_3 = firstTrailingBit(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_2.x, var_2.x, arg_2.x, var_2.x) & abs(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x))), ~abs(vec4<u32>(1u, 1u, var_2.x, 11687u))));
    var var_4 = Struct_2(u_input.a.x, min(max(2147483647i, 2147483647i >> ((var_3.x >> (arg_2.x % 32u)) % 32u)), -2147483647i));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_2(reverseBits(_wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.a), abs(u_input.a), -vec3<i32>(1i, u_input.a.x, 1i))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(866f, 183f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, 761f))))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 66946u, 101723u), vec3<u32>(4294967295u, arg_0.a, 30813u)) ^ (~vec3<u32>(arg_0.a, 43940u, arg_0.a) ^ ~vec3<u32>(arg_0.a, 4294967295u, 4294967295u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(841f, -451f)) + _wgslsmith_f_op_f32(f32(-1f) * -762f))), _wgslsmith_f_op_f32(-226f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1440f + 1000f)))))), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1328f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-486f))))))));
    let var_1 = Struct_5(~1u, Struct_1(arg_0.b.a, vec2<bool>(!arg_0.b.a.x, any(vec4<bool>(false, arg_2.b.x, true, arg_2.a.x)) && true)));
    var var_2 = (countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(123468u, var_1.a, 8581u), vec3<u32>(arg_0.a, 0u, 1u))) >> (select(arg_0.a, ~_wgslsmith_mult_u32(arg_0.a, 43359u), 22139i <= u_input.a.x) % 32u)) | select(34829u, arg_0.a, false);
    var_2 = _wgslsmith_sub_u32(abs(arg_0.a), (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 42765u, var_1.a, 74267u), vec4<u32>(4294967295u, 123586u, 0u, 28623u))) << (arg_0.a % 32u)) << (var_1.a % 32u));
    var_2 = arg_0.a;
    return -773f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f), 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1241f, 517f) - _wgslsmith_f_op_f32(-1251f - -1759f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-258f, -1381f)), _wgslsmith_f_op_f32(func_1(Struct_5(1u, Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true))), vec4<i32>(2147483647i, -15805i, -1i, u_input.a.x), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true))))), 486f))), _wgslsmith_div_f32(1602f, _wgslsmith_f_op_f32(round(-1564f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-253f, 754f)) + 918f))), -858f);
    let var_1 = ~abs(u_input.a);
    var var_2 = Struct_2(_wgslsmith_sub_i32(-11506i, ~var_1.x), -42408i);
    let var_3 = Struct_5(~42300u, Struct_1(select(vec3<bool>(1506i > u_input.a.x, true, -7579i <= var_2.b), vec3<bool>(var_2.b >= -68153i, false, all(vec4<bool>(true, true, false, true))), vec3<bool>(false, true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true))));
    let var_4 = vec3<bool>(!(var_3.b.a.x == var_3.b.b.x), false, var_3.b.a.x);
    var var_5 = vec2<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f) * var_0.x)), 707f);
    var_5 = _wgslsmith_f_op_vec2_f32(-var_0.yz);
    let var_6 = Struct_4(var_3.b, -1i ^ var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), (firstTrailingBit(_wgslsmith_div_u32(var_3.a, var_3.a)) | _wgslsmith_mod_u32(var_3.a, var_3.a)) ^ ~func_3(), var_3.a, ~select(vec4<i32>(u_input.a.x, var_6.b | -1i, firstTrailingBit(20781i), _wgslsmith_mod_i32(var_6.b, 2147483647i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-32213i, -12984i, 9235i, u_input.a.x), reverseBits(vec4<i32>(var_6.b, -32098i, var_1.x, 36287i))), all(vec3<bool>(true, false, var_6.a.a.x))), vec4<i32>(-65979i, abs(var_6.b), -1i, firstTrailingBit(var_1.x >> (~0u % 32u))));
}

