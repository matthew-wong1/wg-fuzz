struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
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

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: vec3<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: bool) -> vec3<f32> {
    let var_0 = vec2<u32>(arg_0, arg_0);
    let var_1 = vec4<bool>(false, !(!(~0i >= -u_input.c)), any(select(select(vec2<bool>(false, arg_2), !vec2<bool>(false, arg_2), false), select(vec2<bool>(arg_2, false), !vec2<bool>(arg_2, false), arg_2), true)), any(vec4<bool>(true, arg_3, arg_3, all(!vec3<bool>(arg_3, arg_2, false)))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2055f))));
    var var_3 = Struct_3(Struct_2(~74845u), global1.xx, 279f, vec4<i32>(-1i, 19911i, arg_1, u_input.c & _wgslsmith_add_i32(u_input.c, u_input.c)));
    var var_4 = true;
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.x + global1.x), _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))), -1114f, -1243f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(972f, -577f, arg_1.x))))));
    let var_1 = ~vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.d, arg_0.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, u_input.a, 26457u, arg_0.x), vec4<u32>(4613u, 4294967295u, u_input.d, 0u)), 29933u), abs(55170u) ^ firstLeadingBit(arg_0.x)), _wgslsmith_div_u32(u_input.d, ~0u | u_input.d));
    global0 = array<vec2<u32>, 30>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-112f))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(step(global1.x, global1.x))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(var_0.x)))));
    global0 = array<vec2<u32>, 30>();
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_0, _wgslsmith_f_op_vec3_f32(-var_0), !vec3<bool>(true, all(vec2<bool>(true, false)), any(vec2<bool>(true, true)))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(~arg_3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(800f, global1.x), global1.xy, arg_1.x))))), _wgslsmith_f_op_f32(-global1.x), vec4<i32>(-1i, ~(~_wgslsmith_sub_i32(u_input.c, u_input.c)), u_input.c, ~u_input.c));
    global0 = array<vec2<u32>, 30>();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1549f, global1.x))), global1.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec4<u32>(1u, 0u, arg_3.x, 0u) >> (countOneBits(vec4<u32>(24445u, u_input.b, 1u, 5694u)) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(var_0.a.a, u_input.c, true, arg_1.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-547f, global1.x, 1128f)))), var_0.a, u_input.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(590f, _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(global1.x * 983f)))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(572f, -1223f, var_1.x));
    let var_2 = arg_2;
    return vec3<bool>(all(!select(select(var_2.zx, var_2.zx, arg_2.xy), !arg_2.xz, arg_2.yz)), (all(select(vec3<bool>(true, false, false), var_2, vec3<bool>(true, arg_2.x, true))) | true) != select(select(any(vec2<bool>(true, arg_2.x)), !var_2.x, arg_1.x), all(select(vec3<bool>(arg_2.x, arg_1.x, true), var_2, arg_2.x)), _wgslsmith_f_op_f32(-var_1.x) > -952f), all(select(vec3<bool>(all(vec4<bool>(false, false, var_2.x, var_2.x)), arg_2.x, any(arg_2.yx)), !(!arg_2), select(var_2, vec3<bool>(arg_2.x, var_2.x, var_2.x), arg_1.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: f32) -> vec3<f32> {
    let var_0 = ~vec4<u32>(~(~abs(0u)), max(~u_input.a, ~4294967295u) ^ 16815u, 49105u, 1u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, _wgslsmith_div_f32(-661f, -493f), _wgslsmith_f_op_f32(global1.x * global1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-709f, global1.x, global1.x) + vec3<f32>(-1746f, arg_0.x, 163f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.zyx)))));
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -502f, 1528f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, 200f, -1540f, 1000f))))), !vec4<bool>(true, any(func_2(vec3<u32>(u_input.b, u_input.a, 54603u), vec2<bool>(false, false), vec3<bool>(true, false, false), vec4<u32>(1u, 11750u, u_input.d, 0u))), true, any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(~(~23991u), _wgslsmith_add_i32(-3759i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, u_input.c), vec4<i32>(-33950i, u_input.c, u_input.c, -12776i))), !any(vec3<bool>(false, true, false)), true & all(vec4<bool>(false, true, true, false)))).x)));
    let var_0 = Struct_2(u_input.a);
    let var_1 = reverseBits(select(~countOneBits(~vec3<u32>(var_0.a, 27395u, var_0.a)), vec3<u32>(1u, u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.a, u_input.a, u_input.a) >> (vec4<u32>(0u, 1u, u_input.a, 25881u) % vec4<u32>(32u)), vec4<u32>(var_0.a, 4294967295u, 6427u, var_0.a) | vec4<u32>(1u, var_0.a, 51590u, u_input.b))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_2 = var_0;
    let var_3 = !all(!func_2(vec3<u32>(var_2.a, var_0.a, 4294967295u), vec2<bool>(true, true), vec3<bool>(true, false, false), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_1.x, 1u, u_input.d), vec4<u32>(0u, var_2.a, 14539u, var_1.x))));
    return Struct_2(~(~1u));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> Struct_2 {
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, -216f) - _wgslsmith_f_op_f32(f32(-1f) * -735f))), select(any(vec4<bool>(arg_2, true, arg_2, arg_2)), _wgslsmith_f_op_f32(arg_0.c + arg_0.c) >= _wgslsmith_f_op_f32(-global1.x), true | arg_2))));
    var var_0 = Struct_3(func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) * _wgslsmith_f_op_f32(-316f - global1.x)), -257f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.zz, global1.xz, !vec2<bool>(arg_2, false))))), global1.x, abs(firstLeadingBit(~min(vec4<i32>(-71371i, arg_1, -210i, arg_1), vec4<i32>(u_input.c, arg_0.d.x, u_input.c, arg_0.d.x)))));
    let var_1 = firstLeadingBit(vec4<u32>(4294967295u, ~var_0.a.a, _wgslsmith_add_u32(var_0.a.a, _wgslsmith_sub_u32(1u >> (var_0.a.a % 32u), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(arg_0.a.a, 30u)], vec2<u32>(var_0.a.a, 0u)))), _wgslsmith_sub_u32(~func_1().a, 4294967295u)));
    var var_2 = firstLeadingBit(_wgslsmith_sub_vec2_i32(-arg_0.d.xz, vec2<i32>(_wgslsmith_div_i32(max(arg_0.d.x, arg_0.d.x), arg_0.d.x), -2147483647i)));
    var var_3 = _wgslsmith_f_op_f32(-arg_0.c);
    return func_1();
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a, 4294967295u, 4294967295u, 100663u), ~vec4<u32>(14888u, arg_0.a, arg_0.a, u_input.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(527f, global1.x)))), 1436f, select(abs(countOneBits(~vec4<i32>(u_input.c, u_input.c, u_input.c, -1i))), max(select(vec4<i32>(u_input.c, u_input.c, 63821i, 61754i) | vec4<i32>(u_input.c, -52871i, u_input.c, -2147483647i), max(vec4<i32>(u_input.c, u_input.c, -64256i, 2147483647i), vec4<i32>(u_input.c, 0i, u_input.c, u_input.c)), true), ~(~vec4<i32>(-2147483647i, u_input.c, -36918i, 38781i))), all(vec3<bool>(all(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, false, false))))));
    var var_1 = !vec3<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))) || (var_0.b.x < -1522f), true);
    var var_2 = var_0.c;
    global1 = _wgslsmith_f_op_vec3_f32(func_4(vec4<u32>(~23783u, 13717u, 1u, 1u) << (vec4<u32>(~arg_0.a, ~u_input.b & _wgslsmith_add_u32(114186u, 18679u), 1u, ~countOneBits(u_input.d)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(751f)), _wgslsmith_f_op_f32(-544f * -1195f), global1.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-834f, var_0.c, 161f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-710f, 2264f, 223f) * vec3<f32>(var_0.c, var_0.b.x, 2552f))), var_1.x)), Struct_2(~(~_wgslsmith_mod_u32(4294967295u, 4294967295u))), -22621i));
    let var_3 = _wgslsmith_sub_i32(abs(u_input.c), _wgslsmith_add_i32(~select(u_input.c ^ u_input.c, -2147483647i, false), _wgslsmith_dot_vec4_i32(var_0.d, _wgslsmith_add_vec4_i32(vec4<i32>(18578i, var_0.d.x, -1i, u_input.c), var_0.d ^ var_0.d))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_3(func_1(), global1.zy, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(8866i, 22728i, -8131i, u_input.c), vec4<i32>(u_input.c, u_input.c, -305i, u_input.c))), -_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -7012i, -35817i), vec3<i32>(u_input.c, u_input.c, u_input.c)), any(vec3<bool>(any(vec3<bool>(true, false, false)), select(true, false, false), true))));
    global0 = array<vec2<u32>, 30>();
    var var_1 = ~vec2<u32>(reverseBits(func_1().a & var_0.a), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a, u_input.d), vec3<u32>(1u, 14064u, 13157u)), 4294967295u, firstLeadingBit(~u_input.a)));
    let var_2 = vec4<bool>(true, !(_wgslsmith_div_f32(global1.x, 1f) > _wgslsmith_f_op_f32(exp2(global1.x))), !(all(vec4<bool>(false, false, true, true)) & any(func_2(vec3<u32>(var_0.a, var_0.a, var_1.x), vec2<bool>(true, true), vec3<bool>(true, false, true), vec4<u32>(4294967295u, var_0.a, 1u, var_1.x)))), !any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))));
    var var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(max(~var_0.a, 4294967295u) & 2371u, firstLeadingBit(firstLeadingBit(_wgslsmith_div_u32(var_1.x, var_0.a))), 1u));
}

