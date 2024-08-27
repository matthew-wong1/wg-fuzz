struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<u32, 17> = array<u32, 17>(11719u, 11068u, 65419u, 36095u, 2873u, 7882u, 19056u, 21710u, 1193u, 25908u, 0u, 86044u, 29815u, 4294967295u, 4294967295u, 6582u, 10531u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: i32) -> bool {
    var var_0 = Struct_4(!(!vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true)), Struct_3(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-225f, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 17u)], 19u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)], 1000f))), vec3<f32>(2354f, 1729f, global0[_wgslsmith_index_u32(4294967295u, 19u)])), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1500f, global0[_wgslsmith_index_u32(arg_0.x, 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 19u)], global0[_wgslsmith_index_u32(1u, 19u)]) - vec4<f32>(237f, global0[_wgslsmith_index_u32(arg_0.x, 19u)], -1356f, -646f)), -vec2<i32>(arg_2, 2147483647i), abs(vec2<u32>(1u, 12048u))), false), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 19u)], 366f, global0[_wgslsmith_index_u32(arg_0.x, 19u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], 296f) + vec3<f32>(598f, -251f, global0[_wgslsmith_index_u32(0u, 19u)]))), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 214f, global0[_wgslsmith_index_u32(13063u, 19u)], 2892f), vec2<i32>(arg_2, arg_2), vec2<u32>(54166u, 26395u) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), select(true, false, any(vec4<bool>(true, false, true, true)))), false, vec2<i32>(_wgslsmith_mod_i32(-2147483647i, ~arg_1.x), arg_1.x), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 19u)] * 322f), _wgslsmith_f_op_f32(f32(-1f) * -1633f), 265f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(70754u, 19u)], -560f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 19u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-253f, -1315f, global0[_wgslsmith_index_u32(arg_0.x, 19u)])))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1801f))), 709f, -602f, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c), 19u)]), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-381f, -222f, 1000f) - vec3<f32>(-1341f, global0[_wgslsmith_index_u32(1u, 19u)], 2127f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(52866u, 19u)], 1000f, -348f))))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], 765f, 1299f, global0[_wgslsmith_index_u32(1u, 19u)])))), arg_1, vec2<u32>(31894u, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), !(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 19u)])) < 387f)));
    let var_1 = _wgslsmith_div_vec4_u32(abs(~(~(~u_input.c))), ~u_input.c);
    var var_2 = vec2<u32>(25201u, 0u);
    var_0 = Struct_4(vec3<bool>(all(select(var_0.a.zx, vec2<bool>(false, true), vec2<bool>(true, true))), true, any(!select(var_0.a, vec3<bool>(var_0.e.c, var_0.a.x, true), vec3<bool>(var_0.e.c, var_0.b.c, true)))), var_0.b, vec3<f32>(-1345f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-217f, global0[_wgslsmith_index_u32(0u, 19u)])) - -108f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 19u)] - -677f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -590f)))), _wgslsmith_f_op_vec4_f32(exp2(var_0.b.a.b.a)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~4294967295u, 19u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(trunc(569f)), var_0.e.b.b.x <= arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(465f)))), var_0.b.a.b, var_0.a.x));
    var var_3 = select(!select(!(!var_0.a), vec3<bool>(any(var_0.a.yx), global0[_wgslsmith_index_u32(var_1.x, 19u)] < 337f, var_0.b.a.c), true), vec3<bool>(true && var_0.b.a.c, var_0.a.x, var_0.e.c && all(select(vec2<bool>(false, true), vec2<bool>(var_0.e.c, var_0.b.c), vec2<bool>(var_0.e.c, var_0.b.c)))), select(!vec3<bool>(all(var_0.a), true, !var_0.a.x), !select(!vec3<bool>(var_0.e.c, var_0.b.b.c, false), vec3<bool>(var_0.e.c, var_0.e.c, var_0.a.x), !var_0.b.c), !(!(false & var_0.e.c))));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    let var_0 = Struct_4(vec3<bool>(arg_0.c, select(2147483647i != arg_0.b.b.x, arg_0.c, false), false), Struct_3(arg_0, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.zww - arg_2.ywx)), Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.b.a * arg_2), vec2<i32>(arg_0.b.b.x, arg_0.b.b.x), _wgslsmith_add_vec2_u32(arg_0.b.c, vec2<u32>(22387u, 0u))), func_3(vec2<u32>(u_input.a.x, 17948u), ~vec2<i32>(arg_0.b.b.x, 2147483647i), arg_0.b.b.x)), true, firstTrailingBit(arg_0.b.b), _wgslsmith_add_vec3_u32(vec3<u32>(~arg_0.b.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(50585u, u_input.b.x), vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)])), select(global1[_wgslsmith_index_u32(101393u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], arg_3)), reverseBits(u_input.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(169f, _wgslsmith_f_op_f32(1299f - _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-arg_2.x)) * _wgslsmith_f_op_vec3_f32(-arg_2.yzz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.x, -612f, 733f, -2302f)))) - _wgslsmith_f_op_vec4_f32(floor(arg_2)))), arg_0);
    global1 = array<u32, 17>();
    let var_1 = vec2<bool>(true, arg_0.c);
    global1 = array<u32, 17>();
    global0 = array<f32, 19>();
    return 47977u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> vec4<i32> {
    global0 = array<f32, 19>();
    var var_0 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_0.c.x, 19u)]));
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(~abs(27352u), arg_0.c.x, ~arg_1.x), vec3<u32>(arg_2.b.c.x, _wgslsmith_mult_u32(~(~u_input.c.x), arg_2.b.c.x ^ func_2(Struct_2(arg_2.b.a.yzx, Struct_1(vec4<f32>(-138f, arg_2.b.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 599f), arg_2.b.b, u_input.b.xz), true), -47619i, arg_0.a, false)), global1[_wgslsmith_index_u32(1u, 17u)]));
    var var_2 = 15458u;
    global0 = array<f32, 19>();
    return vec4<i32>(2442i, arg_2.b.b.x, 1i, abs(arg_0.b.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(abs(arg_0.b.x), arg_0.b.x, _wgslsmith_mult_i32(~arg_0.b.x, select(-2147483647i, 16967i, arg_2.c)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, arg_2.b.b.x, arg_2.b.b.x), -3534i)), ~firstLeadingBit(vec4<i32>(arg_2.b.b.x, arg_2.b.b.x, -2147483647i, -80110i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(29708i, -33245i, 7468i, -2147483647i), vec4<i32>(0i, 1039i, 61796i, 0i), vec4<bool>(false, true, true, false)), firstLeadingBit(vec4<i32>(-17752i, -1i, 0i, -96342i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1765i, 0i, 22135i), _wgslsmith_div_vec4_i32(vec4<i32>(-21337i, -2147483647i, 42180i, -1i), vec4<i32>(56149i, 2147483647i, -2147483647i, 49372i))))), _wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, 2147483647i, 11608i, 2147483647i), func_1(Struct_1(vec4<f32>(-192f, -1182f, -350f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec2<i32>(-71324i, 2147483647i), u_input.a.yz), vec3<u32>(68697u, u_input.b.x, 1u), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(16330u, 19u)], 841f, 167f), Struct_1(vec4<f32>(1139f, global0[_wgslsmith_index_u32(46114u, 19u)], -126f, 150f), vec2<i32>(-5510i, 0i), u_input.c.zw), false))) | ~(~vec4<i32>(-23942i, 1i, 1i, -32185i)), _wgslsmith_mod_vec4_i32(~(vec4<i32>(-2147483647i, -429i, 92868i, 2147483647i) >> (u_input.c % vec4<u32>(32u))), ~vec4<i32>(9427i, 1i, 2147483647i, 1i))));
    var_0 = firstLeadingBit(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-8940i, var_0.x) | ~vec2<i32>(-2147483647i, -27448i), vec2<i32>(var_0.x, 33009i) | -vec2<i32>(-36642i, 1i))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1050f, global0[_wgslsmith_index_u32(0u, 19u)], 434f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 19u)], -131f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-333f, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], -869f) * vec3<f32>(122f, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)])))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(257f, 2800f, -1360f, -834f)), vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], -366f, -360f, -691f))), -select(vec2<i32>(1i, var_0.x), vec2<i32>(var_0.x, var_0.x), vec2<bool>(true, true)), vec2<u32>(global1[_wgslsmith_index_u32(0u, 17u)], u_input.c.x)), any(vec3<bool>(true, true, true))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 19u)] - -166f), -162f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(2110u, 19u)], global0[_wgslsmith_index_u32(15702u, 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 19u)]) - vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 19u)], global0[_wgslsmith_index_u32(1u, 19u)], 1120f)))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(623f, 868f, 369f, global0[_wgslsmith_index_u32(1u, 19u)]), vec4<f32>(-858f, 888f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 17u)], 17u)], 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)])))), _wgslsmith_add_vec2_i32(vec2<i32>(59292i, 1i), vec2<i32>(var_0.x, var_0.x)), vec2<u32>(0u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)])), select(true, false, any(vec2<bool>(true, false))) || (13298i == -var_0.x)), true, vec2<i32>(-1i) * -min(abs(vec2<i32>(-2147483647i, var_0.x)), abs(vec2<i32>(var_0.x, var_0.x))), u_input.a & vec3<u32>(countOneBits(67026u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), global1[_wgslsmith_index_u32(36042u, 17u)] << (0u % 32u)), abs(~u_input.a.x)));
    let var_2 = Struct_4(select(vec3<bool>(true, true, !all(vec4<bool>(false, var_1.b.c, var_1.a.c, false))), select(!vec3<bool>(var_1.b.c, false, false), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, var_1.a.c))), false), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(696f, -226f, var_1.a.a.x))), var_1.a.b.a.zwz)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.b.b.a), _wgslsmith_sub_vec2_i32(var_1.d, vec2<i32>(var_0.x, var_1.b.b.b.x)), u_input.a.xx | u_input.a.zy), false), var_1.a, all(select(!vec3<bool>(true, var_1.c, false), vec3<bool>(false, true, var_1.b.c), select(vec3<bool>(true, var_1.a.c, true), vec3<bool>(var_1.a.c, true, var_1.c), true))), vec2<i32>(-var_0.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-34750i, 1i, -39539i), vec3<i32>(-42191i, -3578i, var_1.b.b.b.x))), ~firstTrailingBit(countOneBits(var_1.e))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.a.b.a.xzz - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(7228u, 19u)], 2156f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(411f * global0[_wgslsmith_index_u32(63427u, 19u)]), _wgslsmith_f_op_f32(trunc(-859f)), -2292f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b.b.a)), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(125f, var_1.b.b.a.x, -831f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -258f))), vec3<bool>(true, var_1.a.c, 17247i >= var_1.b.b.b.x))), var_1.a.b, !all(vec4<bool>(var_1.c, true, var_1.a.c, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_2.d.x)), -(~vec4<i32>(var_0.x, -var_2.e.b.b.x, min(-6856i, var_2.e.b.b.x), max(var_1.b.b.b.x, var_0.x))));
}

