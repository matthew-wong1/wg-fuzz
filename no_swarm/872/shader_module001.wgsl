struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = 494f;

var<private> global2: array<vec3<f32>, 31>;

var<private> global3: array<i32, 27> = array<i32, 27>(2147483647i, 16985i, 2249i, i32(-2147483648), 2147483647i, -50537i, i32(-2147483648), 30284i, i32(-2147483648), 3013i, -1i, 5142i, 1i, 2147483647i, 1062i, 15089i, 0i, 44993i, -23198i, 26398i, -22538i, 1i, i32(-2147483648), 16203i, 39490i, i32(-2147483648), i32(-2147483648));

var<private> global4: Struct_3 = Struct_3(vec3<bool>(true, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = arg_2.c.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(global2[_wgslsmith_index_u32(41063u, 31u)]));
    global3 = array<i32, 27>();
    var var_2 = global4.a.x;
    let var_3 = Struct_1(11815i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1332f, arg_0.b))))))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(arg_2.c.c, arg_3.c), arg_3.c));
    return 989f;
}

fn func_2(arg_0: Struct_3) -> u32 {
    global4 = Struct_3(!(!vec3<bool>(true, all(arg_0.a.xx), true)));
    global3 = array<i32, 27>();
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(-33574i, 495f, Struct_1(u_input.a.x, -1000f, vec3<i32>(global3[_wgslsmith_index_u32(80877u, 27u)], -2147483647i, 1i))), vec4<u32>(0u, 56993u, 49522u, 26229u), Struct_2(1i, -708f, Struct_1(global3[_wgslsmith_index_u32(1u, 27u)], -133f, vec3<i32>(u_input.a.x, 3325i, global3[_wgslsmith_index_u32(69502u, 27u)]))), Struct_1(u_input.a.x, -1409f, vec3<i32>(0i, -1i, -1i))))))), 520f)), vec3<i32>(max(-3786i, -1i), 14045i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~151005u, 1u), 27u)], 1i)));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 0u, 22226u), ~vec3<u32>(7064u, 40326u, 4294967295u), vec3<u32>(37837u, 19687u, 0u)), vec3<u32>(34453u, ~34823u, ~18048u)), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(58278u, 1u, 4294967295u)), select(~vec3<u32>(0u, 57391u, 0u), ~vec3<u32>(18123u, 36717u, 13604u), vec3<bool>(true, true, true)))), firstLeadingBit(4294967295u), abs(abs(1u)));
    return ~(~max(1u, min(abs(4294967295u), var_2.x)));
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_3(vec3<bool>(true, min(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(12856u, 27u)], 2147483647i, global3[_wgslsmith_index_u32(66140u, 27u)], 0i), vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(0u, 27u)], 34955i, -7400i))) > ~(~global3[_wgslsmith_index_u32(1u, 27u)]), !(_wgslsmith_dot_vec2_u32(vec2<u32>(23579u, 0u), vec2<u32>(0u, 1u)) <= func_2(Struct_3(global4.a)))));
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(~vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], -1i) >> (reverseBits(vec2<u32>(89195u, 22327u)) % vec2<u32>(32u)), vec2<i32>(global3[_wgslsmith_index_u32(0u, 27u)], u_input.a.x) & u_input.a, abs(~vec2<i32>(-1i, 15993i)));
    var var_2 = vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-3660i, 1i, global3[_wgslsmith_index_u32(64328u, 27u)], -2147483647i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(88712i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(var_1.x, 46127i, 55836i, 41286i))) & (var_1.x | select(_wgslsmith_sub_i32(1i, 1i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(56842u, 4890u, 6690u, 4294967295u), vec4<u32>(23642u, 2947u, 4294967295u, 0u)), 27u)], !global4.a.x)));
    var var_3 = false;
    let var_4 = vec4<bool>(global4.a.x, var_0.a.x | true, global4.a.x, global4.a.x);
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-146f)) - -1083f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f + -1656f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(773f, 604f), _wgslsmith_f_op_f32(-245f * 2575f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-748f * 645f), _wgslsmith_f_op_f32(f32(-1f) * -165f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1035f, -1707f) - _wgslsmith_f_op_f32(ceil(-1417f)))), -487f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1843f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(380f))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-122f, _wgslsmith_f_op_f32(ceil(-1080f))) * -1706f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(!(any(vec4<bool>(global4.a.x, true, global4.a.x, global4.a.x)) & all(vec4<bool>(global4.a.x, true, global4.a.x, false))), false, true, true);
    global2 = array<vec3<f32>, 31>();
    global3 = array<i32, 27>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    global1 = _wgslsmith_f_op_f32(sign(-1271f));
    global0 = global3[_wgslsmith_index_u32(4294967295u >> (countOneBits(~1u) % 32u), 27u)];
    var var_2 = Struct_1(u_input.a.x, var_1.x, vec3<i32>(u_input.a.x, u_input.a.x, abs(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(1u, 27u)], -1i))) ^ vec3<i32>(u_input.a.x, (i32(-1i) * -1i) ^ ~global3[_wgslsmith_index_u32(17768u, 27u)], _wgslsmith_clamp_i32(~global3[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(43918u, 27u)], global3[_wgslsmith_index_u32(38383u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)]), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -1i)), -63495i)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~min(0u, 15608u), 1u, 0u), firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(var_2.c.x ^ u_input.a.x, var_2.c.x >> (16336u % 32u)), -global3[_wgslsmith_index_u32(func_2(Struct_3(var_0.zyz)), 27u)])));
}

