struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_4) -> bool {
    global0 = u_input.c.x;
    let var_0 = arg_2.b;
    var var_1 = -1653f;
    let var_2 = false;
    global0 = u_input.b.x;
    return false;
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_3(Struct_2(global1.d, global1.d, vec2<bool>(global1.d.a, func_3(vec4<bool>(global1.b.a, false, true, false), vec4<u32>(arg_0.a.x, var_0.a.x, 18815u, global1.c.x), Struct_4(vec2<bool>(global1.e.b.a, true), -463f, arg_1.x, vec3<f32>(2509f, -475f, -444f))) == global1.e.a.a), ~var_0.a.x, ~4294967295u), Struct_1(global1.a.b.a), firstLeadingBit(global1.c), global1.b, global1.e);
    var var_2 = Struct_1(var_1.e.a.a);
    global1 = Struct_3(Struct_2(Struct_1(true), Struct_1(var_2.a), select(!(!var_1.e.c), !select(var_1.a.c, vec2<bool>(var_1.a.a.a, false), vec2<bool>(true, var_2.a)), !var_2.a), ~select(global1.e.d, 1u, false), ~1u), Struct_1(var_1.d.a && true), vec4<u32>(max(7348u, 0u), countOneBits(105890u), min(0u, firstTrailingBit(7873u << (0u % 32u))), firstTrailingBit(_wgslsmith_sub_u32(var_1.c.x, var_1.e.e))), var_1.e.b, var_1.e);
    let var_3 = arg_0.a.x;
    return global1.a.b.a;
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    global0 = u_input.b.x;
    global1 = Struct_3(Struct_2(arg_0.a, Struct_1(all(arg_0.c)), vec2<bool>(~u_input.a == ~6897i, func_2(Struct_5(global1.c.xx), max(vec2<i32>(2147483647i, -25019i), vec2<i32>(u_input.b.x, u_input.b.x)))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.c.yw, global1.c.yz), _wgslsmith_sub_u32(arg_0.e, global1.c.x)) | 30865u, 0u), global1.a.b, vec4<u32>(arg_0.d, ~(~(~global1.c.x)), 1u, _wgslsmith_sub_u32(arg_0.e, global1.e.d)), Struct_1(false), arg_0);
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(616f, 895f, 548f, 245f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-319f, -469f, 101f, -1128f) * vec4<f32>(1095f, -1350f, -1128f, -1413f))))))), vec4<f32>(223f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(763f - -555f) * _wgslsmith_f_op_f32(min(1198f, 1911f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1034f) + -1304f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(922f))))));
    var var_1 = Struct_5(countOneBits(global1.c.zx));
    var var_2 = abs(global1.c.wyw);
    return StorageBuffer(reverseBits(72577u), _wgslsmith_f_op_vec3_f32(var_0.zyz + _wgslsmith_f_op_vec3_f32(floor(var_0.wyz))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_2(global1.a.a, global1.a.b, vec2<bool>(true, true), select(~global1.e.d, global1.a.d, !(global1.d.a | true)), 0u));
}

