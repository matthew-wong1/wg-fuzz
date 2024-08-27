struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(0i), -926i);

var<private> global1: array<vec3<u32>, 15>;

var<private> global2: array<u32, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1000f, -134f), vec3<f32>(-420f, -1146f, -647f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(185f, 664f, -1214f) * vec3<f32>(1000f, 1290f, -331f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(164f, 477f, -470f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-440f, 433f, -764f) + vec3<f32>(166f, 1259f, 212f))), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var var_1 = Struct_5(Struct_1(vec4<bool>(true, select(true, true, true), !(-1i < global0.b), true), true));
    var var_2 = var_0.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.a.xx))) + vec2<f32>(var_0.a.x, 149f));
    var var_4 = global0.a;
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    global2 = array<u32, 13>();
    let var_0 = Struct_3(vec3<f32>(366f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(arg_0.a), -1i))) * _wgslsmith_f_op_f32(max(-630f, -379f))), 455f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(288f * -936f) + -277f), _wgslsmith_f_op_f32(trunc(982f)))));
    global2 = array<u32, 13>();
    var var_1 = u_input.e;
    global1 = array<vec3<u32>, 15>();
    return arg_2.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = -1412f;
    var var_1 = firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_2.x, 0u, ~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(max(72397u, global2[_wgslsmith_index_u32(u_input.e.x, 13u)]), 13u)], ~global2[_wgslsmith_index_u32(arg_2.x, 13u)], _wgslsmith_mod_u32(arg_0.x, 1u))), 15u)]);
    return Struct_2(countOneBits(-34617i));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = func_4(vec3<u32>(0u, ~arg_3.x, firstTrailingBit(_wgslsmith_mod_u32(u_input.e.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27921u, 13u)], 13u)]) ^ (0u ^ global2[_wgslsmith_index_u32(arg_3.x, 13u)]))), !(!vec4<bool>(arg_2.x == false, false, false && arg_2.x, !arg_2.x)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.x, 13u)], 13u)], _wgslsmith_mod_u32(u_input.e.x, 1u), ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)], 76756u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 13u)], 13u)], global2[_wgslsmith_index_u32(u_input.d, 13u)], arg_3.x, u_input.a)), vec4<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(38729u, 13u)], 3573u) | vec4<u32>(0u, 17217u, 0u, global2[_wgslsmith_index_u32(u_input.a, 13u)])), 29787u), vec4<bool>(!all(!vec3<bool>(arg_2.x, arg_2.x, true)), false, arg_2.x, !(false | func_2(Struct_2(global0.a.a), global0.a, vec3<bool>(arg_2.x, arg_2.x, false)))));
    var var_1 = -1i;
    return vec2<u32>(global2[_wgslsmith_index_u32(abs(~(~54559u)), 13u)], ~min(_wgslsmith_clamp_u32(select(global2[_wgslsmith_index_u32(arg_3.x, 13u)], u_input.d, arg_2.x), countOneBits(4294967295u), 57393u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(~15989u, 115u, firstLeadingBit(0u)), max(vec3<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 13u)], 0u), 13u)]), 16159u, 16141u), ~(~countOneBits(vec3<u32>(47998u, u_input.e.x, u_input.e.x)))));
    let var_1 = global0.a;
    global0 = Struct_4(Struct_2(firstLeadingBit(0i)), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, -357f))) * vec2<f32>(1f, 1f)), ((~vec2<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 13u)], 13u)]) & select(vec2<u32>(0u, 42350u), u_input.e, true)) ^ select(func_1(vec3<f32>(-1319f, 439f, -287f), Struct_4(global0.a, var_1.a), vec4<bool>(false, false, false, false), vec2<u32>(var_0.x, 0u)), var_0.yz, vec2<bool>(false, true))) | vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.d, 13u)]), u_input.b.ywz, var_0.zx, 213f);
}

