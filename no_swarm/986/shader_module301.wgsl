struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -58226i, i32(-2147483648), -1i);

var<private> global2: array<vec3<i32>, 11>;

var<private> global3: f32;

var<private> global4: f32 = -923f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    global0 = array<vec3<i32>, 11>();
    var var_0 = reverseBits(1i);
    var var_1 = Struct_1(~(u_input.d.zx ^ vec2<u32>(abs(arg_0.x), u_input.b)), abs(2147483647i) == ~_wgslsmith_clamp_i32(~54276i, 0i, -55281i), vec3<f32>(_wgslsmith_f_op_f32(355f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1272f, -2101f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-344f)))), vec3<i32>(u_input.a, -4002i, u_input.c));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)) + -703f));
    global3 = _wgslsmith_f_op_f32(-var_1.c.x);
    return vec4<i32>(~abs(reverseBits(-11211i)), max(u_input.c, ~u_input.e.x), -u_input.e.x, min(_wgslsmith_add_i32(-u_input.a << (~u_input.b % 32u), -var_1.d.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, -2147483647i, 0i), ~0i), var_1.d.x)));
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_mod_vec4_i32(abs(max(-vec4<i32>(u_input.e.x, global1.x, u_input.a, 0i) & func_3(vec4<u32>(u_input.b, u_input.b, 0u, 0u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.e.x, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, -1i, global1.x, global1.x), vec4<i32>(2147483647i, global1.x, 1i, 0i))))), -((-vec4<i32>(-27526i, 2147483647i, global1.x, -17885i) | vec4<i32>(u_input.a, u_input.a, 1i, u_input.c)) << (max(vec4<u32>(1448u, u_input.d.x, u_input.d.x, 16874u), ~vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x)) % vec4<u32>(32u))));
    let var_0 = Struct_1(countOneBits(u_input.d.zy) ^ vec2<u32>(min(17302u, u_input.d.x), _wgslsmith_dot_vec3_u32(u_input.d, firstLeadingBit(vec3<u32>(u_input.d.x, u_input.b, u_input.b)))), false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(141f, 1000f, true)), _wgslsmith_f_op_f32(min(1227f, -336f)), 1207f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(102f, -360f, -657f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1196f, -424f, -749f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(169f, -330f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1060f - 1000f)))), global2[_wgslsmith_index_u32(firstTrailingBit(0u), 11u)]);
    global0 = array<vec3<i32>, 11>();
    let var_1 = var_0;
    var var_2 = 1367u;
    return var_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.c.x, arg_2.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x), 1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, 802f, _wgslsmith_f_op_f32(min(358f, arg_2.c.x))))));
    let var_1 = vec2<u32>(reverseBits(arg_2.a.x), 4294967295u);
    let var_2 = _wgslsmith_sub_u32(~(~77501u), ~(~_wgslsmith_mult_u32(abs(58833u), u_input.b)));
    global2 = array<vec3<i32>, 11>();
    var var_3 = func_2();
    return Struct_1(_wgslsmith_add_vec2_u32(~var_1, var_3.a), !var_3.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_2.c.x, arg_2.c.x, arg_2.b)))), _wgslsmith_f_op_f32(min(-534f, _wgslsmith_f_op_f32(ceil(1790f)))), var_3.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1586f - -2142f), 310f, _wgslsmith_f_op_f32(arg_2.c.x - -1000f)) * _wgslsmith_div_vec3_f32(var_0, vec3<f32>(var_0.x, var_3.c.x, -565f))))), arg_2.d);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    global3 = _wgslsmith_f_op_f32(-121f * -446f);
    var var_0 = Struct_1(~(vec2<u32>(~25319u, ~4294967295u) & vec2<u32>(arg_0.a.x, ~1u)), arg_0.b & false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0.c, vec3<f32>(-1397f, _wgslsmith_f_op_f32(-377f + 474f), _wgslsmith_f_op_f32(step(1928f, arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.c.x, -522f)), -649f, _wgslsmith_f_op_f32(956f + arg_1))), -34417i > global1.x)), vec3<i32>(1i, ~2147483647i, func_3(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, 11844u), vec4<u32>(8287u, 1u, 0u, 0u))).x << (reverseBits(u_input.d.x) % 32u)));
    let var_1 = Struct_1(var_0.a, (any(select(vec2<bool>(true, var_0.b), vec2<bool>(true, true), vec2<bool>(false, var_0.b))) && select(arg_0.b, func_2().b, func_2().b)) || (all(!vec3<bool>(false, arg_0.b, true)) || func_2().b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c - var_0.c), arg_0.c))), arg_0.d);
    global4 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c.x)))));
    return arg_0.c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = func_3(~(vec4<u32>(~u_input.b, abs(42304u), u_input.b, abs(u_input.b)) >> (~select(vec4<u32>(4294967295u, 0u, u_input.d.x, arg_1.a.x), vec4<u32>(u_input.b, arg_0.a.x, u_input.b, 0u), false) % vec4<u32>(32u))));
    let var_1 = vec4<bool>(true, arg_1.b, 27195i < _wgslsmith_div_i32(firstTrailingBit(-14475i), _wgslsmith_mod_i32(arg_1.d.x, 2147483647i | u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1493f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * _wgslsmith_f_op_f32(651f - 1055f))) <= arg_0.c.x);
    let var_2 = arg_0;
    let var_3 = Struct_1(max(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.a, arg_1.a), vec2<u32>(6138u, 30835u)), ~min(arg_0.a.x, 0u)), vec2<u32>(~_wgslsmith_div_u32(arg_0.a.x, 49792u), abs(28541u))), any(select(vec4<bool>(all(var_1.xxw), !arg_1.b, true, false && arg_1.b), !var_1, vec4<bool>(arg_1.c.x < arg_0.c.x, 1158i > arg_1.d.x, false, true))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c.x, -781f))), 1982f, true)), _wgslsmith_f_op_f32(step(163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -575f)))), _wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -393f))), firstTrailingBit(var_2.d));
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1286f))), 589f, var_1.x));
    return -vec2<i32>(countOneBits(max(~global1.x, var_2.d.x & -23005i)), _wgslsmith_sub_i32(~_wgslsmith_div_i32(2147483647i, 89493i), 1i));
}

fn func_1() -> vec4<i32> {
    let var_0 = vec3<u32>(~firstTrailingBit(~1u) << (u_input.d.x % 32u), u_input.d.x, _wgslsmith_add_u32(u_input.b, u_input.b));
    var var_1 = func_6(Struct_1(~u_input.d.zx, false, _wgslsmith_f_op_vec3_f32(func_5(func_4(vec2<i32>(u_input.a, u_input.a), -2147483647i, func_2()), 230f)), select(~global2[_wgslsmith_index_u32(u_input.b, 11u)], func_4(u_input.e.xy, -2147483647i, Struct_1(u_input.d.yx, false, vec3<f32>(-1000f, -1042f, 1080f), vec3<i32>(19197i, global1.x, u_input.a))).d, true) >> (vec3<u32>(~var_0.x, ~13516u, _wgslsmith_add_u32(1u, 5093u)) % vec3<u32>(32u))), Struct_1(vec2<u32>(_wgslsmith_sub_u32(~86003u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b, 0u, var_0.x), vec4<u32>(var_0.x, 1u, 46372u, 4294967295u))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 1u), vec4<u32>(4294967295u, 1u, u_input.b, 0u)), vec4<u32>(var_0.x, 1u, 55853u, 8700u) >> (vec4<u32>(4294967295u, 61096u, var_0.x, 1u) % vec4<u32>(32u)))), select(true, false, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1196f, 212f, -2943f) - vec3<f32>(_wgslsmith_f_op_f32(sign(462f)), _wgslsmith_f_op_f32(floor(-978f)), -1124f)), ~abs(-u_input.e)));
    let var_2 = Struct_1(~u_input.d.xy, !func_2().b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-131f, -964f, -744f), vec3<f32>(-733f, 1437f, 394f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-626f, 640f, 1130f))))) - func_2().c), func_2().d);
    global0 = array<vec3<i32>, 11>();
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-781f, _wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(ceil(var_2.c.x))) - var_2.c) - vec3<f32>(-996f, var_2.c.x, 1503f))));
    return vec4<i32>(~abs(-_wgslsmith_mult_i32(4485i, var_1.x)), func_6(Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(7437u, var_0.x, var_2.a.x)), var_2.a.x), false, _wgslsmith_f_op_vec3_f32(-var_2.c), ~global0[_wgslsmith_index_u32(var_2.a.x & 0u, 11u)]), Struct_1(_wgslsmith_sub_vec2_u32(~var_2.a, ~var_0.zx), false, _wgslsmith_f_op_vec3_f32(-var_2.c), max(~vec3<i32>(var_1.x, global1.x, -3103i), var_2.d))).x, -4742i, global1.x);
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec2<i32> {
    var var_0 = -716f;
    let var_1 = arg_1;
    let var_2 = vec2<bool>(-18075i >= abs(_wgslsmith_div_i32(-7396i, min(arg_1.d.x, arg_2.d.x))), (arg_2.a.x & ~firstTrailingBit(4294967295u)) != var_1.a.x);
    global1 = -vec4<i32>(-max(_wgslsmith_div_i32(var_1.d.x, u_input.c), abs(arg_2.d.x)), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(-32544i, -3155i), -2147483647i), -2147483647i, -2147483647i);
    var_0 = 518f;
    return _wgslsmith_mult_vec2_i32(-(~func_3(countOneBits(vec4<u32>(1u, u_input.d.x, arg_2.a.x, 1304u))).zw), global1.wz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(_wgslsmith_dot_vec2_i32(func_7(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1301f), -869f), Struct_1(vec2<u32>(1u, u_input.d.x), false, vec3<f32>(-1139f, -332f, 698f), vec3<i32>(global1.x, -10121i, global1.x)), Struct_1(abs(vec2<u32>(u_input.d.x, 1u)), true, vec3<f32>(771f, 154f, 1985f), ~vec3<i32>(global1.x, 0i, 4988i)), _wgslsmith_dot_vec4_i32(func_1(), select(vec4<i32>(u_input.e.x, global1.x, -19442i, global1.x), vec4<i32>(global1.x, global1.x, -37673i, 2147483647i), true))), func_1().xx), _wgslsmith_sub_i32(func_2().d.x, u_input.e.x), -_wgslsmith_clamp_i32(~min(global1.x, u_input.c), 0i, -48092i & ~global1.x), ~0i);
    var var_0 = ~(~(func_4(-vec2<i32>(u_input.e.x, -53892i), abs(global1.x), func_2()).a & vec2<u32>(select(35834u, 0u, false), _wgslsmith_div_u32(u_input.d.x, u_input.d.x))));
    var_0 = ~min(u_input.d.yx, ~_wgslsmith_add_vec2_u32(vec2<u32>(10102u, 57703u), u_input.d.zx));
    var var_1 = func_4(u_input.e.yz, _wgslsmith_div_i32(-1i, global1.x), func_2());
    let var_2 = select(vec2<bool>(_wgslsmith_dot_vec3_u32(abs(u_input.d), u_input.d) < (countOneBits(var_1.a.x) << (~0u % 32u)), var_1.b), select(!select(!vec2<bool>(var_1.b, false), select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, var_1.b)), !vec2<bool>(var_1.b, var_1.b)), !(!(!vec2<bool>(var_1.b, true))), select(vec2<bool>(true, !var_1.b), vec2<bool>(true, true), !vec2<bool>(var_1.b, true))), !vec2<bool>(!all(vec4<bool>(var_1.b, true, false, false)), !(false == var_1.b)));
    global2 = array<vec3<i32>, 11>();
    var var_3 = vec2<bool>(var_2.x, !(_wgslsmith_f_op_f32(-func_4(var_1.d.zz, u_input.e.x, Struct_1(u_input.d.zx, var_1.b, var_1.c, u_input.e)).c.x) == -959f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 14493u, var_1.a.x));
}

