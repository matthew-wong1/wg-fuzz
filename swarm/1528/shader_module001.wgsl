struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<f32>(2877f, 760f), vec4<f32>(817f, -363f, 1000f, -266f), Struct_1(4294967295u, vec2<f32>(-749f, 2767f), vec3<u32>(9941u, 5524u, 0u), false, 10661i), Struct_1(20648u, vec2<f32>(794f, -393f), vec3<u32>(60184u, 0u, 11653u), true, -1i), 18117i), Struct_2(vec2<f32>(-579f, -1132f), vec4<f32>(-867f, 782f, 2666f, -228f), Struct_1(52226u, vec2<f32>(173f, -935f), vec3<u32>(4294967295u, 0u, 25671u), true, 0i), Struct_1(1349u, vec2<f32>(-1063f, 108f), vec3<u32>(4073u, 1u, 4294967295u), true, 0i), -10389i), Struct_2(vec2<f32>(1757f, -553f), vec4<f32>(1942f, -1148f, 1094f, -436f), Struct_1(0u, vec2<f32>(-507f, 934f), vec3<u32>(53784u, 7642u, 13552u), false, 52464i), Struct_1(2798u, vec2<f32>(-1000f, 282f), vec3<u32>(4294967295u, 76994u, 0u), true, 1i), 2147483647i), Struct_2(vec2<f32>(-1662f, 1953f), vec4<f32>(-648f, 636f, -1000f, -305f), Struct_1(42669u, vec2<f32>(-223f, -676f), vec3<u32>(4294967295u, 1u, 0u), false, 1478i), Struct_1(45927u, vec2<f32>(-485f, -698f), vec3<u32>(1u, 4294967295u, 0u), false, -37860i), -12096i), Struct_2(vec2<f32>(-1000f, 914f), vec4<f32>(-960f, -1180f, -590f, 650f), Struct_1(0u, vec2<f32>(-437f, 1707f), vec3<u32>(1u, 0u, 37141u), true, 1i), Struct_1(1u, vec2<f32>(-313f, -163f), vec3<u32>(33903u, 58538u, 4294967295u), true, -70793i), 24888i), Struct_2(vec2<f32>(-746f, 1585f), vec4<f32>(-1000f, 1712f, -1346f, 1847f), Struct_1(47074u, vec2<f32>(-2119f, -2767f), vec3<u32>(1u, 1u, 0u), false, 29257i), Struct_1(4294967295u, vec2<f32>(-1434f, 941f), vec3<u32>(4294967295u, 0u, 0u), false, 2147483647i), 24900i), Struct_2(vec2<f32>(555f, -921f), vec4<f32>(-394f, -2045f, 782f, 832f), Struct_1(0u, vec2<f32>(732f, -1319f), vec3<u32>(1u, 4294967295u, 4294967295u), false, -1i), Struct_1(92013u, vec2<f32>(790f, -397f), vec3<u32>(0u, 1u, 1u), false, i32(-2147483648)), -46573i), Struct_2(vec2<f32>(598f, 397f), vec4<f32>(-947f, 170f, -509f, 469f), Struct_1(28119u, vec2<f32>(675f, -386f), vec3<u32>(1u, 0u, 16260u), false, 1i), Struct_1(0u, vec2<f32>(-954f, -390f), vec3<u32>(25199u, 1u, 4294967295u), true, 0i), -1i), Struct_2(vec2<f32>(864f, -1041f), vec4<f32>(-1365f, 1042f, 280f, 1234f), Struct_1(53603u, vec2<f32>(1000f, 925f), vec3<u32>(4481u, 6407u, 4861u), false, 2147483647i), Struct_1(0u, vec2<f32>(-856f, -1624f), vec3<u32>(27069u, 14342u, 0u), false, 1i), 56582i), Struct_2(vec2<f32>(1864f, -1000f), vec4<f32>(-185f, -1202f, -172f, 544f), Struct_1(39327u, vec2<f32>(-1077f, -1537f), vec3<u32>(11891u, 64600u, 82702u), true, 2147483647i), Struct_1(1u, vec2<f32>(-1430f, -330f), vec3<u32>(70168u, 16288u, 51143u), false, i32(-2147483648)), 12395i), Struct_2(vec2<f32>(-1208f, 801f), vec4<f32>(-510f, 1323f, 2252f, -2053f), Struct_1(4294967295u, vec2<f32>(937f, -1038f), vec3<u32>(31476u, 4294967295u, 4294967295u), true, 1i), Struct_1(4294967295u, vec2<f32>(1295f, -391f), vec3<u32>(18451u, 1u, 4294967295u), false, i32(-2147483648)), 2147483647i), Struct_2(vec2<f32>(970f, 622f), vec4<f32>(-431f, 728f, -423f, 750f), Struct_1(1u, vec2<f32>(-1000f, -605f), vec3<u32>(0u, 0u, 1u), false, -53765i), Struct_1(4294967295u, vec2<f32>(-349f, 360f), vec3<u32>(14315u, 2330u, 46401u), false, -1i), 12832i), Struct_2(vec2<f32>(347f, 1061f), vec4<f32>(-847f, 1190f, -329f, 372f), Struct_1(1u, vec2<f32>(-2057f, -2413f), vec3<u32>(10989u, 1u, 1u), false, 2147483647i), Struct_1(0u, vec2<f32>(-537f, -214f), vec3<u32>(60505u, 1u, 26087u), true, 0i), 25540i), Struct_2(vec2<f32>(-1000f, -502f), vec4<f32>(-674f, 717f, -251f, 384f), Struct_1(1u, vec2<f32>(599f, -2119f), vec3<u32>(1u, 36733u, 62086u), true, i32(-2147483648)), Struct_1(4294967295u, vec2<f32>(-790f, -413f), vec3<u32>(0u, 0u, 10215u), false, -16055i), 1i), Struct_2(vec2<f32>(-184f, 151f), vec4<f32>(-356f, -1002f, -1362f, -176f), Struct_1(4294967295u, vec2<f32>(-1046f, 2837f), vec3<u32>(45366u, 28872u, 8848u), true, -37236i), Struct_1(4294967295u, vec2<f32>(1423f, -1075f), vec3<u32>(49373u, 4294967295u, 1u), true, -32142i), 0i), Struct_2(vec2<f32>(1179f, -359f), vec4<f32>(-1705f, 1000f, -308f, 508f), Struct_1(0u, vec2<f32>(901f, -137f), vec3<u32>(11966u, 123014u, 4294967295u), true, 2147483647i), Struct_1(1u, vec2<f32>(-549f, 589f), vec3<u32>(0u, 43523u, 53359u), false, 2147483647i), 172i), Struct_2(vec2<f32>(1366f, -1260f), vec4<f32>(109f, 599f, -547f, 1080f), Struct_1(1u, vec2<f32>(361f, 850f), vec3<u32>(45789u, 67511u, 1809u), true, i32(-2147483648)), Struct_1(58075u, vec2<f32>(-1273f, -1136f), vec3<u32>(20440u, 0u, 0u), true, 35729i), 5349i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global1 = array<vec3<bool>, 2>();
    let var_0 = !vec2<bool>(select(any(vec2<bool>(true, true)), !all(global1[_wgslsmith_index_u32(30395u, 2u)]), select(true, true, u_input.a.x < u_input.d.x)), !all(vec2<bool>(true, true)));
    global0 = array<f32, 9>();
    return (~(~(u_input.a.x | u_input.d.x)) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(3217u, 79281u, u_input.d.x, 0u), ~vec4<u32>(13809u, 35605u, 42290u, u_input.d.x))) ^ ((abs(firstLeadingBit(69997u)) >> (0u % 32u)) >> (1u % 32u));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1151f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1000f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(func_3(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)), 9u)]))));
    let var_2 = -1351f;
    return Struct_3(global2[_wgslsmith_index_u32(6897u, 17u)]);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_4) -> i32 {
    let var_0 = vec4<u32>(~15929u, 13433u, func_2(1f).a.c.a | _wgslsmith_clamp_u32(~(~60478u), 1042u, ~func_2(-1724f).a.c.c.x), arg_1.x);
    let var_1 = Struct_4(!all(select(vec2<bool>(arg_2.a, true), vec2<bool>(arg_3.a, arg_2.b.a.d.d), false)), Struct_3(func_2(_wgslsmith_f_op_f32(arg_2.b.a.c.b.x - 522f)).a));
    let var_2 = arg_2.b.a.c.e;
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    return ~select(var_2, -1i, ~(u_input.b ^ -33559i) == abs(0i));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    var var_0 = !(!arg_3.x);
    global0 = array<f32, 9>();
    var var_1 = Struct_2(vec2<f32>(-1215f, global0[_wgslsmith_index_u32(firstLeadingBit(78212u << (_wgslsmith_add_u32(arg_0.c.a, 0u) % 32u)), 9u)]), arg_0.b, Struct_1(_wgslsmith_add_u32(select(1u, u_input.c, false) >> (u_input.d.x % 32u), reverseBits(u_input.d.x)), arg_0.b.wy, ~(~arg_0.c.c), !(u_input.b > 2147483647i), func_4(Struct_4(!arg_0.d.d, func_2(-1107f)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.c.x, 4773u, 4294967295u, 1u), vec4<u32>(arg_0.d.c.x, 0u, u_input.d.x, 4294967295u))), Struct_4(false, func_2(1400f)), Struct_4(arg_1, Struct_3(Struct_2(vec2<f32>(-310f, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), arg_0.b, Struct_1(1u, arg_0.b.zz, arg_0.d.c, true, arg_0.d.e), arg_0.c, arg_2))))), Struct_1(~(~1u), vec2<f32>(-683f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f) + -1375f)), u_input.d, all(arg_3), i32(-1i) * -_wgslsmith_add_i32(arg_0.c.e, -2147483647i)), _wgslsmith_mod_i32(9056i, firstLeadingBit(arg_2 >> (88968u % 32u))) & (arg_2 | max(_wgslsmith_div_i32(-2147483647i, 97287i), u_input.b)));
    var var_2 = var_1.b;
    global1 = array<vec3<bool>, 2>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-252f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(700f, global0[_wgslsmith_index_u32(u_input.d.x, 9u)]))) + 1093f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_u32(u_input.c, abs(u_input.a.x >> (firstLeadingBit(u_input.a.x) % 32u)));
    let var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.c, u_input.d.x)))), abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, 4294967295u)), vec2<u32>(u_input.d.x, u_input.a.x) >> (vec2<u32>(u_input.a.x, u_input.d.x) % vec2<u32>(32u))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(193f, 1128f)), _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(39860u, 17u)], true, 9016i, vec4<bool>(true, false, false, true)))), global0[_wgslsmith_index_u32(21636u, 9u)]))), _wgslsmith_add_vec3_u32(vec3<u32>(min(u_input.a.x, ~u_input.c), _wgslsmith_add_u32(firstTrailingBit(87775u), u_input.d.x), ~(u_input.d.x & u_input.d.x)), u_input.a), any(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true || all(vec4<bool>(true, true, false, false)), all(select(vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], true)), _wgslsmith_f_op_f32(121f - -1900f) <= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)] + 782f))), u_input.b);
    global1 = array<vec3<bool>, 2>();
    var var_2 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(var_1.b)))), vec3<u32>(127589u, ~(max(u_input.a.x, var_1.c.x) | var_1.c.x), _wgslsmith_dot_vec2_u32(~var_1.c.yx, u_input.d.zz)), var_1.e >= _wgslsmith_add_i32(1i, ~(var_1.e >> (12746u % 32u))), i32(-1i) * -24307i);
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32((abs(vec4<u32>(var_1.c.x, 4294967295u, 0u, var_1.a)) >> (vec4<u32>(0u, 1u, 0u, var_2.a) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_2.a, 19856u, 136495u, 4717u)), abs(vec4<u32>(var_2.c.x, u_input.c, 4294967295u, 4294967295u))) % vec4<u32>(32u)), ~vec4<u32>(16440u, 1u, _wgslsmith_mult_u32(var_1.c.x, 1u), 6777u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(911f, var_1.b.x) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.x))), _wgslsmith_f_op_f32(-var_1.b.x))), ~vec3<u32>(~(~4294967295u), ~countOneBits(41780u), 1u), any(vec4<bool>(any(vec2<bool>(true, var_2.d)), !(!var_1.d), var_2.d, all(vec4<bool>(var_2.d, var_1.d, var_1.d, var_2.d)))), ~(-1i) >> (u_input.d.x % 32u));
    var_2 = var_3;
    global0 = array<f32, 9>();
    var var_4 = Struct_4(!(!var_3.d), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-473f - var_3.b.x) * _wgslsmith_f_op_f32(-var_3.b.x))))));
    let var_5 = Struct_4(var_2.d, func_2(-763f));
    let x = u_input.a;
    s_output = StorageBuffer(-1052f, _wgslsmith_clamp_vec2_i32(-vec2<i32>(89064i, -var_2.e), ~vec2<i32>(7267i, min(u_input.b, 16264i)), ~reverseBits(vec2<i32>(1i, 1i))));
}

