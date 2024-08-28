struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<i32>) -> f32 {
    let var_0 = Struct_1(1043f);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 253f) * vec2<f32>(global0[_wgslsmith_index_u32(1u, 11u)], -160f))))))), vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), global0[_wgslsmith_index_u32(u_input.a >> (58729u % 32u), 11u)])));
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    let var_2 = true;
    return _wgslsmith_div_f32(-654f, var_0.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = arg_0;
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    var var_1 = vec4<u32>(1u, ~_wgslsmith_sub_u32(min(1u, u_input.a), _wgslsmith_mod_u32(u_input.a, 0u)), u_input.a, 32339u);
    global0 = array<f32, 11>();
    return false && any(select(vec2<bool>(true, true), vec2<bool>(false, u_input.b.x > -11721i), u_input.a != abs(var_1.x)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = vec2<i32>(min(u_input.c, u_input.b.x), ~reverseBits(_wgslsmith_mult_i32(0i, u_input.b.x) | u_input.b.x));
    var var_1 = abs(vec4<i32>(firstTrailingBit(reverseBits(-1i)), min(-2147483647i, u_input.b.x), -(-38419i >> (~u_input.a % 32u)), var_0.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(arg_1.x, 755f)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f - -406f))) - var_2.a));
    var var_4 = vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, ~u_input.a, 25217u, u_input.a), ~(~vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u))), 1u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a))) * -655f) - arg_1.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    global0 = array<f32, 11>();
    let var_0 = reverseBits(u_input.a) ^ (4294967295u & u_input.a);
    var var_1 = Struct_1(arg_0.a);
    let var_2 = func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(4294967295u, 1u, var_0, u_input.a))), vec4<u32>(~37984u, 1u, var_0, _wgslsmith_sub_u32(var_0, var_0))), abs(32624u), vec4<i32>(i32(-1i) * -22494i, u_input.c | -15343i, -2147483647i, 25490i) << (~select(vec4<u32>(4294967295u, var_0, u_input.a, var_0), vec4<u32>(1u, 0u, 4294967295u, 48821u), vec4<bool>(true, false, false, true)) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1193f), 163f, -1000f, 619f), all(vec3<bool>(true, func_3(Struct_1(-1000f), Struct_1(-980f)), true)) != true);
    let var_3 = !any(vec3<bool>(-17907i < _wgslsmith_sub_i32(1i, u_input.c), false, !(arg_1.x != arg_0.a)));
    return 746f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 11u)], 679f)))), 669f);
    global0 = array<f32, 11>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(760f, _wgslsmith_f_op_f32(func_1(Struct_1(-129f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1560f, 1796f, var_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 215f, var_0.x) - vec3<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)])), vec3<bool>(true, true, true))))), all(vec4<bool>(true, true, true, true)))));
    let var_3 = _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_f32(-218f - _wgslsmith_f_op_f32(abs(1903f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-418f))), 712f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1532f, -1031f, 1324f)), vec3<f32>(1163f, 229f, global0[_wgslsmith_index_u32(u_input.a, 11u)]))))))));
    var_2 = Struct_1(-1259f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(var_1, vec3<f32>(var_1.a, 572f, var_2.a))), _wgslsmith_div_f32(var_3, var_0.x), var_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(1226f, vec4<f32>(1383f, -1000f, -2005f, 1405f), false).a, _wgslsmith_f_op_f32(-355f + var_2.a), var_3) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1682f, var_1.a, global0[_wgslsmith_index_u32(1900u, 11u)]) + vec3<f32>(var_1.a, var_1.a, var_2.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3, 101f, var_3))), u_input.a != 0u)))), abs(~countOneBits(-2141i)));
}

