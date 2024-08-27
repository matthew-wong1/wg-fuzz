struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-220f, -1019f, 1066f), vec3<f32>(814f, -1000f, -2150f), vec3<f32>(-1000f, -1030f, -1424f), vec3<f32>(-636f, -430f, -130f), vec3<f32>(-366f, -1092f, -191f), vec3<f32>(812f, 488f, -573f), vec3<f32>(980f, -1000f, -361f), vec3<f32>(-337f, 1589f, 942f), vec3<f32>(1700f, 722f, -1000f), vec3<f32>(327f, 1911f, 754f), vec3<f32>(-150f, 516f, -583f), vec3<f32>(1517f, 559f, 252f), vec3<f32>(514f, -113f, -608f));

var<private> global2: f32 = 565f;

var<private> global3: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 17866u), vec2<u32>(9278u, 94772u), vec2<u32>(3092u, 1u), vec2<u32>(1u, 1u), vec2<u32>(39812u, 0u), vec2<u32>(59981u, 0u), vec2<u32>(0u, 0u), vec2<u32>(18957u, 35697u), vec2<u32>(0u, 12121u), vec2<u32>(94995u, 1u), vec2<u32>(10563u, 59666u), vec2<u32>(1u, 0u), vec2<u32>(28232u, 49012u), vec2<u32>(43917u, 266u), vec2<u32>(30158u, 4294967295u), vec2<u32>(42659u, 21408u), vec2<u32>(29769u, 0u), vec2<u32>(0u, 0u), vec2<u32>(29376u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(27081u, 52347u), vec2<u32>(11518u, 4294967295u), vec2<u32>(28246u, 60585u), vec2<u32>(26413u, 25521u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-585f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(894f))))))));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~min(1u, u_input.a >> (3864u % 32u))), ~(~24402u)), 13u)];
    var var_1 = min(max(abs(~vec3<u32>(4294967295u, 1209u, global0.x)), vec3<u32>(12576u, _wgslsmith_sub_u32(~0u, 4294967295u), _wgslsmith_clamp_u32(~u_input.a, abs(0u), u_input.a))), max(global0.yxx, select(~(~vec3<u32>(u_input.a, 1u, 4294967295u)), vec3<u32>(~88252u, 61218u, u_input.a), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))))));
    var_1 = ~select(countOneBits(_wgslsmith_div_vec3_u32(global0.zyw, global0.yxz)) & (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 47106u, 9785u), global0.wxy) & ~global0.xxz), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global3[_wgslsmith_index_u32(var_1.x, 26u)], vec2<u32>(var_1.x, 10426u)), _wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(var_1.x, 26u)], vec2<u32>(38310u, 1u), vec2<u32>(0u, global0.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.x), vec2<u32>(u_input.a, 4294967295u)) ^ global0.x, abs(countOneBits(global0.x))), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), true)));
    var var_2 = vec2<i32>(firstLeadingBit(-_wgslsmith_mod_i32(_wgslsmith_clamp_i32(27220i, -27342i, 0i), firstLeadingBit(-13401i))), i32(-1i) * -38436i);
    return vec3<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !select(true, true, true), true);
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec4<u32> {
    global0 = vec4<u32>(~23880u, 0u, abs(~u_input.a | 27016u), 4205u);
    let var_0 = Struct_3(Struct_1(!vec2<bool>(arg_1.a.b.x <= arg_1.a.b.x, u_input.a > arg_1.a.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(global1[_wgslsmith_index_u32(global0.x, 13u)])), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1342f), arg_1.a.b.x, _wgslsmith_f_op_f32(-arg_1.a.b.x)), false)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1[_wgslsmith_index_u32(global0.x, 13u)])) - vec3<f32>(arg_1.a.b.x, arg_1.a.b.x, 1601f)))), abs(~4294967295u & ~(arg_1.a.c | 4294967295u)), 1i);
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-394f))))));
    let var_1 = var_0.b.x;
    global2 = arg_1.a.b.x;
    return firstLeadingBit(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 7694u, u_input.a, 13927u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, 0u, var_0.c, var_0.c), vec4<u32>(global0.x, u_input.a, arg_1.a.c, var_0.c)))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global3 = array<vec2<u32>, 26>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(587f + _wgslsmith_f_op_f32(-2693f * 504f)));
    let var_0 = _wgslsmith_add_vec4_u32(func_4(true, Struct_4(Struct_3(Struct_1(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(global0.x, 13u)], 83845u, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-58842i, 37062i), vec2<i32>(23590i, -2147483647i)), global3[_wgslsmith_index_u32(arg_0, 26u)] & vec2<u32>(arg_0, 75950u), func_3())) & abs(vec4<u32>(82560u, 1u, 4294967295u, global0.x) << (vec4<u32>(78651u, global0.x, arg_0, global0.x) % vec4<u32>(32u))), ~abs(vec4<u32>(~arg_0, u_input.a, select(u_input.a, arg_0, true), 0u)));
    var var_1 = Struct_2(-(~countOneBits(vec2<i32>(1i, 1i))), select(-2015f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1464f + 1031f), _wgslsmith_f_op_f32(f32(-1f) * -1722f), false)), true, true), Struct_1(vec2<bool>(true, true)), -reverseBits(vec3<i32>(1i, -2147483647i, ~642i)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(select(true, true, false), true), vec2<bool>(true, true))));
    var var_2 = Struct_1(vec2<bool>(var_1.e.a.x, any(vec4<bool>(true, !var_1.b, true, any(vec3<bool>(var_1.c.a.x, var_1.c.a.x, var_1.b))))));
    return Struct_1(var_1.c.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    global0 = func_4(false, Struct_4(Struct_3(arg_1.c, _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(61882u, 13u)]), 1u, arg_1.d.x), _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(arg_1.d, vec3<i32>(73044i, arg_1.d.x, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.x, arg_1.d.x, -13891i, -44230i) << (vec4<u32>(u_input.a, 33334u, 4294967295u, 833u) % vec4<u32>(32u)), vec4<i32>(arg_1.a.x, arg_1.d.x, 2147483647i, arg_1.d.x) >> (vec4<u32>(arg_0.x, 4294967295u, global0.x, 1u) % vec4<u32>(32u)))), countOneBits(~vec2<u32>(u_input.a, u_input.a) & select(global3[_wgslsmith_index_u32(19109u, 26u)], vec2<u32>(18436u, 0u), vec2<bool>(arg_1.b, true))), !vec3<bool>(arg_1.e.a.x || false, false, false)));
    var var_0 = vec4<bool>(!(!(!all(vec4<bool>(false, arg_1.e.a.x, false, arg_1.e.a.x)))), true, !arg_1.b, !func_3().x);
    global0 = vec4<u32>(arg_0.x, ~(~(~24059u)), ~_wgslsmith_div_u32(u_input.a, u_input.a), 14708u) ^ ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, global0.x, global0.x), vec4<u32>(1u, 14366u, arg_0.x, 0u) >> (vec4<u32>(10634u, 1u, global0.x, u_input.a) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.d.x, (arg_1.d.x >> (50326u % 32u)) ^ arg_1.d.x, firstTrailingBit(arg_1.d.x) << ((54678u >> (global0.x % 32u)) % 32u)), abs(-arg_1.d)), _wgslsmith_mod_vec3_i32(~reverseBits(max(arg_1.d, arg_1.d)), _wgslsmith_sub_vec3_i32(arg_1.d, ~arg_1.d)));
    var var_2 = vec3<i32>(-103791i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(arg_1.d.x), 15746i), arg_1.a.x, arg_1.a.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, arg_1.d.x, -1i), vec3<i32>(arg_1.d.x >> (arg_0.x % 32u), min(-34488i, arg_1.a.x), -2147483647i)) & _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.d.x, -1i, -13529i), vec4<i32>(arg_1.d.x, 2147483647i, arg_1.a.x, arg_1.d.x), vec4<i32>(arg_1.d.x, -28168i, -13770i, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.d.x, 16849i, 10443i), vec4<i32>(64431i, 0i, -1i, -2147483647i))), vec4<i32>(arg_1.d.x, i32(-1i) * -12221i, _wgslsmith_clamp_i32(15313i, 0i, arg_1.a.x), 0i)));
    return Struct_2(firstTrailingBit(countOneBits(var_2.yx)), true, func_2(~_wgslsmith_div_u32(arg_0.x, ~u_input.a)), -arg_1.d, func_2(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.x, arg_0.x), countOneBits(u_input.a)) | _wgslsmith_div_u32(global0.x & arg_0.x, u_input.a)));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(abs(u_input.a), 13u)]), _wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(~4294967295u, 13u)])))), firstLeadingBit(1u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(34307i, 34275i, -2147483647i), vec3<i32>(-32911i, 5765i, 0i)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(40138i, 1i, -27853i)), vec3<i32>(-1i, 1i, 1i) >> (vec3<u32>(44991u, global0.x, global0.x) % vec3<u32>(32u)))), ~(-vec3<i32>(-2147483647i, 40266i, -18992i)) ^ vec3<i32>(0i, -46745i, _wgslsmith_dot_vec2_i32(vec2<i32>(28501i, -2147483647i), vec2<i32>(2147483647i, 2147483647i)))));
    let var_1 = func_5(vec2<u32>(17289u, var_0.c), Struct_2(-vec2<i32>(_wgslsmith_sub_i32(14911i, -10195i), ~8616i), false, Struct_1(select(select(vec2<bool>(var_0.a.a.x, var_0.a.a.x), vec2<bool>(var_0.a.a.x, false), var_0.a.a), var_0.a.a, var_0.a.a)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.d, 2147483647i, var_0.d) >> (vec4<u32>(u_input.a, global0.x, u_input.a, var_0.c) % vec4<u32>(32u)), vec4<i32>(5955i, var_0.d, 27417i, var_0.d) | vec4<i32>(var_0.d, 2147483647i, -2147483647i, var_0.d)), 40459i, var_0.d), func_2(min(global0.x, 4294967295u))));
    global1 = array<vec3<f32>, 13>();
    global0 = abs(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, var_0.c, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, global0.x, var_0.c, 6264u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, 148818u, global0.x, 24208u), vec4<u32>(global0.x, u_input.a, u_input.a, var_0.c)), firstTrailingBit(vec4<u32>(var_0.c, u_input.a, 1u, 112818u)))));
    let var_2 = 9484i >= var_1.d.x;
    return Struct_4(Struct_3(func_2(1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.a, 13u)]))), abs(_wgslsmith_mult_u32(var_0.c, u_input.a)), ~_wgslsmith_sub_i32(firstTrailingBit(-18606i), max(-2147483647i, -2147483647i))), ~reverseBits(~(-33449i)), vec2<u32>(40400u, ~(~global0.x)), vec3<bool>(true, var_0.a.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(162f - _wgslsmith_f_op_f32(ceil(-1129f))))) + _wgslsmith_f_op_f32(select(263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1469f - _wgslsmith_f_op_f32(f32(-1f) * -508f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f), -787f)), true)));
    let var_1 = func_1();
    let var_2 = ~firstLeadingBit(vec4<i32>(var_1.a.d, 18934i, ~1i, ~var_1.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(-27855i | var_1.b, u_input.a);
}

