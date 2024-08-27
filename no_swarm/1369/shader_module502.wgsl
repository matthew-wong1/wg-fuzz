struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, true, -1000f), Struct_1(false, false, 1530f), Struct_1(false, true, -152f), Struct_1(true, true, 925f), Struct_1(false, false, 497f), Struct_1(false, false, -115f), Struct_1(true, false, -965f), Struct_1(false, false, 310f), Struct_1(true, true, 647f), Struct_1(true, false, -402f), Struct_1(false, true, -919f), Struct_1(true, false, -1000f), Struct_1(true, false, 363f), Struct_1(true, true, -556f), Struct_1(true, true, -1000f), Struct_1(true, false, 159f), Struct_1(true, true, 144f), Struct_1(false, false, 443f), Struct_1(false, false, -1318f), Struct_1(true, false, -1295f), Struct_1(false, true, -812f), Struct_1(false, false, -2245f), Struct_1(true, false, 211f), Struct_1(true, true, 1923f), Struct_1(true, false, -916f), Struct_1(true, true, -985f), Struct_1(false, false, 908f), Struct_1(false, false, -248f), Struct_1(false, false, 156f), Struct_1(false, false, 1268f), Struct_1(true, true, -179f));

var<private> global2: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true));

var<private> global3: array<bool, 22>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    return 908f;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = arg_2.c;
    let var_1 = arg_1;
    global0 = all(select(!select(vec2<bool>(var_1.a, arg_1.a), select(vec2<bool>(false, true), vec2<bool>(var_1.a, arg_2.b), vec2<bool>(true, arg_1.a)), !vec2<bool>(global3[_wgslsmith_index_u32(40090u, 22u)], true)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, var_1.a), var_1.a), select(vec2<bool>(false, arg_1.a), vec2<bool>(var_1.a, arg_2.a), vec2<bool>(false, false)), select(false, arg_2.a, var_1.a)), !vec2<bool>(global3[_wgslsmith_index_u32(74778u, 22u)], arg_2.a), select(!vec2<bool>(false, var_1.b), vec2<bool>(global3[_wgslsmith_index_u32(1u, 22u)], true), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(14042u, 140836u), 22u)])), true));
    let var_2 = vec4<bool>(~1u == _wgslsmith_dot_vec2_u32(vec2<u32>(1u, reverseBits(32692u)), firstTrailingBit(~vec2<u32>(1u, 25739u))), all(select(vec2<bool>(false, true | arg_1.b), select(vec2<bool>(true, var_1.b), vec2<bool>(arg_1.b, false), true), !select(vec2<bool>(true, arg_2.a), vec2<bool>(arg_1.a, global3[_wgslsmith_index_u32(42710u, 22u)]), vec2<bool>(true, arg_1.a)))), false, true);
    var var_3 = vec3<i32>(1i, min(max(1i, ~1i), 0i), countOneBits(-max(~20980i, -u_input.a)));
    return vec2<bool>(!var_1.b, var_2.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    return 1u;
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    let var_0 = vec3<i32>(u_input.a, min(1i, select(0i, 13493i, u_input.a > 2147483647i) | u_input.a), u_input.a);
    global3 = array<bool, 22>();
    let var_1 = global2[_wgslsmith_index_u32(min(func_4(select(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(97279u, 22u)]), select(select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(97873u, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)]), true), func_3(arg_0, global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]), -925f > arg_0.x), true), Struct_1(_wgslsmith_add_u32(1691u, 0u) >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 59251u, 0u), vec4<u32>(15949u, 4294967295u, 0u, 1u)), true || (var_0.x >= -41759i), arg_0.x), global3[_wgslsmith_index_u32(1u, 22u)], Struct_1(!all(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(0u, 22u)], true, global3[_wgslsmith_index_u32(1u, 22u)])), any(!global2[_wgslsmith_index_u32(44501u, 6u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, 1594f))))), abs(4294967295u)), 6u)];
    let var_2 = Struct_1(false, var_1.x, 170f);
    let var_3 = select(_wgslsmith_mod_i32(var_0.x, ~(~u_input.a)), _wgslsmith_dot_vec2_i32(var_0.xy, _wgslsmith_sub_vec2_i32(vec2<i32>(26156i, u_input.a), reverseBits(vec2<i32>(-39864i, var_0.x)) | -vec2<i32>(u_input.a, -2147483647i))), false);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1(-reverseBits(~vec3<i32>(-1i, u_input.a, u_input.a)), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f * _wgslsmith_f_op_f32(f32(-1f) * -1369f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)), global3[_wgslsmith_index_u32(4294967295u, 22u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2007f, -1152f)) * 307f))), -278f);
    global0 = true;
    global1 = array<Struct_1, 31>();
    global0 = global3[_wgslsmith_index_u32(63833u, 22u)];
    global3 = array<bool, 22>();
    var var_1 = vec3<bool>(all(!(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], false))) & !global3[_wgslsmith_index_u32(4294967295u, 22u)], ~_wgslsmith_sub_u32(func_2(var_0.xyx), func_2(vec3<f32>(502f, 689f, 3157f))) > ~(~_wgslsmith_mult_u32(43660u, 31372u)), !all(global2[_wgslsmith_index_u32(0u, 6u)]));
    let var_2 = global1[_wgslsmith_index_u32((1u & _wgslsmith_mod_u32(1041u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 17878u), vec3<u32>(1u, 30917u, 4294967295u))))) | ~firstLeadingBit(4294967295u), 31u)];
    global3 = array<bool, 22>();
    var var_3 = Struct_1(!any(select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, var_1.x, true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 22u)], var_1.x, false))) || false, global3[_wgslsmith_index_u32(45817u, 22u)], var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 1u, 1u), abs(~(~1u)));
}

