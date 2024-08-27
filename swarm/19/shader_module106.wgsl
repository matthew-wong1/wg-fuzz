struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 13231u;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(27815i, 43442i, -35869i), 0u, 1000f), Struct_1(vec3<i32>(40310i, -24437i, 38675i), 52350u, -331f), Struct_1(vec3<i32>(2147483647i, 6i, -17349i), 1u, -335f), Struct_1(vec3<i32>(1i, -31964i, i32(-2147483648)), 0u, -815f), Struct_1(vec3<i32>(10373i, 2147483647i, -15572i), 47314u, -1000f), Struct_1(vec3<i32>(-12945i, 0i, i32(-2147483648)), 15712u, 111f), Struct_1(vec3<i32>(1i, -1i, -16009i), 1u, 1578f), Struct_1(vec3<i32>(-1i, 0i, 4657i), 1u, -771f));

var<private> global2: array<vec2<f32>, 32>;

var<private> global3: array<Struct_2, 3>;

var<private> global4: array<vec2<bool>, 12>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-296f - arg_1.d), arg_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1333f, arg_1.a.c) * vec2<f32>(arg_1.e.c, arg_1.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, 1151f)), vec2<bool>(true, true)))));
    return global4[_wgslsmith_index_u32(72122u, 12u)];
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = all(vec4<bool>(true, _wgslsmith_f_op_f32(floor(-214f)) > _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(132f + arg_2.e.c)), all(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, arg_2.a.b, 1u)), arg_1), 12u)]), !any(vec3<bool>(false, true, true)) | all(vec2<bool>(true, true))));
    let var_1 = vec4<u32>(abs(max(~arg_1.x, arg_2.a.b) | arg_1.x), _wgslsmith_dot_vec3_u32(arg_1.yxx, ~vec3<u32>(~arg_2.e.b, select(u_input.b.x, arg_2.e.b, var_0), 1u)), 1u, ~(~_wgslsmith_sub_u32(countOneBits(u_input.b.x), ~0u)));
    var var_2 = 19465u;
    let var_3 = arg_2.e;
    let var_4 = 38289u;
    return var_1.x ^ select(var_4, reverseBits(u_input.b.x ^ ~0u), any(select(!vec3<bool>(true, var_0, var_0), !vec3<bool>(var_0, var_0, var_0), false | var_0)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-u_input.a, _wgslsmith_div_u32(~1u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), arg_0), -(u_input.c.yy ^ vec2<i32>(_wgslsmith_add_i32(-23030i, 0i), _wgslsmith_mod_i32(u_input.d, 2147483647i))), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(37573u, 1u), _wgslsmith_div_u32(u_input.b.x, 5684u), firstLeadingBit(0u)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(32431u, u_input.b.x, u_input.b.x), ~vec3<u32>(723u, u_input.b.x, u_input.b.x)) ^ ~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(23543u, u_input.b.x))), 208f, Struct_1(u_input.a >> (vec3<u32>(func_3(21396u, vec4<u32>(u_input.b.x, 19192u, 4294967295u, u_input.b.x), Struct_2(global1[_wgslsmith_index_u32(3927u, 8u)], u_input.a.zx, 0u, 613f, global1[_wgslsmith_index_u32(u_input.b.x, 8u)])), ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), ~58311u, 318f));
    global0 = 27367u;
    let var_1 = Struct_1(select(~_wgslsmith_add_vec3_i32(select(u_input.c.zxx, u_input.c.xxz, vec3<bool>(false, true, false)), vec3<i32>(-1i, var_0.e.a.x, 2147483647i)), var_0.e.a, !func_1(u_input.b.x | u_input.b.x, Struct_2(Struct_1(var_0.e.a, 1u, var_0.a.c), vec2<i32>(2147483647i, u_input.c.x), 1u, var_0.a.c, var_0.a), ~vec3<u32>(var_0.e.b, var_0.c, var_0.e.b)).x), 2864u, var_0.d);
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(4294967295u), ~(u_input.b.x << (1u % 32u)), var_1.b, var_1.b) & ~select(vec4<u32>(var_0.a.b, u_input.b.x, 29019u, 21157u), vec4<u32>(var_0.c, var_0.c, 40627u, 1u), vec4<bool>(false, false, true, false)), vec4<u32>(~var_1.b, max(0u, var_1.b), firstLeadingBit(reverseBits(0u)), var_1.b)), 3u)];
    global0 = max(0u, abs(firstTrailingBit(~(var_2.e.b >> (var_1.b % 32u)))));
    return Struct_2(var_0.e, vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, -899i), var_2.a.a.yx), -7036i), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 48538u | var_2.c, ~var_2.e.b), _wgslsmith_div_u32(10196u, ~var_1.b)), select(~vec3<u32>(1u, 966u, 16778u), min(vec3<u32>(u_input.b.x, var_1.b, var_2.a.b) | vec3<u32>(49665u, 35951u, 9003u), ~vec3<u32>(1u, 25867u, 0u)), vec3<bool>(true, true, true))), arg_0, var_2.e);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global3 = array<Struct_2, 3>();
    var var_0 = all(vec3<bool>(select(!all(vec2<bool>(true, true)), func_1(select(0u, 4294967295u, false), Struct_2(global1[_wgslsmith_index_u32(13263u, 8u)], vec2<i32>(-1i, -1i), 4294967295u, arg_2.c, arg_1.e), min(vec3<u32>(4294967295u, 19030u, 79869u), vec3<u32>(94404u, u_input.b.x, 13798u))).x, true), false, false));
    let var_1 = vec3<u32>(abs(arg_1.a.b) << (~arg_2.b % 32u), abs(countOneBits(_wgslsmith_sub_u32(arg_1.e.b, arg_2.b | u_input.b.x))), arg_2.b << (~_wgslsmith_sub_u32(arg_1.c, u_input.b.x) % 32u));
    var var_2 = vec4<bool>(true, true, false, true);
    var var_3 = !var_2.xwz;
    return global1[_wgslsmith_index_u32(func_3(var_1.x, vec4<u32>(_wgslsmith_dot_vec3_u32(~select(var_1, vec3<u32>(66180u, var_1.x, var_1.x), var_2.yzw), var_1), arg_2.b | _wgslsmith_add_u32(~var_1.x, ~arg_2.b), 20874u, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_2.b, 88762u)))), Struct_2(func_2(_wgslsmith_f_op_f32(-arg_2.c)).a, arg_0.xy, _wgslsmith_mult_u32(countOneBits(var_1.x << (41574u % 32u)), _wgslsmith_sub_u32(~arg_1.a.b, 4294967295u)), _wgslsmith_f_op_f32(abs(-655f)), func_2(_wgslsmith_f_op_f32(round(arg_2.c))).a)), 8u)];
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_add_u32(4294967295u, ~abs(u_input.b.x));
    let var_0 = arg_1.c;
    global2 = array<vec2<f32>, 32>();
    global0 = countOneBits(~(~(~0u)));
    var var_1 = Struct_1(vec3<i32>(u_input.a.x ^ arg_1.a.x, u_input.d, _wgslsmith_sub_i32(func_4(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(2147483647i, -32672i, -19946i, arg_1.a.x)), func_2(1000f), Struct_1(u_input.a, 0u, -809f)).a.x, firstLeadingBit(u_input.c.x) ^ _wgslsmith_dot_vec2_i32(arg_1.a.zy, arg_1.a.xz))), 38606u, -345f);
    return Struct_2(global1[_wgslsmith_index_u32(0u, 8u)], abs(arg_1.a.yz >> (firstTrailingBit(min(vec2<u32>(85013u, 57406u), u_input.b)) % vec2<u32>(32u))), select(~(~(~49611u)), countOneBits(4391u), _wgslsmith_div_u32(min(1u, 0u), abs(var_1.b)) <= reverseBits(arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1053f, _wgslsmith_f_op_f32(abs(var_0))) * 857f), Struct_1(vec3<i32>(~_wgslsmith_mod_i32(0i, 25358i), (i32(-1i) * -16737i) << (0u % 32u), func_2(_wgslsmith_f_op_f32(ceil(-118f))).e.a.x), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(264f * arg_1.c) + _wgslsmith_f_op_f32(-arg_1.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 3>();
    global3 = array<Struct_2, 3>();
    let var_0 = !vec2<bool>(any(select(func_1(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 3u)], vec3<u32>(u_input.b.x, 18383u, u_input.b.x)), vec2<bool>(false, false), true)), true);
    let var_1 = -58548i;
    let var_2 = func_1(u_input.b.x, func_5(~(~u_input.b.x) << (u_input.b.x % 32u), func_4(vec4<i32>(_wgslsmith_clamp_i32(1i, u_input.d, u_input.d), u_input.d, _wgslsmith_clamp_i32(var_1, 0i, 2147483647i), 1i), func_2(143f), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1452f)).a)), ~vec3<u32>(u_input.b.x, ~(4294967295u << (0u % 32u)), abs(~u_input.b.x)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1186f + 1021f))), _wgslsmith_f_op_f32(max(func_4(u_input.c, global3[_wgslsmith_index_u32(4294967295u, 3u)], Struct_1(u_input.a, u_input.b.x, 1526f)).c, _wgslsmith_f_op_f32(-3012f - -143f)))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-704f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(452f, -720f, false))))), vec2<f32>(_wgslsmith_f_op_f32(-func_4(u_input.c, Struct_2(Struct_1(u_input.a, 7463u, 473f), u_input.c.wy, 1u, -643f, global1[_wgslsmith_index_u32(4294967295u, 8u)]), global1[_wgslsmith_index_u32(reverseBits(54556u), 8u)]).c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1656f))), -445f)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(3240u), 1614u, _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(countOneBits(~u_input.b.x), 32u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 834f, var_3.x, -364f) + vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2192f, var_3.x) + 151f), var_3.x, _wgslsmith_f_op_f32(max(-577f, -454f)), var_3.x)));
}

