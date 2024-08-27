struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(-22309i, -35962i);

var<private> global1: array<f32, 9> = array<f32, 9>(1000f, -476f, 1042f, -1465f, 557f, 367f, -412f, 190f, -813f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    global0 = array<i32, 2>();
    global1 = array<f32, 9>();
    let var_0 = vec3<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), 1u, ~55192u, _wgslsmith_add_u32(38574u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), 1u);
    return _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~var_0.x) << (var_0.x % 32u), var_0.x), 9u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0.x, 9u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(92823u, 9u)]))))));
}

fn func_2() -> Struct_4 {
    global1 = array<f32, 9>();
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    let var_0 = _wgslsmith_f_op_f32(floor(410f));
    return Struct_4(_wgslsmith_div_f32(-1065f, _wgslsmith_f_op_f32(func_3(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, 716i)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4) -> bool {
    global1 = array<f32, 9>();
    let var_0 = firstTrailingBit(firstLeadingBit(abs(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(arg_0.a, 2u)])))) > -(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.a, 38139u), 2u)] << (1u % 32u));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.a, 9u)] - global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 9u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -683f), var_1.a), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 1234u), vec3<u32>(arg_1.a, 4294967295u, 1u)), ~20778u), 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a)) * arg_2.a))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 9>();
    var var_0 = _wgslsmith_f_op_f32(max(1271f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-389f, -480f))));
    global0 = array<i32, 2>();
    var var_1 = Struct_1(select(select(vec4<bool>(true, func_1(Struct_3(31287u), Struct_3(59250u), Struct_4(global1[_wgslsmith_index_u32(1u, 9u)])), 1910f < global1[_wgslsmith_index_u32(108638u, 9u)], any(vec2<bool>(true, true))), vec4<bool>(any(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, false)), true), true), vec4<bool>(any(vec2<bool>(true, true)), true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), any(vec2<bool>(true, false)) & true), any(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false)))), select(vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true)), true, !func_1(Struct_3(4294967295u), Struct_3(0u), Struct_4(468f)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)))));
    var_1 = Struct_1(!var_1.b, vec4<bool>(u_input.a >= firstLeadingBit(select(36233i, global0[_wgslsmith_index_u32(4294967295u, 2u)], var_1.a.x)), !(!var_1.b.x), all(select(var_1.a.zww, vec3<bool>(var_1.b.x, false, false), vec3<bool>(false, true, var_1.b.x))), var_1.a.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(116364u, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(23621u, 9u)] - 1517f))))));
    var var_3 = u_input.b;
    let var_4 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_2.x)), -821f, var_2.x, -964f))), u_input.b);
}

