struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<i32, 19>;

var<private> global2: vec2<u32>;

var<private> global3: array<f32, 11> = array<f32, 11>(1296f, 1516f, -1000f, 824f, -1000f, -578f, -1000f, 2949f, -146f, -400f, 668f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec3<bool> {
    global3 = array<f32, 11>();
    var var_0 = vec4<bool>(!(u_input.c.x < (1i >> (1u % 32u))), true, !(!(-7217i < abs(global1[_wgslsmith_index_u32(76843u, 19u)]))), global0.x || true);
    global3 = array<f32, 11>();
    let var_1 = _wgslsmith_div_f32(global3[_wgslsmith_index_u32(52339u, 11u)], -905f);
    let var_2 = (-1i << (firstTrailingBit(0u) % 32u)) >= abs(~17154i);
    return var_0.yww;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(350f)))), _wgslsmith_f_op_f32(994f - arg_3.d.x))));
    var var_1 = Struct_4(select(arg_3.a.yx, select(arg_3.a.xy, arg_3.a.zx, func_3(arg_2.ywy, arg_2.x).x != true), 13830u == u_input.b.x), Struct_3(~4294967295u, global3[_wgslsmith_index_u32(reverseBits(~(~0u)), 11u)]));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) - var_0.x)))));
    var var_3 = u_input.d;
    global0 = func_3(vec3<i32>(_wgslsmith_clamp_i32(min(1i >> (0u % 32u), ~2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, 0i), vec2<i32>(var_3.x, arg_2.x), u_input.e.yx), _wgslsmith_add_vec2_i32(vec2<i32>(0i, var_3.x), arg_2.xy)), ~(u_input.d.x & u_input.e.x)), 2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), ~global1[_wgslsmith_index_u32(u_input.b.x, 19u)]).zz;
    return arg_3.b;
}

fn func_2() -> f32 {
    global0 = !vec2<bool>(global3[_wgslsmith_index_u32(select(abs(global2.x), global2.x, global0.x), 11u)] >= _wgslsmith_f_op_f32(trunc(-1000f)), true);
    global2 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~abs(vec2<u32>(1u, 51182u)), vec2<u32>(_wgslsmith_clamp_u32(33453u, 1u, 28642u), ~44316u)), vec2<u32>(_wgslsmith_sub_u32(1u, u_input.b.x), ~firstTrailingBit(70134u))), func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(global2.x, global2.x), 1u), vec3<u32>(u_input.b.x, 1u, global2.x ^ u_input.b.x)), global0.x & (global0.x & global0.x), _wgslsmith_div_vec4_i32(~(-vec4<i32>(0i, global1[_wgslsmith_index_u32(9479u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], 7222i)), ~(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.c.x, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)]))), Struct_1(!func_3(vec3<i32>(global1[_wgslsmith_index_u32(0u, 19u)], -35171i, global1[_wgslsmith_index_u32(global2.x, 19u)]), global1[_wgslsmith_index_u32(21987u, 19u)]), (u_input.b << (vec2<u32>(0u, 0u) % vec2<u32>(32u))) >> (~vec2<u32>(67913u, 39446u) % vec2<u32>(32u)), ~abs(u_input.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3[_wgslsmith_index_u32(0u, 11u)], -1171f, 599f, 838f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(37732u, 11u)], -268f, global3[_wgslsmith_index_u32(u_input.b.x, 11u)], global3[_wgslsmith_index_u32(global2.x, 11u)]))), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, global0.x, true, true), vec4<bool>(false, false, global0.x, false)))))));
    global3 = array<f32, 11>();
    var var_0 = -2147483647i;
    global3 = array<f32, 11>();
    return global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 39426u, u_input.b.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global2.x, 0u, 4294967295u), ~vec4<u32>(global2.x, 0u, 60263u, 17306u))), ~_wgslsmith_add_u32(func_4(vec3<u32>(global2.x, u_input.b.x, 24859u), true, u_input.e, Struct_1(vec3<bool>(global0.x, global0.x, true), vec2<u32>(u_input.b.x, 157872u), 43509u, vec4<f32>(-1000f, global3[_wgslsmith_index_u32(global2.x, 11u)], global3[_wgslsmith_index_u32(u_input.b.x, 11u)], 1000f))).x, _wgslsmith_mult_u32(global2.x, u_input.b.x))), 11u)];
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: u32) -> Struct_3 {
    global3 = array<f32, 11>();
    var var_0 = ~vec4<u32>(~u_input.b.x, ~(~_wgslsmith_mod_u32(global2.x, 4294967295u)), _wgslsmith_sub_u32(global2.x, arg_2), ~(~arg_1));
    var var_1 = global3[_wgslsmith_index_u32(~u_input.b.x, 11u)];
    let var_2 = arg_0.wxx;
    global3 = array<f32, 11>();
    return Struct_3(~arg_2, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(92537u, 11u)])));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    return func_5(vec4<f32>(1017f, arg_0.b.b, _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1353f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), ~(~select(~global2.x, 19276u << (global2.x % 32u), false)), 22381u);
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: i32) -> vec2<u32> {
    let var_0 = vec3<bool>(arg_0.a.x, select(!(!any(vec2<bool>(global0.x, arg_1))), ~_wgslsmith_mult_u32(0u, arg_0.b.a) != ~_wgslsmith_mult_u32(global2.x, 41931u), false), true);
    global0 = vec2<bool>(true, any(select(select(vec3<bool>(false, arg_0.a.x, true), var_0, vec3<bool>(true, arg_1, arg_0.a.x)), var_0, true)));
    var var_1 = Struct_1(!select(var_0, select(var_0, var_0, select(var_0, var_0, vec3<bool>(true, false, arg_1))), var_0), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.a, arg_0.b.a), abs(abs(u_input.b))), _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(arg_0.b.a, 115228u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-781f, 824f, _wgslsmith_f_op_f32(arg_0.b.b * -1316f), global3[_wgslsmith_index_u32(~1u, 11u)]))));
    global3 = array<f32, 11>();
    global1 = array<i32, 19>();
    return vec2<u32>(141063u, _wgslsmith_sub_u32(var_1.c, 29581u));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_2(vec3<i32>(-(~0i), -(max(u_input.d.x, 8114i) << (~u_input.b.x % 32u)), -(~global1[_wgslsmith_index_u32(u_input.b.x, 19u)]) >> (select(~27027u, _wgslsmith_sub_u32(64198u, arg_0.b.x), all(vec4<bool>(arg_0.a.x, arg_0.a.x, true, true))) % 32u)), select(!vec3<bool>(arg_0.a.x, true, select(false, false, global0.x)), vec3<bool>(all(arg_0.a.zx), arg_2, false), true), max(u_input.b, vec2<u32>(arg_0.b.x, func_4(~vec3<u32>(0u, 4294967295u, 0u), arg_0.a.x, max(vec4<i32>(0i, u_input.c.x, 1i, 1i), u_input.e), arg_0).x)), arg_0.a.yx);
    var_0 = Struct_2(u_input.d, !select(var_0.b, vec3<bool>(true, all(vec4<bool>(true, true, true, global0.x)), !global0.x), arg_2), ~(~(~(~var_0.c))), !vec2<bool>(any(vec3<bool>(true, global0.x, true)) & true, true));
    var var_1 = Struct_4(vec2<bool>(false, (arg_0.a.x || arg_0.a.x) || select(all(vec3<bool>(false, global0.x, arg_0.a.x)), any(vec2<bool>(true, arg_0.a.x)), arg_2)), func_1(Struct_4(vec2<bool>(true, false), func_1(Struct_4(vec2<bool>(arg_0.a.x, var_0.b.x), Struct_3(arg_0.b.x, arg_1.x))))));
    let var_2 = Struct_3(~min(func_5(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(43893u, 11u)], 1869f, global3[_wgslsmith_index_u32(20170u, 11u)], arg_0.d.x), vec4<f32>(global3[_wgslsmith_index_u32(1u, 11u)], -935f, var_1.b.b, 220f))), min(1u, 28122u), 30903u).a, func_1(Struct_4(vec2<bool>(true, arg_2), var_1.b)).a), 381f);
    var var_3 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_1(!(!vec3<bool>(global0.x, global0.x, global0.x)), func_6(Struct_4(vec2<bool>(global0.x, global0.x), func_1(Struct_4(vec2<bool>(false, true), Struct_3(46940u, -1098f)))), false || all(vec4<bool>(global0.x, true, global0.x, global0.x)), global1[_wgslsmith_index_u32(7031u, 19u)]), 54712u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(774f * 1377f), -101f, global3[_wgslsmith_index_u32(~4294967295u, 11u)])))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(389f, 205f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 11u)]), 1307f))), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.b.x)), reverseBits(vec3<u32>(global2.x, global2.x, global2.x))), 11u)], global3[_wgslsmith_index_u32(0u, 11u)]))), !global0.x);
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    global3 = array<f32, 11>();
    global3 = array<f32, 11>();
    let var_1 = u_input.b.x;
    var_0 = func_7(Struct_1(vec3<bool>(!var_0.a.x, any(func_7(Struct_1(var_0.a, vec2<u32>(1u, var_1), var_1, vec4<f32>(var_0.d.x, 576f, global3[_wgslsmith_index_u32(1470u, 11u)], -1245f)), vec2<f32>(-1521f, 606f), false).a.xy), select(true, any(vec4<bool>(var_0.a.x, false, global0.x, true)), true)), ~firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.b, var_0.b)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 1u, 4294967295u), vec3<u32>(17871u, u_input.b.x, var_1) << (vec3<u32>(var_1, var_1, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-570f, _wgslsmith_f_op_f32(abs(var_0.d.x)), global3[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_div_f32(1415f, global3[_wgslsmith_index_u32(global2.x, 11u)])) + _wgslsmith_f_op_vec4_f32(min(var_0.d, _wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(var_0.d.x, 244f, 740f, 1255f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(644f, 1105f), var_0.d.yz), true);
    var var_2 = ~firstTrailingBit(abs(~u_input.d.x));
    let var_3 = Struct_3(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(759f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(46220u, 11u)] - var_0.d.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-((-u_input.e & u_input.e) ^ reverseBits(vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 19u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]))), _wgslsmith_f_op_vec3_f32(sign(var_0.d.xxy)));
}

