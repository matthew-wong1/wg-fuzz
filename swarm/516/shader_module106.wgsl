struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_1(-1114f, vec2<i32>(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 4518i, 1i), vec3<i32>(-38465i, -25814i, 40266i)), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), u_input.b.x), _wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(u_input.c, 0u, u_input.c, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(36478u, 1u, u_input.c, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.d), vec4<u32>(u_input.c, 0u, u_input.a, 11051u)), ~vec4<u32>(7211u, 1u, u_input.c, u_input.d)), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(13983u, 6u)], false, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], false, global0[_wgslsmith_index_u32(u_input.c, 6u)], false), false)), ~abs(vec4<u32>(u_input.a, u_input.a, u_input.d, 0u))));
    let var_1 = select(!vec4<bool>(!select(false, global0[_wgslsmith_index_u32(4294967295u, 6u)], false), !(global0[_wgslsmith_index_u32(var_0.c, 6u)] & global0[_wgslsmith_index_u32(u_input.c, 6u)]), true, false), vec4<bool>(false || global0[_wgslsmith_index_u32(32257u, 6u)], true, true, 0u <= _wgslsmith_mult_u32(u_input.d, var_0.c | 35829u)), vec4<bool>(global0[_wgslsmith_index_u32(72928u, 6u)], u_input.b.x < (35290i & (-25416i ^ u_input.b.x)), false, all(!select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.c, 6u)], false), true))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1000f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-1571f * _wgslsmith_f_op_f32(var_0.a - var_0.a)))), var_0.b, ~var_0.c);
    let var_3 = ~(~select(vec3<u32>(min(var_0.c, u_input.a), ~4294967295u, _wgslsmith_clamp_u32(var_2.c, u_input.c, var_2.c)), abs(countOneBits(vec3<u32>(33005u, var_0.c, var_2.c))), vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_2.c, var_0.c), vec3<u32>(1u, 29292u, 0u)), 6u)], true)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(388f * -973f)) * _wgslsmith_f_op_f32(-var_2.a))), firstLeadingBit(vec2<i32>(~(~0i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, 10641i), max(0i, var_0.b.x)))), min(~(_wgslsmith_mult_u32(8460u, var_0.c) | 19567u), _wgslsmith_mult_u32(var_2.c, u_input.a) & min(18937u, u_input.d)));
    return _wgslsmith_f_op_f32(arg_0 * var_2.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = arg_0;
    let var_1 = 38260i;
    global0 = array<bool, 6>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -324f)))))), arg_0.b, 1u);
    let var_3 = arg_0;
    return StorageBuffer(~2147483647i, -536f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(2119f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_f32(abs(var_3.a))))), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a)))), true)));
}

fn func_1() -> StorageBuffer {
    let var_0 = 1763f;
    return func_2(Struct_1(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(1484f - _wgslsmith_f_op_f32(var_0 - var_0))), ~vec2<i32>(u_input.b.x, -12930i) >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 75019u), vec2<u32>(u_input.a, 0u)) | vec2<u32>(42580u, u_input.c)) % vec2<u32>(32u)), ~_wgslsmith_div_u32(105218u, u_input.c) << (~(u_input.d ^ 4294967295u) % 32u)), ~vec3<u32>(~u_input.d, _wgslsmith_sub_u32(~u_input.a, 1u), ~u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

