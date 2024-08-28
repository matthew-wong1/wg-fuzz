struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-30336i, 26205i), -1091i, vec4<u32>(0u, 3949u, 1u, 48429u), vec2<bool>(false, true));

var<private> global1: vec4<f32> = vec4<f32>(-2703f, 1287f, -971f, 2201f);

var<private> global2: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global3: array<vec4<bool>, 23>;

var<private> global4: Struct_4 = Struct_4(Struct_2(0i, true, -1i), true, Struct_3(vec4<bool>(false, false, false, true), Struct_1(vec2<i32>(-39051i, -1i), 1i, vec4<u32>(5446u, 0u, 22627u, 0u), vec2<bool>(false, false)), true, vec2<i32>(0i, 11241i)), vec3<f32>(321f, 260f, -403f), 802f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = Struct_4(global4.a, all(!vec4<bool>(false, any(vec4<bool>(global0.d.x, true, global0.d.x, true)), !global4.b, global4.b)), global4.c, vec3<f32>(-3233f, global4.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x))), global4.d.x);
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.c.b.c, select(vec4<u32>(global4.c.b.c.x, 4294967295u, 38971u, 64816u), vec4<u32>(53826u, global4.c.b.c.x, 81780u, 0u), global3[_wgslsmith_index_u32(global0.c.x << (1u % 32u), 23u)])) & firstLeadingBit(var_0.c.b.c), vec4<u32>(min(_wgslsmith_dot_vec4_u32(abs(global4.c.b.c), ~global0.c), max(0u, ~var_0.c.b.c.x)), max(25407u, select(1u, global4.c.b.c.x, true) << (firstLeadingBit(global4.c.b.c.x) % 32u)), countOneBits(~global4.c.b.c.x), ~(global0.c.x >> (~1u % 32u))));
    let var_2 = countOneBits(vec4<u32>(1u, _wgslsmith_mod_u32(abs(var_0.c.b.c.x) & _wgslsmith_mult_u32(global4.c.b.c.x, 1u), _wgslsmith_sub_u32(1u, ~var_0.c.b.c.x)), global0.c.x, ~(~var_0.c.b.c.x)));
    global4 = Struct_4(Struct_2(global4.a.a, true && global0.d.x, _wgslsmith_mult_i32(-(~global4.c.d.x), ~6320i)), all(global4.c.a), global4.c, vec3<f32>(-262f, -202f, 1766f), var_0.e);
    let var_3 = global0.a.x;
    return global0.d.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: f32) -> Struct_2 {
    var var_0 = select(select(!select(arg_1.c.a.yw, vec2<bool>(true, true), true), vec2<bool>(true | func_3(), false), global0.d), vec2<bool>(true, true), select(arg_2.c.b.d, select(select(select(vec2<bool>(arg_2.b, global0.d.x), vec2<bool>(true, global0.d.x), vec2<bool>(global0.d.x, false)), arg_2.c.a.xw, select(global0.d, vec2<bool>(false, arg_1.c.c), vec2<bool>(arg_1.a.b, true))), arg_2.c.a.xw, arg_2.c.b.d), !(!global0.d.x)));
    var_0 = select(!select(vec2<bool>(true, arg_1.e >= global1.x), !(!vec2<bool>(global0.d.x, var_0.x)), true), !vec2<bool>(any(arg_2.c.a.yyx), false), !arg_1.c.b.d);
    global2 = array<vec3<bool>, 29>();
    global4 = arg_1;
    var var_1 = Struct_4(Struct_2(_wgslsmith_mult_i32(47472i, _wgslsmith_add_i32(2147483647i | global4.a.a, _wgslsmith_clamp_i32(-1i, -1i, arg_1.a.a))), any(!(!vec2<bool>(arg_1.c.c, arg_1.a.b))), _wgslsmith_add_i32(reverseBits(arg_2.c.b.a.x ^ arg_1.c.d.x), ~(u_input.a | 1645i))), false, Struct_3(select(select(vec4<bool>(var_0.x, arg_2.a.b, true, global0.d.x), !global3[_wgslsmith_index_u32(4294967295u, 23u)], arg_2.a.b || global0.d.x), select(vec4<bool>(true, false, false, arg_2.a.b), !vec4<bool>(arg_2.a.b, true, arg_1.b, arg_2.c.b.d.x), select(arg_1.c.a, global3[_wgslsmith_index_u32(global4.c.b.c.x, 23u)], vec4<bool>(arg_1.c.c, false, global0.d.x, arg_2.b))), vec4<bool>(arg_2.a.b, global4.a.b, !var_0.x, func_3())), Struct_1(vec2<i32>(-1i) * -vec2<i32>(-19182i, -2147483647i), u_input.d, ~countOneBits(vec4<u32>(arg_2.c.b.c.x, 1u, global4.c.b.c.x, 4294967295u)), vec2<bool>(true, true)), global4.c.c, vec2<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -13486i, global4.c.d.x), vec3<i32>(global4.c.b.b, u_input.b.x, arg_2.a.a)), u_input.c.x), ~(~u_input.c.x))), global1.xww, _wgslsmith_f_op_f32(f32(-1f) * -1244f));
    return global4.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> i32 {
    global2 = array<vec3<bool>, 29>();
    let var_0 = true;
    global1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global4.e, arg_1.e)), global4.d.x) + arg_1.e), _wgslsmith_div_f32(-526f, 1419f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x)))));
    var var_1 = arg_1;
    var var_2 = ~arg_0.c;
    return var_1.a.c;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, -1507f, -595f, 382f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1446f), _wgslsmith_f_op_f32(-global4.e), global4.e, _wgslsmith_div_f32(global1.x, 150f)), vec4<bool>(func_3(), true, false, global4.c.b.c.x <= 66509u)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(935f, global1.x, -350f, -1610f)) - vec4<f32>(_wgslsmith_f_op_f32(-668f + global4.d.x), _wgslsmith_f_op_f32(961f + global1.x), global4.d.x, -906f))));
    global1 = vec4<f32>(-1580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global4.d.x, _wgslsmith_f_op_f32(floor(304f)))), -283f, select(true, true, global0.c.x >= global0.c.x))) - _wgslsmith_f_op_f32(-global4.e)), var_0.x, _wgslsmith_f_op_f32(1028f - _wgslsmith_f_op_f32(-831f - -1000f)));
    let var_1 = ~vec4<u32>(1u, ~67051u, ~(~(~4294967295u)), ~(arg_0.c.x >> ((1u & global4.c.b.c.x) % 32u)));
    let var_2 = Struct_1(vec2<i32>(reverseBits(abs(-13358i)), u_input.d), 1i, global4.c.b.c, global4.c.a.yw);
    global3 = array<vec4<bool>, 23>();
    return _wgslsmith_f_op_f32(global4.e * _wgslsmith_f_op_f32(var_0.x * global1.x));
}

fn func_1() -> f32 {
    global1 = vec4<f32>(664f, _wgslsmith_f_op_f32(func_5(Struct_1(global0.a & u_input.b.yx, func_4(func_2(vec2<f32>(-597f, -1396f), Struct_4(Struct_2(u_input.c.x, false, 23222i), global4.b, Struct_3(global4.c.a, global4.c.b, global4.a.b, global4.c.d), vec3<f32>(global4.e, global4.e, global4.e), global1.x), Struct_4(Struct_2(5505i, false, global0.a.x), true, Struct_3(vec4<bool>(global4.a.b, global4.b, false, global4.b), Struct_1(vec2<i32>(global0.b, 0i), 0i, global0.c, global0.d), global0.d.x, global0.a), global4.d, -1998f), 1195f), Struct_4(Struct_2(global0.a.x, global0.d.x, 1i), global4.a.b, global4.c, vec3<f32>(global4.d.x, 128f, global1.x), global1.x)), ~vec4<u32>(1804u, 43337u, global4.c.b.c.x, global0.c.x) ^ reverseBits(vec4<u32>(33379u, global0.c.x, global4.c.b.c.x, 32532u)), !select(vec2<bool>(global4.a.b, false), global0.d, global4.b)), vec2<bool>(global0.d.x, func_2(global4.d.zz, Struct_4(Struct_2(-23409i, global0.d.x, 0i), global4.b, Struct_3(global3[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(global4.c.d, 0i, vec4<u32>(3216u, global0.c.x, 4294967295u, 24084u), vec2<bool>(true, global0.d.x)), global4.a.b, u_input.b.xx), global4.d, 1000f), Struct_4(global4.a, false, Struct_3(global4.c.a, Struct_1(global4.c.b.a, u_input.a, global4.c.b.c, vec2<bool>(global0.d.x, global4.a.b)), global4.c.c, global4.c.d), vec3<f32>(global1.x, global4.e, 221f), global1.x), 125f).b), u_input.b.x)), global4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(Struct_1(vec2<i32>(2147483647i, u_input.c.x), global4.c.b.a.x, global0.c, vec2<bool>(false, false)), global4.c.a.xw, 57357i)), _wgslsmith_f_op_f32(abs(644f))) * 1f)));
    let var_0 = u_input.b.zy;
    var var_1 = global4.c;
    var var_2 = reverseBits(global4.c.b.c);
    global3 = array<vec4<bool>, 23>();
    return 1537f;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global4.c;
    var var_1 = arg_3.a;
    return global4.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 23>();
    global1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-757f, _wgslsmith_div_f32(global4.e, global1.x), _wgslsmith_f_op_f32(min(119f, global1.x)), _wgslsmith_f_op_f32(global1.x - 1000f))));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - 281f))))), -650f, -491f, -293f));
    let var_0 = func_6(global4.a, -1000f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-188f, _wgslsmith_div_f32(-927f, -138f)), _wgslsmith_f_op_f32(-global4.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) + _wgslsmith_f_op_f32(1551f + global1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1078f, -1984f, global1.x)))))), Struct_1(u_input.c.xx, 0i, ~abs(vec4<u32>(global0.c.x, 13061u, 6451u, 21883u) ^ global0.c), !(!(!vec2<bool>(false, global0.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + _wgslsmith_f_op_f32(exp2(global4.d.x))))), -746f), 0u, vec4<u32>(var_0.c.x, var_0.c.x, _wgslsmith_div_u32(global0.c.x, select(var_0.c.x, max(global4.c.b.c.x, global0.c.x), true)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(global4.c.b.c.x, 62023u)), vec2<u32>(var_0.c.x, 17727u)), global4.c.b.c.wz)), min(-2147483647i, 0i), _wgslsmith_add_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.x, global0.c.x, global0.c.x, 60925u), vec4<u32>(global4.c.b.c.x, var_0.c.x, global0.c.x, 29796u)), vec4<u32>(_wgslsmith_div_u32(global0.c.x, 0u), _wgslsmith_div_u32(1u, 13121u), global0.c.x, reverseBits(global0.c.x))), var_0.c));
}

