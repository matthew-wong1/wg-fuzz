struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-1i, -1i), vec2<i32>(1i, -1i), vec2<i32>(11757i, 2147483647i), vec2<i32>(-1i, -24721i), vec2<i32>(-41098i, 0i), vec2<i32>(0i, 31410i), vec2<i32>(0i, 1i), vec2<i32>(36797i, 1i), vec2<i32>(1i, 22833i), vec2<i32>(67379i, 53491i), vec2<i32>(-7140i, 1i), vec2<i32>(1i, 31893i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(18046i, i32(-2147483648)), vec2<i32>(2147483647i, 26635i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = 0u;
    global0 = array<vec2<i32>, 16>();
    var_0 = ~53534u;
    var var_1 = true;
    global0 = array<vec2<i32>, 16>();
    return Struct_1(select(!vec4<bool>(any(vec3<bool>(true, true, false)), false, -2147483647i <= u_input.a, true), vec4<bool>(true, true, true, true), 41605u > _wgslsmith_sub_u32(~0u, arg_0)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    global0 = array<vec2<i32>, 16>();
    var var_0 = any(arg_0.a.yw);
    let var_1 = vec3<u32>(abs(~firstTrailingBit(1u)), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) ^ 0u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(15678u, 1u, 4294967295u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)) & ~select(~0u, max(73451u, 4294967295u), true && arg_1.a.x));
    let var_2 = Struct_1(!arg_1.a);
    return !(!var_2.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_1(select(func_3(func_2(7545u & arg_1, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, -1000f), arg_0))), Struct_1(vec4<bool>(true, true, true, true)), 1i), func_3(Struct_1(vec4<bool>(false, false, true, false)), func_2(53920u << (arg_1 % 32u), vec2<f32>(531f, -1692f)), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(firstTrailingBit(21679u), 16u)], -vec2<i32>(1i, u_input.a))), vec4<bool>(true, true, false, !select(false, false, false))));
    global0 = array<vec2<i32>, 16>();
    global0 = array<vec2<i32>, 16>();
    global0 = array<vec2<i32>, 16>();
    var var_1 = var_0;
    return select(select(!(!var_1.a.wwx), select(select(vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(var_0.a.x, false, false), func_2(arg_1, arg_0).a.x), var_0.a.zwz, vec3<bool>(false, func_3(var_0, var_0, -1i).x, all(var_0.a.zyx))), !(!var_1.a.wwx)), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u << (1u % 32u), 0u << (arg_1 % 32u), _wgslsmith_add_u32(4294967295u, arg_1)), ~vec4<u32>(arg_1, 44974u, 16148u, arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0)) * _wgslsmith_f_op_vec2_f32(-arg_0)))).a.xzx, !vec3<bool>(var_0.a.x, true, !var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 16>();
    var var_0 = -1i;
    var_0 = _wgslsmith_sub_i32(u_input.a, u_input.a);
    var var_1 = select(!select(!func_1(vec2<f32>(-1485f, -231f), 44730u), vec3<bool>(true, true, true), vec3<bool>(func_1(vec2<f32>(653f, 757f), 0u).x, true, true)), func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1187f, -632f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(991f, 887f) + vec2<f32>(912f, 1359f)), vec2<f32>(350f, -688f), any(vec3<bool>(true, true, false))))), 1u), any(func_2(_wgslsmith_add_u32(~1u, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 970f))).a));
    var var_2 = min(abs(_wgslsmith_mod_vec4_u32(~(vec4<u32>(7212u, 32695u, 0u, 1u) >> (vec4<u32>(0u, 0u, 1u, 0u) % vec4<u32>(32u))), vec4<u32>(1u, 1u, 1u, 1u))), max(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, min(min(1u, 0u), ~47099u), abs(20158u), _wgslsmith_div_u32(~0u, ~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1351f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(124f, 525f)) + -369f), -178f))), -_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(980i, u_input.a)), -(~vec2<i32>(u_input.a, u_input.a))));
}

