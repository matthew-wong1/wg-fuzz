struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<f32> {
    global0 = array<u32, 10>();
    let var_0 = ~vec3<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 0u), select(vec2<u32>(4294967295u, 50770u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 45753u), false)), 10u)], 4294967295u ^ (global0[_wgslsmith_index_u32(30543u, 10u)] | 46208u)), ~(~25886u), ~_wgslsmith_sub_u32(abs(u_input.a), global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 10u)]), 10u)]));
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var var_1 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), min(firstTrailingBit(-1i), i32(-1i) * -26181i) <= (i32(-1i) * -29604i)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(420f)), -514f, _wgslsmith_f_op_f32(abs(-924f))), vec3<f32>(_wgslsmith_f_op_f32(round(-291f)), _wgslsmith_f_op_f32(select(-630f, -608f, var_1.a.x)), _wgslsmith_f_op_f32(round(-889f)))))));
}

fn func_2() -> Struct_2 {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(793f, -1096f, 508f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(159f, 1919f, 1274f) + vec3<f32>(-1000f, -498f, 1000f)))) + _wgslsmith_f_op_vec3_f32(func_3())));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - var_0.x)));
    return Struct_2(Struct_1(vec2<bool>(true, all(vec4<bool>(false, false, false, false)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = -2147483647i;
    var_0 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(45720i, -6879i, 0i, 37027i), vec4<i32>(2147483647i, -23532i, -2147483647i, 32022i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(107597i, 2147483647i))), _wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(1i, -1i))), abs(firstLeadingBit(vec2<i32>(-2147483647i, 21087i))), arg_1.a), vec2<i32>(-(~(15293i << (u_input.a % 32u))), -(~1i)));
    let var_1 = -53093i;
    let var_2 = arg_1;
    var_0 = 0i | select(0i, var_1, true);
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> StorageBuffer {
    var var_0 = select(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(30165u, 4294967295u, 57120u, global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<u32>(u_input.a, 0u, 89370u, global0[_wgslsmith_index_u32(5758u, 10u)])), ~vec4<u32>(0u, u_input.a, 0u, 4936u)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(0u, global0[_wgslsmith_index_u32(7377u, 10u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)])), vec4<u32>(30912u, u_input.a, 29901u, 1u) ^ vec4<u32>(0u, 4294967295u, 46187u, 44015u))), reverseBits(func_4(func_2(), func_2().a, 139f)), firstTrailingBit(u_input.a)), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(u_input.a, u_input.a)) ^ ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(abs(45224u), 10u)]), vec2<u32>(_wgslsmith_div_u32(46832u, u_input.a), abs(3636u)))), abs(~global0[_wgslsmith_index_u32(~12229u, 10u)]) <= ~(~1u));
    var_0 = select(firstTrailingBit(~vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(102990u, 4294967295u)), u_input.a, u_input.a >> (u_input.a % 32u))), vec3<u32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(8872u, 10u)]), vec3<bool>(arg_0.a.x, arg_2, all(!(!arg_0.a))));
    global0 = array<u32, 10>();
    var var_1 = func_2().a;
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1907i, reverseBits(1i)), _wgslsmith_sub_i32(~(-2352i), -1i) << (global0[_wgslsmith_index_u32(28145u | global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 10u)] % 32u), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(~10909i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 17169i, 29966i), vec3<i32>(-1i, 2147483647i, -1i)), ~12680i), vec3<i32>(1i, 1i, 1i))), vec4<i32>(31865i, select(~(-31422i), 1i, var_0.x <= 0u), -13102i, -1i) >> (_wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 3824u, 46911u, u_input.a), vec4<u32>(6367u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 10u)], 10u)], 10u)], 4712u, 23045u)), vec4<u32>(u_input.a, u_input.a, 36310u, 1u), var_1.a.x), vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 22655u), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(47651u, 10u)], var_0.x, var_0.x), global0[_wgslsmith_index_u32(max(1u, u_input.a), 10u)], _wgslsmith_dot_vec4_u32(vec4<u32>(60548u, 17047u, u_input.a, u_input.a), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(34165u, 10u)], 1u, u_input.a)))) % vec4<u32>(32u)));
    return StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25663u, var_0.x, 17742u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, var_0.x)), ~var_0.x | 59120u, abs(1u), _wgslsmith_sub_u32(var_0.x, max(0u, var_0.x))), _wgslsmith_dot_vec4_i32(select(abs(~vec4<i32>(var_2.x, var_2.x, var_2.x, -56442i)), -vec4<i32>(var_2.x, 48168i, var_2.x, var_2.x) >> (~vec4<u32>(1u, u_input.a, 45249u, var_0.x) % vec4<u32>(32u)), all(vec2<bool>(true, arg_1.a.a.x))), vec4<i32>(reverseBits(var_2.x), var_2.x, min(firstLeadingBit(0i), firstTrailingBit(2147483647i)), 0i)), _wgslsmith_dot_vec3_i32(var_2.zyx << (countOneBits(~vec3<u32>(4294967295u, u_input.a, 0u)) % vec3<u32>(32u)), vec3<i32>(min(var_2.x, 0i) >> ((u_input.a >> (4294967295u % 32u)) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.x, -18457i), var_2.xxz), var_2.x)), -195f, vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1265f + -169f)), _wgslsmith_f_op_f32(2414f - -322f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -222f), 688f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -547f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 177f;
    let var_1 = vec2<f32>(-1265f, _wgslsmith_f_op_f32(floor(289f)));
    let var_2 = true;
    var var_3 = var_1;
    global0 = array<u32, 10>();
    var_3 = _wgslsmith_f_op_vec2_f32(trunc(var_1));
    var_0 = -1000f;
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.x, var_1.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.x, -844f))))) + vec2<f32>(-810f, 183f))));
    global0 = array<u32, 10>();
    let x = u_input.a;
    s_output = func_1(Struct_1(vec2<bool>(all(vec4<bool>(false, var_2, true, true)), any(!vec2<bool>(var_2, true)))), Struct_2(Struct_1(vec2<bool>(true, true))), var_2);
}

