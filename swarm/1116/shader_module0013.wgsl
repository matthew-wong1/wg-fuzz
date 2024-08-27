struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-1791f, 1286f, -1000f, 660f, 1547f, 2197f, 1293f, 1000f, 677f, -108f, -1456f, -1813f, -932f, -2113f, 914f, -235f, -617f, -430f, -377f, -865f, -1437f, 1154f, 1000f, -493f, 350f, 1453f, -327f, 1200f, 354f, 474f, 549f, 251f);

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-41887i), Struct_2(-1i), Struct_2(0i), Struct_2(-1i), Struct_2(19784i), Struct_2(-26794i), Struct_2(393i), Struct_2(1i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(-58172i), Struct_2(-26988i), Struct_2(-1i), Struct_2(14846i), Struct_2(34825i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(1i), Struct_2(0i), Struct_2(i32(-2147483648)), Struct_2(23016i));

var<private> global2: array<i32, 11> = array<i32, 11>(45314i, 1i, 2147483647i, 1i, -1613i, -42668i, -3285i, 20825i, -29408i, 1i, i32(-2147483648));

var<private> global3: u32 = 6134u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = vec4<bool>(true, true, false, select(arg_0, arg_0, false));
    var var_1 = _wgslsmith_sub_vec3_u32(u_input.a.zzy, u_input.a.xwz);
    let var_2 = var_0.xyy;
    var_0 = vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 11u)] != select(max(1310i << (0u % 32u), -6702i), _wgslsmith_mult_i32(~(-22389i), u_input.b.x), all(select(var_0.zx, vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false)))), -1857f == _wgslsmith_f_op_f32(step(3117f, _wgslsmith_f_op_f32(f32(-1f) * -263f))), !var_0.x);
    var_1 = vec3<u32>(0u, select(reverseBits(_wgslsmith_div_u32(var_1.x, ~25785u)), ~var_1.x, var_0.x), ~u_input.a.x);
    return u_input.b.x;
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    global2 = array<i32, 11>();
    global1 = array<Struct_2, 21>();
    let var_0 = arg_0.b.a;
    global3 = 6139u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1268f, _wgslsmith_f_op_f32(-arg_0.a)), global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-763f))) * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~62638u, 32u)], _wgslsmith_f_op_f32(-305f + _wgslsmith_f_op_f32(sign(-220f)))))));
    return Struct_1(all(select(select(select(vec3<bool>(true, arg_0.d, arg_0.d), vec3<bool>(arg_0.d, arg_0.c, false), true), vec3<bool>(arg_0.d, true, arg_0.d), true), select(!vec3<bool>(arg_0.d, true, arg_0.d), !vec3<bool>(arg_0.c, true, false), true), true)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = array<f32, 32>();
    global3 = u_input.c.x;
    global0 = array<f32, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 32u)] - global0[_wgslsmith_index_u32(4294967295u, 32u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(5898u, 32u)]) + _wgslsmith_f_op_f32(max(1838f, -647f)))), global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(~68u, select(u_input.c.x, 49631u, false)), 1u), 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 32u)] * 394f)) * -424f)));
    var var_1 = ~max(vec3<i32>(-15316i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec3<i32>(-2147483647i, -1i, -41387i)), reverseBits(vec3<i32>(-2147483647i, 16735i, u_input.b.x))), max(~u_input.b.x, 5134i)), vec3<i32>(global2[_wgslsmith_index_u32(~u_input.a.x, 11u)], _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-12141i, 2147483647i)), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], -1i) << (vec2<u32>(1u, 7696u) % vec2<u32>(32u))), 36803i));
    return global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.c) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.a.ww), u_input.c.x)) | abs(~u_input.c.x), 21u)];
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = -2147483647i >> (max(_wgslsmith_mod_u32(4294967295u, ~countOneBits(50947u)), u_input.a.x) % 32u);
    global0 = array<f32, 32>();
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-18734i, arg_1.a, arg_2.a), vec3<i32>(-1i, u_input.b.x, u_input.b.x))), (vec3<i32>(-2147483647i, -29995i, arg_2.a) ^ vec3<i32>(u_input.b.x, 0i, u_input.b.x)) << (~u_input.a.wxw % vec3<u32>(32u))), max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, u_input.b.x, arg_2.a) & vec3<i32>(13966i, -33818i, var_0), abs(vec3<i32>(arg_1.a, -22972i, u_input.b.x))), -select(vec3<i32>(u_input.b.x, arg_2.a, 1239i), vec3<i32>(arg_1.a, var_0, global2[_wgslsmith_index_u32(97756u, 11u)]), false))), select(firstLeadingBit(arg_1.a | 2147483647i), arg_1.a, true) | 11800i, -u_input.b.x >> (u_input.a.x % 32u));
    let var_2 = Struct_1(func_3(Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(200f, global0[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 32u)], 1000f)), Struct_2(u_input.b.x), u_input.a.x <= 11287u, arg_3.x & (u_input.a.x < 4294967295u)), u_input.b.x).a);
    let var_3 = 16741i;
    return arg_2;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.c.x), 32u)]));
    let var_1 = vec3<u32>(firstTrailingBit(~(~1u)), arg_3.x, 1u);
    return Struct_3(global0[_wgslsmith_index_u32(firstLeadingBit(arg_3.x >> (_wgslsmith_sub_u32(0u, u_input.a.x) % 32u)), 32u)], func_5(vec3<bool>(false, true, true), func_4(func_3(Struct_3(arg_2.x, Struct_2(u_input.b.x), arg_0.x, arg_0.x), func_2(true))), func_4(Struct_1(select(arg_0.x, false, true))), !vec3<bool>(true || arg_0.x, false, arg_0.x)), true, arg_0.x);
}

fn func_6(arg_0: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0.a) - vec2<f32>(arg_0.a, -850f))))));
    let var_1 = firstTrailingBit(u_input.a.x);
    let var_2 = func_1(vec3<bool>(arg_0.c, arg_0.d, all(select(vec3<bool>(arg_0.c, true, arg_0.d), vec3<bool>(arg_0.d, arg_0.c, true), true))), Struct_2(-41388i), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 3197f)), -1097f))), min(abs(~vec4<u32>(u_input.c.x, 3638u, 28710u, u_input.c.x)), vec4<u32>(1u, 0u, reverseBits(var_1), var_1 | 0u)) ^ ~vec4<u32>(9302u, 24162u & var_1, u_input.a.x, var_1));
    var var_3 = _wgslsmith_add_u32(u_input.c.x, firstTrailingBit(~0u ^ u_input.a.x));
    return _wgslsmith_mult_i32(~abs(-2147483647i), _wgslsmith_add_i32(u_input.b.x, -10419i) >> (var_1 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true != any(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(u_input.c.x, 11u)] < 32476i));
    var var_1 = Struct_1(true);
    var_1 = Struct_1(var_1.a);
    var var_2 = u_input.b.x;
    var_2 = func_6(func_1(vec3<bool>(var_1.a, any(vec2<bool>(false, false)), false), Struct_2(-u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(32342u, 32u)], global0[_wgslsmith_index_u32(16729u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec3<f32>(global0[_wgslsmith_index_u32(4823u, 32u)], global0[_wgslsmith_index_u32(29213u, 32u)], 436f), var_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 32u)], -398f, global0[_wgslsmith_index_u32(1u, 32u)]) + vec3<f32>(-937f, global0[_wgslsmith_index_u32(12694u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))), abs(vec4<u32>(~4294967295u, 34311u, ~u_input.a.x, 1u << (u_input.c.x % 32u)))));
    let var_3 = Struct_1(var_0);
    global1 = array<Struct_2, 21>();
    let var_4 = !(!(true && (u_input.b.x == global2[_wgslsmith_index_u32(30424u >> (u_input.c.x % 32u), 11u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 32u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 32u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)])))));
}

