struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<bool> {
    global0 = array<i32, 16>();
    let var_0 = arg_0;
    let var_1 = arg_1.b;
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    return !vec4<bool>(!(!(var_1.x & var_1.x)), true, arg_1.b.x, any(!vec4<bool>(var_1.x, true, true, false)));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(select(64611u, firstTrailingBit(4294967295u), !all(vec3<bool>(true, true, false))), 29905u), abs(u_input.c));
    var var_1 = vec3<bool>(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-847f, 984f) * vec2<f32>(1000f, -363f))), 1u, _wgslsmith_f_op_f32(f32(-1f) * -1068f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -337f, -1000f, -171f)), ~var_0.x), Struct_2(abs(vec2<u32>(u_input.d, var_0.x)), vec4<bool>(true, true, true, true), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 16u)], u_input.b.x, 0i)), 41739u), firstLeadingBit(abs(vec4<i32>(2147483647i, u_input.a.x, 16674i, u_input.a.x)))).x, (all(vec4<bool>(true, true, true, true)) || false) && !(true || select(false, true, false)), false);
    global0 = array<i32, 16>();
    var_1 = vec3<bool>(true, any(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1076f, 552f), vec2<f32>(1513f, 1662f))), _wgslsmith_add_u32(var_0.x, 41771u), _wgslsmith_f_op_f32(floor(1307f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1221f, 575f, 705f, -249f)), abs(var_0.x)), Struct_2(vec2<u32>(var_0.x, 4294967295u), select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), false), u_input.b.yyy, u_input.d), ~abs(u_input.b))), !(var_1.x & (global0[_wgslsmith_index_u32(u_input.c & 0u, 16u)] != 1i)));
    var var_2 = 8770i;
    return _wgslsmith_div_vec4_u32(select(vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 15662u, u_input.c, var_0.x), vec4<u32>(22570u, 62247u, u_input.c, u_input.c)), 25864u, var_0.x), vec4<u32>(var_0.x, _wgslsmith_mod_u32(25756u, _wgslsmith_div_u32(u_input.d, 1u)), var_0.x, max(_wgslsmith_div_u32(4294967295u, var_0.x), u_input.d << (u_input.c % 32u))), false), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(4294967295u << (var_0.x % 32u), var_0.x), ~1u, abs(20134u ^ var_0.x), 26056u)));
}

fn func_2() -> vec4<bool> {
    var var_0 = false;
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 2611u, 76148u, _wgslsmith_clamp_u32(~18064u, u_input.c & 4294967295u, u_input.d)) | max(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 0u, u_input.d, u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, 0u), vec4<u32>(u_input.c, 7208u, 0u, 8821u))), ~vec4<u32>(u_input.d, 0u, 4294967295u, u_input.c)), func_3());
    global0 = array<i32, 16>();
    return func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), 64498u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-444f)))), vec4<f32>(-894f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1866f)) + _wgslsmith_f_op_f32(-201f * 176f)), _wgslsmith_f_op_f32(-572f * _wgslsmith_div_f32(766f, 865f)), 1401f), ~1u), Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(~76829u, _wgslsmith_dot_vec3_u32(var_1.xyw, var_1.zxw)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 0u) & var_1.zy, abs(vec2<u32>(0u, var_1.x)))), !vec4<bool>(true, true, var_1.x >= 1u, true), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(~u_input.b.yw, u_input.b.wy >> (var_1.zy % vec2<u32>(32u))), -11683i), u_input.c), vec4<i32>(~(-19759i), global0[_wgslsmith_index_u32(1u, 16u)], -38697i, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mod_u32(38726u, ~u_input.c));
    var var_1 = select(vec4<bool>(true, false, true, false), select(select(func_1(Struct_1(vec2<f32>(-533f, 747f), var_0, 185f, vec4<f32>(1319f, -1056f, -273f, -567f), 31024u), Struct_2(vec2<u32>(0u, u_input.d), vec4<bool>(true, false, false, true), vec3<i32>(global0[_wgslsmith_index_u32(4664u, 16u)], global0[_wgslsmith_index_u32(49928u, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)]), u_input.d), vec4<i32>(-7998i, 13575i, global0[_wgslsmith_index_u32(u_input.d, 16u)], 38840i)), vec4<bool>(true, true, true, true), true), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), true), func_2()), (20281u < ~var_0) | (select(global0[_wgslsmith_index_u32(var_0 ^ 8746u, 16u)], 10375i, true) != global0[_wgslsmith_index_u32(~22396u, 16u)]));
    var var_2 = -1i;
    let var_3 = vec4<i32>(u_input.a.x << (~(~reverseBits(97070u)) % 32u), u_input.a.x, 32515i, ~(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, ~var_0), 16u)] & min(-u_input.a.x, ~18406i)));
    var var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-788f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_div_f32(-234f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1117f)), -1197f, false)))), ~_wgslsmith_add_u32(var_0 | var_0, ~1u) >> (firstLeadingBit(u_input.d) % 32u), _wgslsmith_f_op_f32(193f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -944f)), 1f, !(var_1.x == false)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 926f, -1175f, 2154f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(710f, -334f, 1473f, -1431f)))))), u_input.c);
    let var_5 = func_2().xyw;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_4.b, 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(26353u, u_input.d, 48496u), vec3<u32>(~1u, var_0 ^ 1u, 0u)), select(~23441u, var_0, !all(vec4<bool>(false, var_1.x, var_5.x, var_5.x)))), var_4.a.x);
}

