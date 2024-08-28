struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(31031u, 4294967295u, 22165u, 1u, 4294967295u, 5120u, 44821u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = select(select(vec4<bool>(true, !(global0[_wgslsmith_index_u32(arg_1.x, 7u)] >= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38240u, 7u)], 7u)]), true, false), vec4<bool>(all(vec4<bool>(true, true, false, true)), false, true, !any(vec4<bool>(false, false, true, true))), true), select(vec4<bool>(true, arg_1.x >= 1u, true, (0u >= global0[_wgslsmith_index_u32(4294967295u, 7u)]) || any(vec2<bool>(false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(13237u, 43818u, 1u), vec3<u32>(0u, 4294967295u, arg_1.x)) != (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 7u)], 7u)] | 0u)), vec4<bool>(true, any(vec2<bool>(true, false)) || true, all(vec3<bool>(true, true, true)), !(48940u > global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), true);
    global0 = array<u32, 7>();
    let var_1 = u_input.b.zy >> (arg_1 % vec2<u32>(32u));
    let var_2 = ~0u << (((0u << (arg_1.x % 32u)) & arg_1.x) % 32u);
    let var_3 = all(vec2<bool>(0u >= ~(~u_input.a.x), any(select(var_0.zzz, var_0.zxz, var_1.x < var_1.x))));
    return vec2<bool>(false, all(var_0));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(1404f)) < _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(1252f)))))));
    var var_1 = Struct_3(_wgslsmith_mod_i32(arg_2.x, -44139i));
    let var_2 = var_1.a;
    let var_3 = u_input.b.x;
    let var_4 = Struct_2(select(vec2<bool>(false, any(vec3<bool>(true, false, true)) | all(vec3<bool>(true, true, true))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), func_3(vec4<f32>(arg_1, arg_1, -1815f, arg_1), vec2<u32>(4294967295u, arg_3.a.x)), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), i32(-1i) * -2147483647i);
    return -467f;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>) -> vec3<f32> {
    global0 = array<u32, 7>();
    var var_0 = vec2<i32>(~u_input.b.x, i32(-1i) * -17285i);
    var_0 = vec2<i32>(_wgslsmith_sub_i32(max(1i, u_input.b.x) ^ ~46288i, -var_0.x), 2147483647i);
    let var_1 = 320f < _wgslsmith_f_op_f32(-1028f + arg_1.x);
    global0 = array<u32, 7>();
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-721f - -1262f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1478f + _wgslsmith_div_f32(-470f, -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1181f - arg_1.x))), 331f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -913f, -1724f) + vec3<f32>(arg_0, arg_0, -1772f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 551f, arg_1.x) - vec3<f32>(422f, arg_1.x, arg_0)) - vec3<f32>(2726f, -1470f, arg_0))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(-590f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(903f, 2250f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(993f, 490f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<u32>(u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)])), -668f, vec4<i32>(u_input.b.x, 0i, u_input.b.x, -1i), Struct_1(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(36082u, 7u)])))), _wgslsmith_f_op_f32(sign(-997f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(998f, 362f)))), select(vec2<bool>(true, -2147483647i >= u_input.b.x), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), false))))));
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_1 = _wgslsmith_mod_u32(abs(0u), 4294967295u);
    return Struct_1(vec3<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x & 4294967295u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 7u)], 1u)), 7u)], _wgslsmith_clamp_u32(~_wgslsmith_add_u32(var_1, var_1), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1, 5u, 4294967295u), vec4<u32>(12412u, u_input.a.x, 51401u, global0[_wgslsmith_index_u32(0u, 7u)])), 1u), global0[_wgslsmith_index_u32(22806u, 7u)]), 20160u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    var var_0 = Struct_3(u_input.b.x);
    let var_1 = func_1();
    let var_2 = vec2<f32>(1202f, -1187f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_2.x - 114f)))), _wgslsmith_f_op_f32(197f - _wgslsmith_f_op_f32(450f * _wgslsmith_f_op_f32(max(1117f, var_2.x)))))), _wgslsmith_clamp_i32(firstLeadingBit(32561i), var_0.a, -28043i << (_wgslsmith_add_u32(~var_1.a.x, u_input.a.x) % 32u)), vec4<i32>(((u_input.b.x << (0u % 32u)) | _wgslsmith_clamp_i32(var_0.a, -1i, 1i)) << ((u_input.a.x >> (func_1().a.x % 32u)) % 32u), _wgslsmith_mult_i32(u_input.b.x, -(~var_0.a)), -81252i, u_input.b.x), _wgslsmith_sub_u32(1u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(2933u, 1u, 1u, u_input.a.x), vec4<u32>(114609u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.x, 7u)], 7u)], 1471u, 0u)), var_1.a.x), _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1027f)))))));
}

