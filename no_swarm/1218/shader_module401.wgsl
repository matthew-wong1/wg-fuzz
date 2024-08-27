struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26>;

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(38604i, 2147483647i, 0i), vec3<i32>(1i, 14693i, 2147483647i), vec3<i32>(-17279i, 39790i, -1i), vec3<i32>(0i, i32(-2147483648), 28953i), vec3<i32>(-13041i, 25185i, 25591i), vec3<i32>(i32(-2147483648), 0i, 43970i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, -8268i, -8560i), vec3<i32>(12129i, 0i, 23268i), vec3<i32>(i32(-2147483648), -19881i, -12502i), vec3<i32>(0i, -1347i, -181i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = firstTrailingBit(0u);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(-1097f, arg_0.a.a)), arg_0.a.a, _wgslsmith_f_op_f32(trunc(-541f)), -785f) - _wgslsmith_div_vec4_f32(vec4<f32>(345f, 1000f, _wgslsmith_f_op_f32(floor(2052f)), _wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(496f, arg_0.a.a, arg_0.a.a, 462f), vec4<f32>(641f, -256f, arg_1, arg_0.a.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, -705f, arg_1, 359f) * vec4<f32>(arg_0.a.a, arg_0.a.a, 1241f, arg_0.a.a))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(-1105f)), arg_1, arg_0.a.a, -168f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, -895f, arg_0.a.a), vec4<f32>(arg_1, arg_0.a.a, -315f, arg_0.a.a), vec4<bool>(true, arg_0.c, true, arg_0.a.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_0.a.a, arg_0.a.a) * vec4<f32>(arg_1, arg_0.a.a, arg_1, arg_0.a.a))))), vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), 990f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(891f, -1219f)))))));
    global0 = array<vec3<f32>, 26>();
    var var_2 = var_1;
    global1 = array<vec3<i32>, 11>();
    return var_0;
}

fn func_2() -> u32 {
    let var_0 = vec3<bool>(true, 1u <= (firstTrailingBit(func_3(Struct_2(Struct_1(873f, true, false, 119005u, vec4<u32>(12179u, 51884u, 45850u, 1u)), vec2<i32>(u_input.a.x, 0i), false), 1041f)) & 3159u), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, -23i), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-27672i, -13684i, u_input.b.x, 0i), vec4<i32>(-36078i, u_input.b.x, 23235i, 7011i))), -abs(vec3<i32>(u_input.b.x, u_input.a.x, -2147483647i))) < reverseBits(u_input.b.x));
    global0 = array<vec3<f32>, 26>();
    global1 = array<vec3<i32>, 11>();
    var var_1 = _wgslsmith_mod_vec4_i32(~firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, 27807i, 0i), vec4<i32>(u_input.b.x, u_input.a.x, 24226i, 2147483647i))), ~firstTrailingBit(countOneBits(vec4<i32>(0i, u_input.b.x, 2147483647i, u_input.b.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 14148u, 4294967295u), vec4<u32>(37036u, 1u, 40420u, 1u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - vec2<f32>(-101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(sign(430f))))));
    return ~_wgslsmith_clamp_u32(41963u, 1u, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(countOneBits(675u), ~51587u)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.a - arg_3.a.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.a) - -578f)), arg_3.a.a), vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.a.a, arg_3.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * arg_3.a.a) * _wgslsmith_f_op_f32(arg_3.a.a - 832f)) + _wgslsmith_div_f32(arg_3.a.a, 891f))), !vec2<bool>(false, any(vec4<bool>(false, arg_3.c, true, true)) && (arg_3.c && false))));
    global0 = array<vec3<f32>, 26>();
    let var_1 = -countOneBits(arg_1);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_div_f32(-2609f, var_0.x)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.a, arg_3.a.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1122f, 176f) - vec2<f32>(477f, 1077f)))))));
    let var_2 = !(!vec3<bool>(arg_3.c, arg_3.a.b, false));
    return Struct_3(var_0.x, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(34288i << (0u % 32u), 36413i), max(_wgslsmith_clamp_i32(6517i, 2147483647i, arg_1), arg_3.b.x << (arg_3.a.e.x % 32u))), var_1, max(reverseBits(arg_0), abs(arg_3.b.x)) & abs(countOneBits(u_input.b.x)), -1i));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = true;
    let var_1 = ~4289u;
    var var_2 = u_input.b.x;
    let var_3 = func_4(0i, -42409i, vec3<u32>(974u, 43131u, func_2()), Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.x * -1188f), true, 31150u != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1, 3070u), vec3<u32>(var_1, 0u, 4231u)), ~var_1, firstLeadingBit(vec4<u32>(var_1, var_1, var_1, var_1) | vec4<u32>(22361u, 1u, var_1, 0u))), -vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.b), _wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.a.x)), !var_0));
    var var_4 = var_3;
    return firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_3.b.x, -45812i), var_3.b.x));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1), true, false, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(arg_0, arg_0), max(arg_0, 1u), 4294967295u, firstLeadingBit(arg_0)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(24046u, arg_0, 10116u, arg_0), vec4<u32>(13995u, arg_0, arg_0, arg_0))), 8400u), vec4<u32>(arg_0, arg_0 >> (~(arg_0 | 1u) % 32u), _wgslsmith_mod_u32(1u, 29092u), 4294967295u));
    var var_1 = _wgslsmith_mult_vec3_u32(var_0.e.xxw, var_0.e.zzz);
    var_1 = vec3<u32>(~_wgslsmith_mult_u32(select(var_1.x & 4294967295u, select(var_0.d, var_0.e.x, var_0.b), true), 1u), reverseBits(~_wgslsmith_mod_u32(var_0.e.x, arg_0) & ~var_0.d), abs(4294967295u));
    var var_2 = !select(!vec4<bool>(select(false, var_0.c, var_0.b), !var_0.b, var_0.b, true), !vec4<bool>(all(vec4<bool>(true, var_0.c, var_0.b, true)), var_0.b, true || var_0.b, arg_2.x != arg_3), all(select(select(vec4<bool>(var_0.b, false, var_0.b, true), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.b), vec4<bool>(var_0.c, false, true, true)), !vec4<bool>(true, false, var_0.c, false), select(vec4<bool>(var_0.b, true, false, true), vec4<bool>(var_0.c, true, var_0.c, false), vec4<bool>(false, false, var_0.c, var_0.c)))));
    var var_3 = _wgslsmith_mult_vec2_i32(arg_2.yz, -u_input.b ^ max(vec2<i32>(-1i) * -u_input.b, firstLeadingBit(max(u_input.b, arg_2.xz))));
    return Struct_1(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), !(!(_wgslsmith_f_op_f32(ceil(var_0.a)) >= _wgslsmith_f_op_f32(min(447f, 987f)))), (u_input.b.x >= -24213i) | any(!vec2<bool>(var_2.x, true)), reverseBits(max(61994u, reverseBits(func_2()))), vec4<u32>(abs(~var_1.x) | firstLeadingBit(var_1.x), 4501u, ~abs(func_2()), 0u));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = func_5(~0u, -702f, firstLeadingBit(global1[_wgslsmith_index_u32(arg_0.a.e.x, 11u)]), 0i).e.zzw;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(arg_1.x, 831f))), true)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(25242i, -arg_0.b.x, arg_0.b.x, firstLeadingBit(-18218i))), -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, -1427i, -1i, 1i), vec4<i32>(u_input.b.x, arg_0.b.x, u_input.b.x, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, 0i, 39838i, arg_0.b.x), vec4<i32>(u_input.b.x, arg_0.b.x, arg_0.b.x, 0i)))));
    global1 = array<vec3<i32>, 11>();
    global0 = array<vec3<f32>, 26>();
    let var_2 = abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(func_4(max(u_input.a.x, -22148i), 2147483647i, arg_0.a.e.xxw, Struct_2(Struct_1(578f, arg_0.a.b, true, 3128u, vec4<u32>(arg_0.a.e.x, 0u, arg_0.a.e.x, var_0.x)), var_1.b.xw, false)).b, _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b.x, 44894i, 1i, 0i), func_4(-33473i, -2147483647i, var_0, arg_0).b)), min(-vec4<i32>(-39642i, u_input.b.x, -1i, arg_0.b.x), _wgslsmith_mod_vec4_i32(var_1.b, var_1.b) >> (vec4<u32>(var_0.x, 40093u, var_0.x, 51510u) % vec4<u32>(32u)))));
    return arg_0;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_1.a));
    global0 = array<vec3<f32>, 26>();
    let var_1 = arg_0.a.a;
    let var_2 = func_6(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2021f * -1023f), 1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, -1343f), -2851f), _wgslsmith_f_op_f32(-arg_0.a.a))));
    global0 = array<vec3<f32>, 26>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.b.x, u_input.b.x);
    global1 = array<vec3<i32>, 11>();
    let var_1 = func_7(func_6(Struct_2(func_5(~93069u, -1000f, global1[_wgslsmith_index_u32(14035u, 11u)] >> (vec3<u32>(62994u, 104200u, 19622u) % vec3<u32>(32u)), func_1(vec4<f32>(-1293f, 260f, -199f, -581f))), u_input.a.zz ^ vec2<i32>(u_input.a.x, u_input.b.x), true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2031f, 318f, -552f, -784f) - vec4<f32>(1070f, 244f, 1250f, -181f)))))), func_6(func_6(Struct_2(func_6(Struct_2(Struct_1(2315f, true, true, 5802u, vec4<u32>(82831u, 4294967295u, 81907u, 75813u)), u_input.b, true), vec4<f32>(1122f, -1335f, -741f, 1641f)).a, u_input.b, any(vec2<bool>(true, false))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-151f)), 1749f, _wgslsmith_f_op_f32(-2375f - -281f), _wgslsmith_div_f32(1318f, 1000f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1442f - -320f), -1026f), 582f, 184f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -677f))))).a);
    var var_2 = vec3<bool>(false, true | (firstTrailingBit(-37030i) > 33359i), var_1.a.c);
    var var_3 = func_4(0i ^ firstTrailingBit(_wgslsmith_mult_i32(var_1.b.x, -12418i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.x, 2147483647i), 2147483647i)), countOneBits(var_1.b) >> (firstLeadingBit(var_1.a.e.xz) % vec2<u32>(32u))), var_1.a.e.www, func_7(Struct_2(func_7(func_7(var_1, Struct_1(-680f, false, var_1.c, var_1.a.d, var_1.a.e)), func_6(Struct_2(Struct_1(var_1.a.a, false, true, 0u, vec4<u32>(var_1.a.d, var_1.a.e.x, var_1.a.d, 23447u)), vec2<i32>(u_input.a.x, var_0.x), var_2.x), vec4<f32>(var_1.a.a, var_1.a.a, var_1.a.a, var_1.a.a)).a).a, ~var_1.b, false), var_1.a));
    var var_4 = var_1.a.e.xyy;
    var var_5 = all(!(!vec3<bool>(true, true, var_2.x)));
    global1 = array<vec3<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_add_vec4_i32(~var_3.b, vec4<i32>(2147483647i, -var_0.x << (var_1.a.e.x % 32u), abs(-4805i), u_input.b.x)), vec2<f32>(var_1.a.a, var_3.a), ~u_input.a.x);
}

