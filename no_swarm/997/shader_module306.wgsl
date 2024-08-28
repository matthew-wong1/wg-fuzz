struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_4,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31558u;

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-1416f, 1326f, 868f, 224f), 7962u, vec2<u32>(0u, 1u), vec4<f32>(491f, -930f, -1160f, 281f), vec4<bool>(false, false, true, true));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_2(false | global3.e.x, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(-130f, global2.d.x)), _wgslsmith_f_op_f32(min(927f, global2.d.x)), -266f, global2.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-725f, 1000f, global3.d.x, global2.a.x) + vec4<f32>(-203f, 1543f, global2.a.x, global2.d.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, global3.d.x, -1064f, global3.d.x))), true)), 4294967295u, global2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.d)), global2.e), select(select(vec4<bool>(all(global2.e), any(vec4<bool>(global2.e.x, global3.e.x, false, global3.e.x)), arg_1.x <= arg_1.x, true), global2.e, global3.e.x), select(vec4<bool>(arg_0, any(global2.e.yyy), any(global3.e.zw), true), select(global3.e, select(vec4<bool>(global2.e.x, global3.e.x, global3.e.x, global2.e.x), vec4<bool>(global3.e.x, global2.e.x, true, global3.e.x), global3.e.x), !vec4<bool>(true, true, global2.e.x, true)), any(!vec3<bool>(true, global3.e.x, global2.e.x))), (i32(-1i) * -arg_1.x) >= -arg_1.x));
    var var_1 = true;
    let var_2 = global2.d.x;
    var var_3 = vec3<bool>(!all(global2.e), true, all(select(!(!global2.e.yyz), var_0.c.ywx, vec3<bool>(global2.e.x, true, false))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(step(-1408f, global3.a.x))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-557f)), var_0.b.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.d.x), global3.d.x))));
    return arg_1.x >> (~(~4294967295u) % 32u);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = global2.e.xyy;
    global1 = array<vec3<f32>, 5>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1026f + arg_0.x), _wgslsmith_f_op_f32(1111f + global3.d.x), _wgslsmith_f_op_f32(818f * -432f), _wgslsmith_f_op_f32(arg_0.x + 434f))), global2.e)), countOneBits(abs(76522u) & global2.b), global2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global3.d, global2.a, vec4<bool>(false, true, global2.e.x, var_0.x))) - vec4<f32>(global2.d.x, global2.a.x, 1075f, global3.d.x)), _wgslsmith_f_op_vec4_f32(ceil(global3.d))))), select(select(select(select(vec4<bool>(global3.e.x, global2.e.x, false, false), vec4<bool>(true, var_0.x, false, false), true), !global2.e, !global2.e.x), vec4<bool>(true, !global2.e.x, any(global3.e.wzz), true), !(arg_1.x == arg_1.x)), global3.e, select(vec4<bool>(all(global2.e.yxz), !global3.e.x, global2.e.x || global3.e.x, global3.a.x != 1919f), global2.e, !(global2.b > global3.b))));
    return global3.a.x;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.d.x - global2.d.x), global2.a.x, true)), global3.a.x, true));
    var var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.d.xw), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global3.a.zx - global3.d.xy), global3.a.yx))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global2.d.x), global3.d.x), global2.d.wx, _wgslsmith_f_op_f32(-601f * global3.a.x) < -625f))), vec2<i32>(_wgslsmith_sub_i32(countOneBits(_wgslsmith_mult_i32(0i, -2147483647i)), 0i & _wgslsmith_dot_vec2_i32(vec2<i32>(37767i, -1i), vec2<i32>(1i, -2147483647i))), _wgslsmith_sub_i32(-7063i, select(func_3(false, vec3<i32>(-38663i, 1i, 72235i)), -18370i, global2.e.x))), vec2<i32>(-1i, _wgslsmith_div_i32(firstLeadingBit(1i), 24185i))));
    var var_2 = _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(abs(~min(4294967295u, 80264u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(1658u, 0u)), select(u_input.a.zx, vec2<u32>(u_input.a.x, 1u), vec2<bool>(global3.e.x, global3.e.x))), u_input.a.yy), ~u_input.a.x & global3.c.x));
    let var_3 = !global2.e.wx;
    var var_4 = vec2<f32>(global3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -381f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.a.x))))));
    return Struct_4(_wgslsmith_div_vec4_i32(-firstLeadingBit(vec4<i32>(-25276i, -28399i, -3767i, -1i)), ~_wgslsmith_add_vec4_i32(~vec4<i32>(1i, -55830i, -16857i, -1i), firstTrailingBit(vec4<i32>(11582i, 2147483647i, 1i, -28433i)))));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>) -> i32 {
    global0 = u_input.a.x;
    let var_0 = _wgslsmith_div_f32(185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d.x)))));
    global1 = array<vec3<f32>, 5>();
    var var_1 = _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_1.a.yzz), vec3<i32>(arg_1.a.x, -1230i, _wgslsmith_mult_i32(arg_1.a.x, 0i)));
    global1 = array<vec3<f32>, 5>();
    return arg_1.a.x;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = true;
    var var_1 = ~vec4<i32>(15420i, 11224i, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - 283f), func_2(), global2.e.xy), _wgslsmith_add_i32(~(~(-36681i)), _wgslsmith_sub_i32(1i, func_5(137f, Struct_4(vec4<i32>(-2147483647i, -11810i, -6848i, 2147483647i)), vec2<bool>(global3.e.x, false)))));
    global1 = array<vec3<f32>, 5>();
    var_1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(-50497i), _wgslsmith_dot_vec2_i32(var_1.wz, var_1.wx), ~var_1.x), func_2().a.yxx), 38058i), var_1.x, var_1.x, var_1.x);
    var var_2 = func_2();
    return global3.e.x;
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(global3.a)), global2.b << ((((global2.c.x | arg_3) & (global3.c.x ^ 4294967295u)) & (u_input.a.x << (~u_input.a.x % 32u))) % 32u), global2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-249f, global2.d.x, -809f, -1406f) * vec4<f32>(global3.d.x, arg_0, 1180f, global2.a.x)), _wgslsmith_f_op_vec4_f32(global2.a * global3.d))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1193f, _wgslsmith_f_op_f32(f32(-1f) * -941f), global3.d.x))), global2.e);
    global1 = array<vec3<f32>, 5>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(global2.d.x, func_1(vec2<u32>(min(~1u, 36770u), countOneBits(~1u))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(2147483647i, -6517i, -1i)), select(vec3<i32>(34728i, -57760i, 0i), vec3<i32>(8628i, 0i, -18640i), global2.e.zwz)), -(~vec3<i32>(0i, 0i, -1i))) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(~(~(~u_input.a)), u_input.a));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(global3.a)), 1u, reverseBits(~(~(~vec2<u32>(global3.c.x, global3.c.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -344f), global2.d.x, global2.d.x))), global2.e);
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global3.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(0u), global3.b), ~global2.c | (~global3.c ^ _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(global3.b, global2.c.x)))), vec2<u32>(global3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, ~4294967295u, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(13920u, global2.b), global2.c)), max(vec4<u32>(1u, global3.b, global2.b, 1u) & vec4<u32>(43250u, 34756u, 5946u, 1u), vec4<u32>(u_input.a.x, global2.c.x, u_input.a.x, 37474u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.a - global3.a)) + _wgslsmith_f_op_vec4_f32(-global2.d)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1725f, -1161f, global3.a.x, global3.d.x) * global3.d)))))), vec4<bool>(true, true, global3.e.x, !global3.e.x));
    let var_0 = func_2();
    var var_1 = 2147483647i;
    let var_2 = global3.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, func_3(all(vec2<bool>(global3.e.x, true)), vec3<i32>(0i, var_0.a.x, -6423i) & var_0.a.wxw) ^ ~(-2147483647i), ~(~(~var_0.a.x)), -(var_0.a.x | 0i) << (~1u % 32u)), ~(~(~abs(vec4<i32>(24838i, -16123i, 19782i, 0i)))), -23878i);
}

