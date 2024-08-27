struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -18558i;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(4294967295u, 767f, vec3<u32>(0u, 4294967295u, 75107u), vec2<bool>(true, false), true), Struct_1(4294967295u, 420f, vec3<u32>(21145u, 27893u, 0u), vec2<bool>(true, true), true), Struct_1(0u, 963f, vec3<u32>(0u, 20618u, 109882u), vec2<bool>(false, false), false), Struct_1(37580u, -1007f, vec3<u32>(4294967295u, 0u, 0u), vec2<bool>(false, true), false), Struct_1(1u, -1053f, vec3<u32>(1u, 13891u, 1u), vec2<bool>(true, true), true), Struct_1(28918u, -2257f, vec3<u32>(14038u, 1u, 4294967295u), vec2<bool>(true, true), true), Struct_1(4294967295u, -1965f, vec3<u32>(1u, 49039u, 4294967295u), vec2<bool>(false, false), false), Struct_1(64674u, 1377f, vec3<u32>(1u, 37023u, 1u), vec2<bool>(true, true), true), Struct_1(27655u, 1359f, vec3<u32>(19858u, 0u, 43457u), vec2<bool>(true, true), false));

var<private> global2: u32 = 25897u;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_3) -> i32 {
    global1 = array<Struct_1, 9>();
    global0 = 2147483647i;
    let var_0 = vec3<bool>(!(arg_1 && arg_1), true, true);
    var var_1 = -firstLeadingBit(arg_3.a.a.x);
    global2 = arg_0.b | u_input.b;
    return firstTrailingBit(~(-2147483647i));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: u32) -> vec2<i32> {
    var var_0 = -1100f;
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.d, 13595i), -2147483647i), firstTrailingBit(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(18399i, 38270i), abs(vec2<i32>(-32180i, u_input.a))))));
    global0 = _wgslsmith_div_i32(firstLeadingBit(abs(1i >> (_wgslsmith_add_u32(arg_3, arg_3) % 32u))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, abs(_wgslsmith_add_i32(-9700i, u_input.d))), abs(_wgslsmith_sub_i32(u_input.d & u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.d, u_input.d), vec4<i32>(81505i, u_input.a, -60291i, 1371i))))));
    global1 = array<Struct_1, 9>();
    var var_1 = false;
    return ~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(u_input.a, -1i)), -3308i) ^ -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(8106i, -1i)), _wgslsmith_mult_vec2_i32(~min(vec2<i32>(11007i, u_input.a), vec2<i32>(14110i, u_input.d)), -vec2<i32>(-6577i, u_input.a)), -_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.d, -1i), vec2<i32>(-19755i, -45144i)));
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(1000f));
    var var_1 = 0i;
    var var_2 = _wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(firstTrailingBit(select(vec2<i32>(8891i, u_input.a), vec2<i32>(u_input.d, u_input.d), true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(-2147483647i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.d, u_input.a), vec2<i32>(u_input.d, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.a), vec2<i32>(u_input.d, u_input.d))))), abs(abs(-(~vec2<i32>(u_input.d, 2147483647i)))));
    let var_3 = _wgslsmith_add_i32(u_input.d, var_2.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -136f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2442f))))));
    return _wgslsmith_div_vec2_i32(vec2<i32>(-func_2(Struct_4(vec2<f32>(var_0, -263f), 1u), true, min(u_input.c.yz, u_input.c.wz), Struct_3(Struct_2(vec2<i32>(1i, -22216i), var_0))), -1i), -(~firstLeadingBit(func_3(1u, vec2<f32>(1905f, var_0), 1440f, u_input.b))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_2(arg_2 << (arg_0.yx % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(1598f)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1425f - _wgslsmith_f_op_f32(var_0.b * var_0.b)))), 699f);
    global0 = 4925i;
    global2 = 1u;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~(~u_input.c)) << (~_wgslsmith_div_vec4_u32(u_input.c, ~u_input.c) % vec4<u32>(32u)), u_input.c), 9u)];
    return Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -633f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-433f, var_0.b) * vec2<f32>(943f, var_2.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_2.b)))))), u_input.b & (~arg_3.x << (((arg_0.x >> (arg_3.x % 32u)) | (var_2.a >> (u_input.c.x % 32u))) % 32u)));
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(-_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, u_input.d), vec2<i32>(-8397i, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)), _wgslsmith_f_op_f32(step(arg_1.a.x, -990f))))));
    global2 = _wgslsmith_mod_u32(~109991u, abs(1u));
    var var_1 = var_0.a;
    var var_2 = Struct_3(var_0.a);
    var_2 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.b, 0u << (u_input.c.x % 32u), ~u_input.b, ~u_input.c.x)), _wgslsmith_clamp_vec4_u32(u_input.c, min(u_input.c, ~u_input.c), ~countOneBits(vec4<u32>(u_input.b, u_input.c.x, 4294967295u, 1u)))), func_4(vec3<u32>(1u, u_input.b, ~1u), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), any(vec2<bool>(false, false))), vec2<i32>(_wgslsmith_sub_i32(u_input.d, 9965i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), func_1())), vec2<u32>(170u, 4294967295u)));
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 1u, _wgslsmith_mult_u32(min(u_input.b, 1u), 1u)), u_input.c.yww), u_input.c.xxy);
    var_0 = Struct_3(var_0.a);
    global1 = array<Struct_1, 9>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(ceil(var_0.a.b)), !(u_input.a <= _wgslsmith_mult_i32(var_0.a.a.x, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, var_2, -1136f, _wgslsmith_f_op_f32(var_0.a.b - var_2))))), ~min(vec3<i32>(var_0.a.a.x, func_1().x, _wgslsmith_div_i32(var_0.a.a.x, var_0.a.a.x)), vec3<i32>(select(-2147483647i, var_0.a.a.x, true), u_input.a, -39221i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 1000f) + vec2<f32>(var_0.a.b, var_0.a.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1372f, var_2))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(278f, -592f) - vec2<f32>(var_2, 1971f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-842f, 1808f))), vec2<f32>(var_0.a.b, 887f))), (~u_input.c.x <= abs(var_1.x)) || true)), _wgslsmith_sub_vec3_u32(u_input.c.ywx, ~(~vec3<u32>(var_1.x, u_input.c.x, 4294967295u))));
}

