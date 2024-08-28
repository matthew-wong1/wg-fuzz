struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<Struct_2, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 28>();
    global1 = array<Struct_2, 21>();
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~(vec3<i32>(-15986i, u_input.c, u_input.c) ^ vec3<i32>(-2147483647i, 4230i, u_input.c)), ~vec3<i32>(0i, u_input.c, u_input.c)) | vec3<i32>(u_input.c, u_input.c, -u_input.c), vec3<i32>(_wgslsmith_mod_i32(-41922i, -25665i) >> (~_wgslsmith_sub_u32(arg_2.c, 51813u) % 32u), u_input.c, select(u_input.c, abs(_wgslsmith_mult_i32(-24619i, 46659i)), true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(611f + _wgslsmith_f_op_f32(select(arg_2.b.a, arg_1.a, !all(vec2<bool>(true, false))))));
    global1 = array<Struct_2, 21>();
    return arg_0.b;
}

fn func_3() -> vec2<f32> {
    var var_0 = func_2(global0[_wgslsmith_index_u32(abs(max(~u_input.a.x, ~0u) ^ ~u_input.b.x), 28u)], func_2(Struct_2(false, Struct_1(func_2(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], Struct_1(-420f), Struct_2(false, Struct_1(172f), u_input.b.x), Struct_2(false, Struct_1(282f), 69377u)).a), u_input.a.x), func_2(Struct_2(true, func_2(Struct_2(true, Struct_1(-710f), 54233u), Struct_1(-260f), global1[_wgslsmith_index_u32(40282u, 21u)], global0[_wgslsmith_index_u32(1u, 28u)]), ~u_input.b.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1051f)), global1[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x) ^ 4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), global0[_wgslsmith_index_u32(34305u, 28u)], global0[_wgslsmith_index_u32(~(~(~u_input.b.x)), 28u)]), Struct_2(false, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -411f)) - 992f)), 0u), Struct_2(true, func_2(Struct_2(all(vec2<bool>(false, false)), Struct_1(-1315f), u_input.a.x), Struct_1(_wgslsmith_f_op_f32(max(-855f, 1413f))), Struct_2(any(vec2<bool>(true, false)), func_2(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], Struct_1(477f), global0[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), u_input.a.x >> (u_input.b.x % 32u)), global0[_wgslsmith_index_u32((u_input.a.x >> (17680u % 32u)) ^ (u_input.a.x >> (u_input.b.x % 32u)), 28u)]), u_input.a.x));
    let var_1 = global0[_wgslsmith_index_u32(61913u, 28u)];
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(607f * var_1.b.a), _wgslsmith_f_op_f32(exp2(var_1.b.a)), false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a)), _wgslsmith_f_op_f32(-878f * _wgslsmith_f_op_f32(f32(-1f) * -1137f)))));
    var var_3 = min(6479i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c, _wgslsmith_clamp_i32(u_input.c, 1i, 142i)), u_input.c)) | 1i;
    let var_4 = _wgslsmith_div_f32(401f, _wgslsmith_f_op_f32(func_2(Struct_2(!var_1.a, var_1.b, var_1.c), var_1.b, Struct_2(var_1.a | var_1.a, Struct_1(var_2.a), select(11227u, 45386u, false)), Struct_2(true, func_2(global1[_wgslsmith_index_u32(4294967295u, 21u)], var_2, global0[_wgslsmith_index_u32(4294967295u, 28u)], Struct_2(var_1.a, var_2, u_input.b.x)), var_1.c)).a - 590f));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(191f, -1853f) - vec2<f32>(121f, var_1.b.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-648f, var_1.b.a), vec2<f32>(1852f, var_1.b.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(335f, var_0.a))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a - var_1.b.a), _wgslsmith_f_op_f32(-var_4)))) * vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_1.b.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    global0 = array<Struct_2, 28>();
    let var_0 = Struct_1(arg_0.a);
    global1 = array<Struct_2, 21>();
    global0 = array<Struct_2, 28>();
    global1 = array<Struct_2, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) * 1f))), arg_1.x)) * arg_0.a);
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-512f * _wgslsmith_f_op_f32(func_4(func_2(Struct_2(true, Struct_1(-729f), u_input.a.x), Struct_1(190f), Struct_2(false, Struct_1(-216f), 2939u), Struct_2(false, Struct_1(535f), u_input.b.x)), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_mod_i32(-1i, -29595i))))), 2723u & u_input.a.x);
    let var_1 = Struct_2(true, Struct_1(var_0.b.a), 4294967295u);
    var var_2 = func_2(var_1, func_2(Struct_2(var_1.c > u_input.a.x, func_2(var_0, var_0.b, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, var_0.c), 28u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_1.c), 21u)]), ~min(var_1.c, var_0.c)), var_1.b, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, min(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_1.c, 0u)), _wgslsmith_sub_u32(var_0.c, var_1.c))), 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, ~var_1.c), ~1926u ^ max(13032u, u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 74509u, var_1.c, u_input.b.x), vec4<u32>(var_0.c, 54793u, 4294967295u, 16913u)), var_0.c), ~0u), vec4<u32>(13118u, _wgslsmith_div_u32(75797u, 32351u & u_input.b.x), 84796u, _wgslsmith_mod_u32(var_0.c, u_input.b.x) << (4294967295u % 32u))), 21u)], Struct_2(false, var_0.b, 13915u));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~u_input.b.x, u_input.b.x), firstTrailingBit(vec3<u32>(var_1.c, ~u_input.b.x, reverseBits(1u)))) << (var_1.c % 32u);
    global0 = array<Struct_2, 28>();
    return ~(~_wgslsmith_add_u32(firstLeadingBit(28536u), _wgslsmith_mod_u32(4294967295u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, u_input.c, u_input.c, -15402i), vec4<i32>(66825i, u_input.c, 3840i, 0i), vec4<bool>(false, false, false, true)), ~vec4<i32>(u_input.c, u_input.c, 1i, u_input.c)), _wgslsmith_mult_i32(~u_input.c, countOneBits(u_input.c))) <= 35404i, Struct_1(_wgslsmith_f_op_f32(select(912f, _wgslsmith_f_op_f32(f32(-1f) * -174f), any(vec2<bool>(true, false)) & true))), u_input.b.x);
    global1 = array<Struct_2, 21>();
    let var_1 = global0[_wgslsmith_index_u32(1u, 28u)];
    let var_2 = -850f;
    var var_3 = vec2<u32>(select(select(35224u, ~1u, ~var_1.c != ~0u), 4012u << (func_1(vec2<i32>(1i, 1i)) % 32u), true), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, -425f, var_2, var_2) * vec4<f32>(776f, var_1.b.a, var_1.b.a, -133f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(968f, -638f, var_0.b.a, var_1.b.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a, var_1.b.a, 694f, var_2), vec4<f32>(var_1.b.a, var_1.b.a, 887f, -681f)))))), u_input.c, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2 - var_1.b.a), var_2, 1593f, _wgslsmith_f_op_f32(var_1.b.a * _wgslsmith_f_op_f32(min(-200f, var_2)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-246f, var_1.b.a, _wgslsmith_f_op_f32(f32(-1f) * -1351f), _wgslsmith_f_op_f32(func_4(Struct_1(-908f), vec2<f32>(var_1.b.a, 612f), u_input.c))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, 903f, var_2, 809f)))), vec2<u32>(var_3.x, ~1u), vec2<i32>(-1i) * -vec2<i32>(-1i, _wgslsmith_clamp_i32(u_input.c, -1646i, u_input.c)));
}

