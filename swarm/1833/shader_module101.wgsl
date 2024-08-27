struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = ~arg_0;
    var_0 = 3199u;
    var_0 = u_input.a;
    var var_1 = !vec3<bool>(true, true, arg_2.x);
    return Struct_1(true);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -304f), -988f));
    var var_2 = -countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.yz, arg_0.wx), u_input.d), vec2<i32>(arg_0.x, u_input.d) << (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u))));
    let var_3 = arg_1;
    var var_4 = abs(~(-vec4<i32>(59370i, var_0 << (u_input.a % 32u), 59359i, var_2.x)));
    return countOneBits(~1u);
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = -1i;
    let var_1 = ~(~(_wgslsmith_mod_u32(~u_input.c.x, 1u) >> (func_3(vec4<i32>(-1i, u_input.d, 31844i, -6122i) << (u_input.c % vec4<u32>(32u)), func_1(8664u, Struct_1(arg_0), vec2<bool>(arg_0, true))) % 32u)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1((13875u | ~u_input.b) >> (u_input.a % 32u), Struct_1(false), vec2<bool>((-26605i | abs(u_input.d)) >= abs(-u_input.d), !(4294967295u >= u_input.c.x)));
    var var_1 = 0i;
    let var_2 = u_input.c.wwz;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f * -223f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-370f, 298f, var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f * _wgslsmith_f_op_f32(round(-638f)))), 103436u, Struct_1(true));
    var_0 = Struct_1(var_0.a);
    var_0 = var_3.a;
    var_1 = _wgslsmith_sub_i32(u_input.d, _wgslsmith_div_i32(~u_input.d, _wgslsmith_sub_i32(u_input.d, func_2(var_0.a)) & (1i | _wgslsmith_sub_i32(u_input.d, -14221i))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1406f, 1054f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 451f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-595f, 2662f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.b, var_3.b)))), !any(vec2<bool>(false, true))))), ~(~(~4294967295u)) >> ((u_input.a & (4294967295u ^ var_2.x)) % 32u), 1u);
}

