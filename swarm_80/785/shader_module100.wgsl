struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = arg_2.e;
    let var_1 = !(!(all(arg_0.yy) | true));
    var var_2 = max(arg_2.b, abs(arg_2.b));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(min(-720f, _wgslsmith_f_op_f32(440f - _wgslsmith_f_op_f32(arg_1.x + arg_1.x))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-222f, -719f, arg_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, 1744f, arg_1.x), vec3<f32>(arg_1.x, -453f, -1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1272f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3))), _wgslsmith_f_op_f32(arg_1.x - var_3))) + vec3<f32>(-221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3 * var_3))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - 480f))), _wgslsmith_f_op_f32(130f * 662f)));
    return _wgslsmith_add_vec4_u32(select(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(7136u, 11654u, var_2.x, u_input.c), arg_2.b)), ~(~abs(vec4<u32>(50009u, u_input.e.x, 77189u, 1u))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(var_1, true, true, arg_0.x), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, var_1), false)))), ~(arg_2.b & ~_wgslsmith_sub_vec4_u32(arg_2.b, arg_2.b)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2510f, -1026f, 1669f, 1720f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1231f, _wgslsmith_f_op_f32(floor(-1200f)), _wgslsmith_f_op_f32(f32(-1f) * -633f), -420f)))));
    let var_1 = !all(vec3<bool>(true, false, true)) | all(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)));
    var_0 = vec4<f32>(var_0.x, -1318f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(691f * var_0.x)))));
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(52123i, _wgslsmith_sub_i32(1i, abs(~0i)), (u_input.b.x >> (~8834u % 32u)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.e.x, u_input.c), vec4<u32>(4294967295u, 52084u, u_input.c, 15353u), vec4<u32>(u_input.e.x, 69590u, 5070u, u_input.e.x)), func_3(vec3<bool>(var_1, var_1, true), vec2<f32>(142f, var_0.x), Struct_3(Struct_1(vec2<i32>(1i, -1i), 118601u, 70494u, u_input.e), vec4<u32>(4294967295u, 52414u, 1u, u_input.c), Struct_2(u_input.a, u_input.e), Struct_2(u_input.b.x, u_input.e), Struct_1(vec2<i32>(u_input.d, u_input.d), u_input.c, u_input.c, u_input.e)))) % 32u), _wgslsmith_mult_i32(0i, u_input.d)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(~26954i, abs(u_input.d), ~u_input.b.x, _wgslsmith_clamp_i32(1i, u_input.d, -2147483647i))), vec4<i32>(-9014i, u_input.b.x, -u_input.d, u_input.b.x), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -9270i, u_input.a, 25696i), -vec4<i32>(u_input.b.x, 13481i, -8513i, u_input.b.x)))), ~_wgslsmith_add_vec4_i32(~vec4<i32>(1i, -20162i, 45277i, u_input.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -27515i, u_input.d, -28991i), vec4<i32>(924i, u_input.b.x, u_input.a, u_input.b.x), vec4<i32>(-1i, u_input.d, u_input.a, 1i))) & select(-reverseBits(vec4<i32>(-7276i, 2147483647i, -1i, 29810i)), ~vec4<i32>(u_input.d, 31018i, -1i, -5021i), select(select(vec4<bool>(var_1, var_1, false, false), vec4<bool>(false, var_1, false, var_1), vec4<bool>(true, var_1, var_1, true)), !vec4<bool>(false, var_1, false, var_1), select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, var_1, false, false), vec4<bool>(var_1, var_1, var_1, false)))));
    let var_3 = Struct_1(~var_2.xx, ~reverseBits(4294967295u), 1u, firstTrailingBit(vec3<u32>(u_input.c, countOneBits(u_input.e.x), _wgslsmith_add_u32(69742u, u_input.e.x))) ^ vec3<u32>(~4294967295u, 38818u, ~(~u_input.c)));
    return Struct_2(_wgslsmith_mod_i32(u_input.b.x << (var_3.d.x % 32u), _wgslsmith_div_i32(-46567i, ~(-14273i))), _wgslsmith_mod_vec3_u32(max(vec3<u32>(var_3.b, 0u, 1u), vec3<u32>(4294967295u, u_input.e.x, u_input.c)), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.e.xx, u_input.e.xx), var_3.b, 1u)) >> (select(vec3<u32>(32773u, ~1052u, ~u_input.c), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(false, var_1 & true, true)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = all(!vec3<bool>(false, 0i != arg_0.a, select(false, true, false) & all(vec3<bool>(true, true, true))));
    var var_1 = ~firstLeadingBit(~(~max(u_input.b, u_input.b)));
    var var_2 = vec4<bool>(true, ~40325u == ~((arg_0.b.x << (arg_0.b.x % 32u)) & 0u), true, true);
    let var_3 = ~(~u_input.e.xz) | abs(_wgslsmith_add_vec2_u32(~u_input.e.yz, ~(~vec2<u32>(arg_0.b.x, u_input.e.x))));
    var var_4 = var_1.x;
    return ~_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)) | (~vec3<u32>(arg_0.b.x, arg_0.b.x, 23856u) >> (vec3<u32>(6497u, var_3.x, var_3.x) % vec3<u32>(32u))), ~firstLeadingBit(~vec3<u32>(u_input.e.x, 0u, u_input.c)));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_2 {
    let var_0 = vec3<u32>(~_wgslsmith_mult_u32(abs(98939u), _wgslsmith_mod_u32(u_input.e.x, u_input.c)) & ~firstTrailingBit(105373u), u_input.c, u_input.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(2438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, -111f))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-646f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_1) - vec2<f32>(arg_1, -398f)), !vec2<bool>(arg_0, false))) + vec2<f32>(_wgslsmith_div_f32(arg_1, arg_1), arg_1)))));
    var var_2 = var_0.zy;
    var var_3 = _wgslsmith_div_vec3_u32(u_input.e, _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(19078u, 6326u, 79822u), vec3<u32>(0u, u_input.e.x, 45359u)), vec3<u32>(4294967295u, ~var_2.x, ~0u))) ^ ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.e, _wgslsmith_mult_vec3_u32(var_0, u_input.e)), func_4(func_2()));
    let var_4 = _wgslsmith_f_op_f32(trunc(arg_1));
    return Struct_2(1i, vec3<u32>(3398u, _wgslsmith_dot_vec2_u32(vec2<u32>(377u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_3.x, u_input.e.x, var_3.x), vec4<u32>(1u, var_2.x, var_2.x, 0u))), ~(~vec2<u32>(63683u, 4294967295u))), ~(select(1u, var_3.x, false) | reverseBits(var_3.x))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = func_2();
    return 299f;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: bool, arg_3: f32) -> vec3<u32> {
    var var_0 = all(select(select(arg_1.yz, vec2<bool>(true, true), select(arg_1.x, u_input.c > 13050u, true || arg_2)), vec2<bool>(!arg_2, all(!vec4<bool>(false, arg_0.x, false, true))), select(select(vec2<bool>(arg_2, true), select(vec2<bool>(arg_1.x, arg_1.x), arg_1.xz, arg_1.zz), false), !vec2<bool>(false, arg_1.x), vec2<bool>(all(vec3<bool>(arg_0.x, true, arg_0.x)), u_input.b.x >= -5859i))));
    var_0 = true & all(!arg_0);
    var_0 = arg_2;
    var var_1 = !vec4<bool>(all(arg_1.xx), true, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.e.x), u_input.e.yz) > 1634u, false);
    var_1 = vec4<bool>((~(-41778i) >> (_wgslsmith_mult_u32(u_input.c << (u_input.e.x % 32u), func_4(Struct_2(-15382i, vec3<u32>(4294967295u, u_input.e.x, u_input.c))).x) % 32u)) >= (u_input.d ^ u_input.b.x), !any(arg_1.zy), any(select(!vec4<bool>(true, arg_0.x, arg_2, arg_0.x), select(select(vec4<bool>(arg_1.x, arg_2, var_1.x, true), vec4<bool>(arg_2, false, arg_1.x, false), true), !vec4<bool>(arg_1.x, true, var_1.x, arg_2), vec4<bool>(arg_1.x, false, arg_1.x, arg_2)), var_1.x)), true);
    return _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, u_input.c, 87622u) | _wgslsmith_mod_vec3_u32(select(vec3<u32>(20592u, 1u, u_input.e.x) << (u_input.e % vec3<u32>(32u)), u_input.e << (u_input.e % vec3<u32>(32u)), arg_1.x), u_input.e << ((vec3<u32>(4294967295u, u_input.c, u_input.e.x) >> (vec3<u32>(1u, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))), max(func_2().b | u_input.e, _wgslsmith_add_vec3_u32(abs(_wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(35005u, 1u, 20083u))), vec3<u32>(~u_input.e.x, func_4(Struct_2(u_input.d, vec3<u32>(1u, u_input.c, u_input.c))).x, 3160u))));
}

fn func_7(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_i32(~(~_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-19289i, u_input.a, u_input.d), vec3<bool>(true, false, arg_0)), _wgslsmith_mod_vec3_i32(vec3<i32>(11851i, 0i, 12464i), vec3<i32>(u_input.b.x, -1i, u_input.a)))), -vec3<i32>(func_1(any(vec2<bool>(true, arg_0)), _wgslsmith_f_op_f32(select(-1315f, -1153f, arg_0))).a, u_input.a, select(-12156i, 1i, all(vec4<bool>(true, arg_0, false, arg_1)))));
    let var_1 = vec4<f32>(772f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-365f * 1000f))))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -578f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1566f, -1437f), -250f))))));
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(~abs(26652i), var_0.x, 10386i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, 4850i, u_input.d), select(vec3<i32>(u_input.a, var_0.x, -1i), vec3<i32>(-10750i, 0i, 69912i), vec3<bool>(false, arg_0, false))), firstTrailingBit(vec3<i32>(u_input.a, var_0.x, 2147483647i) << (u_input.e % vec3<u32>(32u)))), 1i >> (func_1(select(arg_0, arg_1, arg_1), _wgslsmith_f_op_f32(1278f + var_1.x)).b.x % 32u)), ~(-vec3<i32>(var_0.x, -116511i, 2147483647i) << (countOneBits(u_input.e) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))) - _wgslsmith_f_op_f32(round(var_1.x)));
    let var_3 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, var_0.x), -vec3<i32>(var_0.x, 1i, u_input.d)), _wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.b.x, var_0.x, 1i)), abs(vec3<i32>(-6473i, u_input.a, u_input.b.x)))), ~arg_2.x & 62636u, arg_2.x, select(u_input.e, ~u_input.e, select(vec3<bool>(all(vec2<bool>(false, arg_1)), !arg_1, false), !select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_0, arg_0, arg_0)), select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_1, true, true), arg_1), vec3<bool>(true, false, true), !vec3<bool>(false, arg_1, false)))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_7(true, true & all(vec3<bool>(true, true, true)), func_6(vec2<bool>(true, true), vec3<bool>(true, true, true), false, _wgslsmith_f_op_f32(func_5(func_1(true, -1382f), Struct_1(u_input.b, u_input.e.x, u_input.c, vec3<u32>(u_input.e.x, 0u, u_input.c)))))), ~(~vec4<u32>(u_input.c, _wgslsmith_mult_u32(23068u, 74110u), u_input.c, func_1(true, 1631f).b.x)), Struct_2(_wgslsmith_div_i32(func_2().a, u_input.a | ~u_input.b.x), firstTrailingBit(u_input.e)), Struct_2(select(36010i, ~(-23063i), true), u_input.e), Struct_1(vec2<i32>(-func_2().a, u_input.b.x), abs(35238u), u_input.e.x, vec3<u32>(17092u, ~4294967295u ^ firstTrailingBit(u_input.e.x), u_input.e.x << (func_4(Struct_2(u_input.b.x, u_input.e)).x % 32u))));
    let var_1 = Struct_3(func_7(select(true, all(vec3<bool>(false, true, true)), false), false, ~(~vec3<u32>(110057u, var_0.e.c, var_0.b.x))), vec4<u32>(u_input.e.x, u_input.c, u_input.c, 4294967295u), var_0.d, Struct_2(u_input.d, vec3<u32>(~_wgslsmith_div_u32(1u, 1u), ~select(43009u, 4294967295u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.b.x, var_0.d.b.x, var_0.a.c, u_input.c), vec4<u32>(var_0.d.b.x, u_input.e.x, u_input.c, 0u) & var_0.b))), func_7(u_input.a > u_input.a, !any(vec4<bool>(true, true, true, true)), ~(~vec3<u32>(u_input.c, 4294967295u, var_0.c.b.x))));
    var var_2 = -2414f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(true == all(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(sign(231f))), var_0.e)) + 1292f);
    var var_3 = func_3(select(vec3<bool>(true, all(vec3<bool>(true, true, false)), true), vec3<bool>(any(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true)), false), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 1000f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -375f), 614f))), var_1);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(-277f, 1916f))) + 1288f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_0.e.a.x), _wgslsmith_f_op_f32(201f * _wgslsmith_f_op_f32(f32(-1f) * -1574f)), vec3<u32>(~var_3.x, 19017u << (u_input.e.x % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(var_0.b.wwy, var_1.e.d), vec3<u32>(34815u, var_0.a.b, var_1.c.b.x)), ~(vec3<u32>(4294967295u, u_input.e.x, 4959u) & vec3<u32>(var_0.c.b.x, var_0.b.x, 80804u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f))), -80819i);
}

