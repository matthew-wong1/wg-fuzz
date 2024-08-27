struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    var var_0 = u_input.c.x << (u_input.a % 32u);
    var var_1 = !(!any(vec4<bool>(1i != u_input.c.x, any(vec4<bool>(false, true, false, false)), true, true)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -636f), 1f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1880f, 1478f, -287f, -1000f)), vec4<f32>(1801f, -1464f, 1545f, -627f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(248f, -454f, -789f, 1010f), vec4<f32>(1469f, 236f, 240f, -1919f), vec4<bool>(false, false, false, true))))))));
    var var_3 = Struct_3(vec3<bool>(true, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)), true), vec2<i32>(2147483647i, firstTrailingBit(countOneBits(0i))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1194f + -191f))), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-var_2.a.x)), var_2.b.a.x, ~(~vec4<u32>(~1u, abs(80849u), u_input.b << (68071u % 32u), ~u_input.b)));
    let var_4 = var_3.d < var_2.b.a.x;
    return vec4<f32>(var_3.d, -280f, _wgslsmith_f_op_f32(-359f - _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-var_3.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec2<bool> {
    let var_0 = arg_0.b;
    var var_1 = -(2147483647i ^ min(u_input.c.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-44002i, 1i, u_input.c.x, 0i)), -vec4<i32>(u_input.c.x, 0i, -2147483647i, u_input.c.x))));
    var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(i32(-1i) * -48491i, _wgslsmith_sub_i32(13399i, u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)), -15209i), vec4<i32>(_wgslsmith_clamp_i32(-1i, max(11887i, u_input.c.x), u_input.c.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c.x, -41212i), abs(u_input.c.x)), u_input.c.x, u_input.c.x)), vec4<i32>(-u_input.c.x | ((u_input.c.x & u_input.c.x) ^ u_input.c.x), u_input.c.x, ~abs(-2147483647i), -2147483647i));
    var_1 = u_input.c.x;
    var_1 = -1i;
    return !vec2<bool>(any(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true))), true);
}

fn func_2() -> vec3<u32> {
    let var_0 = -257f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -548f, var_0) - vec4<f32>(var_0, -1858f, var_0, -767f))))))));
    var var_2 = ~_wgslsmith_add_vec2_u32(firstLeadingBit(reverseBits(vec2<u32>(u_input.a, 51631u))), ~(~vec2<u32>(21891u, 4294967295u)) | ~_wgslsmith_div_vec2_u32(vec2<u32>(53616u, u_input.b), vec2<u32>(4294967295u, 1u)));
    var_2 = select(vec2<u32>(var_2.x, min(var_2.x, 4294967295u)), reverseBits(min(~select(vec2<u32>(var_2.x, 39706u), vec2<u32>(1u, u_input.a), vec2<bool>(true, true)), firstTrailingBit(max(vec2<u32>(0u, var_2.x), vec2<u32>(38316u, 0u))))), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1122f, var_0) + vec2<f32>(144f, 601f))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3()))), var_0));
    var var_3 = abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_2.x) | ~vec2<u32>(var_2.x, 43032u), ~vec2<u32>(var_2.x, u_input.b) & ~vec2<u32>(1u, var_2.x)), vec2<u32>(4294967295u, var_2.x), _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_2.x, 4294967295u)), ~(~vec2<u32>(0u, 0u)))));
    return ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~4294967295u, 15655u & var_2.x), max(vec3<u32>(1u, 14398u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(var_3.x, 0u, 85677u), vec3<u32>(0u, 34978u, var_3.x))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_3.x), vec3<u32>(var_3.x, var_2.x, 0u)), select(vec3<u32>(4294967295u, var_2.x, var_2.x), vec3<u32>(var_2.x, 6883u, 1u), vec3<bool>(false, true, true)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = arg_2.x;
    var var_1 = vec2<u32>(u_input.a, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.x, u_input.b, min(5607u, arg_0.x)), func_2())));
    let var_2 = select(true & func_4(Struct_2(vec2<f32>(-605f, arg_1), Struct_1(vec4<f32>(1301f, arg_1, arg_1, arg_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1, -108f))))).x, true, true);
    var_1 = ~arg_0.yz;
    var_1 = vec2<u32>(4294967295u, ~(countOneBits(u_input.b) & ~_wgslsmith_add_u32(u_input.b, 0u)));
    return arg_2.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(select(vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(true, false, true))), _wgslsmith_sub_i32(-1i, u_input.c.x) >= u_input.c.x), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(199f, 486f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-524f, -397f), vec2<f32>(-1000f, -1995f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(537f, -921f) - vec2<f32>(1000f, 653f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-672f, -170f), vec2<f32>(1663f, -1002f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(451f, 261f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-343f, -516f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(397f, 481f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2649f, -988f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-891f, 136f)))), select(vec2<bool>(false, true), func_1(vec4<u32>(u_input.b, u_input.a, 5964u, 1309u), -1000f, vec3<bool>(false, true, false)), true))))));
    var var_2 = true == (_wgslsmith_add_i32(9096i, -1i) >= u_input.c.x);
    var_0 = !func_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -237f), Struct_1(vec4<f32>(var_1.x, -1374f, var_1.x, var_1.x))), var_1.x).x;
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-510f, 985f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 1436f), vec2<f32>(-716f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(599f))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(abs(1712f))))));
    let var_4 = true && func_4(Struct_2(var_3.b.a.wy, var_3.b), var_3.a.x).x;
    let var_5 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_3.b.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.a.x, _wgslsmith_f_op_f32(-1671f + -1447f), -1860f, _wgslsmith_f_op_vec4_f32(func_3()).x) * vec4<f32>(_wgslsmith_f_op_f32(ceil(2121f)), _wgslsmith_f_op_f32(-var_1.x), var_3.b.a.x, _wgslsmith_f_op_f32(select(1105f, -633f, var_4)))))));
    var_2 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.x, var_5.x) * var_3.b.a.yy)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_3.b.a))))), var_3.b.a.x).x;
    let var_6 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().xx, ~(countOneBits(vec4<i32>(27234i, u_input.c.x, u_input.c.x, -14559i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-33322i, u_input.c.x, u_input.c.x, 2147483647i), vec4<i32>(19770i, -42662i, u_input.c.x, -48764i), vec4<i32>(47413i, u_input.c.x, 0i, -67382i))) | _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, -1i), 1i, -2147483647i << (u_input.a % 32u), ~u_input.c.x), ~(vec4<i32>(u_input.c.x, 2147483647i, 6648i, 27441i) >> (vec4<u32>(75574u, 27095u, 1u, u_input.a) % vec4<u32>(32u)))));
}

