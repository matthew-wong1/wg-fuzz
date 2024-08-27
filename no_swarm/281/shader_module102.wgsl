struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1190f, 100f, 114f, 1367f), vec2<f32>(339f, 361f), -1304i, 1005f, vec4<u32>(7188u, 22895u, 1u, 0u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    global0 = arg_2;
    var var_0 = 0i;
    var_0 = ~(select(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, global0.c, -1i), max(vec4<i32>(global0.c, 42521i, -5630i, 2147483647i), vec4<i32>(u_input.b, arg_2.c, 663i, -2147483647i))), -1i, select(any(vec2<bool>(true, true)), true, any(vec2<bool>(false, true)))) & ~1i);
    var_0 = ~(-firstLeadingBit(-9218i));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, arg_0.d)), select(vec2<bool>(false, false), vec2<bool>(true, true), false))))) - vec2<f32>(-698f, 291f)) * arg_2.b);
    return -1i;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, ~0i, func_3(Struct_1(vec4<f32>(arg_1, -601f, arg_1, arg_1), arg_2.a.xw, 20976i, -149f, global0.e), 77659u, arg_2)), -vec3<i32>(u_input.a | 1i, global0.c, 68398i)));
    let var_1 = 725f;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(trunc(-1031f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(arg_1, arg_0))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.ww * _wgslsmith_f_op_vec2_f32(-global0.b))), _wgslsmith_mod_i32(select(_wgslsmith_add_i32(min(11477i, 1i), 0i), arg_2.c, !any(vec2<bool>(false, true))), (-46997i << (firstLeadingBit(arg_2.e.x) % 32u)) | 43580i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), vec4<u32>(arg_2.e.x, global0.e.x, select(1u, firstTrailingBit(global0.e.x), true) << (4294967295u % 32u), 62781u));
    var var_2 = var_1 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - 678f);
    return 0u & _wgslsmith_clamp_u32(~(~global0.e.x), global0.e.x, 4229u);
}

fn func_1(arg_0: u32) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-605f, global0.a.x, _wgslsmith_div_f32(global0.a.x, -728f), -1589f), global0.a))), global0.b, global0.c, _wgslsmith_f_op_f32(-global0.a.x), ~_wgslsmith_mod_vec4_u32(~global0.e, firstTrailingBit(global0.e)) ^ vec4<u32>(global0.e.x, arg_0, global0.e.x, func_2(_wgslsmith_f_op_f32(200f * global0.d), global0.a.x, Struct_1(global0.a, vec2<f32>(global0.d, 701f), -33993i, -1222f, vec4<u32>(global0.e.x, global0.e.x, 1u, 80664u)))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(-1048f, global0.b.x, -1145f, global0.d)), vec4<f32>(global0.b.x, 668f, -613f, -667f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(399f, 834f, global0.d, global0.d) + global0.a))), vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-298f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1513f)), global0.c <= _wgslsmith_clamp_i32(u_input.b, countOneBits(2147483647i), global0.c))), vec2<f32>(2012f, -1389f), _wgslsmith_add_i32(global0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(global0.c, 0i) | vec2<i32>(global0.c, u_input.a))) << (4294967295u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1062f * -1295f)))), ~select(firstLeadingBit(vec4<u32>(global0.e.x, global0.e.x, 53177u, arg_0)), vec4<u32>(arg_0, _wgslsmith_mult_u32(global0.e.x, 50218u), func_2(611f, global0.d, Struct_1(vec4<f32>(global0.a.x, global0.b.x, global0.a.x, -345f), vec2<f32>(global0.d, -877f), global0.c, -1000f, vec4<u32>(4294967295u, 45005u, 1u, 12339u))), 18811u), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(-196f, global0.d, -554f, global0.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1934f, global0.d, -1760f, -511f)))))), vec2<f32>(global0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-772f, -1114f))))), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - _wgslsmith_f_op_f32(max(-249f, global0.b.x))), vec4<u32>(~_wgslsmith_mod_u32(arg_0, arg_0), 91418u, abs(1u), _wgslsmith_mod_u32(global0.e.x, arg_0)));
    var var_1 = _wgslsmith_div_vec4_u32(countOneBits(var_0.e), global0.e);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(min(-669f, global0.d)), _wgslsmith_f_op_f32(select(1000f, global0.a.x, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + var_0.a) + var_0.a) * vec4<f32>(_wgslsmith_f_op_f32(round(global0.d)), _wgslsmith_f_op_f32(-global0.a.x), 1f, var_0.b.x)), vec4<bool>(any(vec2<bool>(false, true)) == all(vec3<bool>(false, false, false)), !any(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), true))), var_0.b, _wgslsmith_add_i32(1653i, -3930i), 1916f, ~((vec4<u32>(1016u, 4294967295u, 20400u, var_0.e.x) & ~vec4<u32>(9745u, global0.e.x, var_0.e.x, 47213u)) >> (vec4<u32>(func_2(var_0.d, var_0.d, Struct_1(global0.a, vec2<f32>(-526f, -354f), global0.c, global0.b.x, vec4<u32>(1u, arg_0, 15271u, global0.e.x))), arg_0, global0.e.x | arg_0, _wgslsmith_div_u32(arg_0, 0u)) % vec4<u32>(32u))));
    return -u_input.a;
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(566f - global0.b.x))), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f))), vec4<f32>(_wgslsmith_f_op_f32(sign(1201f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.x)) * global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, 1000f) + _wgslsmith_f_op_f32(global0.b.x - 666f)), global0.a.x), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.b)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, -1831f)), _wgslsmith_f_op_vec2_f32(max(global0.b, global0.a.wz)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, -689f), vec2<f32>(1152f, global0.d))))), vec2<bool>(true, true)))), u_input.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.x)) + _wgslsmith_f_op_f32(min(1004f, -138f))))), countOneBits(~vec4<u32>(global0.e.x, 2583u, global0.e.x, 30991u) | global0.e));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.a))));
    var var_2 = ~var_0.e.x | ~59656u;
    var_2 = ~23837u;
    var var_3 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-715f)) + 723f), -948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, var_0.d)) * -110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(102f, global0.d, var_1.x, -1106f)))))), vec2<f32>(var_0.d, 1f), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.a, 53143i) & ~(-var_0.c), _wgslsmith_add_i32(u_input.a, min(firstTrailingBit(-2147483647i), 2147483647i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(318f, global0.b.x)), global0.d)), vec4<u32>(_wgslsmith_mod_u32(select(var_0.e.x, select(8540u, 14643u, false), true), abs(var_0.e.x)), 64991u, ~(global0.e.x & 0u) ^ 2716u, ~1u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(global0.e.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(419f, global0.b.x, global0.d, 303f), vec4<f32>(global0.b.x, -2076f, global0.d, global0.d), vec4<bool>(true, false, true, false))), global0.a)) * _wgslsmith_f_op_vec4_f32(exp2(global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global0.b, vec2<f32>(-611f, global0.b.x), vec2<bool>(false, false))), global0.a.yy, vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, global0.a.x) * global0.a.yz)))), ~u_input.a, global0.d, vec4<u32>(~1u, ~reverseBits(37169u), 44624u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(global0.e, _wgslsmith_div_vec4_u32(vec4<u32>(global0.e.x, 4294967295u, global0.e.x, global0.e.x), global0.e)), firstLeadingBit(global0.e.x ^ global0.e.x))));
    var_0 = countOneBits(min(_wgslsmith_div_u32(select(~global0.e.x, ~global0.e.x, true), ~39751u), 1u));
    global0 = func_4(_wgslsmith_dot_vec3_i32(select(vec3<i32>(1796i >> (var_1.e.x % 32u), func_1(global0.e.x), u_input.b), vec3<i32>(var_1.c, 0i, reverseBits(var_1.c)), any(vec2<bool>(false, true))), -select(abs(vec3<i32>(global0.c, global0.c, u_input.a)), vec3<i32>(u_input.a, -14968i, 2147483647i), true)));
    let var_2 = func_4(4145i);
    let var_3 = _wgslsmith_div_u32(~global0.e.x, func_4(_wgslsmith_mult_i32(var_1.c, firstLeadingBit(u_input.b & var_2.c))).e.x);
    let var_4 = select(vec3<bool>(!select(any(vec3<bool>(false, false, true)), var_3 <= global0.e.x, all(vec2<bool>(false, false))), true, ~0u <= var_3), !vec3<bool>(true, all(vec3<bool>(true, true, true)), false & all(vec2<bool>(true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true));
    global0 = func_4(_wgslsmith_mod_i32(-1i, -(~28278i)));
    let var_5 = func_4(_wgslsmith_mult_i32(_wgslsmith_add_i32(func_1(_wgslsmith_div_u32(global0.e.x, 8308u)), var_1.c), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-524f)) * global0.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -139f)));
}

