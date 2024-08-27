struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: vec3<u32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = arg_0;
    var var_1 = arg_3.b;
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_2.c, min(arg_3.c, global1.x) | abs(arg_3.c), abs(~global1.x)), ~(~vec3<u32>(40904u, 0u, arg_3.c))), ~u_input.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~(~arg_2.c), 1u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.c, var_2.x), _wgslsmith_mult_vec2_u32(global1.zz, global1.yy)), 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-439f * 189f) - -1250f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 9471u), var_2), 1u)])) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(387f, arg_2.b, 169f, 578f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_3.c, 1u)], -135f, global0[_wgslsmith_index_u32(var_2.x, 1u)], global0[_wgslsmith_index_u32(49297u, 1u)]))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-443f, 2080f, -1060f, global0[_wgslsmith_index_u32(global1.x, 1u)]) + vec4<f32>(arg_2.b, 1000f, global0[_wgslsmith_index_u32(18371u, 1u)], global0[_wgslsmith_index_u32(global1.x, 1u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_3.b, -931f, -2238f) + vec4<f32>(arg_2.b, 2345f, arg_3.b, -299f)))))));
    var var_4 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(arg_3.c, var_2.x ^ u_input.d)), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, global1.x, u_input.a)), vec3<u32>(17253u, 4294967295u, arg_3.c) ^ vec3<u32>(arg_3.c, arg_2.c, 4294967295u))), ~(~_wgslsmith_sub_vec2_u32(var_2, vec2<u32>(var_2.x, 40584u)))) >> (~(vec2<u32>(u_input.a, arg_2.c << (128573u % 32u)) & global1.xy) % vec2<u32>(32u));
    return arg_0.b.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    return 0u;
}

fn func_2() -> i32 {
    global1 = vec3<u32>(~func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(711f, 304f, global0[_wgslsmith_index_u32(u_input.d, 1u)], -129f) + vec4<f32>(264f, global0[_wgslsmith_index_u32(global1.x, 1u)], global0[_wgslsmith_index_u32(20399u, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)])), ~u_input.d, _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(-12655i, u_input.b.x)), func_3(Struct_1(vec4<i32>(u_input.b.x, -2147483647i, -1i, 2147483647i), vec3<i32>(43911i, u_input.c, u_input.b.x)), vec4<bool>(true, true, true, false), Struct_2(vec4<bool>(true, false, true, true), global0[_wgslsmith_index_u32(global1.x, 1u)], u_input.d), Struct_2(vec4<bool>(false, true, false, true), -837f, 4294967295u))), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1.x, _wgslsmith_div_u32(u_input.d, 46736u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d, global1.x, 997u), firstTrailingBit(vec3<u32>(global1.x, global1.x, 1u)), ~vec3<u32>(5298u, u_input.d, global1.x)))) | select(~vec3<u32>(~u_input.a, 1u, 1u), vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 60370u, 1574u, 9341u), vec4<u32>(4294967295u, u_input.d, global1.x, u_input.a))), _wgslsmith_add_u32(1u, reverseBits(global1.x)), firstLeadingBit(u_input.d | u_input.d)), !vec3<bool>(true, all(vec3<bool>(true, true, false)), global1.x > 4294967295u));
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(global1.x), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 1u, global1.x, 115339u), max(vec4<u32>(u_input.a, 1u, global1.x, u_input.a), vec4<u32>(13139u, global1.x, 1u, 1u)))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, global1.x, 25729u, 4294967295u) | vec4<u32>(1u, 21756u, 16044u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 0u, u_input.a, u_input.d), vec4<u32>(57539u, u_input.a, 0u, 28804u)), select(false, false, true)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 0u, 63763u, 0u), vec4<u32>(3781u, u_input.a, 67864u, 4294967295u)), ~vec4<u32>(global1.x, 0u, 0u, 32147u))), 5090u ^ select(1u, u_input.d, 13057u == u_input.d)), firstTrailingBit(~vec4<u32>(u_input.d, 22797u, 22498u, 45369u) & firstLeadingBit(vec4<u32>(1u, global1.x, 1u, global1.x))) << (abs(~vec4<u32>(51391u, 4294967295u, 1u, 1u)) % vec4<u32>(32u)));
    let var_1 = Struct_1(-vec4<i32>(_wgslsmith_add_i32(~u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.b.x, u_input.c)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 24795i), vec2<i32>(u_input.c, u_input.b.x)), u_input.b.x), u_input.c | (u_input.c & u_input.b.x), -abs(u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 1i, 11366i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, 16338i) << (var_0 % vec4<u32>(32u))), min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, -1i), vec3<i32>(u_input.c, u_input.b.x, u_input.c)), 2147483647i), _wgslsmith_add_i32(u_input.c, _wgslsmith_mult_i32(u_input.b.x, -17826i))), -(vec3<i32>(u_input.b.x, u_input.c, u_input.b.x) >> (var_0.yyy % vec3<u32>(32u))) ^ ~(-vec3<i32>(-1i, u_input.b.x, u_input.b.x))));
    let var_2 = false;
    var var_3 = Struct_1(firstTrailingBit(select(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(var_1.a, vec4<i32>(-2147483647i, var_1.b.x, -1i, u_input.c)), ~vec4<i32>(var_1.b.x, 47551i, u_input.c, 9195i)), (var_1.a ^ vec4<i32>(-19176i, u_input.c, -25878i, u_input.c)) >> (abs(vec4<u32>(33859u, 4294967295u, 1u, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(!var_2, true, var_2, false))), vec3<i32>(_wgslsmith_clamp_i32(-1i, -42871i, ~(i32(-1i) * -2147483647i)), reverseBits(firstTrailingBit(2108i)), max(-11952i, abs(var_1.a.x)) ^ (i32(-1i) * -var_1.a.x)));
    return -_wgslsmith_dot_vec2_i32(var_3.b.xx | vec2<i32>(-4956i, var_3.b.x << (4294967295u % 32u)), min(-u_input.b, max(u_input.b, vec2<i32>(2947i, 57037i))) | ~(-vec2<i32>(var_3.b.x, var_1.b.x)));
}

fn func_1() -> vec3<u32> {
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_0 = func_2() << (56198u % 32u);
    global0 = array<f32, 1>();
    let var_1 = false;
    return ~(~(~(~vec3<u32>(u_input.d, 66388u, global1.x)))) << (vec3<u32>(_wgslsmith_mod_u32(1u, u_input.d), global1.x, countOneBits(11697u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global1 = min(func_1(), abs(~max(vec3<u32>(0u, global1.x, 4294967295u), vec3<u32>(1u, 4294967295u, 0u)))) | ~vec3<u32>(10521u, ~1u, 1689u);
    var var_0 = Struct_2(!vec4<bool>(true, ~4294967295u >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 11905u, global1.x), vec3<u32>(53754u, global1.x, 8186u)), select(false, true, false) & true, false), _wgslsmith_f_op_f32(max(-1336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 1u)]))))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, u_input.a) ^ global1.zy, firstLeadingBit(vec2<u32>(8499u, u_input.d)))));
    var_0 = Struct_2(!(!vec4<bool>(var_0.a.x, all(vec3<bool>(true, var_0.a.x, false)), any(var_0.a.xyz), any(var_0.a.zyw))), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(var_0.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(1363f - global0[_wgslsmith_index_u32(0u, 1u)])))), ~(~(~func_1().x)));
    global0 = array<f32, 1>();
    var_0 = Struct_2(vec4<bool>(any(select(!var_0.a.xw, vec2<bool>(var_0.a.x, false), var_0.a.ww)), true | all(vec3<bool>(var_0.a.x, var_0.a.x, true)), var_0.a.x, true), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-443f - 404f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 694f)))), ~(~(~65837u)));
    var_0 = Struct_2(vec4<bool>(!(!(37699i > u_input.c)), true, var_0.a.x, !all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(14396u, 1u)])))), 17660u);
    let var_1 = var_0.a.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-317f * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(137145u, 1u)], global0[_wgslsmith_index_u32(30324u, 1u)]))) + _wgslsmith_f_op_f32(-589f + _wgslsmith_div_f32(814f, -1198f)))));
}

