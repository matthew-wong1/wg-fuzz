struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-20472i, 2147483647i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_0 = u_input.c;
    let var_1 = Struct_3(_wgslsmith_sub_u32(~(~40972u), ~_wgslsmith_sub_u32(12809u, u_input.c) & 0u));
    var_0 = 27097u;
    return !vec3<bool>(arg_0.x && any(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), -27025i < -_wgslsmith_mod_i32(8189i, global0[_wgslsmith_index_u32(54075u, 3u)]), arg_0.x);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_1(~min(~(~u_input.c), _wgslsmith_mult_u32(55224u, ~arg_0.x)), -2147483647i);
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.b, u_input.b);
    var var_2 = vec4<u32>(32278u, 0u, var_1, 59442u);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(832f * -539f), _wgslsmith_f_op_f32(abs(-306f)))), -884f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(154f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(469f)), _wgslsmith_f_op_f32(f32(-1f) * -497f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> f32 {
    global0 = array<i32, 3>();
    let var_0 = select(select(vec3<bool>(!any(vec4<bool>(arg_3, arg_3, arg_3, arg_3)), any(!vec4<bool>(true, arg_3, false, true)), select(arg_3, true, all(vec3<bool>(true, arg_3, arg_3)))), select(!func_2(vec2<bool>(false, arg_3)), select(!vec3<bool>(true, false, arg_3), vec3<bool>(true, arg_3, false), !vec3<bool>(arg_3, false, false)), !func_2(vec2<bool>(arg_3, true))), !all(select(vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3), false))), vec3<bool>(arg_3, true, !all(vec2<bool>(arg_3, true)) || any(!vec3<bool>(arg_3, false, arg_3))), false);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * arg_0.x))))) * _wgslsmith_f_op_f32(func_3(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, 81315u, 6568u, arg_1.a), vec4<u32>(20296u, 34400u, 4294967295u, arg_1.a) >> (vec4<u32>(arg_1.a, 38309u, arg_2, 4294967295u) % vec4<u32>(32u))), ~0u, _wgslsmith_div_u32(_wgslsmith_mult_u32(24544u, 1u), 1u)))));
    var_1 = _wgslsmith_f_op_f32(func_3(reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.d.x), vec3<u32>(abs(0u), ~29683u, abs(arg_1.a))))));
    var_1 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(604f)), _wgslsmith_f_op_f32(-arg_0.x))), -632f)));
    return _wgslsmith_f_op_f32(-1990f * _wgslsmith_f_op_f32(func_3(select(~(~vec3<u32>(arg_1.a, u_input.d.x, arg_2)), u_input.b, select(vec3<bool>(var_0.x, arg_3, arg_3), vec3<bool>(true, false, arg_3), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(961f, -1104f, true))), _wgslsmith_f_op_f32(1168f - -338f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f * 522f) + _wgslsmith_f_op_f32(func_1(vec2<f32>(-541f, -1242f), Struct_3(u_input.d.x), 0u, false))), -867f)));
    global0 = array<i32, 3>();
    var var_1 = ~u_input.d;
    var var_2 = abs(select(vec4<u32>(_wgslsmith_sub_u32(45512u, 0u), _wgslsmith_mult_u32(1u, 3380u), 1u, 66316u) | _wgslsmith_div_vec4_u32(vec4<u32>(1767u, u_input.d.x, var_1.x, 0u), vec4<u32>(0u, u_input.c, 2374u, 1u)), vec4<u32>(1u, abs(var_1.x), select(31824u, var_1.x, true), 9072u >> (u_input.b.x % 32u)) | (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4012u, var_1.x, var_1.x), vec4<u32>(11886u, 0u, 0u, u_input.d.x)) >> (vec4<u32>(60421u, 30769u, 25823u, 82216u) % vec4<u32>(32u))), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), select(false, false, false)), any(func_2(vec2<bool>(true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - -934f)))))));
}

