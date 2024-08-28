struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = ~(-2147483647i);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -424f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(222f, 116f, arg_0)), -1155f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * 238f), 1236f, !arg_0))))));
    let var_2 = vec3<bool>((535f < var_1) != true, true, false);
    return _wgslsmith_sub_vec4_i32(abs(_wgslsmith_div_vec4_i32(-(~vec4<i32>(0i, u_input.b, -2147483647i, u_input.b)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-1577i, -18674i, 30317i, u_input.b), vec4<i32>(u_input.b, -9307i, u_input.b, u_input.b), vec4<bool>(true, true, var_2.x, arg_0)), vec4<i32>(u_input.b, 0i, u_input.b, 2147483647i)))), _wgslsmith_mod_vec4_i32(select(select(vec4<i32>(2147483647i, -32202i, 20950i, 35573i), vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i), vec4<bool>(var_2.x, true, true, arg_0)) >> (~vec4<u32>(1u, 0u, u_input.c, 30731u) % vec4<u32>(32u)), ~select(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<i32>(-30324i, -61840i, u_input.b, 2147483647i), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !select(vec4<bool>(var_2.x, var_2.x, arg_0, true), vec4<bool>(false, true, true, false), true)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, u_input.b, 12140i, u_input.b), -vec4<i32>(u_input.b, -1i, 1i, u_input.b), vec4<i32>(30575i, u_input.b, u_input.b, 0i)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.b;
    let var_1 = ~arg_2.b;
    var var_2 = Struct_1(-(~min(vec4<i32>(arg_2.b, arg_2.b, u_input.b, var_1), ~vec4<i32>(u_input.b, 0i, 1i, var_0))), 0i);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-210f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-278f * _wgslsmith_div_f32(1376f, -1997f)), _wgslsmith_f_op_f32(ceil(-404f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1152f))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(888f, -348f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(var_3.x, var_3.x)))));
    return Struct_1(max(vec4<i32>(_wgslsmith_sub_i32(0i, ~var_1), ~_wgslsmith_sub_i32(var_0, 2147483647i), -60978i, 11118i), -abs(func_3(false))), 1i);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(133f * -700f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1326f))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), _wgslsmith_f_op_f32(-129f + 376f), -627f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -326f, 1000f, var_1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -578f, 716f, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(-910f - 1351f), _wgslsmith_div_f32(var_1.x, -1697f), 1910f, _wgslsmith_div_f32(-461f, -1000f))))));
    let var_3 = true;
    var var_4 = Struct_4(Struct_1(vec4<i32>(arg_3.x << (u_input.c % 32u), 11490i, -2147483647i, func_3(!var_3).x), ~abs(2147483647i)), func_2(firstTrailingBit(abs(~arg_0)), arg_0, Struct_2(firstLeadingBit(u_input.a), -28558i)), ~(~63104u), Struct_2(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-14929i, u_input.b, _wgslsmith_div_i32(10128i, u_input.b)), arg_1.a.xxz)));
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, 1f)) * 268f))), func_3(true).x, Struct_2(vec2<u32>(3709u, ~17740u), _wgslsmith_add_i32(-_wgslsmith_sub_i32(arg_2.b, -2147483647i), _wgslsmith_dot_vec4_i32(func_3(var_3), -arg_1.a))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = all(vec2<bool>(false, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))));
    let var_1 = Struct_2(vec2<u32>(countOneBits(3731u), arg_2.c.a.x), -28850i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(arg_2.a + arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a, arg_2.a))), _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(trunc(-348f)))) - vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a))), 827f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_2.a)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -288f, -340f, -777f) + vec4<f32>(-397f, -357f, 205f, -1000f))), vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(abs(701f)), 1f, _wgslsmith_f_op_f32(step(-510f, arg_2.a)))))));
    var var_3 = !select(!select(vec4<bool>(true, true, true, var_0), !vec4<bool>(var_0, false, false, true), vec4<bool>(false, var_0, var_0, false)), !(!(!vec4<bool>(var_0, true, true, false))), _wgslsmith_add_i32(_wgslsmith_div_i32(arg_0.b, var_1.b), var_1.b) < _wgslsmith_div_i32(abs(var_1.b), -2147483647i));
    let var_4 = var_0 != all(!(!(!var_3.zx)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -742f)));
}

fn func_6(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_3(-302f, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), -1i), func_4(~(~(~vec4<u32>(52359u, 1u, 38309u, u_input.a.x))), func_2(abs(select(vec4<u32>(4294967295u, u_input.c, 1u, 6423u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.c), true)), vec4<u32>(1u, u_input.c, u_input.a.x, _wgslsmith_add_u32(u_input.c, u_input.a.x)), Struct_2(u_input.a, countOneBits(u_input.b))), func_2(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 15906u, 42553u), vec4<u32>(u_input.c, u_input.a.x, 5885u, u_input.c)), vec4<u32>(54537u, 4294967295u, func_4(vec4<u32>(4294967295u, 1u, 21370u, 1u), Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), u_input.b), Struct_1(vec4<i32>(-27835i, u_input.b, -16537i, 42808i), u_input.b), vec2<i32>(u_input.b, 6382i)).c.a.x, 1u), Struct_2(func_4(vec4<u32>(0u, 0u, u_input.c, 74041u), Struct_1(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), u_input.b), Struct_1(vec4<i32>(-4482i, u_input.b, 3039i, u_input.b), u_input.b), vec2<i32>(u_input.b, -72591i)).c.a, u_input.b)), -(~vec2<i32>(24882i, u_input.b) & -vec2<i32>(2147483647i, u_input.b))).c);
    var var_1 = true || all(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)), true, false));
    var var_2 = any(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), select(-1i > var_0.b, false, true), select(false, true, true) && true, false), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), true), false));
    var var_3 = vec2<bool>(true, true);
    var var_4 = -811f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(432f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_0, true)) + _wgslsmith_f_op_f32(630f + -1113f))) + _wgslsmith_f_op_f32(arg_0 + var_0.a));
    return Struct_3(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_i32(reverseBits(9345i << (abs(u_input.a.x) % 32u)), i32(-1i) * -1i), Struct_2(u_input.a, ~var_0.b));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = 25141u;
    let var_1 = true;
    var var_2 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(vec2<u32>(0u, 4294967295u) << (vec2<u32>(u_input.a.x, arg_0.x) % vec2<u32>(32u)), abs(-16905i)), u_input.a, func_4(select(vec4<u32>(0u, u_input.a.x, 0u, 61433u), vec4<u32>(21540u, arg_0.x, u_input.a.x, arg_0.x), vec4<bool>(false, false, var_1, var_1)), func_2(vec4<u32>(1u, 4294967295u, u_input.c, 1u), vec4<u32>(0u, 1u, 1u, 23310u), Struct_2(vec2<u32>(0u, 0u), u_input.b)), Struct_1(vec4<i32>(-9791i, u_input.b, u_input.b, 1i), u_input.b), vec2<i32>(-14005i, 38558i))))));
    var var_3 = Struct_1(_wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(func_3(false), vec4<i32>(var_2.b, u_input.b, 7829i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(1501i, u_input.b, u_input.b, var_2.c.b), vec4<i32>(12517i, u_input.b, 2147483647i, -16256i))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b << (4294967295u % 32u), -2147483647i, u_input.b, 16401i), _wgslsmith_sub_vec4_i32(func_3(var_1), firstTrailingBit(vec4<i32>(0i, 0i, u_input.b, var_2.c.b))))), _wgslsmith_clamp_i32(-977i, -69366i, reverseBits(0i)));
    var var_4 = _wgslsmith_add_vec3_u32(min(vec3<u32>(arg_0.x, u_input.c, func_4(vec4<u32>(1701u, u_input.c, 50533u, 1u) >> (vec4<u32>(30540u, 28804u, var_2.c.a.x, 7241u) % vec4<u32>(32u)), func_2(vec4<u32>(var_2.c.a.x, 22208u, 1u, var_2.c.a.x), vec4<u32>(6314u, arg_0.x, var_2.c.a.x, var_2.c.a.x), Struct_2(arg_0, u_input.b)), Struct_1(vec4<i32>(2147483647i, var_3.b, -1i, u_input.b), -2147483647i), -vec2<i32>(var_2.c.b, -3845i)).c.a.x), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, var_2.c.a.x, 29054u), vec3<u32>(u_input.c, var_2.c.a.x, arg_0.x))), ~((vec3<u32>(arg_0.x, 0u, 4294967295u) >> (vec3<u32>(1774u, var_2.c.a.x, 58579u) % vec3<u32>(32u))) & ~vec3<u32>(u_input.a.x, 4117u, 3499u)) & max(~(vec3<u32>(32371u, arg_0.x, arg_0.x) & vec3<u32>(u_input.a.x, 4294967295u, 1u)), vec3<u32>(0u, _wgslsmith_mult_u32(47240u, 48796u), 4294967295u)));
    return _wgslsmith_f_op_f32(ceil(var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(!(u_input.a.x == 52391u), true, u_input.b >= 2147483647i, true));
    let var_1 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(u_input.a)))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(571f)))));
    var_0 = select(!select(!vec4<bool>(var_0.x, var_1, var_1, false), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_1, false)), vec4<bool>(u_input.c <= 23546u, var_0.x, var_1 || true, true)), vec4<bool>(all(var_0.zy), var_1, var_0.x, true), !select(!(!vec4<bool>(var_1, true, var_1, var_1)), vec4<bool>(true, var_1, u_input.b > 962i, true), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(-1000f - 675f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(291f, 302f), vec2<f32>(1000f, -1226f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-610f, 182f) * _wgslsmith_div_vec2_f32(vec2<f32>(583f, -793f), vec2<f32>(-417f, 516f)))))), var_0.wz));
    let var_3 = 0u;
    let var_4 = Struct_4(Struct_1(~vec4<i32>(u_input.b, -1i, ~(-34662i), u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i) | vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(-12940i, 17430i, u_input.b)), countOneBits(vec3<i32>(u_input.b, u_input.b, u_input.b)))), func_2(~vec4<u32>(~27248u, 8766u, 49686u, u_input.c), abs(vec4<u32>(1u, ~0u, ~12724u, ~var_3)), func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3, var_3, 1u, 1u), vec4<u32>(0u, var_3, 18177u, 62731u), vec4<u32>(var_3, var_3, var_3, u_input.c)) << (~vec4<u32>(u_input.a.x, 0u, 4294967295u, 0u) % vec4<u32>(32u)), Struct_1(vec4<i32>(-51849i, 2147483647i, -33190i, u_input.b) << (vec4<u32>(var_3, 0u, 25263u, 8699u) % vec4<u32>(32u)), func_6(var_2.x).b), Struct_1(vec4<i32>(u_input.b, u_input.b, -1i, -1i), 1i), -vec2<i32>(2147483647i, u_input.b)).c), countOneBits(1u), Struct_2(reverseBits(vec2<u32>(_wgslsmith_clamp_u32(var_3, 13710u, var_3), u_input.a.x)), 38239i));
    var_0 = !(!select(vec4<bool>(var_1, var_1 && var_0.x, var_0.x, var_1), select(!vec4<bool>(var_0.x, false, var_1, var_1), vec4<bool>(true, true, true, true), var_1), vec4<bool>(var_0.x, true, u_input.a.x < var_4.c, true)));
    var_0 = !vec4<bool>((var_1 & any(var_0.wx)) && all(!vec3<bool>(var_0.x, true, var_1)), var_1, all(select(select(var_0.ww, var_0.yw, false), select(var_0.yy, var_0.zx, vec2<bool>(var_0.x, false)), vec2<bool>(var_1, var_0.x))), any(var_0.wz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b, var_4.a.b, -47353i), var_4.a.a)), -var_4.a.a ^ ~var_4.b.a, ~vec4<i32>(u_input.b, var_4.a.b, 9854i, u_input.b)), vec4<i32>(u_input.b, var_4.a.b, ~func_4(vec4<u32>(0u, var_4.d.a.x, 88394u, var_4.d.a.x), var_4.a, var_4.b, vec2<i32>(-2147483647i, u_input.b)).c.b, u_input.b), var_4.a.a), 30778u, 1u, -(var_4.b.a.zwz ^ ~var_4.a.a.yyy));
}

