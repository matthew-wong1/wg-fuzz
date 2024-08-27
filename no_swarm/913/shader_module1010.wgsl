struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(2657f, -200f, -758f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_0 = ~(-u_input.a.x);
    var var_1 = vec3<bool>(arg_1, true && arg_1, arg_1);
    let var_2 = var_0;
    return 1u;
}

fn func_3() -> vec4<i32> {
    return _wgslsmith_mult_vec4_i32(u_input.a | select(~vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x) & abs(u_input.a), firstTrailingBit(u_input.a << (vec4<u32>(u_input.b, u_input.b, 19265u, u_input.b) % vec4<u32>(32u))), true), vec4<i32>(1i, u_input.a.x | _wgslsmith_dot_vec3_i32(u_input.a.wzx, ~u_input.a.wzx), u_input.a.x, 44503i >> (1u % 32u)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = !(!(!vec2<bool>(true, all(vec4<bool>(false, true, false, true)))));
    var var_1 = -u_input.a;
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~max(vec4<i32>(-48301i, var_1.x, u_input.a.x, var_1.x), u_input.a), vec4<i32>(-8036i, var_1.x, 15746i, -1i)), u_input.a), u_input.a ^ firstLeadingBit(func_3()));
    return _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(arg_0.b, 1u, 81943u, 97598u), vec4<u32>(6107u, u_input.b, arg_0.b, 16008u), false)), reverseBits(vec4<u32>(907u, ~arg_0.b, abs(arg_0.b), arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(1503f));
    global0 = array<f32, 3>();
    let var_1 = select(false, true, true);
    let var_2 = (~u_input.b ^ 4294967295u) | (u_input.b ^ countOneBits(~_wgslsmith_mult_u32(u_input.b, 1u)));
    var var_3 = vec3<u32>(1u, func_1(Struct_1(-185f, ~firstTrailingBit(var_2)), !select(true, true, false)), min(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(~u_input.b, ~u_input.b)), func_2(Struct_1(_wgslsmith_f_op_f32(1000f * -1082f), ~33123u))));
    global0 = array<f32, 3>();
    let var_4 = ~_wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(49526u, 0u), vec2<u32>(var_3.x, 0u)), var_3.zz);
    let x = u_input.a;
    s_output = StorageBuffer(324f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, global0[_wgslsmith_index_u32(var_4.x, 3u)], var_0))) * vec3<f32>(global0[_wgslsmith_index_u32(28694u, 3u)], var_0, var_0))))));
}

