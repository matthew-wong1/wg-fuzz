struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> u32 {
    let var_0 = 1u;
    let var_1 = -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, abs(1i), -arg_2.a.c, u_input.a.x << (22196u % 32u)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.a.x, 1i, 0i, -1i), vec4<i32>(arg_2.a.c, 1i, u_input.a.x, arg_2.a.c)), vec4<i32>(arg_2.a.c, u_input.a.x, u_input.a.x, 0i))));
    var var_2 = Struct_3(-_wgslsmith_dot_vec3_i32(u_input.a.zwz, u_input.a.wzw), var_1.x, ~vec3<i32>(u_input.a.x, arg_2.a.c, 1253i));
    let var_3 = arg_2;
    var_2 = Struct_3(27312i, 14505i, vec3<i32>(-1i, var_1.x, 1i));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, var_0, 1u), vec4<u32>(arg_2.a.e.x, 4294967295u, arg_0, arg_0)), ~vec4<u32>(arg_0, 4294967295u, 69336u, var_3.a.b)), firstTrailingBit(select(vec4<u32>(0u, 1u, arg_0, 100611u), vec4<u32>(var_0, 4294967295u, var_3.a.b, 4294967295u), arg_1))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, arg_2.a.b, 1u, var_3.a.e.x)), ~vec4<u32>(var_3.a.e.x, 23134u, arg_0, arg_2.a.b)), vec4<u32>(countOneBits(var_3.a.b), _wgslsmith_mult_u32(0u, 3121u), 1u, ~6526u))), var_3.a.b & (~_wgslsmith_sub_u32(41240u, arg_0) & 40729u), ~abs(min(arg_2.a.e.x, 8458u) & 1u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(min(u_input.a.yw, firstTrailingBit(max(vec2<i32>(-1i, u_input.a.x), u_input.a.yx))), func_3(1u, all(vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec2<i32>(-51251i, u_input.a.x), 91040u, u_input.a.x, 1000f, vec2<u32>(4294967295u, 51952u)))) << (~1u % 32u), firstLeadingBit(u_input.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -579f)), 324f)), max(vec2<u32>(1u, 1u), vec2<u32>(50341u, ~4294967295u))));
    var var_1 = (~_wgslsmith_clamp_u32(~1u, abs(14639u), abs(29754u)) | var_0.a.b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(~(115744u << (var_0.a.e.x % 32u)), var_0.a.b, var_0.a.b), vec3<u32>(0u, var_0.a.b, firstTrailingBit(max(4294967295u, 0u)))) % 32u);
    var var_2 = true;
    var var_3 = var_0.a.d;
    let var_4 = Struct_4(-vec4<i32>(24753i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 33991i, -14768i, -1608i), u_input.a), _wgslsmith_clamp_i32(-24371i, -2147483647i, abs(var_0.a.a.x)), var_0.a.a.x));
    return var_0;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = Struct_5(Struct_4(vec4<i32>(-12030i, _wgslsmith_dot_vec2_i32(~u_input.a.xw, vec2<i32>(29168i, arg_1)), arg_2.a.a.x, 2147483647i)), Struct_2(arg_2.a), -799f, vec3<bool>(true, false, true), true);
    let var_1 = vec4<bool>(select(~var_0.b.a.b == ~(var_0.b.a.b << (arg_2.a.b % 32u)), (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.a.b, 53942u, var_0.b.a.e.x), vec3<u32>(var_0.b.a.e.x, 29822u, arg_2.a.e.x)) == arg_2.a.e.x) | (arg_0 || true), func_2().a.a.x < arg_2.a.c), var_0.d.x, true, arg_2.a.e.x >= var_0.b.a.e.x);
    var var_2 = vec4<u32>(4294967295u, arg_2.a.b, ~(func_3(arg_2.a.b, false, Struct_2(arg_2.a)) & (arg_2.a.e.x & _wgslsmith_sub_u32(var_0.b.a.e.x, var_0.b.a.b))), 61356u);
    let var_3 = Struct_5(Struct_4(-countOneBits(vec4<i32>(-12742i, -2147483647i, u_input.a.x, 29838i))), func_2(), var_0.c, vec3<bool>(var_0.e, true, true), all(var_1.wyw));
    var var_4 = !var_0.d.zz;
    return !vec3<bool>(arg_0, all(select(var_0.d.zz, var_3.d.yy, var_3.d.zy)) && (_wgslsmith_f_op_f32(arg_2.a.d + var_3.b.a.d) >= -1337f), ~countOneBits(var_3.a.a.x) > max(-arg_2.a.a.x, 0i));
}

fn func_1() -> Struct_2 {
    var var_0 = false || !(true | select(true, true, true));
    var_0 = any(func_4(true, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -11298i, u_input.a.x, u_input.a.x), abs(u_input.a))), func_2()));
    let var_1 = Struct_1(u_input.a.zy >> ((~(~vec2<u32>(0u, 0u)) ^ firstTrailingBit(reverseBits(vec2<u32>(0u, 22790u)))) % vec2<u32>(32u)), ~1u, func_2().a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1174f, 640f))), vec2<u32>(64136u, 1u));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1136f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1421f - -1581f))) - _wgslsmith_f_op_f32(trunc(-2570f)))));
    var_0 = var_1.b < _wgslsmith_dot_vec2_u32(abs(func_2().a.e), vec2<u32>(_wgslsmith_mod_u32(~var_1.e.x, abs(0u)), var_1.b));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_5) -> Struct_3 {
    let var_0 = arg_2.d.zy;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_1.x, arg_1.x, 172f))))))));
    var var_2 = !(abs(0i ^ u_input.a.x) >= -1i) && true;
    var var_3 = Struct_4(~(-(~arg_2.a.a)));
    let var_4 = !(!all(select(!arg_2.d.zx, var_0, vec2<bool>(true, true))));
    return Struct_3(_wgslsmith_mult_i32(min(firstLeadingBit(0i), (i32(-1i) * -1i) >> (1u % 32u)), -_wgslsmith_clamp_i32(u_input.a.x ^ arg_2.b.a.a.x, arg_0.c, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), ~firstLeadingBit(0i << (~arg_2.b.a.b % 32u)), _wgslsmith_sub_vec3_i32(abs(firstLeadingBit(select(var_3.a.wzw, u_input.a.wxz, false))), vec3<i32>(arg_0.a.x >> (~arg_0.e.x % 32u), -4661i, firstLeadingBit(58757i >> (arg_0.e.x % 32u)))));
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> vec2<i32> {
    return vec2<i32>(min(min(-53835i, u_input.a.x), -u_input.a.x) | arg_1.c.x, reverseBits(~arg_1.a));
}

fn func_7(arg_0: bool, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_3(-2147483647i, ~abs(abs(func_1().a.a.x)), (vec3<i32>(1i, 1i, 1i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -12035i, arg_1.x) << (vec3<u32>(1u, 9053u, 0u) % vec3<u32>(32u)), reverseBits(vec3<i32>(-1i, -5560i, u_input.a.x)), min(u_input.a.yyz, u_input.a.xyy))) ^ vec3<i32>(~_wgslsmith_mod_i32(-67175i, arg_1.x), u_input.a.x, 18875i));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~1u, ~(~1u) & _wgslsmith_clamp_u32(4294967295u, ~59921u, 0u)), _wgslsmith_mod_u32(~max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8531u), vec2<u32>(4294967295u, 21241u)), _wgslsmith_mult_u32(26104u, 45222u)), ~(~23569u)));
    var_1 = countOneBits(reverseBits(_wgslsmith_sub_u32(~27079u, 0u)));
    var var_2 = vec4<bool>(~select(~15448u, 4294967295u, false) == _wgslsmith_dot_vec2_u32(func_1().a.e, _wgslsmith_div_vec2_u32(vec2<u32>(82214u, 4294967295u), vec2<u32>(1u, 1u))), !arg_0, true, _wgslsmith_mult_i32(32827i, var_0.c.x) != _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_0.c.x), u_input.a.wx) & u_input.a.yy, _wgslsmith_div_vec2_i32(vec2<i32>(2987i, -22135i), u_input.a.wx) >> (firstTrailingBit(vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))));
    var_1 = 4294967295u;
    return Struct_4(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 21119i, u_input.a.x), -vec4<i32>(0i, 1i, 10591i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(false, func_6(false, func_5(Struct_1(_wgslsmith_sub_vec2_i32(u_input.a.zy, vec2<i32>(4105i, u_input.a.x)), 4294967295u, -u_input.a.x, _wgslsmith_f_op_f32(864f * 776f), reverseBits(vec2<u32>(4294967295u, 39749u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-281f, -611f), vec2<f32>(1625f, 729f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1019f, -1003f), vec2<f32>(128f, -1087f), true))), Struct_5(Struct_4(vec4<i32>(-2147483647i, u_input.a.x, 26796i, u_input.a.x)), func_1(), _wgslsmith_f_op_f32(-641f - 593f), vec3<bool>(true, true, true), false))));
    let var_1 = func_2().a;
    var var_2 = Struct_5(Struct_4(min(min(u_input.a, vec4<i32>(var_0.a.x, -37507i, -37661i, var_0.a.x)), var_0.a) & firstTrailingBit(vec4<i32>(var_0.a.x, -20821i, var_0.a.x, -39025i))), func_2(), _wgslsmith_div_f32(-1964f, var_1.d), !vec3<bool>(select(select(false, true, true), any(vec2<bool>(false, true)), true), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), 2596f == _wgslsmith_f_op_f32(-376f - var_1.d)), false);
    var var_3 = ~reverseBits(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(1u, var_1.e.x, var_2.b.a.b)), vec3<u32>(15114u, var_1.b, countOneBits(26000u)), vec3<u32>(~var_1.e.x, ~4294967295u, var_1.b)));
    var var_4 = func_5(func_2().a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(542f, var_1.d), vec2<f32>(-1080f, var_1.d), var_2.d.yx)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-987f, var_2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(3062f, -241f) * vec2<f32>(1399f, 344f))))), Struct_5(Struct_4(~(~vec4<i32>(0i, var_2.a.a.x, var_1.c, var_2.b.a.a.x))), func_1(), _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, -731f))), vec3<bool>(!(var_2.e && var_2.d.x), any(select(vec2<bool>(false, var_2.e), var_2.d.yx, var_2.d.xz)), false), !(!var_2.e)));
    var var_5 = Struct_5(var_2.a, var_2.b, _wgslsmith_f_op_f32(var_2.b.a.d - _wgslsmith_f_op_f32(-808f + var_2.c)), var_2.d, var_2.e);
    var var_6 = vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, ~_wgslsmith_sub_i32(-1i, firstLeadingBit(u_input.a.x))), ~(-(~1i)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(~func_5(Struct_1(vec2<i32>(0i, var_2.b.a.a.x), var_5.b.a.e.x, var_4.b, 384f, var_2.b.a.e), vec2<f32>(var_5.b.a.d, var_5.c), Struct_5(var_5.a, var_5.b, 941f, var_2.d, false)).a, _wgslsmith_add_i32(-41169i, firstTrailingBit(-2147483647i)), 121i), -28553i), -(-1i << (var_2.b.a.e.x % 32u)));
    let var_7 = vec2<bool>(var_5.e, false);
    let var_8 = Struct_2(func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_i32(~var_2.a.a, var_2.a.a), _wgslsmith_clamp_vec2_i32(~func_7(true, select(vec2<i32>(-5913i, -92764i), var_6.xz, var_2.d.yy)).a.xy, var_2.a.a.zy, var_8.a.a), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 74502u | var_1.e.x, ~1u), firstLeadingBit(vec3<u32>(var_2.b.a.e.x, 16273u, 26999u) | vec3<u32>(46516u, 29052u, var_2.b.a.e.x))));
}

