struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec2<bool>(false, false), 1000f, vec2<f32>(1063f, -243f));

var<private> global1: array<vec2<i32>, 10>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_1 = Struct_1(0u, vec2<bool>(true, true), 538f, vec2<f32>(195f, 780f));

var<private> global4: array<u32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = countOneBits(global1[_wgslsmith_index_u32(~48579u, 10u)]);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(global3.c * global3.c), global0.c, _wgslsmith_f_op_f32(global3.d.x * global0.c));
    var var_2 = 1u;
    let var_3 = select(select(!vec4<bool>(false, global0.b.x || true, any(global3.b), true), vec4<bool>(global2.x, false, false, false), !any(select(global0.b, vec2<bool>(false, false), global2.x))), select(select(vec4<bool>(any(vec2<bool>(global2.x, global0.b.x)), global0.b.x | true, any(vec4<bool>(false, false, global3.b.x, false)), global0.b.x), !(!vec4<bool>(true, global0.b.x, global2.x, true)), select(vec4<bool>(false, global2.x, global0.b.x, false), !vec4<bool>(true, false, false, global3.b.x), true)), !(!(!vec4<bool>(false, global3.b.x, false, global3.b.x))), select(!select(vec4<bool>(global2.x, global0.b.x, global3.b.x, true), vec4<bool>(false, global0.b.x, true, false), vec4<bool>(global2.x, true, global2.x, true)), vec4<bool>(select(true, global0.b.x, global0.b.x), all(vec2<bool>(global2.x, false)), true, global3.d.x <= -121f), select(vec4<bool>(global0.b.x, global2.x, true, false), select(vec4<bool>(true, false, global0.b.x, false), vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(false, global0.b.x, global3.b.x, global3.b.x)), true))), var_1.x > _wgslsmith_f_op_f32(step(global3.d.x, _wgslsmith_f_op_f32(step(global3.c, 2064f)))));
    var_0 = global1[_wgslsmith_index_u32(~4294967295u, 10u)];
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<bool>) -> u32 {
    return _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(1u, 20u)] ^ func_3(), _wgslsmith_clamp_u32(firstTrailingBit(~1u >> (global4[_wgslsmith_index_u32(21440u, 20u)] % 32u)), global3.a, (_wgslsmith_div_u32(arg_1.a, global4[_wgslsmith_index_u32(0u, 20u)]) ^ ~global3.a) ^ abs(4294967295u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = func_2(arg_2, arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.d.x)) + -757f))), !select(select(!vec3<bool>(false, global0.b.x, arg_2.b.x), !vec3<bool>(true, global2.x, true), global2.x), !select(vec3<bool>(true, arg_2.b.x, true), vec3<bool>(arg_2.b.x, true, true), global3.b.x), select(select(vec3<bool>(arg_1.b.x, global3.b.x, global2.x), vec3<bool>(true, false, arg_2.b.x), true), vec3<bool>(global0.b.x, arg_1.b.x, global0.b.x), true)));
    global4 = array<u32, 20>();
    var var_1 = Struct_1(arg_1.a, !arg_2.b, arg_1.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-654f, _wgslsmith_f_op_f32(arg_2.d.x + global3.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.d.x, -405f), -1400f))));
    var var_2 = ~abs(abs(arg_2.a >> (8994u % 32u)));
    let var_3 = 41669u;
    return global0.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    global4 = array<u32, 20>();
    global2 = arg_1.wy;
    var var_0 = arg_0.b.x;
    var var_1 = (~u_input.a.x ^ u_input.a.x) > u_input.a.x;
    let var_2 = Struct_1(firstLeadingBit(0u) | _wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], _wgslsmith_clamp_u32(60012u, 28829u, 0u) >> (1u % 32u)), arg_1.wx, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * 975f))), global0.d);
    return Struct_1(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(3824u, 20u)], ~10815u), select(func_4(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(max(21274u, 0u), 20u)], 20u)], Struct_1(global0.a, !vec2<bool>(global0.b.x, true), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, -207f) - global0.d)), Struct_1(~global4[_wgslsmith_index_u32(88749u, 20u)], select(vec2<bool>(var_2.b.x, false), vec2<bool>(arg_0.b.x, false), global0.b), arg_0.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, 470f))), func_2(var_2, var_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, -2188f, global3.c) * vec3<f32>(-894f, 1000f, 1000f)), arg_1.www)), select(vec2<bool>(!arg_0.b.x, false), vec2<bool>(!arg_0.b.x, !global3.b.x), (arg_1.x || true) || (arg_0.d.x < global0.c)), select(var_2.b, vec2<bool>(true, global0.b.x == false), false)), global3.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-748f, 224f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(788f, var_2.c)))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = 23972i;
    global1 = array<vec2<i32>, 10>();
    var var_1 = firstLeadingBit(vec3<i32>(u_input.a.x, var_0, -54856i));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * -522f)), -2306f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(105f, global0.c, 763f) + vec3<f32>(-2190f, 251f, -716f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, arg_0.d.x, arg_0.c)), arg_2.yyw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, -692f, -235f) - vec3<f32>(arg_0.d.x, global3.c, global0.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -228f, 253f)))))));
    global1 = array<vec2<i32>, 10>();
    return func_1(Struct_1(~firstTrailingBit(8028u >> (global4[_wgslsmith_index_u32(global0.a, 20u)] % 32u)), vec2<bool>(!global2.x, !arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x)))), global3.d), vec4<bool>(all(vec2<bool>(select(global3.b.x, global0.b.x, arg_2.x), all(global0.b))), false, arg_2.x, select(!any(vec4<bool>(global3.b.x, false, false, global2.x)), func_1(arg_0, vec4<bool>(true, true, true, global2.x), !global0.b.x).b.x, _wgslsmith_f_op_f32(1397f * arg_0.c) < _wgslsmith_f_op_f32(sign(-444f)))), func_4(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(3812u, 4294967295u, global3.a, 77158u)), vec4<u32>(0u, 4294967295u, global3.a, global0.a) | vec4<u32>(global0.a, 0u, global0.a, 60312u)), func_1(arg_0, !vec4<bool>(true, true, global3.b.x, global3.b.x), global0.b.x), arg_0, global4[_wgslsmith_index_u32(max(~arg_0.a, 74717u), 20u)]).x & arg_2.x);
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> bool {
    global1 = array<vec2<i32>, 10>();
    global0 = func_5(func_1(arg_2, !vec4<bool>(25721u < global4[_wgslsmith_index_u32(arg_2.a, 20u)], global2.x, global3.b.x, global0.b.x), global2.x), false, select(arg_0, vec4<bool>(false, true, arg_0.x, !all(arg_0)), !arg_2.b.x));
    let var_0 = arg_0;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b;
    let var_1 = Struct_1(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(global0.a, 1u), vec2<u32>(global0.a, 1u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(1u, 20u)], global3.a), vec2<u32>(global3.a, global3.a), vec2<u32>(global4[_wgslsmith_index_u32(78694u, 20u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(72066u, 20u)], 20u)]))), 20u)], abs(abs(~4294967295u))), vec2<bool>(false, func_6(!select(vec4<bool>(var_0.x, global2.x, true, global3.b.x), vec4<bool>(global0.b.x, var_0.x, false, global3.b.x), vec4<bool>(false, true, global2.x, false)), _wgslsmith_f_op_f32(-global0.c), func_5(func_1(Struct_1(71628u, vec2<bool>(false, global0.b.x), global3.c, vec2<f32>(2114f, global3.c)), vec4<bool>(true, true, false, false), false), 43593u > global0.a, select(vec4<bool>(true, false, true, global2.x), vec4<bool>(false, true, global2.x, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c, 1311f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.d.x)))), global3.d.x, global0.b.x)), global3.d);
    let var_2 = u_input.a.x;
    var var_3 = select(_wgslsmith_add_i32(4360i, 0i), -22588i, global0.b.x && !func_6(vec4<bool>(global3.b.x, global3.b.x, var_1.b.x, false), _wgslsmith_f_op_f32(min(-387f, var_1.c)), var_1, var_1.d.x));
    let var_4 = -2147483647i;
    global4 = array<u32, 20>();
    var var_5 = Struct_1(~(~var_1.a), global0.b, var_1.c, _wgslsmith_f_op_vec2_f32(func_1(var_1, !select(vec4<bool>(true, global2.x, false, true), vec4<bool>(true, true, false, var_1.b.x), true), true || func_1(Struct_1(20973u, vec2<bool>(true, true), -1000f, vec2<f32>(-249f, global0.d.x)), vec4<bool>(false, true, false, true), global0.b.x).b.x).d - global3.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global3.a, abs(_wgslsmith_mod_u32(690u, global3.a)) << (13829u % 32u), 1u), func_2(var_1, var_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, global3.c, var_1.d.x) + vec3<f32>(var_5.d.x, -1000f, global0.c)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.x, var_1.d.x, -200f), vec3<f32>(global3.d.x, 1160f, var_5.d.x), false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_5.c, global0.c)), true)), !vec3<bool>(false, func_5(var_1, true, vec4<bool>(false, true, var_5.b.x, var_1.b.x)).b.x, var_5.b.x)), _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(~38391u, 20u)], 0u) & var_1.a, vec4<u32>(~_wgslsmith_div_u32(18207u, global3.a), 28730u, 74474u, 34828u));
}

