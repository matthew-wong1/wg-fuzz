struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: u32 = 66705u;

var<private> global2: f32 = -183f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = 2147483647i;
    let var_1 = arg_2.x;
    var_0 = _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 14375i);
    var var_2 = u_input.a;
    var var_3 = arg_3.a;
    return arg_2.wzy;
}

fn func_2() -> vec3<u32> {
    global0 = array<i32, 9>();
    var var_0 = any(vec3<bool>(true || (true & all(vec4<bool>(false, false, true, false))), all(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1097f, 528f, 272f) - vec3<f32>(297f, 345f, 656f)), _wgslsmith_f_op_f32(f32(-1f) * -168f), vec4<bool>(true, true, false, false), Struct_1(vec3<f32>(-480f, 1417f, -1049f), true))), 89592u <= _wgslsmith_div_u32(u_input.b, u_input.a)));
    global1 = 0u;
    let var_1 = -(-((vec3<i32>(-12728i, global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)]) & vec3<i32>(7778i, u_input.c, -1i)) ^ abs(vec3<i32>(-1i, 24340i, global0[_wgslsmith_index_u32(u_input.a, 9u)]))) << (vec3<u32>(abs(~u_input.b), u_input.b, ~83669u) % vec3<u32>(32u)));
    return vec3<u32>(_wgslsmith_mod_u32(u_input.b, 8540u), ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b, 51352u), vec4<u32>(u_input.b, u_input.b, 0u, u_input.a), vec4<u32>(32647u, 32287u, 0u, u_input.a)), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), firstLeadingBit(4676u));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = array<i32, 9>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(309f, _wgslsmith_f_op_f32(trunc(-791f))))), _wgslsmith_f_op_f32(478f - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(-634f)))), false))));
    var var_1 = arg_0;
    global1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(func_2(), vec3<u32>(u_input.a, min(~90970u, 1u), 1u << (u_input.a % 32u))), vec3<u32>(~(~_wgslsmith_mod_u32(1u, u_input.b)), u_input.b, 2521u));
    var var_2 = vec2<i32>(abs(u_input.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(60245i, u_input.d.x), -vec2<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 9u)]), -311i)));
    return Struct_2(Struct_1(vec3<f32>(-230f, 1000f, -665f), any(vec4<bool>(true, all(vec4<bool>(false, true, true, arg_0)), true, global0[_wgslsmith_index_u32(67151u, 9u)] > u_input.d.x))), !vec3<bool>((u_input.b | u_input.b) != _wgslsmith_add_u32(66619u, u_input.a), true, !arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 9>();
    global2 = 762f;
    var var_0 = func_1(true);
    var var_1 = -u_input.c;
    var var_2 = vec2<bool>(any(vec3<bool>(var_0.b.x, var_0.a.b, false)), func_1(any(select(vec2<bool>(var_0.b.x, true), var_0.b.zx, var_0.a.b)) && true).a.b);
    var var_3 = func_1(var_2.x).a;
    global1 = 82994u;
    let var_4 = 2147483647i;
    global1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~abs(vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b)) ^ ~(~vec4<u32>(u_input.a, 54247u, u_input.a, u_input.a))), vec4<u32>(59575u, u_input.b, u_input.b, 13849u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -599f))) + _wgslsmith_f_op_f32(step(var_3.a.x, _wgslsmith_f_op_f32(func_1(var_0.a.b).a.a.x * var_3.a.x)))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(37057i, -_wgslsmith_clamp_i32(var_4, var_4, -2147483647i)), global0[_wgslsmith_index_u32(4294967295u >> (u_input.b % 32u), 9u)], 21125i), abs(44156u));
}

