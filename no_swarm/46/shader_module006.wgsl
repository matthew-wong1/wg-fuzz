struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-1232f, -737f, 1493f, 878f, -1054f, -135f, -821f, -654f, 1468f, -1994f, -1000f, -573f, -833f, -193f, -1000f, 1394f, 582f, 859f, -1205f, -181f, -774f, -1402f, -1022f, 1234f, 890f, -608f, -2310f);

var<private> global1: array<Struct_2, 17>;

var<private> global2: f32 = 625f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)])) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_div_f32(1096f, global0[_wgslsmith_index_u32(u_input.c.x, 27u)])))));
    global1 = array<Struct_2, 17>();
    let var_1 = -u_input.d.ww;
    global2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(37462u, u_input.b.x << (u_input.b.x % 32u)), 27u)]);
    let var_2 = Struct_1(-1014f, u_input.d.xxz & -vec3<i32>(~1i, 1i, 0i));
    return all(!vec2<bool>(false, any(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    let var_0 = !any(vec4<bool>(func_3(), true, arg_0, arg_0));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1293f - -299f)));
    let var_1 = _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_add_u32(~(~(~arg_1)), 4294967295u), ~49287u ^ ~reverseBits(~u_input.c.x));
    let var_2 = 20101i;
    return 55888u;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> u32 {
    let var_0 = ~(select(_wgslsmith_mod_vec3_u32(~u_input.b, ~vec3<u32>(arg_1.a, arg_0, 14227u)), select(u_input.b, _wgslsmith_sub_vec3_u32(u_input.b, u_input.c.xxy), vec3<bool>(true, false, false)), select(true, all(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true)))) & ~vec3<u32>(~arg_0, arg_0, func_2(false, u_input.c.x, vec4<f32>(-284f, global0[_wgslsmith_index_u32(arg_1.a, 27u)], global0[_wgslsmith_index_u32(40109u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]))));
    let var_1 = vec2<u32>(~1u, ~arg_1.a);
    global0 = array<f32, 27>();
    let var_2 = ~_wgslsmith_dot_vec2_u32(u_input.b.xz, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.b.zx)));
    let var_3 = reverseBits(~vec4<u32>(_wgslsmith_mult_u32(var_2, var_1.x), _wgslsmith_dot_vec2_u32(var_1, ~var_1), ~(~1u), ~(~var_0.x)));
    return var_0.x;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<bool>) -> StorageBuffer {
    var var_0 = abs(countOneBits(vec4<i32>(_wgslsmith_clamp_i32(select(u_input.a, -77390i, arg_2.x), select(0i, -8525i, false), reverseBits(-29648i)), -(~u_input.a), _wgslsmith_mod_i32(u_input.d.x << (3024u % 32u), _wgslsmith_dot_vec3_i32(u_input.d.wxx, vec3<i32>(u_input.d.x, u_input.e, -15066i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-9872i, u_input.e), ~u_input.d.zz))));
    let var_1 = arg_2.x & (!(!select(true, arg_2.x, false)) | all(arg_2.zzx));
    return StorageBuffer(abs(u_input.b.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    let x = u_input.a;
    s_output = func_4(1u, ~reverseBits(vec4<u32>(0u, u_input.c.x, ~20737u, func_1(4294967295u, Struct_2(u_input.b.x, Struct_1(2067f, u_input.d.zzy))))), vec4<bool>(false, true, ~u_input.c.x > _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c.zyy, vec3<u32>(u_input.b.x, u_input.c.x, 4294967295u)), countOneBits(u_input.c.x), firstLeadingBit(u_input.c.x)), !(!any(vec4<bool>(true, false, true, true)))));
}

