struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec3<u32>(1u, 4294967295u, 1u), -673f, 434f);

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global2: array<vec2<f32>, 1>;

var<private> global3: array<Struct_1, 28>;

var<private> global4: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-1217f, 674f), vec2<f32>(-821f, -1000f), vec2<f32>(-641f, -1335f), vec2<f32>(261f, -835f), vec2<f32>(-1902f, 578f), vec2<f32>(-1297f, 1430f), vec2<f32>(-166f, 1000f), vec2<f32>(971f, -736f), vec2<f32>(269f, -877f), vec2<f32>(-1486f, -1000f), vec2<f32>(1205f, 1019f), vec2<f32>(505f, -1916f), vec2<f32>(222f, 1595f), vec2<f32>(1551f, 1354f), vec2<f32>(-861f, 176f), vec2<f32>(-890f, 1356f), vec2<f32>(366f, -757f), vec2<f32>(339f, 1572f), vec2<f32>(800f, -1000f), vec2<f32>(1066f, 1172f), vec2<f32>(619f, -575f), vec2<f32>(-496f, -1649f), vec2<f32>(-756f, 829f), vec2<f32>(689f, 756f), vec2<f32>(2019f, -100f), vec2<f32>(-1010f, 379f), vec2<f32>(913f, -522f), vec2<f32>(1172f, -606f), vec2<f32>(514f, 1696f), vec2<f32>(212f, 427f), vec2<f32>(1677f, -673f), vec2<f32>(-691f, 1038f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global1 = !(!vec4<bool>(true, all(vec2<bool>(global1.x, true)), false, !(!global1.x)));
    var var_0 = abs(~(global0.b.x >> ((40699u & arg_0.a) % 32u))) <= 0u;
    let var_1 = 48198u & global0.b.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(781f, -1000f, -1010f, 323f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(919f, 693f, global0.d, global0.d)), var_1 < 4294967295u)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d, -902f, global0.d, -771f), vec4<f32>(global0.d, arg_0.d, global0.c, -397f), vec4<bool>(global1.x, false, false, false))))))));
    global0 = Struct_1(arg_0.b.x, _wgslsmith_mod_vec3_u32(vec3<u32>(min(~1u, ~u_input.b.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, var_1), arg_0.b.x), u_input.b.x), firstLeadingBit(~vec3<u32>(u_input.b.x, 6311u, 39069u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1099f * -1126f), global0.d)), arg_0.d, global1.x || global1.x)), 1101f);
    return global1.wxw;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = global3[_wgslsmith_index_u32((~countOneBits(u_input.b.x) & global0.b.x) ^ 1u, 28u)];
    let var_1 = func_3(Struct_1(max(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, var_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(83632u, 6030u, 14816u), vec3<u32>(u_input.b.x, 7771u, 6034u))), u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(40789u, 7448u), 24436u, ~1u), global0.b), -1827f, 216f));
    global1 = select(vec4<bool>(true, false, global1.x, !all(!vec2<bool>(false, var_1.x))), select(vec4<bool>(!var_1.x, any(vec4<bool>(global1.x, global1.x, true, var_1.x)), false, global1.x & all(vec4<bool>(false, var_1.x, true, global1.x))), !(!(!vec4<bool>(false, global1.x, var_1.x, false))), vec4<bool>(true, var_1.x, func_3(global3[_wgslsmith_index_u32(0u, 28u)]).x || all(var_1.yx), all(vec3<bool>(false, false, false)))), select(vec4<bool>(true, !global1.x || true, true, any(!vec4<bool>(global1.x, global1.x, true, var_1.x))), !vec4<bool>(global1.x && var_1.x, !global1.x, arg_1 < -1825f, false), !vec4<bool>(true, !global1.x, var_1.x, all(vec4<bool>(false, global1.x, false, true)))));
    let var_2 = var_1;
    global2 = array<vec2<f32>, 1>();
    return select(vec4<bool>(true, true, !(true & all(global1.yw)), select(global1.x, any(vec3<bool>(false, true, global1.x)), var_2.x)), vec4<bool>(!any(select(var_2, var_1, var_1.x)), true, global1.x, global1.x), select(vec4<bool>(true, ~var_0.a != u_input.b.x, _wgslsmith_f_op_f32(sign(global0.d)) != 136f, var_2.x), select(!(!vec4<bool>(var_1.x, false, false, false)), !vec4<bool>(false, global1.x, var_1.x, false), !vec4<bool>(var_1.x, false, false, false)), select(!select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(global1.x, false, false, var_2.x), var_2.x), select(vec4<bool>(var_1.x, var_1.x, global1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_2.x), var_1.x), global1.x)));
}

fn func_1() -> Struct_1 {
    global2 = array<vec2<f32>, 1>();
    global0 = global3[_wgslsmith_index_u32(max(_wgslsmith_div_u32(u_input.b.x, 1u), u_input.b.x), 28u)];
    global1 = select(!(!func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1635f, 1000f)), _wgslsmith_f_op_f32(-global0.c), vec2<i32>(-2147483647i, 1i))), !vec4<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, false)) & global1.x, false, global1.x, any(func_3(global3[_wgslsmith_index_u32(4294967295u, 28u)]).zx)), !select(!(!vec4<bool>(global1.x, false, true, false)), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-671f, global0.c, -1773f), vec3<f32>(706f, global0.d, 1419f), vec3<bool>(global1.x, global1.x, false))), -977f, select(vec2<i32>(28517i, u_input.c.x), vec2<i32>(u_input.c.x, 2147483647i), vec2<bool>(global1.x, false))), func_2(vec3<f32>(-856f, global0.d, 480f), -895f, ~u_input.a.yz)));
    let var_0 = global3[_wgslsmith_index_u32(~(~1648u), 28u)];
    global3 = array<Struct_1, 28>();
    return Struct_1(global0.b.x, global0.b, var_0.d, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = vec4<bool>(all(vec4<bool>(global1.x, !func_3(var_0).x, ~global0.b.x != ~4294967295u, true)), !(countOneBits(-u_input.c.x) > 1i), !(!((u_input.a.x << (46882u % 32u)) >= -20066i)), global1.x);
    var var_1 = select(_wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(_wgslsmith_add_i32(u_input.c.x, 3587i)), u_input.c.x << (1u % 32u)), vec2<i32>(-1i) * -abs(u_input.c.yx), firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.c.xz, vec2<i32>(u_input.a.x, -1245i)) << (global0.b.zy % vec2<u32>(32u)))), u_input.c.yy, true & any(select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), !vec4<bool>(true, global1.x, global1.x, global1.x), global1.x)));
    var var_2 = true;
    var var_3 = _wgslsmith_mod_u32(0u, var_0.a) < countOneBits(35660u);
    let var_4 = global1.ywx;
    var var_5 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(var_0.a ^ 27472u, ~(~22446u)), ~global0.a | ~_wgslsmith_clamp_u32(0u, ~u_input.b.x, 0u << (var_0.a % 32u)));
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c, 387f, global0.c, global0.d), vec4<f32>(-1002f, -347f, 374f, -970f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, var_0.d, 1429f, global0.d))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1374f, var_0.c, 2290f, 445f) * vec4<f32>(global0.c, var_0.c, -755f, global0.d)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c, global0.c, var_0.c, global0.d))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, global0.c, 605f, global0.c), vec4<f32>(1178f, 836f, var_0.c, var_0.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.zxx, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.d, var_6.x, var_6.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(778f)), _wgslsmith_f_op_f32(var_6.x + 1594f))))), u_input.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-794f, -659f, -1783f, 1105f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1129f, var_0.d, global0.d, var_6.x)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, var_6.x, var_6.x, var_0.d) * vec4<f32>(var_6.x, -160f, var_6.x, var_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, var_6.x, var_0.c, 1006f) * vec4<f32>(var_0.c, -825f, -455f, var_0.d))))))), 4294967295u);
}

