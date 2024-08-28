struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    return reverseBits(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-1i) * -vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])), vec2<i32>(~1i, -u_input.a >> (min(u_input.c, 43566u) % 32u))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-935f, 430f, 1000f), vec3<f32>(-870f, -1067f, 679f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-985f, -500f, 629f), vec3<f32>(-371f, 847f, -2148f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(913f, 933f, -1557f), vec3<f32>(-163f, 1909f, 242f), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(956f, -215f, 186f) + vec3<f32>(1166f, -1104f, -587f)) - vec3<f32>(639f, -1537f, 154f)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))))));
    var var_1 = !vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true))));
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, -531f, -2124f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-449f, var_0.x, var_0.x, var_0.x))), u_input.c < 4294967295u)))), Struct_1(~13728u << (u_input.c % 32u), func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 859f, 1547f, -718f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(134f, 1608f, var_0.x, var_0.x) + vec4<f32>(1000f, 831f, 1346f, var_0.x))), _wgslsmith_sub_vec3_u32(~vec3<u32>(97361u, 21437u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 66407u, 1811u), vec3<u32>(u_input.c, 111167u, 1u)))), abs(26987u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(433f, 1000f, var_0.x, 1000f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(242f, -1000f, var_0.x, -829f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2467f, 399f, -598f, -826f) * vec4<f32>(1281f, var_0.x, 2080f, var_0.x))))), ~vec2<u32>(u_input.c, ~u_input.c)), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(u_input.a, 58241i, -20449i, -49293i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 15129i, 19610i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(10409u, 6u)], 1i), vec4<i32>(-1i, u_input.a, -15993i, -2147483647i))), vec4<i32>(-21898i, global0[_wgslsmith_index_u32(~countOneBits(u_input.b), 6u)], _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(97642u, 6u)], 2147483647i, -1i, u_input.a)), vec4<i32>(u_input.a, -60939i, global0[_wgslsmith_index_u32(u_input.c, 6u)], 4437i) | vec4<i32>(-1i, u_input.a, -1i, u_input.a)), min(reverseBits(global0[_wgslsmith_index_u32(1u, 6u)]), global0[_wgslsmith_index_u32(0u, 6u)] | -61548i)), ~reverseBits(-vec4<i32>(130i, u_input.a, global0[_wgslsmith_index_u32(52789u, 6u)], -1i))), select(countOneBits(vec4<i32>(-1i, global0[_wgslsmith_index_u32(min(4294967295u, u_input.c), 6u)], u_input.a, _wgslsmith_sub_i32(-25063i, -7011i))), _wgslsmith_div_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(20677u, 6u)], 13808i, global0[_wgslsmith_index_u32(4294967295u, 6u)], 16414i), reverseBits(vec4<i32>(u_input.a, -3382i, -12770i, global0[_wgslsmith_index_u32(u_input.c, 6u)]))) | ~abs(vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.c, 6u)], u_input.a, u_input.a)), all(select(vec3<bool>(false, var_1.x, true), vec3<bool>(true, var_1.x, var_1.x), true)) | !var_1.x), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1647f, var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 386f, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, 365f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -871f) - vec4<f32>(1188f, var_0.x, var_0.x, 102f)))), Struct_1(_wgslsmith_clamp_u32(u_input.c, u_input.c, 4294967295u) >> (u_input.b % 32u), vec2<i32>(_wgslsmith_clamp_i32(44599i, 43777i, -2147483647i), func_3().x), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(-1060f)), _wgslsmith_f_op_f32(f32(-1f) * -334f), 275f), vec3<u32>(reverseBits(1u), u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 8250u), vec2<u32>(54488u, u_input.c)))), ~u_input.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(219f)), _wgslsmith_f_op_f32(ceil(399f))), _wgslsmith_div_f32(590f, _wgslsmith_f_op_f32(sign(1003f))), var_0.x, _wgslsmith_f_op_f32(-1f)), ~countOneBits(vec2<u32>(26807u, 58153u))));
    var_1 = !select(select(!(!vec2<bool>(false, var_1.x)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(var_1.x, true), var_1.x))), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x))), !select(false, true, var_1.x)), !select(select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true), false), !vec2<bool>(var_1.x, false), false));
    let var_3 = Struct_5(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], -2147483647i, _wgslsmith_add_i32(u_input.a, ~var_2.b.x) << (var_2.d.c % 32u), global0[_wgslsmith_index_u32(countOneBits((var_2.d.b.d.x | var_2.a.c) >> (_wgslsmith_clamp_u32(44316u, 1u, var_2.a.e.x) % 32u)), 6u)]), var_2.a.b);
    return 4294967295u;
}

fn func_1() -> Struct_5 {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_0 = Struct_1(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_mult_u32(4294967295u, 1u), func_2()), firstLeadingBit(select(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<bool>(true, false, true))))), _wgslsmith_div_vec2_i32(vec2<i32>(~(-1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], 26739i), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 6u)], u_input.a, u_input.a)), vec4<i32>(0i, 4593i, -1i, u_input.a) ^ vec4<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(2282u, 6u)], -1i))), func_3()), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1113f), -435f, _wgslsmith_f_op_f32(floor(-722f)), -765f)))), ~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.c), vec3<u32>(u_input.b, 1u, u_input.c))));
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(153f + 1000f), -2092f))), Struct_1(~min(1u, 1u), max(vec2<i32>(-1i, 1i), vec2<i32>(var_0.b.x, global0[_wgslsmith_index_u32(41869u, 6u)])) | ~var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.c))), select(firstLeadingBit(vec3<u32>(0u, 17220u, u_input.b)), vec3<u32>(0u, 0u, 4294967295u), all(vec3<bool>(false, false, false)))), ~max(u_input.b, firstLeadingBit(u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), 203f, _wgslsmith_f_op_f32(var_0.c.x * -1296f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.x, -1803f)) * -311f)), var_0.d.xy), ~(vec4<i32>(-74913i, _wgslsmith_sub_i32(13451i, -16724i), var_0.b.x ^ u_input.a, var_0.b.x) >> (~vec4<u32>(0u, 4294967295u, var_0.a, var_0.d.x) % vec4<u32>(32u))), vec4<i32>(-2147483647i, var_0.b.x, ~u_input.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(1i, u_input.a)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_0.a, 6u)], var_0.b.x), -37933i, var_0.b.x))), Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.c), Struct_1(abs(u_input.c) ^ 1u, var_0.b, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-919f, -1342f, -580f, -1282f), var_0.c), _wgslsmith_f_op_vec4_f32(-var_0.c)), (vec3<u32>(0u, u_input.b, 18459u) ^ var_0.d) ^ (vec3<u32>(var_0.a, var_0.d.x, u_input.b) << (vec3<u32>(0u, 81786u, var_0.d.x) % vec3<u32>(32u)))), reverseBits(max(u_input.b, 4294967295u)) ^ 5236u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, 2421f, var_0.c.x, 1844f))), var_0.c)), select(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.d.xz, var_0.d.zx), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.c), var_0.d.yy), vec2<u32>(u_input.c, 53456u)), var_0.d.xx, !select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    global0 = array<i32, 6>();
    return Struct_5(-(-var_1.c << (~(~vec4<u32>(var_1.a.c, u_input.c, u_input.b, var_0.a)) % vec4<u32>(32u))), var_1.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), u_input.c != (u_input.b & u_input.b))), true);
    var var_1 = func_1();
    var var_2 = select(select(var_0, select(vec4<bool>(var_0.x, !var_0.x, !var_0.x, var_0.x || true), var_0, !var_0.x), select(var_0, var_0, false)), vec4<bool>(true, var_0.x, var_0.x, false), false);
    var var_3 = Struct_5(_wgslsmith_add_vec4_i32(var_1.a, ~var_1.a) | reverseBits(-firstLeadingBit(var_1.a)), var_1.b);
    var var_4 = ~(~(select(firstLeadingBit(1u), 4294967295u, true | var_0.x) << (4294967295u % 32u)));
    let var_5 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.c.x), _wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_f_op_f32(-var_3.b.c.x), var_3.b.c.x), Struct_1(~(~4294967295u), min(vec2<i32>(-1i, 15007i), vec2<i32>(2147483647i, 9867i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.b.c)), var_3.b.d), ~abs(1u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.c.x, -901f, var_1.b.c.x, 324f))), vec4<f32>(-875f, 798f, 147f, 858f))), vec4<f32>(var_3.b.c.x, _wgslsmith_f_op_f32(var_1.b.c.x - -595f), var_1.b.c.x, 1589f))), vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(99962u, u_input.c, 96917u, var_3.b.d.x), vec4<u32>(1u, 0u, 22040u, 4294967295u), vec4<u32>(u_input.b, var_1.b.a, var_1.b.d.x, var_3.b.a)), abs(vec4<u32>(var_1.b.a, u_input.c, var_1.b.a, var_1.b.d.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-405f, var_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(3455f, var_3.b.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(412f, var_1.b.c.x))) + _wgslsmith_f_op_vec4_f32(var_1.b.c + var_3.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_3.b.b.x, ~_wgslsmith_dot_vec3_i32(var_1.a.yyx ^ vec3<i32>(42131i, 0i, -40535i), var_1.a.yxz)));
}

