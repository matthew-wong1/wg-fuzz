struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<vec4<bool>, 27>;

var<private> global2: array<bool, 15>;

var<private> global3: array<i32, 1> = array<i32, 1>(-50719i);

var<private> global4: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32) -> bool {
    return true;
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -1589f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, arg_1))))))));
    global4 = -1i;
    var var_1 = true;
    global0 = array<i32, 29>();
    let var_2 = u_input.a;
    return -283f;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = select(select(arg_0.a.a.yyz, vec3<bool>(true, arg_0.a.a.x, true), select(select(!arg_0.a.a.yyw, vec3<bool>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(1089u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]), !arg_0.a.a.wyy), !vec3<bool>(true, global2[_wgslsmith_index_u32(24228u, 15u)], arg_1), vec3<bool>(arg_0.a.a.x, true, false))), select(select(vec3<bool>(!global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], false), vec3<bool>(arg_1, arg_1 | true, true), func_2(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 29u)])), vec3<bool>(true, false, !(!global2[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1075f * -1000f) - _wgslsmith_f_op_f32(func_3(Struct_4(755f, Struct_2(Struct_1(vec4<bool>(false, global2[_wgslsmith_index_u32(34648u, 15u)], arg_1, global2[_wgslsmith_index_u32(u_input.a, 15u)])))), -681f, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 1822f))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1009f - -890f)))), false);
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = 3624u;
    global3 = array<i32, 1>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-449f, _wgslsmith_div_f32(1649f, -1000f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(f32(-1f) * -652f))))), Struct_2(func_1(arg_0, true)));
    global3 = array<i32, 1>();
    global3 = array<i32, 1>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 15>();
    let var_0 = 40830u;
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_2(func_1(Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 27u)])), 28938u != u_input.b.x)), func_1(Struct_2(func_1(Struct_2(Struct_1(global1[_wgslsmith_index_u32(24282u, 27u)])), false)), global2[_wgslsmith_index_u32(2690u, 15u)]))) != _wgslsmith_f_op_f32(1543f + -602f);
    global4 = -1i;
    global3 = array<i32, 1>();
    var var_2 = abs(countOneBits(~reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 74955u, u_input.a, u_input.a)))));
    var var_3 = !(!(!(!vec4<bool>(var_1, global2[_wgslsmith_index_u32(43816u, 15u)], global2[_wgslsmith_index_u32(var_2.x, 15u)], global2[_wgslsmith_index_u32(80717u, 15u)]))));
    global2 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(181f, 1000f) + vec2<f32>(765f, -604f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(751f, 667f, -996f), vec3<f32>(-1781f, 1242f, -452f), var_3.wyx)), vec3<f32>(1000f, -825f, -763f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2025f, 1213f, 1172f))))))));
}

