struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_2 = Struct_2(true, Struct_1(vec3<f32>(718f, 340f, 957f)));

var<private> global2: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-1556f, -697f, -1507f), vec3<f32>(-861f, -304f, 352f), vec3<f32>(1180f, -2364f, -488f), vec3<f32>(-1474f, 781f, 274f), vec3<f32>(884f, 890f, -427f), vec3<f32>(250f, 141f, -1412f), vec3<f32>(285f, 2111f, 2059f), vec3<f32>(1000f, 1547f, -202f), vec3<f32>(-2387f, -146f, 2143f), vec3<f32>(-1585f, 1000f, -714f), vec3<f32>(552f, 1478f, -538f), vec3<f32>(2318f, 366f, -1371f), vec3<f32>(-563f, 207f, -564f), vec3<f32>(-233f, 439f, 1694f), vec3<f32>(895f, 346f, 1000f), vec3<f32>(1284f, 222f, 685f), vec3<f32>(1859f, 690f, 1000f), vec3<f32>(1781f, 899f, -480f), vec3<f32>(-1386f, -134f, 301f), vec3<f32>(2025f, 1103f, -1000f), vec3<f32>(1350f, 589f, -1012f), vec3<f32>(-1901f, 869f, -547f), vec3<f32>(-764f, -824f, 751f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = select(!(!vec4<bool>(arg_0.x, false, any(vec4<bool>(arg_0.x, global1.a, false, false)), select(true, false, arg_0.x))), vec4<bool>(any(select(arg_0.yz, !arg_0.yz, !vec2<bool>(arg_0.x, false))), -25550i != (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 69277i, -314i, -10340i)) << (~76892u % 32u)), arg_0.x, arg_0.x), vec4<bool>(any(select(select(arg_0, arg_0, arg_0), arg_0, global1.a != false)), !(any(vec3<bool>(true, true, global1.a)) | !global1.a), any(vec4<bool>(global1.a || true, arg_0.x, false, true)), global1.a));
    global2 = array<vec3<f32>, 23>();
    var_0 = select(vec4<bool>(arg_0.x, any(select(arg_0.yy, vec2<bool>(arg_0.x, arg_0.x), true)) | var_0.x, true, !arg_0.x), vec4<bool>(true, any(select(!vec4<bool>(false, global1.a, arg_0.x, global1.a), !vec4<bool>(global1.a, false, true, true), true)), global1.a, !(!any(vec4<bool>(true, true, true, true)))), !vec4<bool>(all(!vec4<bool>(true, false, global1.a, false)), all(var_0.zy), all(arg_0.zy) || select(var_0.x, false, true), (global1.b.a.x <= 400f) || false));
    var var_1 = global1.a;
    var_0 = vec4<bool>(true, !arg_0.x, all(select(select(vec2<bool>(true, false), vec2<bool>(global1.a, true), any(vec4<bool>(var_0.x, global1.a, arg_0.x, true))), var_0.xz, true)), !all(vec2<bool>(all(vec2<bool>(false, var_0.x)), all(arg_0))));
    return select(var_0.yxy, var_0.yxz, global1.a || !(!(!var_0.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_5(-(-max(vec4<i32>(arg_0.x, arg_0.x, -2147483647i, arg_0.x), vec4<i32>(2147483647i, arg_1, arg_0.x, 77337i)) | (abs(vec4<i32>(8836i, -6150i, -1i, u_input.a)) & select(vec4<i32>(1391i, arg_1, 2147483647i, u_input.a), vec4<i32>(arg_1, u_input.a, u_input.a, -2147483647i), vec4<bool>(global1.a, false, false, global1.a)))), !select(func_3(select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(true, global1.a, false), vec3<bool>(global1.a, global1.a, global1.a))), select(func_3(vec3<bool>(true, global1.a, global1.a)), select(vec3<bool>(global1.a, true, false), vec3<bool>(global1.a, global1.a, global1.a), false), !vec3<bool>(false, false, global1.a)), !vec3<bool>(global1.a, global1.a, global1.a)), 1000f);
    var var_1 = Struct_4(Struct_2(false, global1.b), global1.b, !select(select(select(vec4<bool>(var_0.b.x, true, false, global1.a), vec4<bool>(var_0.b.x, false, var_0.b.x, true), true), vec4<bool>(var_0.b.x, true, var_0.b.x, false), true), vec4<bool>(true, true, -1i > arg_0.x, false), true), Struct_2(false, global1.b));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~60506u, ~_wgslsmith_sub_u32(7578u, 0u), 76466u), vec3<u32>(~countOneBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(17977u, 54642u), _wgslsmith_div_u32(76788u, 25643u)))) >= max(_wgslsmith_mult_u32(1u, ~(~1508u)), _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, ~11274u), ~(~37136u)));
    let var_3 = var_0.a.yzx;
    let var_4 = Struct_3(!var_1.d.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.b.a.x - global1.b.a.x), _wgslsmith_f_op_f32(global1.b.a.x * 1141f)), -242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d.b.a.x)) - _wgslsmith_f_op_f32(trunc(global1.b.a.x)))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b.a.x, var_0.c, var_0.c) - var_1.d.b.a))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a.x, var_0.c, global1.b.a.x) + vec3<f32>(var_1.a.b.a.x, -941f, 1438f)), _wgslsmith_f_op_vec3_f32(-global1.b.a)))));
    return Struct_3(all(!vec4<bool>(false, var_0.a.x == 1i, true, any(vec2<bool>(var_0.b.x, true)))), _wgslsmith_f_op_vec3_f32(var_1.a.b.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(929f + 998f), _wgslsmith_f_op_f32(select(-347f, 1571f, true)), _wgslsmith_f_op_f32(var_0.c - -1707f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -119f, global1.b.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -1000f, global1.b.a.x) - var_1.d.b.a)))), var_1.a.b);
}

fn func_1() -> Struct_2 {
    global2 = array<vec3<f32>, 23>();
    let var_0 = func_2(vec2<i32>(u_input.a, firstTrailingBit(u_input.a)), ~u_input.a);
    return Struct_2(false, func_2(vec2<i32>(select(1i, 36201i & u_input.a, !global1.a), 1i), 12047i).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(1u, _wgslsmith_mod_u32(abs(~(~51378u)), firstLeadingBit(firstTrailingBit(max(1u, 86610u)))), 14747u, 1u);
    global1 = func_1();
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(min(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, 15806i), vec4<i32>(u_input.a, -1313i, 33931i, -6250i)), vec4<i32>(firstTrailingBit(1i), u_input.a, ~u_input.a, u_input.a)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -24353i, u_input.a, u_input.a), abs(vec4<i32>(-2147483647i, u_input.a, -11251i, 2147483647i)), vec4<i32>(1i, u_input.a, -58986i, u_input.a) ^ vec4<i32>(5057i, 2789i, 0i, -7680i))), ~countOneBits(reverseBits(max(u_input.a, 1i))));
    let var_2 = func_2(~var_1, 4955i);
    var var_3 = _wgslsmith_sub_vec2_u32(abs(vec2<u32>(abs(var_0.x | var_0.x), var_0.x)), vec2<u32>(93676u, _wgslsmith_mod_u32(4294967295u, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec2_u32(abs(var_0.yx) & _wgslsmith_add_vec2_u32(var_0.yz, vec2<u32>(var_3.x, 327u)), var_0.ww), var_3.x));
}

