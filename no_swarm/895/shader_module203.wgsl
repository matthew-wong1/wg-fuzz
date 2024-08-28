struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(27055u, 1u, 17184u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 32510u, 4294967295u), vec3<u32>(38296u, 27344u, 0u), vec3<u32>(4294967295u, 4294967295u, 7903u), vec3<u32>(1u, 33558u, 5818u), vec3<u32>(11347u, 22358u, 1u), vec3<u32>(41495u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(8975u, 18057u, 60295u), vec3<u32>(94137u, 69542u, 37687u), vec3<u32>(4294967295u, 1u, 27565u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(9522u, 4294967295u, 14292u), vec3<u32>(0u, 0u, 136301u), vec3<u32>(22893u, 0u, 60184u), vec3<u32>(68245u, 48542u, 29658u), vec3<u32>(1u, 50687u, 38288u), vec3<u32>(1u, 42034u, 97764u), vec3<u32>(40566u, 65258u, 4294967295u), vec3<u32>(0u, 56380u, 108294u));

var<private> global1: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

var<private> global2: vec4<i32>;

var<private> global3: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-106f, 265f, 1145f), vec3<f32>(892f, 1540f, 1071f), vec3<f32>(1771f, -244f, -869f), vec3<f32>(-1000f, 142f, -611f), vec3<f32>(1131f, 131f, -1839f), vec3<f32>(-281f, -347f, -1523f), vec3<f32>(-731f, 688f, 945f), vec3<f32>(-795f, 2664f, 1128f), vec3<f32>(-456f, -150f, 1173f), vec3<f32>(208f, -1733f, 542f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_2(vec2<u32>(1u, min(u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 4816u, 101208u), vec3<u32>(4294967295u, 9154u, 89147u), global0[_wgslsmith_index_u32(u_input.c, 22u)]), ~u_input.a))), vec3<bool>(false, false, !(0u > ~u_input.b)));
    let var_1 = true;
    global3 = array<vec3<f32>, 10>();
    global3 = array<vec3<f32>, 10>();
    global1 = array<vec3<bool>, 32>();
    return ~u_input.c >> (0u % 32u);
}

fn func_2(arg_0: u32) -> f32 {
    global3 = array<vec3<f32>, 10>();
    var var_0 = Struct_2(~vec2<u32>(4294967295u, func_3(-1295f)), global1[_wgslsmith_index_u32(u_input.b, 32u)]);
    let var_1 = Struct_2(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x << (reverseBits(54953u) % 32u), max(arg_0, u_input.b) & ~var_0.a.x, ~0u & _wgslsmith_mod_u32(arg_0, 4294967295u)), firstTrailingBit(_wgslsmith_sub_u32(~arg_0, _wgslsmith_add_u32(arg_0, u_input.c)))), var_0.b);
    global0 = array<vec3<u32>, 22>();
    let var_2 = Struct_1(-1111f, var_0.b.x);
    return var_2.a;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<i32>) -> StorageBuffer {
    global0 = array<vec3<u32>, 22>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-526f, -376f, -1595f, 374f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(561f)), _wgslsmith_f_op_f32(func_2(6740u)), _wgslsmith_f_op_f32(round(-940f)), 1f))));
    let var_1 = any(vec2<bool>(false, true));
    let var_2 = true;
    global1 = array<vec3<bool>, 32>();
    return StorageBuffer(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 1u, 4294967295u), ~(~vec4<u32>(4294967295u, arg_1, 5710u, 0u))), var_0.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<i32>(-2147483647i, 51281i, 34696i, _wgslsmith_clamp_i32(global2.x, i32(-1i) * -3397i, _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(global2.x, global2.x, 1i, 32438i)), reverseBits(-vec4<i32>(40633i, global2.x, global2.x, 2147483647i)))));
    let x = u_input.a;
    s_output = func_1(33368u, 68770u, global2.zzy);
}

