struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_1;
    var_0 = arg_2;
    var var_1 = 6120u | firstLeadingBit(_wgslsmith_dot_vec3_u32(arg_2.a.zxx >> (vec3<u32>(arg_2.a.x, arg_2.a.x, 19583u) % vec3<u32>(32u)), reverseBits(var_0.a.wwy)) | arg_1.a.x);
    var_0 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(ceil(-452f));
    return select(var_0.b, arg_1.b, select(arg_1.b, !select(!vec3<bool>(false, arg_1.b.x, arg_2.b.x), select(vec3<bool>(arg_2.b.x, arg_1.b.x, false), vec3<bool>(var_0.b.x, false, arg_2.b.x), var_0.b.x), arg_1.b.x & true), select(select(select(var_0.b, vec3<bool>(arg_2.b.x, true, var_0.b.x), arg_1.b), arg_2.b, !arg_1.b), vec3<bool>(false, !var_0.b.x, var_0.b.x && arg_2.b.x), false)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(arg_3.a.x, 4294967295u, ~((arg_3.a.x << ((u_input.b.x << (arg_1.x % 32u)) % 32u)) << ((min(arg_1.x, 113732u) & ~0u) % 32u)), select(~(~4294967295u), arg_2.a.x, true));
    let var_1 = Struct_1(vec4<u32>(51692u ^ (~u_input.b.x & 4294967295u), 27589u, _wgslsmith_dot_vec3_u32(arg_3.a.zxy, vec3<u32>(arg_3.a.x, ~72989u, arg_1.x)), 69142u), select(func_3(14800i, Struct_1(arg_2.a, arg_0), arg_3), vec3<bool>(all(!vec4<bool>(false, arg_2.b.x, arg_3.b.x, arg_0.x)), true, arg_2.b.x), vec3<bool>(arg_3.b.x, true, any(vec4<bool>(arg_3.b.x, true, false, arg_3.b.x)) | arg_0.x)));
    var var_2 = var_1;
    var var_3 = arg_2;
    let var_4 = arg_2.a.yx;
    return Struct_1(_wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(var_2.a, arg_3.a)) << (vec4<u32>(arg_1.x >> (var_0.x % 32u), _wgslsmith_mult_u32(var_0.x, var_2.a.x), min(10686u, 60362u), _wgslsmith_sub_u32(1u, var_2.a.x)) % vec4<u32>(32u)), var_3.a), !arg_0);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = reverseBits(u_input.b.x);
    let var_1 = func_2(!(!arg_1.b), ~arg_1.a.ww, arg_1, arg_1);
    let var_2 = var_1.a.xyy;
    let var_3 = vec3<f32>(-1746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-884f * -3097f))) - _wgslsmith_f_op_f32(round(1172f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1405f + -379f))), -734f, any(func_3(select(u_input.a.x, 66160i, arg_1.b.x), var_1, arg_1).zx))));
    let var_4 = var_3.x;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 47346u;
    var var_1 = abs(u_input.b.x);
    var_0 = 41882u;
    let var_2 = Struct_1(vec4<u32>(4294967295u, ~_wgslsmith_mod_u32(30275u, ~u_input.b.x), _wgslsmith_sub_u32(~1u, ~_wgslsmith_sub_u32(38387u, u_input.b.x)), 4294967295u ^ func_1(vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(508u, 30867u, 35921u, 4294967295u), vec3<bool>(false, false, false)))), vec3<bool>(select(true, 1814f < _wgslsmith_f_op_f32(floor(1322f)), true), !func_3(_wgslsmith_clamp_i32(u_input.c.x, 41963i, u_input.a.x), func_2(vec3<bool>(false, true, true), u_input.b, Struct_1(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1u), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(u_input.b.x, 25456u, 4294967295u, 1u), vec3<bool>(true, true, false))), Struct_1(vec4<u32>(1u, u_input.b.x, u_input.b.x, 17717u), vec3<bool>(true, false, false))).x, true));
    var_1 = ~u_input.b.x & _wgslsmith_mult_u32(_wgslsmith_add_u32(53888u, ~24073u << (u_input.b.x % 32u)), u_input.b.x);
    let var_3 = var_2;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1442f)) + _wgslsmith_f_op_f32(-335f - -2801f)) + _wgslsmith_f_op_f32(1409f - _wgslsmith_f_op_f32(810f - -1048f))), _wgslsmith_div_f32(-262f, 1383f), -280f, 1715f));
}

