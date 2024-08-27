struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_2(select(_wgslsmith_mult_vec4_i32(vec4<i32>(12016i, u_input.a.x, u_input.a.x, -2147483647i), -(~vec4<i32>(u_input.a.x, u_input.a.x, -1i, 34606i))), _wgslsmith_mod_vec4_i32(vec4<i32>(~3328i, ~(-22858i), -u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-20938i, u_input.a.x, u_input.a.x, 2147483647i)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -69130i))), u_input.a.x == firstTrailingBit(4192i)), Struct_1(0u & _wgslsmith_mult_u32(~88903u, 0u ^ u_input.b.x)), Struct_1(~max(_wgslsmith_sub_u32(u_input.b.x, 1u), abs(u_input.b.x))), Struct_1(arg_0.x), 1u);
    let var_1 = Struct_2(vec4<i32>(var_0.a.x, -2147483647i, -13465i, -1i), var_0.c, Struct_1(4294967295u), Struct_1(11122u), u_input.b.x);
    var var_2 = -var_0.a.zy;
    let var_3 = !vec3<bool>(false, true, !((i32(-1i) * -2147483647i) > (var_2.x >> (u_input.b.x % 32u))));
    var var_4 = var_0.c;
    return !select(var_3.xz, vec2<bool>(!any(vec4<bool>(false, var_3.x, false, false)), var_3.x), !(!var_3.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(800f, -1215f, -591f), vec3<f32>(2189f, -1725f, -529f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1511f, -305f, 266f) + vec3<f32>(-187f, 161f, 227f)))))));
    let var_1 = i32(-1i) * -8175i;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_0.x), _wgslsmith_f_op_f32(abs(1109f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, true)), _wgslsmith_f_op_f32(abs(var_0.x)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -422f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2046f, var_2.x, var_2.x, 1282f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, -483f, var_2.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1168f, var_2.x, var_0.x, -1160f) - vec4<f32>(-1462f, var_2.x, var_2.x, var_2.x))))));
    return vec2<u32>(arg_2.a, ~1u);
}

fn func_2() -> i32 {
    var var_0 = vec3<u32>(45144u, u_input.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.zx, func_4(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false), func_3(u_input.b.yw), Struct_1(u_input.b.x))), _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 54919u, 114452u, 34116u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) & vec4<u32>(3763u, 1u, 32140u, 4294967295u)))));
    return firstLeadingBit(i32(-1i) * -u_input.a.x);
}

fn func_1(arg_0: i32) -> vec4<i32> {
    var var_0 = ~(~(~(~vec3<i32>(u_input.a.x, arg_0, 49874i)) | vec3<i32>(abs(-2147483647i), _wgslsmith_div_i32(-26142i, 5862i), _wgslsmith_mult_i32(0i, arg_0))));
    var_0 = vec3<i32>(-u_input.a.x, func_2(), _wgslsmith_mult_i32(arg_0, select(_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, -9967i), var_0.x), u_input.a.x, false)));
    var var_1 = Struct_2(_wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(0i, var_0.x, arg_0, u_input.a.x)), select(vec4<i32>(-5403i, var_0.x, u_input.a.x, var_0.x), vec4<i32>(u_input.a.x, 6460i, 0i, var_0.x), true)), vec4<i32>(arg_0, var_0.x, var_0.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_0, -28733i), vec3<i32>(var_0.x, 2147483647i, -32572i))) & (_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, arg_0, u_input.a.x, -1i), vec4<i32>(var_0.x, 64669i, arg_0, 2147483647i)) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -9483i))), Struct_1(_wgslsmith_clamp_u32(~56522u << (~u_input.b.x % 32u), func_4(vec4<bool>(true, true, true, true), vec2<bool>(false, true), Struct_1(12472u)).x, ~0u)), Struct_1(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(64782u, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b))), Struct_1(_wgslsmith_clamp_u32(abs(~99057u), ~u_input.b.x, ~4294967295u)), ~(~_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 0u), u_input.b.x)));
    var var_2 = min(min(-var_1.a.zx, var_1.a.wy), -abs(~u_input.a)) & ~var_1.a.zw;
    var var_3 = vec2<i32>(-_wgslsmith_mult_i32(u_input.a.x, firstTrailingBit(0i)), -1737i);
    return firstLeadingBit(vec4<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i ^ var_3.x, _wgslsmith_add_i32(var_1.a.x, arg_0)), 16710i), 4991i, var_1.a.x));
}

fn func_5(arg_0: Struct_2) -> f32 {
    var var_0 = -1466f;
    let var_1 = vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), u_input.a.x >= -16999i, any(vec2<bool>(true, true)), true))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-442f, 1935f)))))));
    let var_2 = _wgslsmith_div_i32(u_input.a.x, arg_0.a.x);
    var var_3 = -16211i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1631f)) + _wgslsmith_f_op_f32(f32(-1f) * -146f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-507f + 1091f)), _wgslsmith_f_op_f32(func_5(Struct_2(func_1(2147483647i), Struct_1(4294967295u), Struct_1(32111u), Struct_1(79489u), 4294967295u)))));
    let var_1 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-50876i, -41790i, u_input.a.x, 61904i), ~_wgslsmith_div_vec4_i32(func_1(-109654i), -vec4<i32>(39011i, u_input.a.x, u_input.a.x, -11087i))), Struct_1(_wgslsmith_div_u32(~42452u, ~reverseBits(61621u))), Struct_1(_wgslsmith_sub_u32(func_4(vec4<bool>(false, true, false, true), vec2<bool>(true, false), Struct_1(11106u)).x & select(4294967295u, 0u, false), _wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, ~u_input.b.x))), Struct_1(u_input.b.x), ~17761u);
    let var_2 = var_1;
    let var_3 = var_0.x;
    var var_4 = select(select(select(vec4<bool>(true, true, false, any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(false, false, false), false)), vec4<bool>(false, true, true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)))), vec4<bool>(true, !any(vec2<bool>(false, false)), true, all(vec3<bool>(true, true, true)))), !any(vec4<bool>(true, false, true, func_3(vec2<u32>(4294967295u, 4294967295u)).x)));
    var var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-vec2<i32>(u_input.a.x, -26458i) >> (abs(_wgslsmith_add_vec2_u32(vec2<u32>(33889u, var_1.b.a), u_input.b.zz)) % vec2<u32>(32u))), ~u_input.b.yz, 0i, 27928i);
}

