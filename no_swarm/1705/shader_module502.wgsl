struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 31>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(-1i, -1i), 14152u), Struct_1(vec2<i32>(34851i, 2147483647i), 50217u), Struct_1(vec2<i32>(11483i, 1i), 57059u), Struct_1(vec2<i32>(1i, -1i), 4294967295u), Struct_1(vec2<i32>(-43442i, 3846i), 18771u), Struct_1(vec2<i32>(0i, 23421i), 1618u), Struct_1(vec2<i32>(2147483647i, 2147483647i), 100906u), Struct_1(vec2<i32>(0i, i32(-2147483648)), 93995u), Struct_1(vec2<i32>(45900i, 15187i), 61334u));

var<private> global3: array<u32, 1>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>) -> vec4<bool> {
    var var_0 = global2[_wgslsmith_index_u32(19295u, 9u)];
    let var_1 = Struct_1(var_0.a, ~_wgslsmith_mult_u32(~(~var_0.b), ~var_0.b << (u_input.a.x % 32u)));
    global4 = Struct_1(~var_0.a, 1u);
    global2 = array<Struct_1, 9>();
    var var_2 = 1i;
    return select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(false, false, !select(false, false, true), true), true), !(!vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), false)), vec4<bool>(select(true, true, false), all(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), true)), _wgslsmith_dot_vec3_i32(arg_2 << (u_input.d % vec3<u32>(32u)), vec3<i32>(-39918i, -1i, var_0.a.x)) <= -1i, all(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) + vec4<f32>(-1000f, -1249f, arg_1, -967f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -206f, -459f) + vec4<f32>(1589f, arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -398f, -631f, -2535f), vec4<f32>(arg_1, 1158f, 221f, arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-192f, arg_1, -1455f, arg_1) - vec4<f32>(arg_1, 2065f, arg_1, -838f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, -115f, arg_1, arg_1))))));
    let var_1 = Struct_1(~vec2<i32>(global4.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(global4.a.x, global4.a.x, global4.a.x, global4.a.x), vec4<i32>(-1i, -20316i, 15768i, 1i))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global4.b, 7468u | global4.b), 1u)]);
    var var_2 = Struct_1(var_1.a, reverseBits(firstTrailingBit(_wgslsmith_dot_vec4_u32(max(vec4<u32>(36083u, var_1.b, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 1u)], 31u)], u_input.a.x), vec4<u32>(4294967295u, u_input.d.x, var_1.b, 105380u)), ~vec4<u32>(46791u, 0u, arg_3, u_input.a.x)))));
    var var_3 = Struct_1(-vec2<i32>(_wgslsmith_add_i32(global4.a.x, var_1.a.x), (var_2.a.x ^ -177i) >> (~global3[_wgslsmith_index_u32(arg_3, 1u)] % 32u)), ~_wgslsmith_clamp_u32(~var_2.b, 19165u, var_1.b));
    global4 = Struct_1(global4.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(countOneBits(u_input.a.x), max(~u_input.a.x, 1u)), _wgslsmith_mult_u32(1u, 1u)), 31u)]);
    return ~var_1.a.x;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> f32 {
    global3 = array<u32, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1505f * -285f), -874f))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - 1048f))), -1877f)));
    global0 = var_0.x;
    global0 = var_0.x;
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~((vec4<i32>(arg_2.a.x, 1i, arg_1, -35831i) << (vec4<u32>(arg_2.b, 56953u, 1u, 45382u) % vec4<u32>(32u))) & (vec4<i32>(-49612i, 9273i, 0i, 2147483647i) << (vec4<u32>(u_input.b.x, 43582u, 50249u, 0u) % vec4<u32>(32u)))), vec4<i32>(global4.a.x, arg_2.a.x, arg_0, ~2147483647i), vec4<i32>(arg_0, reverseBits(-2147483647i), arg_0, global4.a.x ^ -2147483647i)), ~vec4<i32>(abs(arg_2.a.x | global4.a.x), ~1i, arg_0 | arg_2.a.x, _wgslsmith_div_i32(-27098i << (global4.b % 32u), _wgslsmith_add_i32(global4.a.x, arg_0))));
    return 125f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>) -> f32 {
    var var_0 = any(vec3<bool>(_wgslsmith_add_u32(4294967295u, ~global1[_wgslsmith_index_u32(0u, 31u)]) <= _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b, 1u, global3[_wgslsmith_index_u32(19991u, 1u)], 61832u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 31u)], global3[_wgslsmith_index_u32(1u, 1u)], 53134u, global3[_wgslsmith_index_u32(1u, 1u)])), select(66174u, global3[_wgslsmith_index_u32(u_input.c, 1u)], false)), false & all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false))), !(!(u_input.d.x > 25122u))));
    global1 = array<u32, 31>();
    let var_1 = Struct_1(-select(vec2<i32>(_wgslsmith_div_i32(arg_0.x, -2147483647i), ~26490i), ~vec2<i32>(53690i, global4.a.x) ^ vec2<i32>(-3381i, -1i), vec2<bool>(true, true)), ~(~global1[_wgslsmith_index_u32(countOneBits(44535u), 31u)]) >> (_wgslsmith_add_u32(~6438u, 0u) % 32u));
    global0 = _wgslsmith_f_op_f32(func_5(26753i | firstLeadingBit(func_4(func_3(arg_0.x, vec2<i32>(var_1.a.x, global4.a.x), vec3<i32>(0i, 0i, 24179i)), -367f, select(vec2<bool>(false, true), vec2<bool>(true, true), false), min(16962u, var_1.b))), arg_0.x, global2[_wgslsmith_index_u32(~(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13009u, 1u)], 31u)], u_input.a.x, global4.b, 0u), vec4<u32>(1u, 4294967295u, global4.b, var_1.b))) << (_wgslsmith_mult_u32(~var_1.b, _wgslsmith_mod_u32(global4.b, 79524u)) % 32u)), 9u)]));
    global1 = array<u32, 31>();
    return 1803f;
}

fn func_6(arg_0: vec2<i32>, arg_1: f32) -> vec2<i32> {
    var var_0 = 5837i;
    let var_1 = global4.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1413f, 416f, arg_1));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_f_op_f32(var_2.x - -600f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(610f, -223f, var_2.x)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, -1000f, 306f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2214f, -1000f, var_2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, -1129f, 715f))))));
    return vec2<i32>(-arg_0.x, 27220i);
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    global2 = array<Struct_1, 9>();
    global1 = array<u32, 31>();
    let var_0 = vec3<i32>(~(~abs(-899i)), -_wgslsmith_dot_vec2_i32(func_6(-vec2<i32>(global4.a.x, 1i), _wgslsmith_f_op_f32(func_2(vec4<i32>(global4.a.x, global4.a.x, global4.a.x, -45668i), vec2<f32>(1205f, arg_0)))), vec2<i32>(0i, 1i) << (u_input.a % vec2<u32>(32u))), global4.a.x);
    var var_1 = u_input.d;
    var var_2 = firstLeadingBit(_wgslsmith_div_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, var_1.x, 37439u), u_input.d) >> (~u_input.d % vec3<u32>(32u))), ~u_input.d));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f - 269f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-599f, _wgslsmith_f_op_f32(func_1(-681f, false)))) * -1000f)), -512f));
    global3 = array<u32, 1>();
    var var_0 = select(true, true, select(any(vec4<bool>(true, true, true, true)) & select(true, true, true), all(vec4<bool>(true, true, true, true)), !(!any(vec4<bool>(true, true, true, true)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1611f) - -879f);
    let var_1 = global2[_wgslsmith_index_u32(1u, 9u)];
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(min(select(global4.a.x, global4.a.x, false), 2147483647i), -global4.a.x, Struct_1(vec2<i32>(var_1.a.x, global4.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 0u), u_input.a)))) * -512f) + 1060f);
    let var_2 = Struct_1(~vec2<i32>(-2147483647i, 1i), 4294967295u);
    var var_3 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(115746u, 31u)], var_2.b, 22601u), 1u, 21067u), ~0u);
    var var_4 = reverseBits(u_input.d.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1272f)), 742f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(772f, -402f)) + vec2<f32>(-569f, -1029f)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, 0u << (var_1.b % 32u), 1u, u_input.c), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.b, 20129u, 5001u), vec4<u32>(1u, var_4.x, 24097u, var_2.b)), select(vec4<u32>(global4.b, 52365u, var_4.x, global4.b), vec4<u32>(26550u, 0u, 115312u, var_2.b), false)), reverseBits(min(vec4<u32>(u_input.b.x, 19627u, 0u, var_4.x), vec4<u32>(65812u, 30792u, 44206u, 4294967295u)))), vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_div_f32(206f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(2147483647i, var_2.a.x, global2[_wgslsmith_index_u32(0u, 9u)])))) + _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1315f + 407f))))));
}

