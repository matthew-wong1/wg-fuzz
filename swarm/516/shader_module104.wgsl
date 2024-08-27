struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, false, false);

var<private> global1: array<i32, 21> = array<i32, 21>(i32(-2147483648), 0i, 1i, 2147483647i, 62755i, 37508i, 0i, i32(-2147483648), i32(-2147483648), 7747i, -15478i, i32(-2147483648), -18906i, i32(-2147483648), -24175i, 11161i, 0i, i32(-2147483648), 2147483647i, -7639i, -16060i);

var<private> global2: array<bool, 25>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_3(all(vec2<bool>(true, all(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], false)))));
    global1 = array<i32, 21>();
    global0 = array<bool, 3>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.b.x, _wgslsmith_sub_u32(u_input.a, u_input.a), !global2[_wgslsmith_index_u32(40726u, 25u)]), ~(~4294967295u), firstLeadingBit(firstTrailingBit(u_input.a)), firstLeadingBit(4294967295u) >> (1u % 32u)) | (vec4<u32>(u_input.a, reverseBits(18187u), u_input.b.x, ~u_input.b.x) | ~(~vec4<u32>(1u, u_input.a, 34814u, u_input.b.x))), ~abs(~_wgslsmith_add_vec4_u32(vec4<u32>(12483u, 1u, u_input.a, u_input.a), vec4<u32>(17836u, u_input.b.x, u_input.b.x, 1u)))), 25u)];
    let var_2 = select(select(!vec2<bool>(false, !global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec2<bool>(true, true), all(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 25u)], var_0.a, global0[_wgslsmith_index_u32(83164u, 3u)]), vec4<bool>(false, true, false, var_0.a), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(23397u, 25u)])), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(var_0.a, var_0.a, false, true)), !vec4<bool>(global2[_wgslsmith_index_u32(50804u, 25u)], true, var_0.a, global0[_wgslsmith_index_u32(1u, 3u)])))), !select(select(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 25u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), var_0.a), vec2<bool>(true, true), true), any(select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(u_input.a, 25u)], true), var_0.a))), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a & u_input.a, 3u)], u_input.b.x > u_input.a), select(vec2<bool>(global2[_wgslsmith_index_u32(22384u, 25u)] && var_0.a, any(vec3<bool>(false, global0[_wgslsmith_index_u32(57718u, 3u)], global2[_wgslsmith_index_u32(5964u, 25u)]))), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 25u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 25u)], var_0.a), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(32041u, 25u)])), false), global2[_wgslsmith_index_u32(0u, 25u)]));
    return 37549u;
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = reverseBits(u_input.a >> (_wgslsmith_mult_u32(45011u, func_3()) % 32u));
    global1 = array<i32, 21>();
    var var_1 = -1i;
    return _wgslsmith_f_op_f32(141f * arg_0.b.c.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<i32>) -> f32 {
    let var_0 = (i32(-1i) * -2147483647i) >> ((arg_0.x ^ 19609u) % 32u);
    return _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1916f - -1987f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))) * _wgslsmith_f_op_f32(func_2(Struct_2(0u, Struct_1(vec2<f32>(-204f, arg_1), false, vec2<f32>(arg_1, -431f), arg_1), u_input.a == arg_0.x, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 40431u, arg_0.x, arg_0.x), vec4<u32>(4294967295u, u_input.b.x, 1u, 4817u)))))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global1 = array<i32, 21>();
    global2 = array<bool, 25>();
    global2 = array<bool, 25>();
    global0 = array<bool, 3>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -633f), 980f, _wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(abs(~u_input.b.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(u_input.a, Struct_1(vec2<f32>(142f, 309f), true, vec2<f32>(1685f, -264f), -1370f), global2[_wgslsmith_index_u32(13568u, 25u)], vec4<u32>(0u, 87457u, u_input.a, 24031u)))) * _wgslsmith_f_op_f32(-980f + 462f)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(34730u, 21u)])), ~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 1i, global1[_wgslsmith_index_u32(4294967295u, 21u)])))))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x), global0[_wgslsmith_index_u32(0u, 3u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yy - var_0.wy) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xw + var_0.wy)) * vec2<f32>(312f, var_0.x))), var_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    let var_0 = arg_0;
    global2 = array<bool, 25>();
    global0 = array<bool, 3>();
    var var_1 = !(!(!(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(21764u, 48085u), 3u)])));
    global2 = array<bool, 25>();
    return Struct_3(func_1(Struct_3(any(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false), vec2<bool>(global2[_wgslsmith_index_u32(10720u, 25u)], true))))).b);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_3) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~firstTrailingBit(~vec3<u32>(5676u, 4294967295u, 75265u)), ~(~vec3<u32>(u_input.b.x, 4294967295u, 1u))), 21u)] < _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-20708i, 31653i, 2147483647i), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(7674u, 21u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 25u)], true)) | abs(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 22836i)), ~(-vec3<i32>(-1i, -1i, 3558i))), 37702i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(0u, 21u)], 36108i));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-1024f, _wgslsmith_f_op_f32(1284f - 1044f), func_1(Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 3u)])).d, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-396f, 732f, -1235f, 146f), _wgslsmith_div_vec4_f32(vec4<f32>(-863f, 1195f, -432f, 919f), vec4<f32>(326f, -223f, -102f, 105f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1687f, 1086f, -820f, -1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-2195f, -1584f, -2519f, -940f), vec4<f32>(-529f, 270f, -1680f, -486f))))));
    let var_2 = abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(~32554u, u_input.b.x, u_input.a), _wgslsmith_div_vec3_u32(u_input.b, _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.a, u_input.a, 67558u), u_input.b) | vec3<u32>(85092u, u_input.a, 28189u))));
    var var_3 = _wgslsmith_add_i32(~(~1i) & global1[_wgslsmith_index_u32(u_input.a & 1u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]) <= _wgslsmith_mod_i32(_wgslsmith_mult_i32(abs(-15915i) >> (~u_input.b.x % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(23397i, -1i, -20392i), vec3<i32>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 9925i)), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_2, 21u)], -1i))), abs(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(18093u, _wgslsmith_add_u32(var_2, 4294967295u)), 21u)]));
    var var_4 = abs(vec4<i32>(14260i, 8861i, abs(1i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(7413u, 21u)], 18585i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], 2147483647i))))) ^ countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(-31551i, global1[_wgslsmith_index_u32(var_2, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)]) & vec4<i32>(-21589i, global1[_wgslsmith_index_u32(86435u, 21u)], global1[_wgslsmith_index_u32(12387u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), -vec4<i32>(54075i, global1[_wgslsmith_index_u32(4294967295u, 21u)], -2147483647i, global1[_wgslsmith_index_u32(0u, 21u)])));
    return _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(122f + 457f) - -516f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1174f;
    var var_1 = vec4<u32>(~(~(~1u)), ~countOneBits(firstLeadingBit(6457u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~(~u_input.b), u_input.b), u_input.a, ~select(4660u, u_input.a, true) | ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), 4294967295u);
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_6(select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(18236u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), all(vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 25u)], true))), func_5(func_1(Struct_3(global0[_wgslsmith_index_u32(1u, 3u)])), firstTrailingBit(0u)))), _wgslsmith_f_op_f32(-func_1(Struct_3(true)).d)), global0[_wgslsmith_index_u32(var_1.x, 3u)], _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1504f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -362f), vec2<f32>(var_0, var_0), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(4838u, 25u)])))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, var_0))), vec2<f32>(var_0, -852f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_3(global2[_wgslsmith_index_u32(9411u, 25u)])).a + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -1398f)))))), _wgslsmith_f_op_f32(exp2(1f)));
    var var_3 = ~vec4<i32>(12417i, -1i | global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.x, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, 1u, var_1.x, var_1.x)), 21u)], -2147483647i, firstTrailingBit(firstTrailingBit(global1[_wgslsmith_index_u32(6740u, 21u)])));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1229f, _wgslsmith_div_f32(917f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2061f)) + _wgslsmith_f_op_f32(f32(-1f) * -111f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f))), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(~1i, var_4.zz, reverseBits(~(-1i)), abs(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) | select(vec4<u32>(47308u, var_1.x, var_1.x, 0u), vec4<u32>(var_1.x, 13340u, u_input.b.x, 1u), vec4<bool>(true, true, false, var_2.b)), vec4<u32>(u_input.b.x, ~0u, _wgslsmith_clamp_u32(920u, u_input.b.x, var_1.x), 1u))), ~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 26542u, u_input.b.x), vec3<u32>(0u, var_1.x, var_1.x)) << (var_1.xxx % vec3<u32>(32u))));
}

