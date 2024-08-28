struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 10> = array<bool, 10>(false, false, false, false, true, true, false, true, false, true);

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-100f)), _wgslsmith_f_op_f32(1830f + -1000f)) * 1602f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-241f - 686f)))))));
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    let var_0 = 29195u | (_wgslsmith_clamp_u32(u_input.a.x, abs(u_input.a.x), 42163u) << (u_input.a.x % 32u));
    global2 = vec3<i32>(-5948i, 30918i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(global2.x, global2.x)), u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-43234i, global2.x), global2.yy)), ~vec4<i32>(global2.x, 2147483647i, u_input.b.x, 6669i) ^ (vec4<i32>(2147483647i, u_input.b.x, global2.x, u_input.b.x) << (vec4<u32>(38452u, 0u, u_input.a.x, 16804u) % vec4<u32>(32u)))) << (var_0 % 32u));
    return _wgslsmith_f_op_f32(f32(-1f) * -836f);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(reverseBits(u_input.a.x)), min(arg_3.a, 1u)), u_input.a.yz));
    let var_1 = false;
    global1 = array<bool, 10>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2106f, -1000f)) - -911f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f));
    return ~(~0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    var var_0 = ~0u;
    let var_1 = vec3<bool>(false, any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(max(arg_0.d.x, ~46268u), 10u)])), !global1[_wgslsmith_index_u32(u_input.a.x ^ 1u, 10u)]);
    global1 = array<bool, 10>();
    return ~(~_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), vec3<u32>(u_input.a.x, 1u, func_3(arg_0.d.x, 65980u, arg_0, Struct_3(arg_0.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = 1i << ((~4294967295u ^ _wgslsmith_mod_u32(1u, firstTrailingBit(u_input.a.x))) % 32u);
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())));
    var_0 = reverseBits(~_wgslsmith_mult_u32(~4294967295u, u_input.a.x)) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, abs(u_input.a.x), 4294967295u, 1u), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(6432u, 49474u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)));
    var_1 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x), 30855u >> (0u % 32u), _wgslsmith_clamp_u32(func_2(Struct_1(vec2<i32>(28798i, u_input.b.x), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), 8465i, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.zx), vec3<f32>(-244f, -1000f, 423f)), ~u_input.a.x, abs(64860u))), ~vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 0u), ~u_input.a.x)), u_input.b.x, u_input.b.x, ~4294967295u, _wgslsmith_dot_vec2_i32(~(u_input.b ^ u_input.b), vec2<i32>(-42474i, _wgslsmith_clamp_i32(-2147483647i, ~(-17632i), 1i))));
}

