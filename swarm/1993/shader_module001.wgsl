struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: Struct_4) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(119f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(u_input.c, 29u)]))))));
    var var_1 = arg_0.b.x;
    let var_2 = var_0;
    let var_3 = -1324f;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~u_input.b, 29u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-874f)), var_0) - 1205f) - _wgslsmith_f_op_f32(669f - 1000f)));
    return vec2<f32>(var_2, arg_0.b.x);
}

fn func_3(arg_0: bool, arg_1: Struct_5) -> vec3<u32> {
    var var_0 = select(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, u_input.d), vec2<u32>(u_input.d, u_input.c)) | vec2<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, u_input.d)), ~min(abs(vec2<u32>(27103u, 4294967295u)), vec2<u32>(0u, u_input.b))), reverseBits(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.d, u_input.b)), vec2<u32>(u_input.b, 13106u), any(vec2<bool>(false, arg_1.a)))) >> (vec2<u32>(6283u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.d, u_input.d, 9707u), vec4<u32>(u_input.b, 4294967295u, 0u, 37906u), vec4<u32>(u_input.b, 37130u, 0u, u_input.d)), abs(vec4<u32>(u_input.d, 38045u, u_input.d, u_input.c)))) % vec2<u32>(32u)), !select(!(!vec2<bool>(arg_0, arg_0)), !vec2<bool>(false, arg_1.a), vec2<bool>(true, true)));
    var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_clamp_u32(~1u, u_input.d, u_input.b)), ~(~var_0.x)), vec2<u32>(reverseBits(_wgslsmith_clamp_u32(~0u, min(15055u, 15407u), max(10430u, 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(33170u, u_input.b) | vec2<u32>(3633u, 1u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 17621u), vec2<u32>(0u, 10786u)))));
    var var_1 = Struct_3(Struct_1(u_input.a.x), select(vec3<bool>(true, all(select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, arg_1.a, true, true))), select(true, false, true)), vec3<bool>(arg_1.a, !arg_1.a, all(select(vec3<bool>(arg_1.a, true, arg_0), vec3<bool>(arg_0, arg_1.a, arg_1.a), vec3<bool>(true, arg_1.a, true)))), any(!vec4<bool>(arg_1.a, true, arg_0, arg_1.a))), any(vec4<bool>(arg_1.a, _wgslsmith_f_op_f32(399f - 2107f) >= _wgslsmith_f_op_vec2_f32(func_1(Struct_4(vec2<bool>(arg_0, arg_1.a), vec3<f32>(global0[_wgslsmith_index_u32(14198u, 29u)], 534f, 850f), Struct_1(26388i), u_input.d, vec2<bool>(true, false)))).x, true, all(select(vec4<bool>(false, arg_1.a, true, arg_0), vec4<bool>(arg_0, arg_1.a, false, arg_1.a), vec4<bool>(arg_0, true, arg_1.a, false))))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(424f, 2264f, global0[_wgslsmith_index_u32(14741u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(949f, global0[_wgslsmith_index_u32(0u, 29u)], -1500f, 622f) - vec4<f32>(-309f, global0[_wgslsmith_index_u32(96079u, 29u)], global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)])))), Struct_1(u_input.a.x ^ _wgslsmith_mod_i32(-64488i, u_input.a.x))));
    var var_2 = _wgslsmith_mult_u32(~(min(15915u, ~1u) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(var_0.x, 40304u)) % 32u)), abs(~4294967295u));
    var_2 = 0u;
    return ~_wgslsmith_add_vec3_u32(~(~(~vec3<u32>(u_input.d, 0u, 1u))), ~vec3<u32>(1u, ~var_0.x, var_0.x));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec3<u32> {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    return ~func_3(!any(vec4<bool>(true, false, arg_0, false)) & true, Struct_5(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    let var_0 = func_2(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_4(vec2<bool>(false, false), vec3<f32>(1965f, -1000f, global0[_wgslsmith_index_u32(u_input.d, 29u)]), Struct_1(u_input.a.x), u_input.d, vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(7704u, 29u)], global0[_wgslsmith_index_u32(12120u, 29u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(51129u, 29u)], global0[_wgslsmith_index_u32(41844u, 29u)]))))));
    var var_1 = select(select(!vec3<bool>(true, all(vec3<bool>(true, true, true)), select(true, true, true)), vec3<bool>(all(vec2<bool>(true, true)) | (global0[_wgslsmith_index_u32(1u, 29u)] <= -608f), all(vec2<bool>(false, false)), select(true, true, true)), select(vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(true, false, true), true)), vec3<bool>(18939i <= _wgslsmith_div_i32(1i, ~u_input.a.x), !all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), true), false);
    global0 = array<f32, 29>();
    var var_2 = true;
    var var_3 = var_0;
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.x, 29u)]), -1614f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.d, 29u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.x, 29u)]) + 1754f)))));
}

