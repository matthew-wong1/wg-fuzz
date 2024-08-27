struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = Struct_4(reverseBits(min(vec2<u32>(max(0u, 0u), 0u), _wgslsmith_sub_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 20812u), false), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(41161u, 26414u))))), u_input.a, -498f);
    var var_1 = ~(~vec2<i32>(2147483647i, _wgslsmith_div_i32(2147483647i, 1i)) >> ((_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(65837u, 8621u)), var_0.a) ^ ~vec2<u32>(var_0.a.x, var_0.a.x)) % vec2<u32>(32u)));
    var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), (vec2<i32>(var_1.x, var_1.x) & vec2<i32>(var_1.x, 1i)) << (firstTrailingBit(var_0.a) % vec2<u32>(32u))) ^ vec2<i32>(0i, max(var_0.b, 0i)), abs(firstTrailingBit(-vec2<i32>(1i, 2147483647i))));
    var_1 = vec2<i32>(~(i32(-1i) * -var_1.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, var_0.b), u_input.a, ~_wgslsmith_clamp_i32(u_input.a, i32(-1i) * -2147483647i, u_input.a)));
    var var_2 = Struct_4(firstLeadingBit(~(~(~vec2<u32>(var_0.a.x, var_0.a.x)))), firstTrailingBit(_wgslsmith_mult_i32(u_input.a, firstTrailingBit(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0)), 169f, true))));
    return vec3<i32>(-1i, 28285i, 29782i);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_4(vec2<u32>(arg_1, 4294967295u), 1i, -775f);
    var var_1 = var_0;
    let var_2 = func_3(905f);
    let var_3 = true;
    let var_4 = _wgslsmith_add_i32(var_1.b >> (select(min(~4294967295u, ~var_1.a.x), 16246u, true) % 32u), ~reverseBits(var_2.x));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, -1000f, 1923f, 450f), vec4<f32>(var_0.c, -116f, 1057f, 666f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.c, var_0.c, -2194f) * vec4<f32>(289f, 573f, -465f, var_0.c)))))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, ~var_1.b, var_4, i32(-1i) * -2147483647i), -vec4<i32>(var_4, var_4, 2147483647i, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + var_1.c)) + var_1.c), select(arg_0, vec4<bool>(2147483647i > var_0.b, arg_0.x || true, var_3, any(vec3<bool>(arg_0.x, false, arg_0.x))), select(!vec4<bool>(true, false, false, arg_0.x), arg_0, vec4<bool>(true, true, false, true))), var_1.a), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(956f, -453f, 1675f, 298f) + vec4<f32>(-199f, var_0.c, 1940f, var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1592f, 1859f, var_1.c, var_0.c))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1113f, var_0.c, -912f, 200f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 2697f, var_0.c, 510f)))), -select(vec4<i32>(1i, u_input.a, var_4, u_input.a), vec4<i32>(2147483647i, 47852i, var_4, -29354i), arg_0) & abs(vec4<i32>(var_2.x, var_2.x, -3317i, var_2.x)), var_1.c, select(vec4<bool>(arg_0.x, false, true, var_1.a.x <= 15450u), select(select(vec4<bool>(false, var_3, arg_0.x, var_3), vec4<bool>(var_3, true, arg_0.x, false), true), select(vec4<bool>(var_3, false, true, var_3), vec4<bool>(false, true, var_3, arg_0.x), vec4<bool>(true, false, false, arg_0.x)), arg_0.x), var_3), var_0.a), var_1.c, Struct_2(_wgslsmith_mod_vec4_i32(select(vec4<i32>(45589i, var_4, u_input.a, var_4), vec4<i32>(var_0.b, -2147483647i, 2147483647i, 0i), arg_0.x), vec4<i32>(var_2.x, var_1.b, var_0.b, 2147483647i)) ^ vec4<i32>(_wgslsmith_mult_i32(u_input.a, 1i), -8347i, -var_0.b, func_3(-723f).x), any(vec2<bool>(false, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-695f, var_0.c, var_1.c, 182f)))), ~abs(vec4<i32>(56656i, 89738i, var_2.x, var_4)), _wgslsmith_f_op_f32(sign(-595f)), vec4<bool>(false, var_3 | false, arg_0.x, arg_0.x | true), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 25050u), vec2<u32>(77893u, 12543u)) << (var_0.a % vec2<u32>(32u))), Struct_1(vec4<f32>(-599f, 727f, var_1.c, -365f), -(vec4<i32>(var_4, var_1.b, var_2.x, var_4) ^ vec4<i32>(-2147483647i, u_input.a, u_input.a, 1i)), var_1.c, select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), select(arg_0, arg_0, arg_0), vec4<bool>(true, arg_0.x, false, var_3)), var_1.a)), vec2<bool>(false, !(!var_3) && true));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.b.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.d.c, _wgslsmith_f_op_f32(round(arg_0.d.d.c)), _wgslsmith_f_op_f32(round(arg_0.a.c)), _wgslsmith_f_op_f32(-arg_0.a.a.x))))));
    let var_1 = arg_0.d;
    var var_2 = func_2(vec4<bool>(arg_0.a.d.x, 1i < var_1.d.b.x, false, true), arg_0.a.e.x).d.d;
    var_2 = func_2(vec4<bool>(false, !arg_0.b.d.x, any(func_2(var_1.d.d, var_2.e.x).b.d), false), 1u).d.c;
    let var_3 = var_1.c.d.x;
    return var_1.c;
}

fn func_1() -> Struct_3 {
    var var_0 = reverseBits(~_wgslsmith_mod_u32(1u, 4294967295u));
    var var_1 = 1u;
    var var_2 = true;
    return Struct_3(func_4(func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(68376u, 4294967295u, 1u)), 1u))), func_2(!vec4<bool>(true, any(vec3<bool>(true, true, true)), select(false, false, false), true), _wgslsmith_add_u32(27351u, min(1u << (0u % 32u), ~63341u))).b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1540f * func_4(func_2(vec4<bool>(false, false, true, true), 105087u)).c))), Struct_2(func_2(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), 4294967295u).a.b >> (reverseBits(vec4<u32>(4294967295u, 22613u, 25839u, 866u)) % vec4<u32>(32u)), true, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1000f, 511f, -919f))) + vec4<f32>(-1122f, 803f, 2419f, -684f)), min(-vec4<i32>(1i, u_input.a, 36088i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(-12578i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, -1222i))), 1f, vec4<bool>(true, true, true, true), ~vec2<u32>(61344u, 0u)), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, -340f, 699f, 906f)), vec4<f32>(1014f, -159f, -1228f, -795f))), -vec4<i32>(31130i, 2147483647i, 1i, u_input.a) & firstTrailingBit(vec4<i32>(u_input.a, -2147483647i, 13151i, 26772i)), _wgslsmith_div_f32(386f, _wgslsmith_f_op_f32(round(1247f))), vec4<bool>(u_input.a <= u_input.a, true, all(vec3<bool>(true, false, false)), func_2(vec4<bool>(true, false, true, false), 4294967295u).d.b), vec2<u32>(1u, 1u))), vec2<bool>(true, any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), true))));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> u32 {
    var var_0 = arg_0.d.c;
    let var_1 = var_0.d.x;
    var_0 = arg_0.b;
    var_0 = func_4(func_2(select(arg_0.a.d, func_1().a.d, vec4<bool>(arg_0.b.e.x >= 97379u, var_0.d.x, false, true)), ~var_0.e.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -472f), arg_0.b.a.x)))), _wgslsmith_sub_vec4_i32(arg_0.a.b, vec4<i32>(_wgslsmith_sub_i32(var_0.b.x, 11508i), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1242f)).x, ~_wgslsmith_div_i32(arg_0.d.c.b.x, 12531i), -2147483647i)), -1167f, vec4<bool>(!var_0.d.x, !select(arg_0.b.d.x, true, true), !func_2(vec4<bool>(false, var_0.d.x, true, true), _wgslsmith_mult_u32(arg_0.a.e.x, 2560u)).b.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1424f)), _wgslsmith_f_op_f32(-var_0.a.x)) < func_1().d.c.c), var_0.e);
    return firstLeadingBit(~func_2(vec4<bool>(true, true, var_0.d.x, false), select(8468u, var_0.e.x, true)).d.d.e.x) ^ reverseBits(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2086f - 870f), 1805f) - func_4(func_1()).c)) > 4294967295u;
    var var_1 = !(all(select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, var_0), var_0)) && true);
    let var_2 = _wgslsmith_mod_vec3_i32(abs(select(vec3<i32>(func_1().d.c.b.x, u_input.a, 1i), firstLeadingBit(vec3<i32>(0i, u_input.a, u_input.a)) & firstTrailingBit(vec3<i32>(u_input.a, -19501i, u_input.a)), true)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, max(-33617i, select(0i, u_input.a, false))), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-49085i, 0i, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)) | firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    let var_3 = !vec3<bool>(true, false, all(select(select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(true, true, var_0, var_0), true), !vec4<bool>(false, true, var_0, true), !vec4<bool>(false, var_0, false, var_0))));
    let var_4 = var_2;
    var var_5 = func_4(func_2(!func_1().a.d, 56171u));
    var_1 = !var_3.x;
    var var_6 = Struct_4(func_4(func_1()).e ^ max(_wgslsmith_sub_vec2_u32(abs(var_5.e), var_5.e), var_5.e), var_5.b.x, _wgslsmith_div_f32(255f, _wgslsmith_f_op_f32(-819f - 1295f)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec4<u32>(var_6.a.x, var_6.a.x, var_5.e.x, var_5.e.x)), 0u, ~1u, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -56844i, u_input.a), i32(-1i) * -var_4.x, var_6.b, _wgslsmith_add_i32(countOneBits(13126i), _wgslsmith_div_i32(u_input.a, -47113i))), -func_4(func_1()).b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-956f, var_5.c, -2743f) + vec3<f32>(var_5.c, var_6.c, -871f)))) + vec3<f32>(var_5.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a.x) + _wgslsmith_f_op_f32(abs(-157f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1290f + var_6.c))))));
}

