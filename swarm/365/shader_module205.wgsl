struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 23>;

var<private> global2: vec3<i32>;

var<private> global3: vec3<i32>;

var<private> global4: array<f32, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = ~2147483647i;
    let var_1 = arg_0.d.b;
    let var_2 = true;
    let var_3 = var_1.c;
    var var_4 = 8127u;
    return _wgslsmith_clamp_i32(global3.x, global3.x, _wgslsmith_dot_vec2_i32(~(global2.zy ^ vec2<i32>(-70160i, -1i)), global2.yx) << (arg_0.c.a.x % 32u));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.ywx, u_input.a.yzw), 14u)]), -292f)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(101308u, 14u)] * -213f))))), -698f));
    var var_2 = !any(!vec4<bool>(arg_0, true, false, true));
    let var_3 = vec3<bool>(select(arg_0, arg_0 && (!arg_0 && false), false), arg_0, all(select(select(vec2<bool>(true, true), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), arg_0), !vec2<bool>(arg_0, false)), select(!vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), true), any(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), false)))));
    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(f32(-1f) * -1667f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1932f * -429f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 2396f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 14u)])))), Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(1u, 14u)], 965f, 230f, global4[_wgslsmith_index_u32(arg_1.x, 14u)]) + vec4<f32>(-645f, global4[_wgslsmith_index_u32(4294967295u, 14u)], 225f, -324f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 14u)], 170f, -539f, global4[_wgslsmith_index_u32(1u, 14u)]) * vec4<f32>(-316f, global4[_wgslsmith_index_u32(u_input.a.x, 14u)], var_1, global4[_wgslsmith_index_u32(arg_1.x, 14u)])))), vec3<bool>(any(!vec4<bool>(true, arg_0, true, var_3.x)), !var_3.x, !(!var_3.x))), vec2<f32>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~arg_1.x), select(~51630u, arg_1.x, true)), 14u)], _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(arg_1.x, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)]))), global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1353u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(arg_1.x, 23u)], arg_1.x), vec2<u32>(95786u, arg_1.x)), ~vec2<u32>(71455u, 4294967295u))), 14u)]);
    return ~(~global2.x);
}

fn func_2() -> vec3<i32> {
    global4 = array<f32, 14>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1587f, _wgslsmith_f_op_f32(select(-534f, _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(48551u, 14u)])), true)), -703f, 1417f) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4[_wgslsmith_index_u32(0u, 14u)], -1234f, global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<f32>(global4[_wgslsmith_index_u32(7815u, 14u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 14u)], -503f, global4[_wgslsmith_index_u32(0u, 14u)]))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, -2041f, -110f, 963f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global4[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(41110u, 14u)]), vec4<f32>(global4[_wgslsmith_index_u32(13182u, 14u)], 1116f, -495f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60551u, 23u)], 14u)])))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(258f, -794f, 764f, -657f))))))), all(vec3<bool>(true, true, all(vec4<bool>(false, true, true, true)))) && !((u_input.a.x <= 1u) != true)));
    var var_1 = Struct_5(~(~firstLeadingBit(global1[_wgslsmith_index_u32(~u_input.a.x, 23u)])), all(vec3<bool>(select(-358f > global4[_wgslsmith_index_u32(87218u, 14u)], true, global2.x != global3.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global3.x, 1i, global3.x), vec4<i32>(global2.x, global2.x, -1i, global2.x)) == -63944i, _wgslsmith_f_op_f32(floor(1383f)) != _wgslsmith_f_op_f32(floor(var_0.x)))), Struct_3(~min(~vec2<u32>(1u, 30324u), u_input.a.zy), var_0.yy), Struct_2(var_0.wzw, Struct_1(false, vec4<f32>(_wgslsmith_f_op_f32(-1382f * 1000f), global4[_wgslsmith_index_u32(12613u, 14u)], _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(407f - var_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec2<f32>(-700f, 175f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(18801u, 23u)] & u_input.a.x, 14u)])));
    var var_2 = var_1.d;
    global3 = firstLeadingBit(max(vec3<i32>(select(global2.x, max(46365i, global2.x), var_1.b), (-44370i | global2.x) >> (~1u % 32u), -2147483647i), select(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, global2.x) & vec3<i32>(16174i, global3.x, global3.x), countOneBits(vec3<i32>(global2.x, -1i, -1i))), vec3<i32>(-29865i << (u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 1i, 36264i), vec3<i32>(0i, global2.x, global3.x)), _wgslsmith_add_i32(2147483647i, global3.x)), all(select(var_2.b.c, var_1.d.b.c, var_2.b.c)))));
    return vec3<i32>(-func_4(min(global2.x, global3.x) <= _wgslsmith_mult_i32(global2.x, 6380i), var_1.c.a, func_3(Struct_5(0u, var_2.b.c.x, var_1.c, Struct_2(var_1.d.b.b.wzw, var_1.d.b, var_0.xz, 1788f)), var_1.d.b.a & true, -619f, true)), 0i, 7305i);
}

fn func_1() -> Struct_4 {
    global4 = array<f32, 14>();
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u << (global1[_wgslsmith_index_u32(u_input.a.x, 23u)] % 32u), 23u)], 14u)] * _wgslsmith_f_op_f32(-166f + global4[_wgslsmith_index_u32(0u, 14u)])) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(292f))))) != _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(reverseBits(23056u), 14u)]), any(vec2<bool>(!all(vec2<bool>(true, true)), true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)))));
    global2 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(i32(-1i) * -1i, firstLeadingBit(_wgslsmith_sub_i32(global3.x, global2.x)), countOneBits(global2.x)), _wgslsmith_mod_vec3_i32(func_2(), _wgslsmith_div_vec3_i32(min(vec3<i32>(global3.x, 2147483647i, -7131i), vec3<i32>(-41697i, global2.x, global3.x)), vec3<i32>(global3.x, global3.x, 36102i))), select(vec3<bool>(var_0.x, all(vec3<bool>(var_0.x, false, true)), true), vec3<bool>(false, true, any(vec3<bool>(var_0.x, false, var_0.x))), all(vec2<bool>(var_0.x, var_0.x)))), ~(-func_2()));
    global1 = array<u32, 23>();
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1409u, 23u)], 23u)], 1u, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), 14u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1062f - -269f), _wgslsmith_f_op_f32(-1112f * -335f))), -804f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-892f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28767u, 23u)], 23u)], 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)]) - vec3<f32>(global4[_wgslsmith_index_u32(38715u, 14u)], 1000f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1761f, global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global4[_wgslsmith_index_u32(9561u, 14u)])))))), Struct_1(!any(vec4<bool>(true, true, true, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1342f, global4[_wgslsmith_index_u32(56910u, 14u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26291u, 23u)], 14u)], global4[_wgslsmith_index_u32(0u, 14u)])))), vec3<bool>(var_0.x, global3.x <= _wgslsmith_dot_vec4_i32(vec4<i32>(7402i, global2.x, global2.x, 6463i), vec4<i32>(27742i, global3.x, 1i, global2.x)), any(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 14u)], -2046f), vec2<f32>(308f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 14u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-524f, global4[_wgslsmith_index_u32(37051u, 14u)])))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6987u, 23u)], 14u)], global4[_wgslsmith_index_u32(1u, 14u)]) * vec2<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 14u)], 189f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(42628u, 14u)]) - vec2<f32>(-1000f, -285f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(964f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 14u)]), vec2<f32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 14u)], global4[_wgslsmith_index_u32(49862u, 14u)])))))), global4[_wgslsmith_index_u32(u_input.a.x, 14u)]);
    return Struct_4(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x) & u_input.a.wx, select(u_input.a.wx, ~u_input.a.zz, _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(1u, 14u)])) < var_1.a.x)), !var_1.b.c.zz, var_1);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = vec3<i32>(-2193i, 0i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-select(vec4<i32>(global2.x, global2.x, 2147483647i, 1i), vec4<i32>(13360i, global2.x, 1i, 24718i), arg_0.c.b.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, global3.x, global3.x), -vec4<i32>(-67852i, 0i, global3.x, -2147483647i))), vec4<i32>(-62347i, 1i, ~global2.x, _wgslsmith_mod_i32(8792i, global3.x)) >> (~(~u_input.a) % vec4<u32>(32u))));
    let var_1 = Struct_3(vec2<u32>(1u, abs(u_input.a.x)), _wgslsmith_div_vec2_f32(arg_0.c.a.xz, _wgslsmith_f_op_vec2_f32(trunc(arg_0.c.b.b.xx))));
    global3 = -_wgslsmith_mod_vec3_i32(var_0, min(-firstTrailingBit(var_0), var_0));
    global2 = ~(-(~(~abs(var_0))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_1.x, 14u)]) + -1324f);
    return func_1().c.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global4[_wgslsmith_index_u32(~(1u ^ firstLeadingBit(abs(u_input.a.x))), 14u)];
    global4 = array<f32, 14>();
    var var_0 = func_5(func_1(), max(~(~(~vec3<u32>(u_input.a.x, u_input.a.x, 38621u))), u_input.a.xww));
    let var_1 = 0u;
    global4 = array<f32, 14>();
    global1 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~(0u ^ ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) * global4[_wgslsmith_index_u32(~63342u, 14u)]), -566f, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1369f, 351f)), _wgslsmith_f_op_f32(370f - _wgslsmith_f_op_f32(f32(-1f) * -2025f)))), vec3<i32>(global3.x, ~(2147483647i >> (var_1 % 32u)), global3.x));
}

