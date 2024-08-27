struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true));

var<private> global1: array<vec2<bool>, 13>;

var<private> global2: array<f32, 27> = array<f32, 27>(1574f, 1000f, -196f, -148f, 266f, 810f, -1611f, 214f, 521f, 385f, -631f, 1057f, 677f, -209f, 1000f, 904f, -432f, 1257f, 515f, -1125f, 665f, 1000f, -1587f, 1067f, 1000f, 689f, -1204f);

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<u32>(30271u, 0u), 85878u, 17028i, vec2<u32>(18738u, 42485u), vec4<u32>(1u, 127739u, 1198u, 1u)), Struct_1(vec2<u32>(1u, 72148u), 4294967295u, 33914i, vec2<u32>(0u, 0u), vec4<u32>(70872u, 1u, 1u, 0u)), Struct_1(vec2<u32>(7912u, 1u), 64276u, -43445i, vec2<u32>(1u, 1u), vec4<u32>(0u, 3430u, 1u, 0u)), Struct_1(vec2<u32>(19417u, 114613u), 4294967295u, 31907i, vec2<u32>(0u, 78584u), vec4<u32>(14026u, 22572u, 56328u, 4294967295u)), Struct_1(vec2<u32>(7618u, 1u), 4294967295u, 2147483647i, vec2<u32>(12307u, 28352u), vec4<u32>(4294967295u, 7732u, 0u, 1u)), Struct_1(vec2<u32>(61179u, 9728u), 16897u, i32(-2147483648), vec2<u32>(1u, 1u), vec4<u32>(1u, 1u, 47875u, 1u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_3) -> u32 {
    global1 = array<vec2<bool>, 13>();
    var var_0 = !arg_2;
    return u_input.c.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    global1 = array<vec2<bool>, 13>();
    var var_0 = -(-(vec3<i32>(-1i) * -vec3<i32>(-30025i, arg_2.c, arg_1)) ^ -countOneBits(vec3<i32>(14184i, -11454i, u_input.b)));
    global2 = array<f32, 27>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-678f, global2[_wgslsmith_index_u32(func_3(Struct_4(var_0.zx, vec4<bool>(false, false, false, true), Struct_3(vec4<f32>(-206f, global2[_wgslsmith_index_u32(u_input.c.x, 27u)], global2[_wgslsmith_index_u32(26401u, 27u)], global2[_wgslsmith_index_u32(16511u, 27u)]), global2[_wgslsmith_index_u32(arg_0, 27u)]), arg_0), select(vec2<u32>(arg_2.e.x, arg_2.e.x), vec2<u32>(u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(4294967295u, 13u)]), all(global0[_wgslsmith_index_u32(10538u, 15u)]), Struct_3(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], 816f, 268f, -941f), -301f)), 27u)], 310f, -337f) * vec4<f32>(1957f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(23764u, 27u)] + global2[_wgslsmith_index_u32(17166u, 27u)]) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(39943u, 27u)])), 491f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 27u)]))))), -958f);
    return Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.wxy, var_1.a.xyy)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.a.yyx))), (arg_1 >= u_input.b) || true)))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec2<bool>) -> f32 {
    let var_0 = arg_2.x;
    global3 = array<Struct_1, 6>();
    global3 = array<Struct_1, 6>();
    global2 = array<f32, 27>();
    var var_1 = func_2(~(~u_input.d), 23362i, Struct_1((u_input.c.xx << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(32046u, 1u)) % vec2<u32>(32u))) ^ ~(~u_input.c.zw), ~(1u << (u_input.d % 32u)), _wgslsmith_clamp_i32(select(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(u_input.a, -1186i, u_input.b, u_input.a)), arg_1.x, 1i > arg_2.x), _wgslsmith_mod_i32(var_0, 1i), reverseBits(_wgslsmith_dot_vec4_i32(arg_2, arg_2))), vec2<u32>(countOneBits(min(45329u, u_input.c.x)), 67021u), vec4<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.d, countOneBits(47832u)), ~u_input.c.x, _wgslsmith_div_u32(19387u, 1u))));
    return _wgslsmith_f_op_f32(round(arg_0));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_3 {
    global2 = array<f32, 27>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(arg_0.x * global2[_wgslsmith_index_u32(u_input.d, 27u)])), -614f, -1404f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1279f))), ~max(vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.a, u_input.a)), abs(~vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b)), vec2<bool>(true, all(vec4<bool>(arg_2, arg_2, arg_2, false))))), 1516f)));
    var var_1 = global3[_wgslsmith_index_u32((u_input.c.x ^ (1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.c.x, 11122u), firstLeadingBit(u_input.c)))) & _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(u_input.c.xyy, firstLeadingBit(u_input.c.yzy))), u_input.c.xxz), 6u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(arg_1.x + global2[_wgslsmith_index_u32(var_1.b, 27u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(888f, 400f, 471f))), vec3<f32>(arg_1.x, arg_0.x, global2[_wgslsmith_index_u32(4294967295u, 27u)])) + _wgslsmith_f_op_vec3_f32(-arg_0.wxw)))));
    var var_3 = Struct_1(vec2<u32>(var_1.e.x, var_1.a.x), ~1u, 67850i, u_input.c.wz, u_input.c);
    return Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, arg_1.x)), var_0.a.x, _wgslsmith_f_op_f32(trunc(arg_1.x)), -2719f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, -932f, -406f, arg_0.x), var_0.a, global0[_wgslsmith_index_u32(var_3.b, 15u)])), _wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(arg_0.x, 1023f, 1747f, 1552f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 27u)], _wgslsmith_f_op_f32(f32(-1f) * -1186f))));
    var_0 = global2[_wgslsmith_index_u32((0u >> ((39200u | (u_input.c.x >> (13690u % 32u))) % 32u)) << (37375u % 32u), 27u)] < global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.xw), u_input.d), 27u)];
    let var_2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(f32(-1f) * -481f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(u_input.d, 27u)], vec3<i32>(u_input.b, -2147483647i, 17645i), vec4<i32>(-46454i, -45210i, -1i, 23729i), global1[_wgslsmith_index_u32(u_input.c.x, 13u)])) + global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(51574u, 4294967295u), vec2<u32>(u_input.c.x, u_input.c.x)), 27u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d, 27u)])) + _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1933u, 0u, u_input.c.x), 27u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(23780u, 27u)] * global2[_wgslsmith_index_u32(u_input.d, 27u)]) + -464f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1725f, global2[_wgslsmith_index_u32(4294967295u, 27u)])) * _wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-225f, 1000f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d, 27u)] * global2[_wgslsmith_index_u32(u_input.d, 27u)])))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 27u)], -837f, 520f) - vec3<f32>(global2[_wgslsmith_index_u32(0u, 27u)], -1174f, -1303f)))), vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, 0u), 27u)], -993f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)]))))), select(false, !(any(vec2<bool>(false, false)) | true), select(any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c.x, 88614u), u_input.c.xxz), 13u)]), true, true)));
    global1 = array<vec2<bool>, 13>();
    var var_3 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.d, 14965u, u_input.d, u_input.c.x)), u_input.c), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-24073i, u_input.b, 0i), ~u_input.b), firstTrailingBit(_wgslsmith_mult_i32(u_input.b, u_input.a)), -u_input.b), _wgslsmith_add_vec3_i32(~(vec3<i32>(u_input.a, u_input.a, u_input.b) | vec3<i32>(-26550i, 2147483647i, u_input.a)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, u_input.b, u_input.b)), vec3<i32>(u_input.a, 0i, u_input.b) ^ vec3<i32>(u_input.b, u_input.b, 6451i)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~53410u, 27u)])), 605f, 719f));
}

