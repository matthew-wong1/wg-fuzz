struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<f32, 32> = array<f32, 32>(-474f, 435f, 582f, -2102f, -1616f, 702f, -591f, -245f, -1516f, -1227f, 1226f, -1029f, 691f, 678f, 443f, 883f, -223f, 1000f, -1512f, -224f, 178f, 1711f, 235f, -2021f, -908f, 1765f, -544f, 2160f, 1037f, 681f, 1000f, 2037f);

var<private> global2: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: i32) -> vec2<bool> {
    let var_0 = arg_2.x;
    let var_1 = -_wgslsmith_div_vec3_i32(-vec3<i32>(~40866i, -2147483647i, arg_3 | -1i), arg_1.ywx);
    var var_2 = Struct_1(!((0i > (-12973i ^ arg_1.x)) && false), false, -select(i32(-1i) * -8033i, i32(-1i) * -1i, !(global1[_wgslsmith_index_u32(arg_2.x, 32u)] > 1346f)), countOneBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, u_input.c, 1i, arg_1.x)), arg_1)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -375f))) + _wgslsmith_f_op_f32(-1590f + global1[_wgslsmith_index_u32(0u, 32u)]));
    global0 = array<Struct_1, 20>();
    return vec2<bool>(any(vec2<bool>(arg_0.b, true)), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>) -> f32 {
    var var_0 = Struct_2(vec3<u32>(abs(1u), countOneBits(u_input.b) ^ (1u << (u_input.b % 32u)), ~u_input.b >> (select(4294967295u, ~18471u, false) % 32u)));
    var_0 = Struct_2(~var_0.a);
    let var_1 = vec4<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1414f - -1000f)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), global1[_wgslsmith_index_u32(var_0.a.x, 32u)])), arg_0.x);
    let var_2 = Struct_2(~(~_wgslsmith_add_vec3_u32(var_0.a, _wgslsmith_sub_vec3_u32(var_0.a, var_0.a))));
    var var_3 = Struct_2(vec3<u32>(~1u, 1u, 59316u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1298f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f * -1314f))) * arg_1.x));
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<Struct_1, 20>();
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b | firstTrailingBit(38948u), 4294967295u, 1u, ~(~u_input.b)), vec4<u32>(select(u_input.b, u_input.b, true), 1u, _wgslsmith_mod_u32(38581u, 74099u), _wgslsmith_div_u32(abs(4294967295u), 1u | u_input.b)));
    let var_1 = all(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, all(vec4<bool>(true, true, false, false))), vec3<bool>(true, all(vec3<bool>(true, false, true)), any(vec2<bool>(false, false)))), vec3<bool>(true, true, true), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))))));
    let var_2 = -993f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec2<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, false, var_1, var_1))), func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.b, 1u), var_0), 20u)], _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1i, -2147483647i, 1i), vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.a.x)), abs(vec3<u32>(u_input.b, 1u, u_input.b)), countOneBits(52145i)), vec2<bool>(var_1 && true, any(vec3<bool>(false, true, var_1)))), vec2<f32>(arg_0, var_2))));
    return u_input.a.x;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_2(abs(vec3<u32>(31201u >> (u_input.b % 32u), _wgslsmith_mult_u32(u_input.b, 15374u), 1u)) ^ ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 16117u, arg_2.x), arg_2.zwy), reverseBits(arg_2.ywx)));
    var var_1 = global1[_wgslsmith_index_u32(~(~var_0.a.x), 32u)];
    let var_2 = Struct_2(~_wgslsmith_div_vec3_u32(~(var_0.a >> (arg_2.zwx % vec3<u32>(32u))), var_0.a | countOneBits(vec3<u32>(arg_2.x, 54291u, arg_2.x))));
    var_0 = var_2;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u & var_2.a.x, reverseBits(4294967295u), ~30194u), vec3<u32>(u_input.b, max(10176u, u_input.b), ~9438u)), 32u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.b, 32u)])))))), _wgslsmith_f_op_f32(ceil(-1759f)), global1[_wgslsmith_index_u32(~(~(~(~arg_2.x))), 32u)]);
    return all(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), all(vec2<bool>(false, false))));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global2 = 1520f;
    var var_0 = vec4<i32>(-7296i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x << (u_input.b % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -52218i), u_input.a.yy)), u_input.a.xx), -1i, min(-u_input.a.x, -45748i));
    let var_1 = func_5(-u_input.c, min(u_input.a.x, _wgslsmith_mod_i32(func_2(global1[_wgslsmith_index_u32(u_input.b, 32u)]), -(~2147483647i))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 36061u, 10777u), vec3<u32>(10442u, u_input.b, 4294967295u)) ^ _wgslsmith_clamp_u32(u_input.b, u_input.b, 11849u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.b, 99618u, 34846u, 7929u) % vec4<u32>(32u))), vec4<u32>(1u, select(1u, 34779u, false), u_input.b, u_input.b >> (13568u % 32u))), ~u_input.b, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.b, 71534u, u_input.b, u_input.b)), vec4<u32>(u_input.b, ~u_input.b, countOneBits(58005u), 4294967295u))));
    return Struct_2(vec3<u32>(52279u, u_input.b, ~(~12210u)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = array<f32, 32>();
    var var_0 = vec2<i32>(~arg_3.d & (abs(u_input.c & 1i) >> (func_1().a.x % 32u)), arg_3.d ^ arg_3.c);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2390f, _wgslsmith_f_op_f32(f32(-1f) * -364f)), arg_2))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-847f + 1151f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1869f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.a.x, 32u)]))))));
    let var_3 = false;
    return Struct_1(true, !all(select(vec4<bool>(false, true, var_3, false), select(vec4<bool>(false, true, var_3, false), vec4<bool>(false, arg_3.a, var_3, false), var_3), select(vec4<bool>(arg_3.b, var_3, true, true), vec4<bool>(arg_3.a, true, arg_3.a, var_3), true))), ~(i32(-1i) * -1i), i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 32>();
    let var_0 = func_6(func_1(), func_1(), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 32u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 32u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 32u)] * global1[_wgslsmith_index_u32(36985u, 32u)])))), Struct_1(1066f < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 32u)]), true, u_input.c, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(0i, u_input.c), -2147483647i, -u_input.a.x)));
    var var_1 = global1[_wgslsmith_index_u32(u_input.b, 32u)];
    global0 = array<Struct_1, 20>();
    global1 = array<f32, 32>();
    var var_2 = 1u;
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, ~var_0.c, _wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_div_i32(var_0.d, u_input.c) >> ((16703u | u_input.b) % 32u), _wgslsmith_add_i32(_wgslsmith_div_i32(67458i, -1i), ~u_input.a.x)), u_input.c), max(~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, var_0.d, var_0.c), vec4<i32>(var_0.d, var_0.c, -1i, var_0.d)), abs(vec4<i32>(var_0.c, var_0.d, -2147483647i, u_input.a.x))), -(vec4<i32>(-15200i, u_input.c, -24672i, var_0.c) | vec4<i32>(var_0.c, -2147483647i, 0i, -2147483647i)) << (vec4<u32>(u_input.b, u_input.b, countOneBits(0u), u_input.b) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(48559u, 32u)] * 441f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(func_4(vec2<bool>(false, true), vec2<f32>(-1549f, -102f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(global0[_wgslsmith_index_u32(62525u, 20u)], vec4<i32>(-36450i, u_input.c, var_3.x, var_0.d), vec3<u32>(u_input.b, u_input.b, 4294967295u), 10096i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(45399u, 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)])))) + _wgslsmith_f_op_f32(108f - 702f)), 218f, -710f), global1[_wgslsmith_index_u32(u_input.b, 32u)]);
}

