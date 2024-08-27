struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: array<i32, 7> = array<i32, 7>(11148i, 57785i, 14515i, -50679i, 16094i, 32981i, 41352i);

var<private> global1: bool;

var<private> global2: u32 = 26057u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    let var_0 = Struct_3(Struct_2(select(vec4<bool>(select(arg_1, true, arg_1), true, all(vec2<bool>(arg_1, true)), any(vec2<bool>(arg_1, false))), !vec4<bool>(arg_1, arg_1, arg_1, true), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-246f)), -1946f), ~(vec4<u32>(1294u, arg_0, u_input.a, u_input.a) | vec4<u32>(u_input.a, 4294967295u, 4294967295u, 103124u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -197f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -534f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1473f)))), _wgslsmith_div_i32(-arg_3, -158i));
    return var_0.a.b;
}

fn func_3(arg_0: f32) -> vec2<i32> {
    global0 = array<i32, 7>();
    var var_0 = 19259u;
    var_0 = firstTrailingBit(abs(abs(u_input.a)));
    var var_1 = 5496u;
    var var_2 = select(select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(select(false, true, false), true, any(vec4<bool>(false, false, false, true)), any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true), any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)))), !vec4<bool>(true, any(vec3<bool>(false, false, true)), true, !all(vec4<bool>(true, true, true, true))), vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, true));
    return _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(0i), -_wgslsmith_mult_i32(u_input.b, i32(-1i) * -2147483647i)), min(vec2<i32>(~(i32(-1i) * -10466i), u_input.c.x), -vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], -global0[_wgslsmith_index_u32(u_input.a, 7u)])));
}

fn func_1(arg_0: i32, arg_1: bool) -> bool {
    global1 = false;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(459f, 1000f, 830f, 1868f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(179f)), _wgslsmith_f_op_f32(func_2(u_input.a, arg_1, vec3<i32>(arg_0, u_input.b, global0[_wgslsmith_index_u32(u_input.a, 7u)]), u_input.d)), _wgslsmith_f_op_f32(min(-1000f, -536f)), -1186f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(164f, -863f, -436f, 1164f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-123f, 815f, _wgslsmith_f_op_f32(trunc(-622f)), -1303f))));
    let var_1 = -825i;
    global2 = _wgslsmith_div_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_sub_u32(81427u, u_input.a), 1u, 1u), ~firstLeadingBit(vec4<u32>(41345u, 0u, 4294967295u, u_input.a))), 0u), 80712u);
    let var_2 = u_input.c ^ func_3(122f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 7680u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1283f, -1000f, -909f, 307f), vec4<f32>(165f, -752f, 726f, 943f), vec4<bool>(false, true, true, true))) + vec4<f32>(618f, -2020f, -163f, 943f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1480f, -165f, 1328f, -1831f)))))));
    var var_2 = !select(vec3<bool>(func_1(-2147483647i, false) & true, true, true), vec3<bool>(true, true, true), true);
    let var_3 = countOneBits(u_input.a);
    var_2 = !select(vec3<bool>(true, var_2.x == any(vec3<bool>(var_2.x, false, true)), -976f != _wgslsmith_f_op_f32(select(-2125f, -596f, false))), select(!select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, var_2.x, var_2.x), var_2.x), select(select(vec3<bool>(false, var_2.x, true), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false)), vec3<bool>(var_2.x, true, true), var_2.x), var_2.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

