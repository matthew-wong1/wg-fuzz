struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(1567f, -390f, 2063f, -482f, -101f, 1420f, 197f, 657f, 277f, 1323f, 836f, 564f, 1123f, 2164f);

var<private> global1: i32;

var<private> global2: i32 = 332i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> bool {
    let var_0 = ~vec2<u32>(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), firstTrailingBit(0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, ~u_input.a.x, 1u), reverseBits(select(vec3<u32>(18578u, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<bool>(false, true, false)))));
    return true;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> vec3<u32> {
    global0 = array<f32, 14>();
    global1 = abs(i32(-1i) * -21829i);
    global2 = 0i;
    var var_0 = vec3<bool>(!func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f + 359f)), u_input.b), _wgslsmith_clamp_u32(arg_1 & _wgslsmith_mult_u32(u_input.a.x, arg_1), arg_1, firstLeadingBit(u_input.a.x)) > 1u, select((~arg_1 < arg_1) | !all(vec3<bool>(false, false, false)), ~(~u_input.a.x) > 1u, false));
    var var_1 = ~vec4<u32>(78361u, ~(~(~u_input.a.x)), 1u, 0u);
    return var_1.wyz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(~u_input.c, ~u_input.b);
    global1 = var_0;
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(func_1(u_input.d.xwz, 1u), ~vec3<u32>(1u, firstLeadingBit(u_input.a.x), u_input.a.x)), vec3<u32>(~0u >> (min(1u, func_1(vec3<i32>(u_input.d.x, -34654i, u_input.c.x), u_input.a.x).x) % 32u), 4294967295u, ~countOneBits(u_input.a.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 13173u))), u_input.a.x, ~(~u_input.a.x)));
    global0 = array<f32, 14>();
    var var_2 = vec4<i32>(var_0, -2147483647i >> (~(0u | var_1.x) % 32u), var_0, ~(-23999i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x) | vec2<u32>(var_1.x, 4294967295u), u_input.a), 4294967295u));
}

