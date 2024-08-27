struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    return -226f;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    global1 = vec3<i32>(i32(-1i) * -1i, ~(~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, 2147483647i), vec4<i32>(global1.x, global1.x, u_input.b, 2147483647i)), ~vec4<i32>(-44711i, global1.x, -23235i, u_input.b))), reverseBits(countOneBits(-239i)));
    global0 = array<bool, 15>();
    var var_0 = ~vec3<i32>(~11827i, global1.x, 1i);
    global0 = array<bool, 15>();
    var var_1 = vec3<bool>(false, all(!select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 15u)], global0[_wgslsmith_index_u32(arg_1.x, 15u)]), vec3<bool>(true, false, arg_2), vec3<bool>(global0[_wgslsmith_index_u32(27556u, 15u)], false, arg_2)), !vec3<bool>(true, arg_2, global0[_wgslsmith_index_u32(u_input.c, 15u)]), !vec3<bool>(false, arg_2, false))), select(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1131f), _wgslsmith_div_f32(arg_0, arg_0)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(46074u, ~0u), abs(arg_1.x)), 15u)]));
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<bool> {
    global1 = vec3<i32>(countOneBits(_wgslsmith_add_i32(1i, global1.x)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(762f + -313f) * -264f)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a, u_input.c), vec2<u32>(u_input.c, u_input.c))) >> (~abs(vec2<u32>(arg_0.a, 0u)) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(36707u, arg_2.a) ^ 4294967295u, 4294967295u ^ ~arg_2.a), 15u)]), -13786i);
    let var_0 = select(vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2.a, u_input.c, 77246u, 4294967295u) | vec4<u32>(6246u, 32986u, arg_0.a, 1u), ~vec4<u32>(1u, u_input.c, arg_0.a, 1u), !global0[_wgslsmith_index_u32(62637u, 15u)]), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, u_input.c, arg_2.a, 48250u), vec4<u32>(1665u, 29979u, 4294967295u, arg_0.a), vec4<u32>(26195u, arg_2.a, u_input.c, 4294967295u)))), ~vec2<u32>(9287u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 48920u), vec3<u32>(arg_0.a, u_input.c, 23392u))) | max(~(~vec2<u32>(5074u, 40607u)), vec2<u32>(1u, arg_0.a)), global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(~arg_0.a)) | _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, arg_2.a, 16497u, u_input.c)), abs(vec4<u32>(u_input.c, arg_0.a, 1u, 1u))), 15u)]);
    global0 = array<bool, 15>();
    global1 = vec3<i32>(u_input.a, global1.x, -_wgslsmith_mod_i32(global1.x, ~(-2147483647i | u_input.a)));
    global1 = arg_1;
    return select(vec3<bool>(true, true, !(29920u >= _wgslsmith_dot_vec2_u32(vec2<u32>(43963u, 1u), var_0))), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], !global0[_wgslsmith_index_u32(1u, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], !global0[_wgslsmith_index_u32(arg_2.a, 15u)], global0[_wgslsmith_index_u32(arg_2.a, 15u)]), global0[_wgslsmith_index_u32(countOneBits(arg_2.a), 15u)]), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(-25077i, -firstLeadingBit(firstTrailingBit(_wgslsmith_mult_i32(1i, 11645i))), -31076i);
    global1 = u_input.d.yzx;
    var var_0 = vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], all(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)]), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], false), vec3<bool>(global0[_wgslsmith_index_u32(5784u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)]), global0[_wgslsmith_index_u32(4680u, 15u)]), func_1(Struct_1(0u), vec3<i32>(u_input.b, 17870i, -72121i), Struct_1(32715u))), vec3<bool>(true, any(vec2<bool>(false, false)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], false, true, false))))));
    var var_1 = Struct_1(reverseBits(~_wgslsmith_clamp_u32(abs(u_input.c), abs(u_input.c), u_input.c)));
    let var_2 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.a, 1u), firstTrailingBit(firstLeadingBit(var_1.a))), 4294967295u, var_1.a));
    let var_3 = -_wgslsmith_dot_vec3_i32(vec3<i32>(func_2(-1000f, _wgslsmith_add_vec2_u32(vec2<u32>(var_2.a, 0u), vec2<u32>(var_1.a, 13739u)), !var_0.x), _wgslsmith_mod_i32(-69145i, func_2(-1101f, vec2<u32>(var_1.a, 21569u), false)), abs(0i)), reverseBits(~vec3<i32>(global1.x, global1.x, global1.x) << (vec3<u32>(var_2.a, 0u, 71138u) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, -1000f)));
}

