struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(5251u, 0u), vec2<u32>(0u, 67856u), vec2<u32>(30973u, 34678u), vec2<u32>(10872u, 20407u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 51207u), vec2<u32>(30252u, 76189u), vec2<u32>(0u, 0u), vec2<u32>(29006u, 4294967295u), vec2<u32>(972u, 46046u), vec2<u32>(4294967295u, 6682u), vec2<u32>(17613u, 8412u), vec2<u32>(35722u, 6443u), vec2<u32>(46531u, 1u), vec2<u32>(5784u, 7249u), vec2<u32>(1u, 0u), vec2<u32>(1u, 26913u), vec2<u32>(4294967295u, 42855u), vec2<u32>(111818u, 4294967295u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u ^ u_input.e, 5670u, u_input.c, ~u_input.e), ~vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.e)));
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    return Struct_1(var_0.a);
}

fn func_1() -> vec3<f32> {
    var var_0 = func_2(u_input.a.x);
    global0 = array<vec2<u32>, 21>();
    var_0 = Struct_1(_wgslsmith_mult_vec4_u32(var_0.a, vec4<u32>(var_0.a.x << (var_0.a.x % 32u), abs(var_0.a.x), 68668u, 16498u)));
    global0 = array<vec2<u32>, 21>();
    var var_1 = u_input.b.x;
    return vec3<f32>(-904f, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(select(1128f, _wgslsmith_f_op_f32(select(1162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(974f * -1257f)), false)), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<bool> {
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    var var_0 = ~u_input.b.x;
    var var_1 = arg_1.x;
    return !(!select(vec2<bool>(true, false), vec2<bool>(any(vec2<bool>(true, true)), u_input.a.x >= u_input.a.x), vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<vec2<u32>, 21>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()));
    let var_2 = func_3(Struct_1(select(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 60527u, 32522u, 60229u), vec4<u32>(u_input.c, 1u, u_input.d, u_input.d)), select(~vec4<u32>(u_input.c, u_input.d, u_input.c, 1u), ~vec4<u32>(u_input.e, u_input.e, 76475u, 3559u), vec4<bool>(true, false, false, false)), any(vec3<bool>(false, false, true)) != true)), vec2<f32>(979f, var_1.x));
    var var_3 = Struct_1(abs(~select(vec4<u32>(130040u, u_input.e, 1u, 70027u), vec4<u32>(u_input.d, 1u, u_input.d, 4294967295u), vec4<bool>(false, false, true, var_2.x)) << (firstTrailingBit(~vec4<u32>(u_input.d, u_input.d, u_input.e, 0u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(823f))))), vec3<u32>(var_3.a.x, abs(_wgslsmith_mod_u32(var_3.a.x, u_input.e)) & u_input.e, _wgslsmith_mult_u32(func_2(-u_input.a.x).a.x, u_input.c)));
}

