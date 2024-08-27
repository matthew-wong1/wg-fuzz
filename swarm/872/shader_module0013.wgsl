struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    let var_0 = 1002f;
    var var_1 = Struct_2(Struct_1(u_input.a.x, any(vec3<bool>(true, true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), abs(17807u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -1000f, -138f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1398f, 1072f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(526f, var_0, 733f)))), Struct_1(u_input.a.x, false, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true)), 1u, vec3<f32>(282f, var_0, var_0)), Struct_1(~u_input.a.x, all(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, false)))), select(vec2<bool>(true, true), vec2<bool>(false, true), true), 1u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(928f, var_0, var_0), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, var_0)))), vec3<bool>(any(vec4<bool>(true, true, true, false)), false, all(vec2<bool>(true, true)))))), var_0);
    let var_2 = vec3<i32>(var_1.a.a, 1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.a.a, 2147483647i, u_input.a.x, var_1.b.a) | vec4<i32>(u_input.a.x, 53155i, u_input.a.x, 1342i), vec4<i32>(-2147483647i, 66115i, -19267i, u_input.a.x) & vec4<i32>(u_input.a.x, var_1.c.a, 645i, var_1.b.a), var_1.b.b) & vec4<i32>(u_input.a.x, -2147483647i, ~u_input.a.x, ~u_input.a.x), ~firstLeadingBit(~vec4<i32>(-13032i, u_input.a.x, var_1.b.a, u_input.a.x))));
    var var_3 = 1i;
    let var_4 = select(any(select(select(vec4<bool>(var_1.c.b, var_1.c.b, var_1.b.c.x, var_1.b.c.x), vec4<bool>(var_1.b.b, true, true, true), var_1.a.b), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(var_1.c.b, var_1.c.c.x, false, false)), var_1.c.c.x)) & any(vec4<bool>(all(var_1.c.c), true, true, u_input.a.x < 10059i)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) > var_0), !(!any(select(vec4<bool>(true, var_1.c.b, true, var_1.b.b), vec4<bool>(false, var_1.c.b, true, false), vec4<bool>(var_1.b.c.x, var_1.a.c.x, var_1.b.c.x, false)))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2997f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e + arg_2.b.c.e.x)))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.e + _wgslsmith_f_op_f32(f32(-1f) * -559f)), -518f));
    var var_1 = 1204f;
    let var_2 = firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(52947i, 0i, min(~arg_1.a, -arg_1.a), _wgslsmith_add_i32(arg_2.b.a.a, u_input.a.x << (27568u % 32u))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-81253i, arg_1.a), -17791i), _wgslsmith_dot_vec3_i32(abs(u_input.a), vec3<i32>(arg_2.b.b.a, -16509i, -68440i)), arg_2.b.a.a, countOneBits(_wgslsmith_mult_i32(-1i, 1i)))));
    return 1000f;
}

fn func_2() -> Struct_4 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(sign(-1931f));
    var_1 = -606f;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(!vec2<bool>(false, func_3()), Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, var_0), 38879i), false, select(vec2<bool>(true, true), vec2<bool>(true, true), true), 4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-421f, 263f, -280f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1926f, -1336f, -1607f), vec3<f32>(-1258f, 614f, -443f))))), Struct_4(73661u, Struct_2(Struct_1(-1i, false, vec2<bool>(true, false), 0u, vec3<f32>(461f, -543f, 294f)), Struct_1(u_input.a.x, true, vec2<bool>(true, false), 49375u, vec3<f32>(-668f, -807f, -185f)), Struct_1(2147483647i, false, vec2<bool>(false, true), 69051u, vec3<f32>(1000f, 854f, -1092f)), _wgslsmith_f_op_f32(trunc(-1164f))), 0u, 1u, 856f), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, true))))));
    var_1 = -1089f;
    return Struct_4(_wgslsmith_div_u32(0u, ~(reverseBits(0u) << (1u % 32u))), Struct_2(Struct_1(_wgslsmith_div_i32(-2147483647i, abs(7166i)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), 17190u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_f_op_f32(sign(343f)), 1f)), Struct_1(_wgslsmith_div_i32(~(-1i), u_input.a.x), true, select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_mult_u32(16486u, firstLeadingBit(1u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-374f, 195f, -112f) + vec3<f32>(-1000f, 1303f, 1011f)), vec3<f32>(-781f, 745f, 1000f))), Struct_1(u_input.a.x, all(vec2<bool>(false, false)) | true, !select(vec2<bool>(false, false), vec2<bool>(false, false), true), 1u, vec3<f32>(_wgslsmith_f_op_f32(sign(-1970f)), -452f, _wgslsmith_f_op_f32(f32(-1f) * -221f))), -708f), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(1u, 0u), ~reverseBits(1u)), countOneBits(~(~vec2<u32>(4294967295u, 37624u)))), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1277f) * 1413f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1456f))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_4 {
    var var_0 = select(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.b.a, 14119i, 19613i), u_input.a << (vec3<u32>(arg_0.a.c.d, arg_0.a.b.d, 0u) % vec3<u32>(32u))), 1i << (abs(arg_0.a.a.d) % 32u), _wgslsmith_sub_i32(u_input.a.x, arg_1.b.c.a), -68430i), -(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.a.a, arg_0.a.a.a, -33323i, u_input.a.x), vec4<i32>(u_input.a.x, arg_1.b.c.a, u_input.a.x, u_input.a.x)) & vec4<i32>(arg_1.b.a.a, arg_1.b.a.a, arg_0.a.c.a, u_input.a.x))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-24809i, -4506i >> (1u % 32u)), min(2147483647i, -arg_1.b.a.a)), arg_0.a.c.a, arg_1.b.c.a, arg_0.a.a.a), !select(!select(vec4<bool>(arg_1.b.c.b, arg_0.a.c.b, false, arg_0.a.b.c.x), vec4<bool>(arg_0.a.c.b, false, arg_1.b.c.c.x, true), false), vec4<bool>(true, arg_1.b.b.c.x | arg_0.a.a.c.x, all(vec3<bool>(true, true, true)), !arg_1.b.b.c.x), vec4<bool>(false, true, !arg_1.b.b.c.x, !arg_1.b.b.b)));
    let var_1 = arg_1;
    let var_2 = select(u_input.a.zx, var_0.zx, var_1.b.a.b);
    var_0 = ~vec4<i32>(10660i, abs(u_input.a.x), -(~(-52319i) >> (~var_1.a % 32u)), -2147483647i);
    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-_wgslsmith_div_vec2_i32(~var_2, u_input.a.xx), ~(-_wgslsmith_div_vec2_i32(u_input.a.yy, u_input.a.zz))), select(countOneBits(abs(_wgslsmith_mod_vec2_i32(var_2, var_0.ww))), -firstTrailingBit(-vec2<i32>(-1i, 19943i)), false));
    return func_2();
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_4 {
    var var_0 = func_5(Struct_3(arg_1, 649f), func_2());
    let var_1 = var_0.b;
    let var_2 = Struct_3(func_2().b, _wgslsmith_f_op_f32(1288f - var_1.a.e.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-331f, arg_1.a.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d) * _wgslsmith_f_op_f32(-var_1.c.e.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1052f * var_1.a.e.x) * _wgslsmith_f_op_f32(801f - arg_1.b.e.x)))));
    let var_4 = vec2<i32>(-88875i, var_0.b.b.a);
    return Struct_4(var_2.a.c.d, func_5(var_2, func_2()).b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_1.c.d, 10227u), arg_1.c.d, ~var_1.c.d), ~vec3<u32>(454u, arg_1.c.d, 13581u) >> (select(vec3<u32>(arg_3, var_2.a.a.d, 0u), vec3<u32>(arg_3, var_1.a.d, var_0.b.c.d), vec3<bool>(arg_0, false, true)) % vec3<u32>(32u))), arg_1.c.d ^ arg_3, -426f);
}

fn func_6(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec3_u32(~(~(vec3<u32>(4294967295u, 16240u, arg_0.d) ^ (vec3<u32>(4294967295u, 0u, arg_2) << (vec3<u32>(33297u, arg_0.d, arg_0.c) % vec3<u32>(32u))))), firstTrailingBit(~vec3<u32>(~arg_0.d, 44888u, 41646u)));
    var_0 = vec3<u32>(abs(arg_0.a), ~_wgslsmith_sub_u32(countOneBits(71803u), arg_0.a | 4294967295u) | min(_wgslsmith_mult_u32(4294967295u, var_0.x) ^ _wgslsmith_mod_u32(arg_2, 29622u), ~(~32483u)), arg_2);
    var var_1 = vec2<i32>(-15790i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 14785i, arg_0.b.a.a), vec3<i32>(2147483647i, u_input.a.x, 1i), arg_0.b.b.c.x | arg_0.b.a.b), -min(u_input.a, arg_1)) >> (arg_2 % 32u));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_5(Struct_3(Struct_2(arg_0.b.b, Struct_1(2147483647i, true, arg_0.b.c.c, arg_0.c, arg_0.b.a.e), arg_0.b.c, -2450f), _wgslsmith_f_op_f32(min(-1861f, -1137f))), func_1(true, arg_0.b, 4294967295u << (arg_0.a % 32u), arg_0.b.b.d)).b.a.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-332f, _wgslsmith_f_op_f32(-func_1(arg_0.b.c.b, Struct_2(Struct_1(var_1.x, true, arg_0.b.a.c, arg_2, arg_0.b.b.e), Struct_1(-1i, true, arg_0.b.b.c, 4294967295u, arg_0.b.a.e), arg_0.b.a, -2034f), 4294967295u, 37856u).b.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-860f - _wgslsmith_f_op_f32(abs(arg_0.e))))), arg_0.b.a.b));
    var_0 = min(vec3<u32>(42830u, ~arg_2, ~(~arg_2)) ^ vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 40173u, arg_2), ~vec3<u32>(4294967295u, 4294967295u, var_0.x)), _wgslsmith_mod_u32(min(var_0.x, 4294967295u), ~4294967295u)), select(vec3<u32>(abs(28765u) ^ ~arg_0.a, 0u, _wgslsmith_mod_u32(4294967295u, ~arg_2)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(91682u, var_0.x, arg_2)), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.a, arg_2, var_0.x)), ~vec3<u32>(arg_2, 0u, 0u))), !(!select(vec3<bool>(arg_0.b.c.c.x, false, true), vec3<bool>(arg_0.b.b.c.x, arg_0.b.a.b, arg_0.b.b.b), vec3<bool>(false, false, true)))));
    return !func_2().b.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_i32(select(2147483647i, -(u_input.a.x & -1i), true == select(false, false, true)), -(u_input.a.x << (12571u % 32u)) >> (0u % 32u)), false & select(true, false, !all(vec2<bool>(false, false))), !select(vec2<bool>(all(vec2<bool>(true, true)), true), func_6(func_1(false, Struct_2(Struct_1(u_input.a.x, true, vec2<bool>(true, false), 1u, vec3<f32>(-2161f, -2214f, 573f)), Struct_1(u_input.a.x, true, vec2<bool>(false, false), 4294967295u, vec3<f32>(141f, -1174f, -1497f)), Struct_1(u_input.a.x, false, vec2<bool>(false, true), 42075u, vec3<f32>(-247f, 1048f, 1875f)), -701f), 0u, 2638u), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, -7856i), u_input.a), ~1u), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), countOneBits(countOneBits(11993u)) >> (~4294967295u % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(func_2().b.c.e, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-251f, -464f, 1395f), vec3<f32>(466f, -309f, 257f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1276f) * _wgslsmith_f_op_f32(step(317f, -1000f))), _wgslsmith_f_op_f32(round(func_5(Struct_3(Struct_2(Struct_1(u_input.a.x, true, vec2<bool>(true, false), 0u, vec3<f32>(224f, -1704f, -536f)), Struct_1(-1i, false, vec2<bool>(true, true), 1u, vec3<f32>(-2906f, 735f, 1609f)), Struct_1(1i, false, vec2<bool>(true, true), 44964u, vec3<f32>(-128f, -134f, 1086f)), 1870f), 873f), Struct_4(21556u, Struct_2(Struct_1(-24358i, false, vec2<bool>(false, true), 17397u, vec3<f32>(1000f, -1283f, -243f)), Struct_1(u_input.a.x, false, vec2<bool>(true, true), 42554u, vec3<f32>(-1462f, 596f, 1023f)), Struct_1(-1i, true, vec2<bool>(false, true), 0u, vec3<f32>(-143f, 1528f, -707f)), 629f), 47698u, 51588u, 489f)).b.a.e.x)), 227f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.e.x, var_0.e.x, -267f, var_0.e.x))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_0.e.x, 1098f, var_0.e.x) + vec4<f32>(227f, var_0.e.x, var_0.e.x, var_0.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1235f, 279f, var_0.e.x, -1902f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-235f, var_0.e.x, var_0.e.x, -328f)))))))));
    let var_2 = vec3<bool>(func_5(Struct_3(func_1(true, Struct_2(Struct_1(var_0.a, var_0.c.x, vec2<bool>(true, true), 4294967295u, vec3<f32>(-582f, -767f, 184f)), Struct_1(u_input.a.x, true, var_0.c, 39032u, vec3<f32>(var_0.e.x, var_1.x, var_1.x)), Struct_1(-26085i, var_0.b, vec2<bool>(false, var_0.c.x), 0u, var_0.e), -571f), 7459u >> (var_0.d % 32u), 0u).b, _wgslsmith_f_op_f32(-1906f * _wgslsmith_f_op_f32(-276f - -199f))), func_5(Struct_3(Struct_2(Struct_1(u_input.a.x, true, vec2<bool>(var_0.c.x, var_0.c.x), var_0.d, vec3<f32>(var_1.x, var_1.x, var_1.x)), Struct_1(-43433i, var_0.c.x, var_0.c, 62220u, vec3<f32>(var_1.x, var_1.x, 1003f)), Struct_1(u_input.a.x, false, var_0.c, var_0.d, vec3<f32>(var_1.x, var_1.x, var_1.x)), -105f), 689f), Struct_4(_wgslsmith_mod_u32(var_0.d, 4294967295u), func_1(var_0.c.x, Struct_2(Struct_1(u_input.a.x, false, var_0.c, 1u, var_0.e), Struct_1(u_input.a.x, var_0.b, vec2<bool>(true, var_0.c.x), var_0.d, vec3<f32>(var_1.x, -1772f, -2302f)), Struct_1(0i, var_0.c.x, vec2<bool>(var_0.b, var_0.b), 4294967295u, var_0.e), -1000f), var_0.d, var_0.d).b, 0u << (var_0.d % 32u), var_0.d ^ 4294967295u, var_0.e.x))).b.c.c.x, var_0.b, all(select(!select(vec3<bool>(var_0.c.x, var_0.b, var_0.b), vec3<bool>(var_0.c.x, var_0.b, false), var_0.c.x), select(select(vec3<bool>(false, var_0.c.x, true), vec3<bool>(var_0.c.x, var_0.b, var_0.c.x), vec3<bool>(var_0.b, var_0.b, false)), select(vec3<bool>(var_0.c.x, var_0.b, true), vec3<bool>(var_0.c.x, var_0.b, var_0.b), vec3<bool>(true, false, var_0.c.x)), var_0.b), vec3<bool>(var_0.d == 0u, var_0.c.x, true))));
    var_0 = func_2().b.a;
    var var_3 = func_1(var_2.x, func_2().b, _wgslsmith_mod_u32(~(~20944u & (var_0.d | 28882u)), ~(var_0.d >> (4294967295u % 32u))), ~abs(1u)).b.c.b;
    var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, u_input.a.x) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d, var_0.d, var_0.d), vec3<u32>(var_0.d, var_0.d, 32297u)), _wgslsmith_mult_vec3_u32(vec3<u32>(95364u, var_0.d, 1u), vec3<u32>(93482u, var_0.d, var_0.d))) % 32u), min(func_2().b.c.a ^ -var_0.a, -2147483647i)), !select(var_0.b, var_0.d > _wgslsmith_div_u32(var_0.d, var_0.d), any(select(vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(false, var_0.c.x, var_2.x, var_0.c.x), vec4<bool>(false, true, var_2.x, var_0.b)))), var_2.yy, func_2().a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2690f), -1228f, func_2().e));
    var_3 = !(func_5(Struct_3(Struct_2(Struct_1(var_0.a, var_0.b, vec2<bool>(var_0.c.x, var_2.x), var_0.d, vec3<f32>(1000f, -949f, -664f)), Struct_1(var_0.a, true, var_0.c, 1u, vec3<f32>(-168f, -1000f, var_0.e.x)), Struct_1(var_0.a, var_2.x, var_2.zx, 1u, vec3<f32>(var_1.x, var_0.e.x, var_0.e.x)), -2157f), _wgslsmith_f_op_f32(sign(-1000f))), Struct_4(~var_0.d, func_5(Struct_3(Struct_2(Struct_1(2147483647i, var_0.c.x, var_2.xy, 25880u, vec3<f32>(-899f, var_1.x, -1247f)), Struct_1(2147483647i, var_2.x, vec2<bool>(true, var_0.b), 4294967295u, var_0.e), Struct_1(1i, var_2.x, vec2<bool>(true, false), 4294967295u, var_1.xyx), var_0.e.x), var_1.x), Struct_4(var_0.d, Struct_2(Struct_1(var_0.a, true, var_2.zx, var_0.d, vec3<f32>(var_0.e.x, var_1.x, var_1.x)), Struct_1(5498i, true, var_0.c, 8634u, vec3<f32>(361f, -588f, var_0.e.x)), Struct_1(u_input.a.x, var_2.x, var_2.zz, 10340u, vec3<f32>(693f, 199f, var_1.x)), var_0.e.x), var_0.d, var_0.d, var_0.e.x)).b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 56883u, var_0.d, 4294967295u), vec4<u32>(4330u, var_0.d, 0u, var_0.d)), var_0.d, _wgslsmith_f_op_f32(-var_1.x))).b.a.c.x | !(!(var_0.c.x & false)));
    var_3 = !(!var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -39213i, 8885i, -28476i), vec4<i32>(2147483647i, 32837i, 43531i, -1i)))));
}

