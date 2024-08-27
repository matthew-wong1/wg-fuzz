struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = -(~vec2<i32>(1i ^ arg_0.b.x, u_input.a));
    var var_1 = !vec4<bool>(max(_wgslsmith_mod_u32(arg_0.c.x, arg_0.c.x), arg_0.c.x & arg_0.c.x) >= _wgslsmith_mult_u32(61984u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<u32>(4294967295u, arg_0.c.x, 104675u))), abs(arg_0.b.x) < firstTrailingBit(-var_0.x), !all(select(vec4<bool>(false, arg_0.a, true, true), vec4<bool>(arg_0.a, true, true, false), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec3<bool>(arg_1, true, true)))));
    let var_2 = Struct_2(~(~arg_0.b.x), min(1i, u_input.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - _wgslsmith_f_op_f32(f32(-1f) * -1991f)) + 1461f), -694f));
    let var_4 = all(!select(var_1.zw, vec2<bool>(arg_1, false), !(!var_1.xy)));
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_3(vec2<u32>(2563u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c.x, 1u, arg_0.c.x), vec3<u32>(~24707u, arg_0.c.x, arg_0.c.x))), Struct_2(1i, _wgslsmith_mult_i32(arg_0.b.x, _wgslsmith_dot_vec3_i32(arg_0.b, vec3<i32>(1i, -40444i, arg_0.b.x)))), Struct_2(_wgslsmith_div_i32(-u_input.a, ~(-arg_0.b.x)), u_input.a));
    let var_1 = vec4<u32>(34629u, 1u, arg_0.c.x ^ 1088u, ~14493u);
    let var_2 = vec3<bool>(all(vec4<bool>(all(select(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, false, false, arg_0.a), false)), true, true, _wgslsmith_div_f32(arg_0.d, 1900f) < 1f)), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, 4142i, u_input.a), vec3<i32>(u_input.a, arg_0.b.x, -1i))) >= ((_wgslsmith_div_i32(16718i, arg_0.b.x) >> (var_0.a.x % 32u)) << (func_3(arg_0, arg_0.a) % 32u)), any(select(vec4<bool>(arg_0.a, true, !arg_0.a, arg_0.a), select(!vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), select(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), true), -24499i == u_input.a), any(vec3<bool>(false, arg_0.a, true)))));
    var var_3 = _wgslsmith_clamp_vec2_i32(arg_0.b.zz, abs(select(-arg_0.b.yx, _wgslsmith_clamp_vec2_i32(arg_0.b.zx, arg_0.b.xy, arg_0.b.yz), var_2.x) << (~vec2<u32>(arg_0.c.x, var_0.a.x) % vec2<u32>(32u))), vec2<i32>(var_0.b.b, firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 2147483647i), arg_0.b.yx), arg_0.b.xy))));
    let var_4 = Struct_3(_wgslsmith_add_vec2_u32(var_0.a, var_1.xz), var_0.c, Struct_2(abs(7952i & (var_3.x & -10590i)), ~_wgslsmith_mod_i32(arg_0.b.x, u_input.a)));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_4 {
    return Struct_4(func_2(Struct_1(arg_0.a, abs(reverseBits(vec3<i32>(u_input.a, -2147483647i, u_input.a))), ~_wgslsmith_sub_vec2_u32(arg_0.c, vec2<u32>(arg_0.c.x, arg_0.c.x)), 368f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, -598f, arg_0.d, -1414f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 1582f, 591f, arg_0.d))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1469f, arg_0.d, -1044f, arg_0.d)), vec4<f32>(186f, -200f, -262f, -350f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(459f, 1000f, arg_0.d, -1000f)), vec4<f32>(arg_0.d, arg_0.d, arg_0.d, 1226f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(any(vec4<bool>(true, true, true, true)), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(36541i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 2147483647i)), countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a))), -u_input.a, 31676i), reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(15951u, 1u), vec2<u32>(1u, 1u), ~vec2<u32>(5657u, 55693u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-541f)) * 1000f)), -7654i == ~u_input.a, Struct_2(-1i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 1i), vec3<i32>(-11390i, u_input.a, 40358i)))));
    var var_1 = _wgslsmith_dot_vec3_i32(~select(select(vec3<i32>(var_0.a.b.x, var_0.a.b.x, -26612i), vec3<i32>(-2147483647i, 1i, 2147483647i), true) << (vec3<u32>(4294967295u, 1u, var_0.a.c.x) % vec3<u32>(32u)), var_0.a.b, vec3<bool>(any(vec3<bool>(true, true, true)), select(var_0.a.a, var_0.a.a, var_0.a.a), !var_0.a.a)), var_0.a.b >> (reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, var_0.a.c.x, 0u), ~vec3<u32>(var_0.a.c.x, 1u, var_0.a.c.x))) % vec3<u32>(32u)));
    global0 = array<vec3<f32>, 30>();
    var_0 = func_1(func_2(var_0.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, var_0.b.x, var_0.a.d, var_0.b.x) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.x, 1430f, var_0.b.x, -604f))))))), var_0.a.a, Struct_2(i32(-1i) * -16919i, u_input.a));
    var var_2 = !(!vec4<bool>(var_0.a.a, false, false, false));
    let var_3 = Struct_3(~(~vec2<u32>(var_0.a.c.x, var_0.a.c.x)) << (_wgslsmith_add_vec2_u32((vec2<u32>(1662u, var_0.a.c.x) & var_0.a.c) ^ (var_0.a.c ^ var_0.a.c), var_0.a.c) % vec2<u32>(32u)), Struct_2(var_0.a.b.x, _wgslsmith_mult_i32(-countOneBits(var_0.a.b.x), u_input.a)), Struct_2(select(var_0.a.b.x, -29129i, true), -1i));
    var_0 = func_1(var_0.a, !var_0.a.a & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) + _wgslsmith_f_op_f32(var_0.b.x - var_0.a.d)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_u32(var_0.a.c.x, ~7962u, max(1u, 42314u))), vec4<u32>(var_0.a.c.x, min(~61348u, ~var_3.a.x) ^ ~(~var_0.a.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.a.c.x, _wgslsmith_clamp_u32(var_0.a.c.x, 0u, 17950u), _wgslsmith_mod_u32(15641u, var_3.a.x)), countOneBits(vec3<u32>(21691u, var_0.a.c.x, var_3.a.x)) >> (countOneBits(vec3<u32>(var_0.a.c.x, var_3.a.x, 62487u)) % vec3<u32>(32u))), var_3.a.x & countOneBits(4294967295u)));
}

