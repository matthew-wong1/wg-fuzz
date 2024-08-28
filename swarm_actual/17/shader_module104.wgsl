struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<f32>(226f, 1000f, 705f, -401f)), Struct_1(vec4<f32>(-983f, 2168f, 892f, -953f)), Struct_1(vec4<f32>(1295f, -326f, -239f, -249f)), Struct_1(vec4<f32>(667f, 1113f, -1000f, 179f)), Struct_1(vec4<f32>(277f, 500f, -488f, 1638f)), Struct_1(vec4<f32>(356f, 696f, 277f, -624f)), Struct_1(vec4<f32>(-1845f, -101f, 422f, -375f)), Struct_1(vec4<f32>(-254f, 638f, 532f, 1234f)));

var<private> global1: u32 = 318u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = 0u;
    var var_0 = vec2<i32>(3843i, ~u_input.c);
    global0 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_f_op_f32(arg_0.a.x + arg_2.a.x);
    let var_2 = arg_1;
    return _wgslsmith_mult_u32(u_input.e.x, 1u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>) -> i32 {
    let var_0 = ~vec3<u32>(u_input.a.x, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.e.x, 21241u), 4294967295u >> (1u % 32u)), arg_1.x);
    global0 = array<Struct_1, 8>();
    return 1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> vec4<f32> {
    global0 = array<Struct_1, 8>();
    let var_0 = vec2<bool>(_wgslsmith_div_f32(arg_2, -131f) == arg_1.a.x, false);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, arg_2, -159f)))));
    let var_2 = var_1.a.wy;
    let var_3 = 1u;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), var_1.a.x, -921f));
}

fn func_1(arg_0: f32) -> f32 {
    global1 = _wgslsmith_add_u32(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -347f, arg_0, arg_0) - vec4<f32>(arg_0, -1548f, arg_0, arg_0)))), global0[_wgslsmith_index_u32(59269u, 8u)]), reverseBits(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 37643u) & ~(~4294967295u)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(i32(-1i) * -36654i, func_3(vec3<i32>(10478i, -1i, u_input.d), vec3<u32>(1u, u_input.e.x, 1u) ^ vec3<u32>(59973u, u_input.b.x, 31177u)), -11856i, 1i), Struct_1(vec4<f32>(arg_0, 1f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -825f))), _wgslsmith_f_op_f32(arg_0 + 146f), countOneBits(~vec3<u32>(u_input.b.x, 16616u, u_input.a.x)))));
    global0 = array<Struct_1, 8>();
    var var_1 = !(~u_input.c <= max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(u_input.c, -2147483647i)), u_input.c));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 8u)];
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x) * arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(-1298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(-1332f)), _wgslsmith_f_op_f32(min(-1297f, -312f)), all(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1223f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -358f)))));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-235f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x)))), _wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)) * var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.b.x, 0u, all(vec4<bool>(true, true, true, true))));
}

