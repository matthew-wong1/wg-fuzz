struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: array<f32, 23> = array<f32, 23>(-1254f, 553f, -3175f, -525f, -597f, -247f, 456f, 832f, 1000f, 1905f, 755f, -521f, 1421f, 1930f, -1201f, -216f, 1405f, 1237f, -1000f, -290f, 1631f, 380f, -159f);

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: f32) -> bool {
    global1 = array<Struct_1, 9>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    return false;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    global1 = array<Struct_1, 9>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, ~u_input.e), 23u)]) + 1344f), global1[_wgslsmith_index_u32(1u, 9u)], 2147483647i);
    global0 = array<f32, 23>();
    let var_1 = var_0.c;
    var var_2 = global1[_wgslsmith_index_u32(u_input.e, 9u)];
    return _wgslsmith_clamp_u32(28269u, 35728u, countOneBits(u_input.e));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(min(_wgslsmith_mult_u32(arg_0.x, 22875u) << (arg_1.x % 32u), _wgslsmith_sub_u32(min(0u, 1u), arg_1.x))), arg_1.x ^ arg_1.x), 9u)];
    var var_1 = func_3(vec3<bool>(true, true, true), true) & u_input.e;
    global0 = array<f32, 23>();
    var var_2 = -(i32(-1i) * -2147483647i);
    global0 = array<f32, 23>();
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.x, 23u)], -303f)))) + var_0.a), Struct_1(_wgslsmith_f_op_f32(-var_0.a)), abs(-countOneBits(_wgslsmith_mod_i32(-44840i, arg_2.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    global1 = array<Struct_1, 9>();
    var var_0 = !all(vec4<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), true, true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.e, u_input.e), 23u)])));
    var var_2 = !select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), 0i != arg_1.c), vec2<bool>(true, true)), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), select(vec2<bool>(u_input.d >= u_input.a, u_input.e > u_input.e), vec2<bool>(true, true), false));
    let var_3 = false;
    return global0[_wgslsmith_index_u32(~(~max(29207u, ~u_input.e)), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-934f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] - global0[_wgslsmith_index_u32(u_input.e, 23u)]))))), !(!func_1(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 1481f, -809f, global0[_wgslsmith_index_u32(0u, 23u)]), u_input.b.zz, vec3<i32>(-11617i, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 23u)])))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] - _wgslsmith_f_op_f32(f32(-1f) * -226f))))), _wgslsmith_f_op_f32(func_4(-vec3<i32>(abs(u_input.a), ~(-1029i), ~u_input.a), func_2(vec4<u32>(~u_input.e, u_input.e, 23065u, 0u >> (u_input.e % 32u)), ~min(vec4<u32>(13541u, u_input.e, 0u, 33878u), vec4<u32>(21964u, u_input.e, 4294967295u, 109850u)), vec2<i32>(~u_input.a, 1i)))), -143f);
    let var_1 = min(~(u_input.e >> (_wgslsmith_sub_u32(~1u, reverseBits(1u)) % 32u)), countOneBits(~func_3(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), true)));
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(9775u), var_1, var_1), vec3<u32>(var_1, 4294967295u, 0u)), 23u)]);
    global0 = array<f32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

