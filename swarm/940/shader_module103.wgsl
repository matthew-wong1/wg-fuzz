struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(-1i, -1i, -45064i, -20017i);

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 23>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(global1.d - global1.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f)), global1.d, global1.d))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-861f, -575f, global1.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2205f, -719f, global1.d) * vec3<f32>(435f, -1154f, global1.d)), select(vec3<bool>(true, global3.x, true), vec3<bool>(true, false, global3.x), vec3<bool>(global3.x, global3.x, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1006f, global1.d, global1.d)))) * vec3<f32>(1000f, _wgslsmith_f_op_f32(round(global1.d)), global1.d)))));
    let var_2 = vec3<bool>(!all(!vec4<bool>(global3.x, global3.x, global3.x, true)), firstLeadingBit(global1.b.x) < 1i, global3.x);
    var var_3 = global2[_wgslsmith_index_u32(4294967295u | u_input.a, 23u)];
    global0 = array<i32, 4>();
    return vec2<bool>(any(!(!select(vec3<bool>(false, var_2.x, global3.x), var_2, global3.x))), any(select(!select(vec4<bool>(var_2.x, false, false, false), vec4<bool>(global3.x, global3.x, var_2.x, global3.x), vec4<bool>(false, true, true, var_2.x)), !(!vec4<bool>(global3.x, true, true, false)), true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> vec3<u32> {
    let var_0 = arg_0.a.xx;
    global2 = array<Struct_3, 23>();
    let var_1 = Struct_2(select(~min(vec4<u32>(var_0.x, 0u, 4294967295u, 1u), ~vec4<u32>(1u, u_input.a, 99197u, global1.a.x)), ~select(~vec4<u32>(12903u, global1.c, var_0.x, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 22043u, var_0.x, u_input.a), vec4<u32>(0u, u_input.a, 0u, 70130u)), vec4<bool>(global3.x, arg_2, true, false)), any(select(vec4<bool>(arg_2, false, arg_2, global3.x), !vec4<bool>(global3.x, arg_2, false, arg_2), !vec4<bool>(true, true, global3.x, global3.x)))), Struct_1(global1.a << (vec3<u32>(27742u, 4294967295u, 32923u) % vec3<u32>(32u)), arg_0.b, ~(~_wgslsmith_add_u32(26421u, 28574u)), _wgslsmith_f_op_f32(-arg_1.x), arg_0.e));
    var var_2 = select(vec3<bool>(arg_2, any(func_3()) && false, false), !vec3<bool>(!global3.x, true, all(!vec4<bool>(global3.x, false, false, global3.x))), select(select(!vec3<bool>(global3.x, global3.x, global3.x), select(!vec3<bool>(arg_2, false, true), select(vec3<bool>(global3.x, arg_2, global3.x), vec3<bool>(arg_2, false, global3.x), arg_2), true), !select(vec3<bool>(global3.x, false, true), vec3<bool>(false, true, false), false)), select(!vec3<bool>(global3.x, true, global3.x), select(vec3<bool>(true, global3.x, true), vec3<bool>(true, true, arg_2), false), any(select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(false, arg_2, false, arg_2), false))), arg_2));
    let var_3 = var_1;
    return ~max(arg_0.e, max(firstTrailingBit(var_1.b.a), vec3<u32>(31240u, _wgslsmith_dot_vec3_u32(var_3.b.e, arg_0.a), _wgslsmith_div_u32(arg_0.a.x, var_0.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = min(~vec2<u32>(_wgslsmith_mod_u32(u_input.a, 0u), 42219u), ~abs(vec2<u32>(11205u, 52059u)));
    var var_1 = Struct_3(vec3<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(0u, var_0.x)), 4294967295u, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-763f))))), 4294967295u);
    let var_2 = select(vec3<bool>(global3.x, -27231i > firstTrailingBit(-2147483647i), true), vec3<bool>(any(vec3<bool>(!global3.x, global3.x, all(vec4<bool>(global3.x, global3.x, true, true)))), global3.x, false), select(!select(select(vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, true, global3.x)), !vec3<bool>(true, global3.x, true), true), !select(!vec3<bool>(global3.x, true, true), !vec3<bool>(global3.x, false, global3.x), true), global3.x));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(44220u, 18534u), 23u)];
    let var_4 = ~_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_3.b.x, i32(-1i) * -57315i), 25218i), global0[_wgslsmith_index_u32(70864u, 4u)] << (var_0.x % 32u));
    return Struct_1(~(~_wgslsmith_mult_vec3_u32(~arg_3.e, reverseBits(var_1.a))), -(min(global1.b, vec4<i32>(global0[_wgslsmith_index_u32(0u, 4u)], -18116i, global1.b.x, var_4)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_0.x, 0u), vec4<u32>(u_input.a, 1u, 10808u, 1u)) % vec4<u32>(32u))) << (~vec4<u32>(_wgslsmith_div_u32(12099u, 48794u), 1u >> (var_0.x % 32u), u_input.a >> (arg_3.c % 32u), _wgslsmith_mod_u32(4294967295u, 49081u)) % vec4<u32>(32u)), 1u, _wgslsmith_f_op_f32(-1150f + arg_1), arg_3.a | (~vec3<u32>(7598u, var_0.x, 64992u) & global1.a));
}

fn func_1() -> i32 {
    var var_0 = select(global3.yy, select(!select(global3.yy, vec2<bool>(global3.x, global3.x), global3.x), !(!(!vec2<bool>(global3.x, global3.x))), select(!vec2<bool>(global3.x, global3.x), vec2<bool>(global1.b.x < 50849i, global3.x), !global3.zz)), select(!select(select(vec2<bool>(false, true), global3.yz, global3.yy), vec2<bool>(global3.x, false), vec2<bool>(global3.x, global3.x)), global3.yx, vec2<bool>(!(u_input.a < u_input.a), any(!vec4<bool>(false, global3.x, false, true)))));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + 129f)), global1.d)), global1.d, global1.d, Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.x | 18831u, 2854u >> (1u % 32u), u_input.a), ~func_2(Struct_1(global1.e, vec4<i32>(2147483647i, 1i, global1.b.x, global0[_wgslsmith_index_u32(u_input.a, 4u)]), global1.c, global1.d, global1.a), vec4<f32>(global1.d, 893f, global1.d, global1.d), global3.x)), firstTrailingBit(global1.b), global1.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.d * global1.d))), firstLeadingBit(~func_2(Struct_1(vec3<u32>(global1.e.x, 0u, 43726u), global1.b, global1.a.x, -1929f, global1.e), vec4<f32>(-138f, global1.d, -387f, global1.d), false))));
    var var_2 = 73488u;
    let var_3 = global1.a.x;
    var var_4 = var_1;
    return -33449i;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_3(abs(global1.e), _wgslsmith_f_op_f32(exp2(global1.d)), _wgslsmith_sub_u32(func_2(arg_1, vec4<f32>(global1.d, 414f, -107f, -851f), global3.x || arg_0).x ^ arg_1.e.x, _wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(arg_1.c, arg_2.x, 27473u, arg_2.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, 1u, 1u, arg_2.x) >> (vec4<u32>(u_input.a, 14484u, 0u, 37340u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 65843u, arg_2.x, 59649u), vec4<u32>(arg_2.x, arg_1.e.x, 0u, 60059u), vec4<u32>(20938u, global1.a.x, 51890u, 14186u))))));
    var_0 = global2[_wgslsmith_index_u32(1u, 23u)];
    global1 = func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, -1091f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, global1.d)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, global1.d) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, -402f), vec2<f32>(-1377f, var_0.b)))), vec2<bool>(global3.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d * var_0.b) - global1.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d - 1088f)))), _wgslsmith_f_op_f32(310f - arg_1.d), func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, _wgslsmith_div_f32(global1.d, -736f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))), -1090f, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(348f, 684f))), -1537f, -1585f, func_4(vec2<f32>(1000f, arg_1.d), global1.d, _wgslsmith_f_op_f32(global1.d - arg_1.d), Struct_1(global1.a, arg_1.b, 43148u, 716f, vec3<u32>(0u, arg_1.a.x, arg_2.x))))));
    global2 = array<Struct_3, 23>();
    global2 = array<Struct_3, 23>();
    return func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d, global1.d), vec2<f32>(global1.d, -491f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(111f, arg_1.d), vec2<f32>(542f, global1.d), arg_0))))))), -208f, _wgslsmith_f_op_f32(-var_0.b), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(u_input.a | u_input.a) >= 0u, Struct_1(global1.a | global1.a, -vec4<i32>(func_1(), global1.b.x, global0[_wgslsmith_index_u32(global1.c, 4u)] | 1i, 37291i), firstTrailingBit(_wgslsmith_mod_u32(128490u, u_input.a)), global1.d, ~(global1.a | global1.a)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global1.e >> (vec3<u32>(global1.a.x, 1u, u_input.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.c, 0u, global1.e.x), vec3<u32>(52055u, 30367u, 1u))), vec3<u32>(global1.e.x, func_2(Struct_1(vec3<u32>(global1.a.x, 1u, 8924u), vec4<i32>(-26278i, 0i, global1.b.x, global1.b.x), global1.c, 834f, vec3<u32>(28839u, u_input.a, global1.a.x)), vec4<f32>(826f, 588f, -796f, global1.d), global3.x).x, 21041u)), global1.e.x));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.d, 931f), vec2<f32>(var_0.d, var_0.d), global3.x))))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(865f, -388f) + vec2<f32>(global1.d, 357f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-365f, var_0.d) - vec2<f32>(var_0.d, -625f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.d, 1143f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, 1911f)))), 1f, global1.d, func_4(vec2<f32>(_wgslsmith_div_f32(global1.d, 828f), _wgslsmith_f_op_f32(-var_0.d)), global1.d, var_0.d, func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, var_0.d))), 864f, var_0.d, func_4(vec2<f32>(global1.d, global1.d), var_0.d, var_0.d, var_0)))).d, _wgslsmith_f_op_f32(min(-281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + var_0.d) * -1000f) - _wgslsmith_f_op_f32(floor(global1.d))))), Struct_1(vec3<u32>(~(~56322u), u_input.a, global1.e.x), global1.b, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1465f, _wgslsmith_f_op_f32(sign(-1000f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.d)))), vec3<u32>(53221u, u_input.a, 0u))).b.zw;
    let var_2 = func_3().x;
    global3 = vec3<bool>(var_2, false, global3.x);
    global3 = vec3<bool>(!global3.x, !(_wgslsmith_add_u32(_wgslsmith_add_u32(global1.c, var_0.e.x), ~global1.e.x) != _wgslsmith_add_u32(52294u, 36407u)), !(!var_2));
    let var_3 = !(!(!select(vec3<bool>(false, false, var_2), select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, true, false), var_2), any(vec4<bool>(global3.x, true, true, false)))));
    let var_4 = var_0.a.x;
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(floor(global1.d)), global1.d, _wgslsmith_f_op_f32(global1.d - var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-select(var_1.x << (43542u % 32u), countOneBits(global1.b.x), true), reverseBits(var_0.b.x), -25211i, ~global1.b.x), vec4<i32>(global1.b.x, select(~(-3647i), ~var_1.x, true), -_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0.b.x, 1i), -46748i, 1i), global1.b.x), vec2<u32>(1u, var_4), ~global1.e.x, -163f);
}

