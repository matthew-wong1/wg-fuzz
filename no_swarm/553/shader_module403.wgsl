struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = !vec3<bool>(true, select(arg_0, arg_0, true), true);
    let var_1 = -39034i;
    global0 = array<vec4<bool>, 2>();
    let var_2 = Struct_1(firstTrailingBit(abs(~(~0u))), reverseBits(((u_input.b ^ u_input.b) >> (~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 43877u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 2u, u_input.a.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4293u), vec4<u32>(u_input.a.x, 9769u, 1u, 4294967295u))) % vec4<u32>(32u))));
    return vec2<bool>(true, any(var_0) & (true & (u_input.b.x >= abs(var_2.b.x))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<f32> {
    global0 = array<vec4<bool>, 2>();
    var var_0 = 1u;
    var var_1 = -1188f;
    var_0 = countOneBits(max(arg_0.a, _wgslsmith_div_u32(~u_input.a.x, firstTrailingBit(arg_0.a)) | 2530u));
    global0 = array<vec4<bool>, 2>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
}

fn func_2(arg_0: vec2<bool>) -> StorageBuffer {
    var var_0 = arg_0.x;
    var var_1 = all(!select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.x, arg_0.x, false), !arg_0.x));
    var_1 = !any(!vec3<bool>(all(vec3<bool>(true, arg_0.x, true)), true, true));
    var_1 = arg_0.x;
    var var_2 = arg_0.x;
    return StorageBuffer(_wgslsmith_add_u32(u_input.a.x, 2295u), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(~u_input.a.x, -select(u_input.b, vec4<i32>(1i, 54656i, u_input.b.x, 2147483647i), false)), vec2<bool>(any(vec3<bool>(false, false, false)), arg_0.x))), 279f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 2>();
    let var_0 = ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x & u_input.a.x) ^ 1u;
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(40909u, abs(var_0), _wgslsmith_sub_u32(u_input.a.x << (var_0 % 32u), ~0u) | var_0), firstLeadingBit(vec3<u32>(~u_input.a.x, abs(_wgslsmith_mod_u32(u_input.a.x, 4294967295u)), ~u_input.a.x)));
    global0 = array<vec4<bool>, 2>();
    let var_2 = countOneBits(firstLeadingBit(var_1));
    global0 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = func_2(select(!vec2<bool>(all(vec3<bool>(false, false, false)), true), !func_1(true, _wgslsmith_div_vec3_f32(vec3<f32>(-903f, -773f, 153f), vec3<f32>(-236f, 472f, -770f))), false));
}

