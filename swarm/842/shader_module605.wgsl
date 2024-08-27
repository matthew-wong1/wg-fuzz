struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 10130u, 0u);

var<private> global2: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec4<f32> {
    global2 = Struct_3(any(select(!vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], false, global2.a), select(vec4<bool>(true, global0[_wgslsmith_index_u32(global1.x, 15u)], true, global2.a), !vec4<bool>(global0[_wgslsmith_index_u32(global2.c, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], true, global0[_wgslsmith_index_u32(8185u, 15u)]), !global0[_wgslsmith_index_u32(global2.c, 15u)]), select(!vec4<bool>(global2.a, global2.a, global2.a, false), !vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(global1.x, 15u)]), !global2.a))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)))), 32815u);
    var var_0 = ~(~1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1235f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-326f)), -485f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1040f + arg_0))) - _wgslsmith_f_op_f32(f32(-1f) * -440f)), _wgslsmith_f_op_f32(trunc(730f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-410f, global2.b, _wgslsmith_f_op_f32(arg_0 - global2.b))))));
    let var_2 = vec4<i32>(-arg_1 & arg_1, reverseBits(arg_1), arg_1 >> (~3671u % 32u), -arg_1);
    var var_3 = global1.x >= ~global2.c;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(535f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.b)), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -618f), 1813f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -162f, arg_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, -172f, 1440f, global2.b))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, arg_0, 139f, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(515f, arg_0, var_1.x, 378f) * vec4<f32>(-272f, var_1.x, 226f, -490f)), true)))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    let var_0 = Struct_3(any(!select(select(vec3<bool>(true, global2.a, arg_0.a), vec3<bool>(false, false, true), global2.a), !vec3<bool>(true, global0[_wgslsmith_index_u32(44663u, 15u)], false), select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_2.x, arg_0.a, true), vec3<bool>(global2.a, false, false)))), _wgslsmith_f_op_vec4_f32(func_1(arg_0.b, countOneBits(arg_1))).x, u_input.c.x);
    var var_1 = select(vec2<bool>(arg_2.x, true), vec2<bool>(var_0.a, false), select(arg_2, vec2<bool>(true, global0[_wgslsmith_index_u32(select(arg_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global2.c), vec2<u32>(arg_0.c, arg_0.c)), all(vec3<bool>(false, global2.a, global2.a))), 15u)]), select(select(arg_2, vec2<bool>(arg_2.x, false), var_0.a), vec2<bool>(true, true), arg_2)));
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))), 1f)), arg_0.a)) + arg_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -793f), arg_1)).x);
}

fn func_2(arg_0: Struct_3) -> vec4<f32> {
    global1 = vec3<u32>(select(40774u, ~firstTrailingBit(~1u), false), ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(11713u, 1u, 1u), u_input.c.wyy)), 5447u);
    var var_0 = ~global2.c;
    global2 = Struct_3(true, arg_0.b, ~(~global2.c));
    let var_1 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(global2.a, true, global0[_wgslsmith_index_u32(4294967295u, 15u)], false)), true, global0[_wgslsmith_index_u32(0u << (global1.x % 32u), 15u)]), !vec3<bool>(false, false, arg_0.a)), !(!vec3<bool>(true, arg_0.a, true)));
    let var_2 = Struct_2(Struct_1(!vec4<bool>(!global0[_wgslsmith_index_u32(1871u, 15u)], !var_1.x, global2.a, all(var_1)), arg_0.c, arg_0.b), 38803u, ~(_wgslsmith_add_u32(32871u, 1u) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global2.c, global1.x, global2.c), vec4<u32>(20526u, 93074u, 77686u, 0u))), min(-61789i, abs(abs(41294i)) | _wgslsmith_clamp_i32(~1i, 6741i, 1i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1005f), 710f, 856f, _wgslsmith_f_op_f32(func_3(arg_0, var_2.d, !vec2<bool>(true, var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(abs(u_input.c), vec4<u32>(1u, 1u, global1.x, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(419f, global2.b, global2.b, -337f) + vec4<f32>(global2.b, -334f, -1574f, -1466f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.b, -208f, -814f)))) + _wgslsmith_f_op_vec4_f32(func_1(global2.b, -1i))), firstTrailingBit(_wgslsmith_mod_i32(1i, -17979i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_3(global0[_wgslsmith_index_u32(global1.x, 15u)], global2.b, 31480u))))), 1i);
}

