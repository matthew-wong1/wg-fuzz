struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: Struct_2 = Struct_2(Struct_1(-532f, vec3<bool>(true, false, false), 28079i, -1i));

var<private> global3: array<u32, 19> = array<u32, 19>(12974u, 42523u, 0u, 1u, 34235u, 543u, 0u, 1u, 2367u, 43582u, 1u, 22985u, 24588u, 35116u, 0u, 1u, 1u, 0u, 61023u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    global3 = array<u32, 19>();
    var var_0 = countOneBits(vec3<i32>(9439i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(~arg_2.a.d, ~arg_3.x, u_input.a.x >> (u_input.c.x % 32u))), 2147483647i));
    return _wgslsmith_f_op_f32(abs(1219f));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_add_vec2_u32(~(abs(~u_input.c.xw) ^ ~u_input.c.wy), ~(~u_input.c.wx));
    let var_1 = ~(~var_0.x);
    let var_2 = all(vec2<bool>(true, true));
    let var_3 = reverseBits(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-6589i, 0i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, global2.a.d), u_input.a)), abs(abs(u_input.a ^ u_input.a))));
    let var_4 = vec4<u32>(75313u << (~var_0.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>((0u ^ var_1) << (firstTrailingBit(var_0.x) % 32u), 34670u), ~select(vec2<u32>(1779u, 29060u), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, u_input.c.x), vec2<u32>(0u, var_0.x)), vec2<bool>(true, true))), u_input.c.x, _wgslsmith_sub_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], 18860u, 20660u, 22263u), vec4<u32>(var_0.x, 0u, u_input.b, var_0.x)), _wgslsmith_add_u32(abs(1u), abs(var_0.x)), global2.a.b.x), u_input.d));
    return ~var_4.x;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = u_input.c.wx;
    let var_1 = 294f;
    global1 = vec4<bool>(global1.x, (~0u >> (~_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(var_0.x, global3[_wgslsmith_index_u32(arg_2.x, 19u)], 0u, var_0.x)) % 32u)) >= _wgslsmith_mult_u32(var_0.x, abs(arg_2.x)), (~_wgslsmith_mod_i32(global2.a.c, -1i) << (func_3() % 32u)) < u_input.a.x, false);
    global1 = select(select(select(select(select(vec4<bool>(true, global1.x, false, global2.a.b.x), global0[_wgslsmith_index_u32(arg_2.x, 31u)], vec4<bool>(global1.x, true, false, global1.x)), !global0[_wgslsmith_index_u32(1u, 31u)], global2.a.c >= 2147483647i), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~101912u, 19u)] & 100399u, 31u)], !all(vec3<bool>(global2.a.b.x, global1.x, true))), vec4<bool>(!global2.a.b.x, false, true, true), !global2.a.b.x), global0[_wgslsmith_index_u32(~1u, 31u)], true);
    global1 = select(!vec4<bool>(!(!global2.a.b.x), all(select(global2.a.b.zx, global1.zz, vec2<bool>(true, false))), arg_0, !(global2.a.b.x | true)), vec4<bool>(all(global1.wy) && (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 19331i), u_input.a) == _wgslsmith_add_i32(0i, global2.a.d)), true, global2.a.b.x, !(!(global2.a.d == u_input.a.x))), global1.x);
    return -518f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.a - 1922f) - _wgslsmith_f_op_f32(select(global2.a.a, global2.a.a, global1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global2.a.a)), _wgslsmith_f_op_f32(-global2.a.a), true)))), select(select(select(select(vec3<bool>(global1.x, true, true), global1.xzw, global2.a.b), global1.yyz, !vec3<bool>(false, global2.a.b.x, global1.x)), global1.wzw, global1.x), global2.a.b, vec3<bool>(true, global2.a.a < _wgslsmith_f_op_f32(f32(-1f) * -570f), global1.x & global1.x)), _wgslsmith_mod_i32(-26031i, countOneBits(abs(-2147483647i)) | countOneBits(countOneBits(u_input.a.x))), ~u_input.a.x);
    var var_1 = global2.a.d << (21103u % 32u);
    var var_2 = ~(_wgslsmith_mult_vec2_u32((u_input.c.xy | u_input.c.xw) & select(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(42313u, global3[_wgslsmith_index_u32(17677u, 19u)]), var_0.b.xz), vec2<u32>(global3[_wgslsmith_index_u32(1u, 19u)], u_input.b)) ^ (u_input.c.wy >> (abs(~u_input.c.xz) % vec2<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2429f * -1000f), _wgslsmith_f_op_f32(select(global2.a.a, var_0.a, var_0.b.x)), _wgslsmith_f_op_f32(step(412f, global2.a.a)), _wgslsmith_f_op_f32(func_1(var_0.a, u_input.a.x, Struct_2(Struct_1(-525f, vec3<bool>(global1.x, var_0.b.x, global1.x), -26789i, 25337i)), u_input.a))), vec4<f32>(514f, -327f, _wgslsmith_div_f32(738f, global2.a.a), _wgslsmith_f_op_f32(-global2.a.a)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(749f, _wgslsmith_f_op_f32(func_2(true, vec2<f32>(1181f, 731f), u_input.c)), _wgslsmith_f_op_f32(-669f - global2.a.a), _wgslsmith_f_op_f32(-global2.a.a)))), vec4<f32>(759f, _wgslsmith_f_op_f32(select(967f, _wgslsmith_f_op_f32(abs(-1277f)), !var_0.b.x)), _wgslsmith_f_op_f32(511f - global2.a.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-105f, -251f) * _wgslsmith_f_op_f32(trunc(var_0.a)))), !(!(var_2.x == u_input.c.x))))));
    var var_4 = ~global2.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.yz, u_input.c.zz), ~vec2<u32>(1u, 52994u))), _wgslsmith_f_op_f32(global2.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1799f - _wgslsmith_f_op_f32(var_3.x + 971f)))), ~_wgslsmith_sub_vec3_i32(~min(vec3<i32>(-36127i, 1i, u_input.a.x), vec3<i32>(var_0.c, 0i, 25038i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(3529i, var_0.d, var_0.d), vec3<i32>(0i, 1i, -19182i))));
}

