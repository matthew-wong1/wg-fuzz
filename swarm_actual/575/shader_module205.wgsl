struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_4,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 2>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<i32> {
    global0 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(60966i, u_input.b.x, 0i, 11395i) | vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 0i), vec4<i32>(36650i, -1i, u_input.b.x, u_input.b.x))), ~(~vec4<i32>(u_input.b.x, u_input.b.x, -9219i, -4779i)), -max(vec4<i32>(u_input.b.x, -12274i, 2147483647i, u_input.b.x), vec4<i32>(1236i, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<i32>(_wgslsmith_div_i32(~(-24323i), -u_input.b.x), -u_input.b.x, -u_input.b.x, -(u_input.b.x << (u_input.a % 32u))));
    var var_0 = Struct_1(!select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(94526u, u_input.a, u_input.a)), vec3<u32>(~u_input.a, ~u_input.a, select(28895u, 71668u, true))), abs(~(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(4294967295u, 856u, 24844u) % vec3<u32>(32u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(473f, 299f, -1396f, 223f), vec4<f32>(-826f, -333f, 1732f, -1137f))))) * vec4<f32>(_wgslsmith_f_op_f32(1935f - -2162f), _wgslsmith_f_op_f32(ceil(-1064f)), _wgslsmith_f_op_f32(f32(-1f) * -1697f), -1612f))), 1u >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(23693u, u_input.a, 69164u), vec3<u32>(u_input.a, u_input.a, u_input.a))) % 32u), u_input.a);
    var var_1 = var_0.a.x;
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(~(~vec4<u32>(0u, u_input.a, var_0.d, 32259u))), max(reverseBits(vec4<u32>(var_0.d, var_0.d, 1u, 4294967295u) | vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), vec4<u32>(var_0.b.x, ~var_0.e, var_0.d, var_0.b.x << (u_input.a % 32u)))), abs(vec4<u32>(1u, ~_wgslsmith_div_u32(3809u, var_0.e), ~1u << (u_input.a % 32u), _wgslsmith_sub_u32(~1u, 1u))));
    let var_3 = vec4<i32>(640i & u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -21810i, -reverseBits(-56613i), -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 1i, ~u_input.b.x, abs(-44818i)), max(vec4<i32>(u_input.b.x, 1i, u_input.b.x, 31478i) ^ vec4<i32>(u_input.b.x, 0i, u_input.b.x, 2147483647i), reverseBits(vec4<i32>(-2147483647i, -36083i, u_input.b.x, -1i))), firstTrailingBit(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, 1i, -1i))))), u_input.b.x, -min(_wgslsmith_mult_i32(u_input.b.x, 2147483647i), abs(u_input.b.x)));
    return u_input.b.yy >> (vec2<u32>(_wgslsmith_mod_u32(101919u, _wgslsmith_div_u32(~var_2.x, ~var_0.b.x)), ~var_2.x >> (firstLeadingBit(~1u) % 32u)) % vec2<u32>(32u));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(!(!vec4<bool>(true, any(vec3<bool>(true, false, true)), all(vec2<bool>(true, false)), true)), vec3<u32>(_wgslsmith_clamp_u32(70233u, ~1u, u_input.a ^ 23218u), reverseBits(u_input.a) ^ 0u, u_input.a) ^ abs(vec3<u32>(u_input.a, u_input.a, min(u_input.a, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(779f, -537f, true)) * _wgslsmith_f_op_f32(1105f + 475f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f), 239f)), 1360f, _wgslsmith_div_f32(_wgslsmith_div_f32(-277f, _wgslsmith_f_op_f32(select(-188f, 1996f, false))), _wgslsmith_f_op_f32(-1204f - _wgslsmith_f_op_f32(abs(-568f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-137f))), true))), 0u, 82694u);
    var var_1 = vec4<i32>(-47698i, u_input.b.x, u_input.b.x, 15022i);
    let var_2 = -func_3();
    var_1 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(min(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_1.x, var_1.x, 0i)), u_input.b.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b.x, var_2.x), 1i)), ~(~(var_2.x | -5903i))), var_1.x, min(-1i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) ^ abs(var_1.x)), u_input.b.x);
    global0 = var_2.x;
    return ~(~_wgslsmith_mod_u32(countOneBits(var_0.b.x), 4294967295u ^ u_input.a) << (_wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(~var_0.d, ~4294967295u, u_input.a)) % 32u));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec3<f32>, arg_3: bool) -> Struct_4 {
    let var_0 = ~arg_0.a.a.x > arg_0.a.a.x;
    global1 = array<Struct_2, 2>();
    let var_1 = arg_0.a.b.x & 4294967295u;
    let var_2 = Struct_5(arg_0.d.c, select(vec4<u32>(var_1 >> (max(69453u, 31481u) % 32u), arg_0.d.e, 1u, 8306u), firstLeadingBit(firstLeadingBit(reverseBits(vec4<u32>(var_1, 4294967295u, var_1, var_1)))), select(select(select(vec4<bool>(true, true, arg_3, var_0), vec4<bool>(arg_0.b.a.x, arg_1, false, true), false), vec4<bool>(false, true, true, arg_1), !arg_0.b.a.x), select(arg_0.b.a, arg_0.d.a, any(vec3<bool>(false, false, arg_3))), any(!arg_0.b.a))), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-274f + -1565f), arg_2.x)), abs(~u_input.a));
    global1 = array<Struct_2, 2>();
    return Struct_4(var_2.c.a, arg_0.d, -18060i, Struct_1(arg_0.b.a, vec3<u32>(~(~var_2.b.x), ~1u | ~u_input.a, var_2.b.x), arg_0.d.c, ~var_2.b.x, _wgslsmith_mod_u32(0u, abs(u_input.a >> (arg_0.d.d % 32u)))), vec2<u32>(reverseBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 0u), firstLeadingBit(var_2.e))), func_2()));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_3 {
    global0 = -_wgslsmith_mult_i32(-(~(-1i)) << (_wgslsmith_add_u32(u_input.a, u_input.a << (20880u % 32u)) % 32u), 0i);
    var var_0 = func_4(Struct_4(global1[_wgslsmith_index_u32(func_2(), 2u)], Struct_1(select(vec4<bool>(true, arg_0, true, true), !vec4<bool>(true, arg_0, false, true), arg_0), ~select(arg_1.xzy, vec3<u32>(1u, arg_1.x, u_input.a), vec3<bool>(arg_0, true, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1571f, -808f, -1000f, 447f)))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, 59506u), arg_1.zz), arg_1.xw ^ arg_1.wz), ~u_input.a), 47766i, Struct_1(select(vec4<bool>(false, arg_0, true, arg_0), !vec4<bool>(false, true, false, arg_0), true), max(vec3<u32>(u_input.a, u_input.a, 54093u), arg_1.xzx) << (arg_1.wzz % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-609f, -1046f, -301f, 249f) + vec4<f32>(-1018f, 205f, 1749f, 361f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1007f, -263f, -963f, -1249f))), _wgslsmith_dot_vec3_u32(~arg_1.wxz, arg_1.xzw), min(4294967295u, arg_1.x) ^ ~arg_1.x), arg_1.xz), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1215f, -779f, -715f)) * vec3<f32>(-117f, -359f, _wgslsmith_f_op_f32(floor(-1010f))))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.c.x), var_0.b.c.x, _wgslsmith_f_op_f32(var_0.d.c.x * -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(107f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1332f, var_0.d.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f))), _wgslsmith_f_op_f32(-208f * _wgslsmith_f_op_f32(max(var_0.d.c.x, _wgslsmith_div_f32(803f, 1552f))))));
    var var_2 = vec4<i32>(-1i) * -(~(-vec4<i32>(var_0.a.a.x, var_0.c, var_0.c, u_input.b.x)) | -vec4<i32>(26865i, -33358i, var_0.c, 1i));
    var var_3 = var_0.b.c.zw;
    return Struct_3(vec3<i32>(var_2.x, _wgslsmith_div_i32((var_2.x >> (var_0.a.b.x % 32u)) << (var_0.a.b.x % 32u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, -34499i), var_2.x | var_2.x)), 32234i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.b.c.wzy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b.c.yyw, var_0.b.c.xxw, arg_0)), vec3<f32>(var_3.x, 501f, var_0.d.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 2>();
    var var_0 = vec3<u32>(63672u | _wgslsmith_div_u32(u_input.a, reverseBits(u_input.a << (u_input.a % 32u))), 4294967295u, u_input.a);
    global1 = array<Struct_2, 2>();
    global1 = array<Struct_2, 2>();
    var var_1 = func_1(true, vec4<u32>(1953u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), var_0.xx), var_0.xx) | var_0.x, u_input.a, ~_wgslsmith_add_u32(4294967295u, u_input.a)));
    let var_2 = var_1.b.x;
    let var_3 = func_4(Struct_4(func_4(func_4(func_4(Struct_4(global1[_wgslsmith_index_u32(124554u, 2u)], Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(var_0.x, 42134u, u_input.a), vec4<f32>(1000f, 762f, var_1.b.x, -218f), 36537u, 1u), -2116i, Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(u_input.a, 5172u, u_input.a), vec4<f32>(var_1.b.x, var_1.b.x, -1412f, var_1.b.x), 4294967295u, 67619u), vec2<u32>(var_0.x, u_input.a)), true, vec3<f32>(1867f, var_1.b.x, -2229f), false), all(vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(exp2(var_1.b)), true), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1319f, -237f, -1246f) + var_1.b)), true).a, Struct_1(func_4(func_4(Struct_4(Struct_2(var_1.a.yx, vec2<u32>(var_0.x, 90829u)), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, u_input.a, 1u), vec4<f32>(-813f, -682f, 1362f, var_1.b.x), 4294967295u, var_0.x), -13038i, Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(u_input.a, u_input.a, 4294967295u), vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), var_0.x, 3388u), var_0.yx), false, var_1.b, false), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, 1733f, 2449f) + var_1.b), true).b.a, reverseBits(~vec3<u32>(u_input.a, 4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, -1810f, -588f, var_1.b.x) * vec4<f32>(997f, 1137f, 1000f, -142f))), var_0.x, ~var_0.x), 32720i, Struct_1(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), abs(vec3<u32>(1u, u_input.a, 1u) ^ vec3<u32>(15445u, u_input.a, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(sign(247f)), _wgslsmith_f_op_f32(f32(-1f) * -477f), _wgslsmith_f_op_f32(-872f + var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -457f)), max(27037u, ~1u), var_0.x), max(_wgslsmith_mult_vec2_u32(vec2<u32>(92059u, var_0.x), var_0.zz), ~var_0.xy) & func_4(func_4(Struct_4(Struct_2(var_1.a.zz, var_0.xy), Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(1u, 93521u, 75028u), vec4<f32>(-706f, 1639f, var_1.b.x, var_1.b.x), var_0.x, 11237u), var_1.a.x, Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(var_0.x, 1u, 15753u), vec4<f32>(782f, 772f, var_1.b.x, -401f), u_input.a, 26630u), var_0.xz), true, vec3<f32>(var_1.b.x, var_1.b.x, 2324f), false), any(vec3<bool>(true, true, true)), vec3<f32>(var_1.b.x, -1479f, 451f), true).b.b.zz), !select(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), !all(vec2<bool>(true, false)), any(vec2<bool>(true, true))), var_1.b, !any(vec2<bool>(true, true))).d;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, reverseBits(-u_input.b) & var_1.a, var_1.b.x);
}

