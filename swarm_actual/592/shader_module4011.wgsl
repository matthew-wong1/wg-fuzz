struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    global0 = select(vec4<u32>(0u, _wgslsmith_mult_u32(~92364u, u_input.a), u_input.a, 20038u), vec4<u32>(global0.x, firstLeadingBit(u_input.a), ~(~25732u), select(~_wgslsmith_div_u32(29078u, u_input.a), ~11156u, true)), any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true), !any(vec3<bool>(false, true, true)))));
    var var_0 = true;
    var var_1 = all(vec2<bool>(all(vec3<bool>(select(false, true, true), false, true)), true));
    var_0 = !(false == !(-1i != u_input.b.x)) || true;
    var var_2 = Struct_2(select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), true), !vec4<bool>(select(false, false, true), true, true, true), !(true & (global0.x != global0.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1411f, -759f))))), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(2147483647i, u_input.b.x)), u_input.b), u_input.b.x, reverseBits(reverseBits(firstTrailingBit(vec4<u32>(22703u, u_input.a, 502u, u_input.a)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(663f, 2887f), -442f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(460f, 494f) + vec2<f32>(-761f, 1000f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(922f, 461f), vec2<f32>(-340f, 192f)))), (-16796i >= u_input.b.x) && true))));
    return vec2<u32>(u_input.a, ~10044u);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = false;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -539f), -171f, arg_0.x);
    global0 = vec4<u32>(~reverseBits(u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global0.zz, global0.zw), abs(func_3())), 71780u, ~select(0u << (func_3().x % 32u), _wgslsmith_mod_u32(4294967295u | global0.x, ~global0.x), true));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_0.x), u_input.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 20053i, arg_1.x), select(vec3<i32>(11277i, arg_1.x, u_input.b.x), vec3<i32>(-1i, arg_1.x, 2147483647i), vec3<bool>(false, var_0, false)), vec3<i32>(949i, 1i, 13315i)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 21190i, -1i), -34617i, arg_1.x)), reverseBits(abs(vec4<u32>(u_input.a, 44788u, u_input.a, 71713u) << (vec4<u32>(104960u, u_input.a, global0.x, global0.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zz))))), reverseBits(~(~(u_input.b.x << (0u % 32u)))), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(global0.x, ~global0.x, ~u_input.a, u_input.a | 1u)), vec4<u32>(~u_input.a ^ global0.x, 58315u, global0.x, 1u)));
    global0 = firstLeadingBit(var_2.a.d);
    return var_2;
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2167f)) + _wgslsmith_f_op_f32(f32(-1f) * -366f)) + -255f) + 1000f));
    var var_1 = u_input.b.x;
    var_0 = -797f;
    var var_2 = true;
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1023f, 190f, 204f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(865f, 109f, 1471f) + vec3<f32>(1443f, 216f, 1000f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-325f, -456f, 382f))))) - vec3<f32>(354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(136f + -110f) * _wgslsmith_f_op_f32(step(1015f, -200f))))), vec4<i32>(-90014i, 0i, u_input.b.x, _wgslsmith_mod_i32(31873i, reverseBits(u_input.b.x << (global0.x % 32u)))));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~select(~vec4<u32>(global0.x, 12531u, 26262u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8732u, 39847u, 83785u), vec4<u32>(u_input.a, u_input.a, u_input.a, 5534u))), ~(~func_1()), !all(vec3<bool>(true, true, true)));
    global0 = _wgslsmith_mult_vec4_u32(~(~firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, global0.x, u_input.a))), vec4<u32>(u_input.a, ~global0.x, global0.x, ~_wgslsmith_clamp_u32(4294967295u, abs(0u), 1u)));
    var var_0 = _wgslsmith_clamp_u32(5283u ^ u_input.a, u_input.a, global0.x);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(351f, 817f, 530f)))), vec3<f32>(_wgslsmith_f_op_f32(-662f * -2618f), 335f, -662f)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.b.x, 44574i, u_input.b.x, -2910i), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, ~u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(22796i, 3042i, -2666i, -15176i), ~vec4<i32>(-25975i, u_input.b.x, 40397i, 47812i)), u_input.b.x, select(min(u_input.b.x, u_input.b.x), u_input.b.x, true)), ~countOneBits(vec4<i32>(-7658i, -54477i, 15029i, u_input.b.x) << (vec4<u32>(4294967295u, u_input.a, u_input.a, global0.x) % vec4<u32>(32u)))));
    var var_2 = abs(-_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-15982i, var_1.a.b, 50745i), vec3<i32>(var_1.a.c, -2147483647i, u_input.b.x))), ~(~vec3<i32>(-9848i, u_input.b.x, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec2<u32>(~14157u, firstLeadingBit(var_1.c.x)), 312f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.e.x) * _wgslsmith_f_op_f32(var_1.a.a + 409f)), -658f, _wgslsmith_f_op_f32(f32(-1f) * -1927f), _wgslsmith_f_op_f32(-156f * _wgslsmith_f_op_f32(-var_1.a.e.x)))), ~(vec4<u32>(_wgslsmith_sub_u32(1u, 1u), var_1.c.x, 43064u, 1u) & ~(vec4<u32>(0u, u_input.a, u_input.a, 1u) & vec4<u32>(global0.x, var_1.c.x, 28296u, var_1.a.d.x))));
}

