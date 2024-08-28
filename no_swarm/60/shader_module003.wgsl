struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<vec3<bool>, 26>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<u32> {
    let var_0 = vec4<u32>(~(~16049u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(23195u << (_wgslsmith_sub_u32(1u, u_input.b) % 32u), _wgslsmith_add_u32(45168u, _wgslsmith_sub_u32(u_input.b, u_input.c)), ~50026u, u_input.b), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, 26628u, u_input.c), max(vec4<u32>(1u, u_input.e.x, u_input.b, u_input.b), vec4<u32>(4294967295u, 4294967295u, u_input.b, 0u))))), 9435u >> (abs(1u) % 32u));
    global0 = array<bool, 2>();
    var var_1 = -1i;
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_i32(-26405i, -2147483647i), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 26202i, 318i), u_input.d), ~(-1i), abs(-11720i), 1i), vec2<u32>((var_0.x << (18626u % 32u)) & u_input.e.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(22522u, 24580u, 134690u, 1u), vec4<u32>(u_input.e.x, 16632u, u_input.e.x, 41013u)), firstLeadingBit(u_input.c))), var_0.zzw), -(_wgslsmith_dot_vec2_i32(u_input.d.zz, select(vec2<i32>(u_input.d.x, -68204i), vec2<i32>(u_input.a, 1i), false)) >> (_wgslsmith_dot_vec2_u32(u_input.e, u_input.e) % 32u)));
    global0 = array<bool, 2>();
    return vec3<u32>(min(_wgslsmith_mod_u32(~(~1u), ~var_2.a.c.x), ~49886u), var_2.a.c.x & _wgslsmith_mod_u32(~4294967295u >> (var_0.x % 32u), ~(~1u)), ~select(max(~var_0.x, _wgslsmith_add_u32(4294967295u, var_2.a.d.x)), _wgslsmith_clamp_u32(~var_2.a.d.x, 38546u, ~4294967295u), global0[_wgslsmith_index_u32(~u_input.e.x, 2u)]));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>) -> vec2<i32> {
    global0 = array<bool, 2>();
    global1 = array<vec3<bool>, 26>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(-1550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))), !(true & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 18304u), arg_1), 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(max(-642f, arg_0.x)), global0[_wgslsmith_index_u32(60231u, 2u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(837f))) + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_0.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1418f, -741f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(arg_0.x))), -269f)));
    var var_1 = -max(u_input.d, vec3<i32>(-34731i, countOneBits(firstLeadingBit(-1i)), (-38836i | u_input.a) ^ -32355i));
    return select(_wgslsmith_div_vec2_i32(-_wgslsmith_sub_vec2_i32(var_1.yx, abs(vec2<i32>(var_1.x, 1i))), vec2<i32>(-1i, ~(-u_input.d.x))), vec2<i32>(countOneBits(-17737i) >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(1604u, 16791u), 1u) % 32u), u_input.d.x), !vec2<bool>(false, global0[_wgslsmith_index_u32(~abs(arg_1.x), 2u)]));
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_1(u_input.d.x, vec4<i32>(1i, 0i, _wgslsmith_mod_i32(~(u_input.d.x >> (25386u % 32u)), -(~(-12015i))), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 2147483647i), func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1813f, -822f, -444f), vec3<f32>(1000f, 346f, -1679f), vec3<bool>(false, true, true))), func_3()))), vec2<u32>(min(abs(~23823u), 73869u), _wgslsmith_div_u32(u_input.b, u_input.b)), ~arg_0.a & vec3<u32>(1u, _wgslsmith_dot_vec3_u32(arg_0.a, ~arg_0.a), countOneBits(firstTrailingBit(0u))));
    let var_1 = Struct_3(_wgslsmith_mult_vec3_u32(var_0.d, arg_0.a), arg_0.b);
    let var_2 = Struct_2(Struct_1(_wgslsmith_clamp_i32(min(max(-1i, 2147483647i), var_1.b), 46584i, -(arg_0.b & u_input.d.x)), var_0.b, ~vec2<u32>(u_input.c, 82535u) << (_wgslsmith_div_vec2_u32(var_0.c, u_input.e) % vec2<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(max(arg_0.a.x, 76674u), 97707u << (var_1.a.x % 32u), 4294967295u), 0u, ~var_1.a.x)), _wgslsmith_sub_i32(firstLeadingBit(var_1.b), select(-var_1.b, -var_0.b.x, true)));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(min(-291f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 957f))));
    global0 = array<bool, 2>();
    return max(var_2.a.c.x, 1u) | _wgslsmith_mult_u32(0u, func_3().x);
}

fn func_1() -> Struct_4 {
    global1 = array<vec3<bool>, 26>();
    var var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1187f + -722f), _wgslsmith_f_op_f32(trunc(-913f)))) >= 328f, !(-u_input.d.x <= 1i) && false, global0[_wgslsmith_index_u32(firstTrailingBit(min(4294967295u, max(~u_input.c, func_2(Struct_3(vec3<u32>(u_input.c, 7189u, u_input.b), 4354i))))), 2u)]);
    let var_1 = false;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2187f - 1082f)))), _wgslsmith_f_op_f32(trunc(769f)));
    var var_3 = countOneBits(vec2<u32>(~(~(~119747u)), min(_wgslsmith_sub_u32(~32974u, ~u_input.c), u_input.e.x)));
    return Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1451f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(49472u, 2u)], countOneBits(~(vec4<i32>(-41639i, -3498i, u_input.a, 1i) | vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, u_input.d.x)) | -reverseBits(vec4<i32>(2613i, u_input.d.x, u_input.d.x, 0i))), vec3<i32>(u_input.d.x, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(min(-18520i, u_input.d.x), _wgslsmith_sub_i32(u_input.d.x, u_input.a), firstLeadingBit(u_input.a)), u_input.d)), ~(~(~(vec3<u32>(1u, u_input.e.x, u_input.b) ^ vec3<u32>(0u, 1u, 0u)))), vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, 11916i, u_input.a, u_input.a) | ~vec4<i32>(-8533i, u_input.d.x, u_input.a, 1i)));
    global0 = array<bool, 2>();
    let var_2 = ~_wgslsmith_mod_vec3_u32(select(_wgslsmith_mult_vec3_u32(var_1.d & var_1.d, var_1.d ^ vec3<u32>(4294967295u, 26076u, 4294967295u)), var_1.d >> (~vec3<u32>(var_1.d.x, 4294967295u, u_input.b) % vec3<u32>(32u)), select(!vec3<bool>(var_1.a, global0[_wgslsmith_index_u32(4294967295u, 2u)], var_1.a), vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_1.d.x, 2u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], true), vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(u_input.c, 26u)]))), ~countOneBits(var_1.d));
    var var_3 = firstLeadingBit(select(vec2<i32>(~(var_1.e.x | 1i), ~(-1432i)), u_input.d.xx, vec2<bool>(false, var_1.a)));
    let var_4 = -vec4<i32>(1i ^ firstTrailingBit(-u_input.d.x), u_input.a | ~0i, var_3.x, firstTrailingBit(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-936f, var_0.a, -795f)), _wgslsmith_clamp_vec3_u32(var_1.d, var_1.d, vec3<u32>(4294967295u, var_1.d.x, 27159u))).x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_sub_u32(reverseBits(1u), 36521u)) & (u_input.c >> (~(var_1.d.x << (var_2.x % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(797f * _wgslsmith_f_op_f32(max(func_1().a, _wgslsmith_f_op_f32(var_0.a - var_0.a))))), var_0.a, 11186u);
}

