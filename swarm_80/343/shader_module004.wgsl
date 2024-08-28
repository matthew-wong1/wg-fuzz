struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<vec3<bool>, 3>;

var<private> global2: Struct_3 = Struct_3(vec3<i32>(-1922i, 0i, 13590i), Struct_1(1i, vec3<f32>(540f, -369f, 401f), vec3<u32>(30801u, 39810u, 27735u), false, 40332i));

var<private> global3: array<u32, 5> = array<u32, 5>(49322u, 0u, 10470u, 0u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = !vec2<bool>(false, all(select(select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(true, global2.b.d), arg_1.c), !vec2<bool>(false, global2.b.d), true == global2.b.d)));
    global3 = array<u32, 5>();
    global1 = array<vec3<bool>, 3>();
    global1 = array<vec3<bool>, 3>();
    var var_1 = _wgslsmith_f_op_f32(max(-1316f, global2.b.b.x));
    return vec2<bool>(var_0.x, true);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_3 {
    global2 = Struct_3(vec3<i32>(~arg_0.x, -(max(global2.a.x, 33271i) >> (global2.b.c.x % 32u)), _wgslsmith_div_i32(global2.b.e, -242i)), Struct_1(reverseBits(-arg_0.x >> (_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(243u, 5u)], 4294967295u, 0u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.b.b.x, -325f, arg_1.a.x))), global2.b.b)), vec3<u32>(4294967295u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(16710u, global2.b.c.x, 75829u, 0u), vec4<u32>(47651u, 1u, 53626u, 4294967295u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], 30969u, 1u), vec3<u32>(global2.b.c.x, 14590u, global2.b.c.x))), min(arg_0.x, -arg_0.x) <= (i32(-1i) * -94523i), u_input.e));
    global0 = !(!(!vec2<bool>(all(vec4<bool>(true, true, true, false)), arg_1.c == true)));
    var var_0 = Struct_1(_wgslsmith_sub_i32(-abs(arg_0.x), ~(-10490i)) & ~(_wgslsmith_dot_vec4_i32(vec4<i32>(7759i, global2.a.x, u_input.e, -30270i), vec4<i32>(-57346i, 1i, u_input.e, 20735i)) >> (max(10307u, arg_1.b.x) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), global2.b.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b.b.x * -330f)))), _wgslsmith_add_vec3_u32(~(~(~vec3<u32>(12670u, 0u, 85598u))), vec3<u32>(21766u, _wgslsmith_dot_vec3_u32(global2.b.c, _wgslsmith_sub_vec3_u32(vec3<u32>(54409u, 31269u, 4294967295u), vec3<u32>(4294967295u, arg_1.b.x, u_input.c.x))), ~(~85836u))), all(func_3(arg_1.a.x, arg_1, arg_1.b.x, ~vec2<i32>(-15650i, -4984i) | _wgslsmith_div_vec2_i32(global2.a.yz, vec2<i32>(-1i, 24995i)))), global2.a.x & max(55423i, firstLeadingBit(_wgslsmith_div_i32(global2.b.a, -2147483647i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-124f * global2.b.b.x), var_0.b.x, -137f));
    var_1 = var_0.b;
    return Struct_3(vec3<i32>(var_0.a, -1i, -2147483647i), Struct_1(-17441i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + -478f), _wgslsmith_f_op_f32(241f + _wgslsmith_f_op_f32(var_1.x * -1469f)), arg_1.a.x), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(38384u, arg_1.b.x, global2.b.c.x), global2.b.c), arg_1.b) ^ countOneBits(vec3<u32>(var_0.c.x, 0u, global2.b.c.x)), global0.x, -_wgslsmith_mult_i32(u_input.e, -9908i)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32) -> vec2<f32> {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, -1205f)) * arg_2) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(192f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * -319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(393f))))), ~vec3<u32>(25655u, _wgslsmith_div_u32(4294967295u, global3[_wgslsmith_index_u32(u_input.b, 5u)]) << (abs(global3[_wgslsmith_index_u32(0u, 5u)]) % 32u), _wgslsmith_sub_u32(global2.b.c.x, global2.b.c.x ^ 67763u)), true);
    var var_1 = u_input.b;
    let var_2 = vec4<u32>(abs(abs(~0u)) | u_input.a, var_0.b.x, ~arg_1.b.c.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global2.b.c.x, 4294967295u, var_0.b.x, 29833u), select(vec4<u32>(0u, var_0.b.x, u_input.d, 37893u), vec4<u32>(global3[_wgslsmith_index_u32(var_0.b.x, 5u)], arg_1.b.c.x, 45485u, var_0.b.x), false)), vec4<u32>(abs(var_0.b.x), ~u_input.d, ~4294967295u, _wgslsmith_mult_u32(4294967295u, global2.b.c.x)))));
    let var_3 = global2.a;
    global1 = array<vec3<bool>, 3>();
    return global2.b.b.yz;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.c.x, 5u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.b.b.x)) - _wgslsmith_f_op_f32(max(global2.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-550f, 390f))))), func_2(-vec4<i32>(global2.a.x, 1i, 17211i, u_input.e), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -770f, arg_0) * vec3<f32>(229f, 445f, -120f)))), _wgslsmith_mod_vec3_u32(~global2.b.c, abs(global2.b.c)), true | (true && global0.x))), 1568f));
    let var_2 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(~global2.b.c.x, 34008u), u_input.d);
    let var_3 = -2642i;
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.b))), max(vec3<u32>(u_input.a, _wgslsmith_mod_u32(var_2 << (45903u % 32u), _wgslsmith_div_u32(u_input.d, 34684u)), ~(~var_2)), global2.b.c), any(select(!vec4<bool>(true, global0.x, false, global2.b.d), select(vec4<bool>(global2.b.d, false, false, global0.x), select(vec4<bool>(true, global0.x, true, global2.b.d), vec4<bool>(global2.b.d, global0.x, false, false), global0.x), select(vec4<bool>(global2.b.d, global0.x, global2.b.d, false), vec4<bool>(false, global0.x, global0.x, global0.x), global2.b.d)), select(select(vec4<bool>(global2.b.d, global2.b.d, global2.b.d, false), vec4<bool>(false, global2.b.d, false, true), global0.x), vec4<bool>(global2.b.d, true, global2.b.d, global0.x), select(vec4<bool>(true, true, true, global2.b.d), vec4<bool>(false, true, global2.b.d, global0.x), false)))));
    return Struct_3(~global2.a, Struct_1(~(-arg_1.x), global2.b.b, vec3<u32>(func_2(vec4<i32>(2147483647i, 7169i, 24611i, 31306i), Struct_2(global2.b.b, vec3<u32>(global2.b.c.x, 20667u, u_input.d), global2.b.d)).b.c.x << (1u % 32u), var_2, 1u), false && (any(vec2<bool>(global2.b.d, true)) | false), u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    global2 = func_1(1623f, ~(-countOneBits(select(vec3<i32>(11283i, -2147483647i, -68772i), vec3<i32>(global2.a.x, -2147483647i, 0i), global1[_wgslsmith_index_u32(3170u, 3u)]))));
    let var_1 = Struct_3(global2.a, global2.b);
    var var_2 = Struct_3(var_1.a, global2.b);
    var var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(90449u, 0u, 53882u, 35949u), vec4<u32>(var_2.b.c.x, 12520u, 1u, 3626u)), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global2.b.c.x, 5u)], 76437u)), vec2<u32>(30937u >> (var_1.b.c.x % 32u), ~33076u)), vec2<u32>(func_1(_wgslsmith_f_op_f32(abs(880f)), vec3<i32>(-1i, var_2.a.x, -1i)).b.c.x, abs(~global2.b.c.x)));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.b.b.x)) - var_2.b.b.x) * _wgslsmith_f_op_f32(-var_1.b.b.x)), _wgslsmith_f_op_f32(var_1.b.b.x + -395f));
    var var_5 = _wgslsmith_add_vec2_u32(global2.b.c.yy, u_input.c);
    global3 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(-countOneBits(-13642i)), max(u_input.c, var_1.b.c.zx), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -421f), -1327f), var_2.b.b, vec3<bool>(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1191f), reverseBits(global2.a)).b.d, !(global2.b.d | var_1.b.d), false))), -_wgslsmith_clamp_i32(-21273i, -6277i, global2.a.x));
}

