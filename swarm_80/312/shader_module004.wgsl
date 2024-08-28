struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(48555i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(8756i, 2147483647i), vec2<i32>(-2082i, -87076i), vec2<i32>(-1i, -1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<vec2<i32>, 5>();
    var var_1 = ~u_input.b;
    global0 = array<vec2<i32>, 5>();
    var_1 = ~u_input.b;
    return arg_1;
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -257f)))))) + _wgslsmith_f_op_f32(1837f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1230f))))));
    var var_1 = Struct_5(Struct_1(-1464f), firstTrailingBit(2147483647i));
    global0 = array<vec2<i32>, 5>();
    var_0 = 644f;
    var var_2 = vec4<bool>(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1444f, var_1.a.a, all(vec2<bool>(arg_0.x, arg_0.x)))))) > var_1.a.a, true, arg_0.x);
    return 34102u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 11376u, 7092u, 40315u), vec4<u32>(u_input.b, u_input.d, u_input.d, u_input.b)), func_3(vec3<bool>(arg_3, true, arg_3)), ~17093u), firstTrailingBit(~vec3<u32>(u_input.d, u_input.d, 4294967295u))), vec3<u32>(48345u, ~reverseBits(115375u), 4294967295u & u_input.d)), vec3<u32>(u_input.b, ~u_input.d, 1u));
    var var_1 = arg_2.d.a;
    var var_2 = _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(1183f * arg_2.a));
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    return ~(~vec4<u32>(_wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(4294967295u, 4294967295u)), 26150u, var_0.x, ~u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(firstTrailingBit(vec4<u32>(4294967295u, 51670u, 0u, u_input.d))) & func_2(func_1(Struct_1(-696f), Struct_1(690f)), u_input.c, Struct_2(-383f, Struct_1(-654f), Struct_1(-838f), Struct_1(-1155f)), true)));
}

