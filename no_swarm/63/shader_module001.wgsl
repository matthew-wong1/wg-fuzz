struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<vec3<i32>, 26>;

var<private> global2: array<Struct_2, 11>;

var<private> global3: array<u32, 9>;

var<private> global4: array<i32, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<vec3<i32>, 26>();
    let var_0 = vec4<u32>(firstLeadingBit(global3[_wgslsmith_index_u32(firstLeadingBit(abs(arg_0.d.x)), 9u)] >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(10212u, 1u), arg_0.c.yx) >> (1u % 32u)) % 32u)), ~(~u_input.e), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(u_input.e, 9u)], ~(~firstLeadingBit(1u))), ~(~1u));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.d, vec4<u32>(arg_0.d.x | u_input.c, u_input.e, _wgslsmith_mult_u32(0u, 4294967295u), global3[_wgslsmith_index_u32(~u_input.d.x, 9u)]) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, global3[_wgslsmith_index_u32(var_0.x, 9u)], arg_0.d.x, 51146u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], 9u)], arg_0.d.x, 4294967295u, 43727u)) % vec4<u32>(32u))) | ~(~min(1u, arg_0.c.x << (1u % 32u))), 11u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(max(19278u, arg_0.d.x) ^ ~32138u, ~abs(arg_0.d.x)), arg_0.d.wy), vec2<u32>(u_input.d.x, var_1.a.d.x)), 11u)];
    let var_3 = Struct_2(var_2.a);
    return !var_2.a.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(1250f, -1301f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1536f) - arg_0.a), vec4<u32>(global3[_wgslsmith_index_u32(arg_0.d.x, 9u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.c.x), vec2<u32>(arg_0.d.x, 4294967295u)), 1u, _wgslsmith_mod_u32(abs(arg_1.x), ~23058u)), vec4<u32>(abs(global3[_wgslsmith_index_u32(arg_0.c.x, 9u)]), 4294967295u, 1u, ~global3[_wgslsmith_index_u32(arg_0.c.x, 9u)])));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.a)))), global0[_wgslsmith_index_u32(var_0.a.c.x, 23u)], vec4<u32>(arg_1.x ^ 42030u, u_input.e, var_0.a.d.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(0u, 9u)], 69298u, global3[_wgslsmith_index_u32(1u, 9u)])), arg_0.c.zyy & var_0.a.c.yyz)), select(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, var_0.a.d.x, arg_0.c.x, 2417u), var_0.a.c), vec4<u32>(var_0.a.d.x, 7898u, 0u, arg_1.x) & vec4<u32>(arg_1.x, 16896u, var_0.a.c.x, 47464u)), vec4<u32>(1u, var_0.a.d.x, arg_0.d.x, 74550u), true)));
    global0 = array<bool, 23>();
    var var_2 = vec2<i32>(~_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mult_i32(15574i, arg_2)), global4[_wgslsmith_index_u32(var_1.a.d.x, 14u)]), -_wgslsmith_sub_i32(-min(-16973i, -2147483647i), 7688i));
    var var_3 = var_0;
    return vec2<i32>(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 0u ^ var_0.a.c.x), 14u)], min(u_input.b, arg_2));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    global2 = array<Struct_2, 11>();
    let var_0 = func_4(Struct_1(1000f, func_3(arg_3.a), arg_0.a.c, ~vec4<u32>(arg_0.a.c.x << (arg_1.c.x % 32u), ~45770u, max(u_input.c, 0u), arg_3.a.d.x)), ~vec3<u32>(arg_1.c.x, _wgslsmith_clamp_u32(max(1u, 0u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.c.xy, arg_1.d.ww), 9u)], _wgslsmith_add_u32(arg_0.a.d.x, 4294967295u)), 57207u), firstLeadingBit(_wgslsmith_add_i32(0i, 23811i)));
    var var_1 = Struct_2(Struct_1(839f, !arg_1.b, arg_3.a.d ^ arg_0.a.d, vec4<u32>(max(abs(61936u), arg_1.c.x), 26555u, arg_1.c.x, select(~43378u, _wgslsmith_clamp_u32(arg_3.a.c.x, arg_3.a.d.x, global3[_wgslsmith_index_u32(0u, 9u)]), !arg_0.a.b))));
    global0 = array<bool, 23>();
    var var_2 = arg_0.a;
    return ~(vec2<u32>(arg_0.a.c.x, var_1.a.d.x) ^ select(abs(vec2<u32>(81858u, global3[_wgslsmith_index_u32(4294967295u, 9u)])), vec2<u32>(arg_3.a.d.x, 108270u) << ((var_2.d.xw & vec2<u32>(0u, global3[_wgslsmith_index_u32(var_2.c.x, 9u)])) % vec2<u32>(32u)), vec2<bool>(true, true)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(478f + -100f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a + arg_1.a.a))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.a + _wgslsmith_f_op_f32(sign(-724f)))))));
    global3 = array<u32, 9>();
    global0 = array<bool, 23>();
    let var_1 = select(!select(!vec3<bool>(global0[_wgslsmith_index_u32(16724u, 23u)], false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5443u, 9u)], 23u)]), vec3<bool>(!arg_1.a.b, all(vec3<bool>(arg_1.a.b, global0[_wgslsmith_index_u32(1u, 23u)], arg_2.a.b)), any(vec2<bool>(false, arg_2.a.b))), !(!vec3<bool>(arg_1.a.b, global0[_wgslsmith_index_u32(9428u, 23u)], true))), vec3<bool>(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(arg_1.a.d.xxx, vec3<u32>(1u, arg_3.x, 17328u)), ~u_input.c) >> ((arg_2.a.d.x | 1u) % 32u), 23u)], arg_1.a.b, global0[_wgslsmith_index_u32(0u >> (arg_2.a.d.x % 32u), 23u)]), select(vec3<bool>(-229f <= _wgslsmith_f_op_f32(-arg_1.a.a), global0[_wgslsmith_index_u32(min(countOneBits(8024u), reverseBits(u_input.e)), 23u)], all(select(vec3<bool>(true, arg_2.a.b, global0[_wgslsmith_index_u32(arg_2.a.c.x, 23u)]), vec3<bool>(false, arg_2.a.b, global0[_wgslsmith_index_u32(17170u, 23u)]), vec3<bool>(arg_2.a.b, true, arg_2.a.b)))), select(vec3<bool>(true, true, any(vec4<bool>(arg_1.a.b, true, true, true))), select(select(vec3<bool>(arg_2.a.b, true, global0[_wgslsmith_index_u32(68725u, 23u)]), vec3<bool>(arg_2.a.b, false, arg_1.a.b), true), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], true, false), vec3<bool>(false, arg_2.a.b, arg_1.a.b), vec3<bool>(arg_2.a.b, arg_1.a.b, global0[_wgslsmith_index_u32(arg_2.a.c.x, 23u)])), !vec3<bool>(arg_2.a.b, arg_1.a.b, false)), select(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(6503u, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(36142u, 23u)]), arg_2.a.b), !vec3<bool>(arg_2.a.b, global0[_wgslsmith_index_u32(36157u, 23u)], arg_1.a.b), !vec3<bool>(true, arg_1.a.b, false))), false));
    var_0 = -278f;
    return _wgslsmith_f_op_f32(-1034f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.a + arg_1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.a))))))));
}

fn func_1() -> u32 {
    global0 = array<bool, 23>();
    global2 = array<Struct_2, 11>();
    global4 = array<i32, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(468f, _wgslsmith_f_op_f32(floor(1613f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1164f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(select(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11117u, 9u)], 26u)], vec3<i32>(35292i, u_input.a.x, -2147483647i), false), Struct_2(Struct_1(1356f, false, vec4<u32>(3394u, 1u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15306u, 9u)], 9u)]), vec4<u32>(0u, u_input.c, 0u, 1u))), Struct_2(Struct_1(-435f, global0[_wgslsmith_index_u32(u_input.d.x, 23u)], vec4<u32>(21073u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], global3[_wgslsmith_index_u32(5121u, 9u)], u_input.c), vec4<u32>(u_input.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], 72409u, 50856u))), func_2(Struct_2(Struct_1(-728f, global0[_wgslsmith_index_u32(86360u, 23u)], vec4<u32>(4744u, 1u, u_input.d.x, 1u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49614u, 9u)], 9u)], 4294967295u, 1u, u_input.e))), Struct_1(775f, false, vec4<u32>(1233u, global3[_wgslsmith_index_u32(u_input.c, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 9u)], 9u)], 1u), vec4<u32>(4294967295u, u_input.c, global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)])), -327f, global2[_wgslsmith_index_u32(u_input.d.x, 11u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(757f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2529f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -412f))), -123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -698f)))));
    var var_1 = 1u;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -705f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -306f)), _wgslsmith_div_f32(-224f, -590f), 574f), vec4<f32>(-1078f, 322f, 651f, _wgslsmith_div_f32(1000f, -690f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zwz)))));
    let var_2 = 1u | (~func_1() & u_input.e);
    let var_3 = ~((vec3<u32>(1u, 26056u & u_input.e, abs(20354u)) ^ reverseBits(firstTrailingBit(vec3<u32>(4294967295u, var_2, 0u)))) | countOneBits(~firstTrailingBit(vec3<u32>(44708u, var_2, var_2))));
    global1 = array<vec3<i32>, 26>();
    var var_4 = _wgslsmith_sub_u32(var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, 24338u), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.d.x, 4294967295u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, global3[_wgslsmith_index_u32(0u, 9u)]), u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, var_1.xx, u_input.d, max(vec4<i32>(~0i, firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, 1i)), _wgslsmith_div_i32(-u_input.b, u_input.a.x), i32(-1i) * -global4[_wgslsmith_index_u32(0u, 14u)]), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, -1i), u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 4194i, global4[_wgslsmith_index_u32(1u, 14u)]), global1[_wgslsmith_index_u32(var_3.x, 26u)]) << (var_3.x % 32u), _wgslsmith_add_i32(global4[_wgslsmith_index_u32(u_input.d.x, 14u)], global4[_wgslsmith_index_u32(var_2, 14u)]) | global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, 1u), 14u)], _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 0i), global1[_wgslsmith_index_u32(7384u, 26u)]), _wgslsmith_mult_i32(-1i, -13719i)))));
}

