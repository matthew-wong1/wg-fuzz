struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = all(vec3<bool>(true, !(!any(arg_1)), true));
    let var_1 = arg_0;
    let var_2 = ~0i;
    var var_3 = arg_0;
    var_3 = var_1;
    return var_1;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(u_input.b.x, firstLeadingBit(0u)), 15451u) | vec2<u32>(~1u | (firstTrailingBit(1u) >> (_wgslsmith_add_u32(20481u, u_input.b.x) % 32u)), u_input.b.x);
    let var_1 = !arg_0.a;
    var var_2 = ~(min(u_input.a.xx, vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(u_input.a.x, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.x, 27960u, u_input.b.x), vec4<u32>(0u, 50141u, var_0.x, 0u)))) >> (~u_input.a.yz % vec2<u32>(32u)));
    var var_3 = all(vec4<bool>(true, !(!(u_input.c.x < -10906i)), false, !arg_3.a));
    var var_4 = arg_2.x;
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.x * 2389f) - _wgslsmith_f_op_f32(round(arg_2.x)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -1000f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = func_1(func_1(func_3(Struct_2(arg_0 & false), arg_1, arg_1.e, func_1(Struct_2(arg_0), !vec4<bool>(arg_1.d, false, arg_1.c.x, true), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, arg_1.a.x, 2147483647i), arg_1.e.wyy, arg_1.c, true, arg_1.e))), select(select(vec4<bool>(arg_1.c.x, true, true, false), vec4<bool>(arg_0, arg_1.c.x, true, false), vec4<bool>(arg_1.d, arg_0, arg_0, arg_0)), !(!vec4<bool>(arg_0, arg_0, arg_0, false)), arg_1.a.x >= -41083i), Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c.x, -21554i, 1i, 0i), vec4<i32>(arg_1.a.x, 4917i, u_input.c.x, -1i)), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.b.x)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_div_f32(arg_1.e.x, 1765f)), vec3<bool>(arg_1.c.x, true, false), !(!arg_0), _wgslsmith_f_op_vec4_f32(sign(arg_1.e)))), select(vec4<bool>(true, !arg_1.d, all(!vec4<bool>(arg_0, false, arg_0, false)), true), select(!vec4<bool>(arg_0, arg_1.c.x, arg_1.d, arg_0), select(vec4<bool>(false, false, false, true), select(vec4<bool>(arg_1.d, arg_1.d, false, arg_0), vec4<bool>(true, arg_0, false, arg_1.c.x), vec4<bool>(true, arg_1.c.x, arg_0, false)), arg_1.d), !arg_0), select(arg_1.d, arg_0, func_3(Struct_2(false), arg_1, arg_1.e, Struct_2(arg_1.d)).a)), arg_1);
    let var_1 = (~(1i >> (_wgslsmith_add_u32(u_input.b.x, 11157u) % 32u)) ^ 2147483647i) & ~select(min(arg_1.a.x, 0i), ~(~arg_1.a.x), false);
    var_0 = func_1(Struct_2(true), select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.a, var_0.a, arg_0), vec4<bool>(false, arg_0, true, arg_0)), !vec4<bool>(true, false, arg_1.d, var_0.a), true), !(!select(vec4<bool>(true, var_0.a, false, var_0.a), vec4<bool>(false, false, var_0.a, arg_0), vec4<bool>(var_0.a, true, false, false))), true), arg_1);
    var var_2 = arg_1;
    var_0 = Struct_2(arg_0);
    return arg_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = countOneBits(~(~(vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, 508u) ^ vec4<u32>(0u, 49679u, arg_0.x, arg_0.x))));
    let var_2 = Struct_1(vec4<i32>(-1i, -1i, -2147483647i, ~arg_1.a.x), vec3<f32>(_wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.e.x + var_0.e.x), _wgslsmith_f_op_f32(max(arg_1.b.x, arg_1.e.x)), arg_1.d && arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(371f, _wgslsmith_f_op_f32(arg_1.b.x - 1042f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1040f)))))), !vec3<bool>(all(func_2(false, Struct_1(var_0.a, vec3<f32>(arg_1.e.x, 364f, arg_1.e.x), arg_1.c, var_0.d, var_0.e), arg_1.e.x, arg_1.b.xx).c.zz), func_3(Struct_2(arg_1.c.x), var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(202f, var_0.e.x, arg_1.e.x, var_0.e.x) - vec4<f32>(arg_1.e.x, arg_1.b.x, arg_1.b.x, var_0.b.x)), func_3(Struct_2(false), Struct_1(vec4<i32>(u_input.c.x, arg_1.a.x, u_input.c.x, -21803i), vec3<f32>(var_0.e.x, var_0.e.x, -1622f), var_0.c, arg_1.d, arg_1.e), var_0.e, Struct_2(arg_1.d))).a, any(select(arg_1.c, vec3<bool>(var_0.c.x, true, arg_1.c.x), vec3<bool>(arg_1.c.x, true, arg_1.d)))), func_2(true, func_2(var_0.d, Struct_1(-vec4<i32>(u_input.c.x, 0i, 1i, var_0.a.x), _wgslsmith_f_op_vec3_f32(arg_1.b + arg_1.b), !arg_1.c, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-718f, -1739f, arg_1.b.x, 828f) + vec4<f32>(175f, 1000f, var_0.e.x, arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.e.x)) - var_0.b.x), _wgslsmith_f_op_vec2_f32(var_0.e.xx + var_0.b.yz)), _wgslsmith_f_op_f32(1034f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * -1000f) + _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(arg_1.b.x - var_0.b.x)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -308f)))).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.e)))));
    let var_3 = Struct_2(var_1.x > ((min(u_input.a.x, arg_0.x) << (1u % 32u)) ^ 1u));
    var_1 = select(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 67031u, arg_0.x), vec4<u32>(arg_0.x, 0u, 4294967295u, 5422u)), vec4<u32>(u_input.b.x, 74363u, u_input.a.x, 4294967295u), select(vec4<u32>(26788u, 0u, 67235u, 80013u), vec4<u32>(var_1.x, 47852u, arg_0.x, arg_0.x), arg_1.c.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 6852u, 12087u, arg_0.x), reverseBits(vec4<u32>(4294967295u, 27980u, 4294967295u, u_input.a.x)))), vec4<u32>(arg_0.x, ~1u, firstLeadingBit(u_input.b.x), arg_0.x), func_3(var_3, func_2(false, var_2, var_2.e.x, vec2<f32>(624f, 748f)), var_2.e, Struct_2(true)).a | var_3.a) >> (select(select(vec4<u32>(arg_0.x, min(arg_0.x, 42866u), 55666u, u_input.b.x), max(vec4<u32>(4833u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, var_1.x, 116393u, arg_0.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.x, u_input.a.x, arg_0.x), vec4<u32>(arg_0.x, u_input.a.x, 26863u, u_input.b.x)) % vec4<u32>(32u)), false), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_0.x, var_1.x, u_input.b.x, arg_0.x)), min(~vec4<u32>(4294967295u, 66384u, 0u, var_1.x), vec4<u32>(0u, arg_0.x, var_1.x, 1u))), vec4<bool>(true, true, true, false)) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_sub_vec4_i32(var_0.a & ~var_2.a, _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-33044i, u_input.c.x, 2147483647i, 2147483647i), vec4<i32>(0i, var_2.a.x, -32395i, arg_1.a.x) ^ u_input.c), min(vec4<i32>(2147483647i, 21024i, -25259i, 13422i), var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(502f, arg_1.e.x, 1042f)))), vec3<bool>(var_3.a, var_3.a, var_0.c.x), var_0.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -830f), 1f, 474f, _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(var_2.e)), _wgslsmith_f_op_vec4_f32(floor(var_2.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true);
    var var_1 = func_1(Struct_2(var_0.a), vec4<bool>(false, true, u_input.c.x < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -74995i, 2147483647i) << (vec4<u32>(u_input.b.x, u_input.a.x, 4120u, u_input.b.x) % vec4<u32>(32u)), u_input.c), !(~u_input.a.x < _wgslsmith_add_u32(10427u, 3790u))), Struct_1(-u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 913f, 767f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2853f, -1174f, 1827f)))), select(select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(false, false, var_0.a), var_0.a), !vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, false, false)), select(vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(true, false, false), vec3<bool>(false, var_0.a, var_0.a)), all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))), true), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1409f, 340f, -1239f), vec4<f32>(660f, -1000f, -949f, 1831f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-393f, 1330f, 117f, -2024f)))))));
    var var_2 = !select(select(select(vec3<bool>(false, var_1.a, var_1.a), !vec3<bool>(false, var_1.a, var_0.a), true), !select(vec3<bool>(var_0.a, true, var_1.a), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(false, var_1.a, true)), !(!vec3<bool>(false, var_1.a, false))), select(!vec3<bool>(true, var_1.a, var_1.a), !select(vec3<bool>(var_0.a, var_1.a, var_1.a), vec3<bool>(var_0.a, true, true), vec3<bool>(true, var_1.a, var_1.a)), true), !(!var_1.a));
    var var_3 = func_1(func_1(func_1(func_1(func_1(Struct_2(true), vec4<bool>(false, var_0.a, false, true), Struct_1(vec4<i32>(u_input.c.x, -11396i, u_input.c.x, 18347i), vec3<f32>(-793f, -1131f, 1956f), vec3<bool>(false, var_0.a, var_1.a), var_2.x, vec4<f32>(-361f, 1796f, -1000f, 805f))), !vec4<bool>(true, var_1.a, false, false), Struct_1(vec4<i32>(-8855i, 0i, 1i, u_input.c.x), vec3<f32>(1068f, -1994f, -225f), vec3<bool>(false, var_1.a, false), false, vec4<f32>(-654f, -827f, 1407f, 191f))), vec4<bool>(false & var_1.a, true, false, var_2.x), func_4(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x) ^ u_input.a, func_2(var_0.a, Struct_1(u_input.c, vec3<f32>(375f, -1398f, -723f), vec3<bool>(var_0.a, true, false), false, vec4<f32>(-212f, 200f, -1000f, 1019f)), 1107f, vec2<f32>(-449f, 425f)))), vec4<bool>(var_1.a, !var_2.x, !func_3(Struct_2(var_0.a), Struct_1(u_input.c, vec3<f32>(-719f, -368f, 956f), vec3<bool>(true, true, false), var_2.x, vec4<f32>(779f, 840f, 980f, 961f)), vec4<f32>(-370f, -208f, 928f, -266f), Struct_2(var_0.a)).a, true), Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c), u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1095f, -1113f, -365f), vec3<f32>(-857f, 548f, 482f)))), !vec3<bool>(var_0.a, var_2.x, true), var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(562f, -1196f, 638f, -1065f) * vec4<f32>(-598f, 718f, -379f, -287f))))), select(select(!select(vec4<bool>(var_1.a, true, true, var_1.a), vec4<bool>(var_2.x, false, var_2.x, var_1.a), true), !select(vec4<bool>(true, var_1.a, false, var_0.a), vec4<bool>(var_1.a, true, var_2.x, true), true), true), select(vec4<bool>(func_2(false, Struct_1(vec4<i32>(u_input.c.x, -10937i, 15674i, u_input.c.x), vec3<f32>(880f, -1452f, -122f), vec3<bool>(false, var_1.a, var_1.a), false, vec4<f32>(-415f, -207f, 982f, 1000f)), -574f, vec2<f32>(-407f, -267f)).c.x, var_0.a, !var_1.a, var_2.x), select(select(vec4<bool>(var_1.a, var_0.a, true, var_1.a), vec4<bool>(false, var_2.x, var_1.a, var_0.a), vec4<bool>(var_2.x, true, var_1.a, var_0.a)), !vec4<bool>(var_2.x, var_0.a, var_2.x, false), func_3(Struct_2(var_2.x), Struct_1(vec4<i32>(41438i, u_input.c.x, u_input.c.x, u_input.c.x), vec3<f32>(-1185f, 424f, 2002f), vec3<bool>(var_0.a, var_2.x, var_0.a), var_0.a, vec4<f32>(-953f, -1000f, -710f, 162f)), vec4<f32>(-174f, -703f, -1301f, 366f), Struct_2(var_0.a)).a), var_0.a & (u_input.c.x <= -5849i)), !any(!vec4<bool>(var_0.a, true, var_2.x, var_0.a))), Struct_1(u_input.c, vec3<f32>(_wgslsmith_f_op_f32(-1028f - 185f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(702f)))), _wgslsmith_f_op_f32(trunc(-179f))), !vec3<bool>(var_2.x, all(var_2.zy), true), _wgslsmith_sub_i32(u_input.c.x, -50459i) != u_input.c.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-224f * 1751f), _wgslsmith_div_f32(-186f, 981f), func_4(u_input.a, Struct_1(vec4<i32>(u_input.c.x, 1i, 0i, u_input.c.x), vec3<f32>(-2299f, 470f, 419f), vec3<bool>(var_2.x, false, false), false, vec4<f32>(-1000f, -544f, 1323f, -1000f))).b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_4 = 0u;
    let var_5 = u_input.a.x;
    let var_6 = func_2(false, func_4(~_wgslsmith_mult_vec3_u32(firstLeadingBit(u_input.b), ~u_input.b), func_4(reverseBits(u_input.b), Struct_1(vec4<i32>(u_input.c.x, 0i, u_input.c.x, 14285i), vec3<f32>(1f, 1f, 1f), vec3<bool>(var_0.a, var_0.a, var_3.a), 36872u >= var_4, _wgslsmith_f_op_vec4_f32(vec4<f32>(-411f, -874f, 1000f, -261f) - vec4<f32>(-449f, -531f, 1279f, 846f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) - _wgslsmith_f_op_f32(ceil(-890f))) - _wgslsmith_f_op_f32(floor(func_4(vec3<u32>(1u, var_4, 4294967295u), Struct_1(u_input.c, vec3<f32>(-964f, -592f, 1332f), vec3<bool>(true, true, false), var_3.a, vec4<f32>(1150f, -2410f, -560f, -181f))).e.x))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(452f)), _wgslsmith_f_op_f32(-1007f + -408f)))), var_0.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-629f, -1159f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1914f, 513f) + vec2<f32>(936f, 574f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(265f, -873f), vec2<f32>(-189f, -837f), var_0.a))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1528f, 387f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx, ~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.b.xz, _wgslsmith_add_vec2_u32(u_input.a.yx, vec2<u32>(14456u, u_input.b.x)))));
}

