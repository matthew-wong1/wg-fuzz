struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(1299f, -1829f), vec2<f32>(-316f, -1619f), vec2<f32>(468f, 903f));

var<private> global1: array<u32, 30>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: vec4<i32> = vec4<i32>(43071i, i32(-2147483648), 0i, -1i);

var<private> global4: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(64256u, true), Struct_2(4294967295u, false), Struct_2(4294967295u, true), Struct_2(4294967295u, true), Struct_2(63963u, false), Struct_2(103u, false), Struct_2(0u, true), Struct_2(4294967295u, false), Struct_2(34050u, false), Struct_2(5536u, false), Struct_2(42529u, false), Struct_2(44962u, false), Struct_2(0u, false), Struct_2(24072u, false), Struct_2(1u, true), Struct_2(0u, false), Struct_2(32616u, true), Struct_2(30791u, true), Struct_2(4294967295u, false), Struct_2(1u, true), Struct_2(17488u, true), Struct_2(43150u, true), Struct_2(39044u, true), Struct_2(28541u, false), Struct_2(4294967295u, false), Struct_2(4294967295u, false), Struct_2(4294967295u, false), Struct_2(30331u, false), Struct_2(39566u, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_div_i32(-u_input.d, 1i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global3.x), global3.xz)) & _wgslsmith_div_i32(-global3.x, 0i);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 68761u), ~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_2.x, arg_2.x, global1[_wgslsmith_index_u32(arg_0, 30u)]) >> (select(vec3<u32>(1212u, global1[_wgslsmith_index_u32(9079u, 30u)], 42661u), arg_2, false) % vec3<u32>(32u)), select(~vec3<u32>(0u, 1u, 19861u), arg_2 << (arg_2 % vec3<u32>(32u)), !vec3<bool>(global2.x, true, global2.x))));
    var var_2 = Struct_3(Struct_1(global2.x, select(global2.xy, vec2<bool>(true, global2.x), vec2<bool>(true, global2.x)), all(select(global2.yz, global2.yz, vec2<bool>(true, true)))), global3.xwx, ~u_input.a);
    var var_3 = vec3<i32>(~var_2.b.x, u_input.c.x, -2147483647i);
    global4 = array<Struct_2, 29>();
    return _wgslsmith_sub_i32(firstTrailingBit(max(-11920i, 0i)), _wgslsmith_sub_i32(~countOneBits(max(var_3.x, var_2.b.x)), min(-44045i, firstTrailingBit(reverseBits(global3.x)))));
}

fn func_3(arg_0: vec2<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_i32(global3.x, global3.x, min(_wgslsmith_dot_vec3_i32(global3.yzy, vec3<i32>(_wgslsmith_dot_vec2_i32(global3.xx, global3.yw), 1i, select(-11787i, global3.x, false))), -31223i));
    var var_1 = u_input.a;
    let var_2 = Struct_5(Struct_1(all(select(!vec4<bool>(true, global2.x, false, arg_0.x), vec4<bool>(true, true, true, global2.x), !vec4<bool>(arg_0.x, global2.x, false, arg_0.x))), !(!global2.yz), !(reverseBits(global1[_wgslsmith_index_u32(0u, 30u)]) > var_1.x)), Struct_3(Struct_1(any(!vec3<bool>(false, global2.x, arg_0.x)), !global2.yy, any(vec4<bool>(global2.x, arg_0.x, arg_0.x, false)) && true), -reverseBits(_wgslsmith_sub_vec3_i32(global3.zyx, vec3<i32>(-2147483647i, u_input.c.x, global3.x))), u_input.a));
    global4 = array<Struct_2, 29>();
    global2 = !select(!(!(!vec3<bool>(var_2.b.a.a, false, arg_0.x))), !(!vec3<bool>(var_2.b.a.b.x, false, var_2.a.b.x)), !(!vec3<bool>(false, global2.x, global2.x)));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(382f, 300f, -1632f, 723f), vec4<f32>(1757f, 233f, -323f, -313f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-837f, 221f, 1735f, -1190f)))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1012f, -1000f, -307f, -879f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(417f, 937f, 434f, -463f)))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> vec3<bool> {
    var var_0 = !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(global2.x, true, true, false), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, true, true, false)), all(vec4<bool>(global2.x, true, false, true)))));
    var var_1 = ~firstLeadingBit(4294967295u);
    let var_2 = 1i;
    global1 = array<u32, 30>();
    var var_3 = global3.xy & global3.yy;
    return var_0.xyy;
}

fn func_1() -> vec4<bool> {
    var var_0 = reverseBits(-vec3<i32>(~func_2(global1[_wgslsmith_index_u32(0u, 30u)], vec3<f32>(807f, 1046f, 494f), vec3<u32>(u_input.a.x, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 30u)])), _wgslsmith_add_i32(0i, 2147483647i) >> (~u_input.b.x % 32u), -4073i));
    var var_1 = abs(min(global3.ywz, ~global3.zyx));
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1789f, 1800f, -530f, 630f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(global2.zz))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(326f, -653f)), -997f, _wgslsmith_f_op_f32(1478f * -388f), _wgslsmith_f_op_f32(min(-637f, 424f))))), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(firstTrailingBit(u_input.b.x), global1[_wgslsmith_index_u32(u_input.b.x, 30u)], ~global1[_wgslsmith_index_u32(min(17451u, 26042u), 30u)], 24303u)));
    var var_3 = Struct_4(Struct_3(Struct_1(global2.x, vec2<bool>(all(vec2<bool>(var_2.x, false)), any(vec4<bool>(false, var_2.x, false, var_2.x))), !global2.x), vec3<i32>(~51638i, ~(-var_0.x), -1i), u_input.a));
    global4 = array<Struct_2, 29>();
    return !select(!select(!vec4<bool>(var_2.x, var_3.a.a.b.x, true, var_2.x), vec4<bool>(var_3.a.a.b.x, true, var_3.a.a.c, var_3.a.a.a), var_0.x >= -2147483647i), vec4<bool>(var_3.a.a.c, false, ~4294967295u < _wgslsmith_div_u32(var_3.a.c.x, global1[_wgslsmith_index_u32(4191u, 30u)]), !(global2.x & false)), any(!vec3<bool>(false, var_3.a.a.c, false)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> vec2<u32> {
    global2 = vec3<bool>(all(!vec4<bool>(global2.x, !global2.x, false, !global2.x)), arg_0.x, any(!(!select(vec4<bool>(false, arg_1.b, arg_0.x, global2.x), vec4<bool>(global2.x, false, true, arg_1.b), global2.x))));
    global4 = array<Struct_2, 29>();
    var var_0 = Struct_5(Struct_1(true, !(!arg_0.zy), select(global2.x, true, true)), Struct_3(Struct_1(any(func_4(vec4<f32>(549f, -362f, 442f, 844f), 0u).xz), func_4(vec4<f32>(453f, -763f, 1000f, -345f), ~122164u).zx, true), _wgslsmith_div_vec3_i32(~max(global3.www, global3.yxy), -vec3<i32>(arg_2, u_input.d, arg_2) << (vec3<u32>(16881u, 56763u, 1u) % vec3<u32>(32u))), u_input.a));
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.a.xz, select(~_wgslsmith_div_vec2_u32(vec2<u32>(55820u, 1u), var_0.b.c.wz), u_input.a.zw, !func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(726f, -1969f, 247f, 1966f)), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(var_0.b.c.x, 30u)], 1u, 17131u)).yx));
    let var_2 = Struct_5(Struct_1(true, vec2<bool>(!(global1[_wgslsmith_index_u32(0u, 30u)] <= 4294967295u), true), true), var_0.b);
    return ~var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<bool>(true, select(!global2.x, true, !(global2.x != false)), all(func_1())), global4[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(22863u, 30u)], _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(135672u, 30u)], u_input.a.x, global1[_wgslsmith_index_u32(abs(7795u), 30u)]), 61938u)), 29u)], -11417i);
    var_0 = vec2<u32>(57842u, 0u);
    global0 = array<vec2<f32>, 3>();
    var var_1 = vec4<bool>(false, true, select(global2.x, global2.x, global1[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 30u)] >= ~reverseBits(4294967295u)), true);
    global2 = select(!var_1.xyz, vec3<bool>(global2.x, true, reverseBits(u_input.d) >= ~u_input.c.x), func_4(vec4<f32>(_wgslsmith_f_op_f32(1512f - _wgslsmith_f_op_f32(min(801f, 789f))), _wgslsmith_f_op_f32(abs(-360f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-779f)) * _wgslsmith_div_f32(1125f, 209f)), _wgslsmith_f_op_vec4_f32(func_3(select(vec2<bool>(var_1.x, var_1.x), var_1.ww, var_1.x))).x), var_0.x));
    global2 = select(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(912f, 579f, -520f, -284f) * vec4<f32>(-1449f, 1410f, -238f, -1417f))) * vec4<f32>(_wgslsmith_f_op_f32(sign(-236f)), _wgslsmith_f_op_f32(max(-694f, 695f)), _wgslsmith_f_op_f32(round(361f)), -1472f)), ~(~min(global1[_wgslsmith_index_u32(1u, 30u)], u_input.a.x))), vec3<bool>(!var_1.x, !any(!var_1.wz), var_1.x != false), var_1.x);
    var var_2 = Struct_5(Struct_1(all(!select(vec2<bool>(global2.x, false), vec2<bool>(false, var_1.x), false)), !(!(!vec2<bool>(true, global2.x))), !all(vec2<bool>(global2.x, false))), Struct_3(Struct_1(all(!vec4<bool>(global2.x, var_1.x, false, global2.x)), vec2<bool>(true, true), true), vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, 0i), -2147483647i, firstLeadingBit(global3.x)), vec4<u32>(var_0.x, ~_wgslsmith_add_u32(u_input.a.x, global1[_wgslsmith_index_u32(var_0.x, 30u)]), 33676u, ~(25103u >> (u_input.b.x % 32u)))));
    global2 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, _wgslsmith_f_op_f32(abs(524f)), -2348f, _wgslsmith_f_op_f32(f32(-1f) * -983f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(!vec2<bool>(global2.x, false)))), true)), var_2.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(-global3.x, -(var_2.b.b.x & var_2.b.b.x), false), max(~(~var_2.b.b.x), _wgslsmith_sub_i32(0i, u_input.d)), _wgslsmith_mult_i32(u_input.c.x, var_2.b.b.x) >> (~global1[_wgslsmith_index_u32(1u, 30u)] % 32u), 1i), 32004u, _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(global2.xy)).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f * 663f))))));
}

