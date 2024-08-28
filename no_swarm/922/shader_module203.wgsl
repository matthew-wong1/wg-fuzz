struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: u32 = 0u;

var<private> global2: i32 = -79498i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global1 = ~21538u;
    var var_0 = any(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec2<bool>(true, true)))));
    global0 = array<Struct_2, 20>();
    var var_1 = -min(u_input.e.yz, abs(u_input.e.zx));
    let var_2 = vec2<u32>(~41923u, ~15066u);
    return ~68971u;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32) -> bool {
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2 ^ u_input.c.x, abs(4294967295u), 22651u), ~_wgslsmith_add_vec3_u32(~vec3<u32>(65335u, 1u, u_input.c.x), vec3<u32>(4294967295u, 43236u, u_input.a))));
    var var_1 = _wgslsmith_mod_u32(var_0.a, ~(~(~0u))) << (reverseBits(var_0.a) % 32u);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-376f, arg_1))))));
    var_2 = Struct_2(arg_1);
    var var_3 = global0[_wgslsmith_index_u32(~(24605u & _wgslsmith_mult_u32(func_3(), ~(~6139u))), 20u)];
    return false;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> u32 {
    var var_0 = vec4<bool>(false, !select(arg_0.x, !(arg_1 == arg_1), false), true && all(vec3<bool>(func_2(arg_2.x, -397f, u_input.a), arg_2.x, 729f >= arg_1)), !arg_0.x);
    let var_1 = Struct_2(742f);
    global0 = array<Struct_2, 20>();
    let var_2 = arg_0;
    global0 = array<Struct_2, 20>();
    return 3538u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 20u)];
    var var_1 = ~vec4<u32>(u_input.c.x, func_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), all(vec3<bool>(false, false, false))), -1190f, !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<i32>(-40185i, 2147483647i)), ~(~(~u_input.a)), ~0u);
    global1 = var_1.x;
    let var_2 = vec3<f32>(127f, 1000f, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-413f - -237f))))));
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    let var_3 = Struct_3(_wgslsmith_mult_u32(8388u, _wgslsmith_mult_u32(func_1(vec4<bool>(true, true, true, true), -1196f, select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<i32>(u_input.e.x, u_input.b)), var_1.x)));
    var var_4 = -633f;
    var_1 = abs(vec4<u32>(_wgslsmith_clamp_u32(var_1.x, ~(~u_input.c.x), ~select(var_1.x, 42016u, true)), _wgslsmith_mult_u32(var_3.a, ~6234u) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 47753u, 1592u, var_3.a), ~vec4<u32>(var_1.x, 19519u, 1u, 4294967295u)) % 32u), 4294967295u, _wgslsmith_mult_u32(~(~var_3.a), 57240u >> (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_i32(-reverseBits(u_input.e.x), 0i), -46307i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, 980f, 845f, -587f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(-var_2.x), var_2.x, var_2.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, var_0.a, var_2.x, -417f) * vec4<f32>(-1267f, var_2.x, var_2.x, 558f)) - vec4<f32>(var_0.a, -973f, var_2.x, var_2.x)))), u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-757f)))), u_input.b);
}

