struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<f32> {
    let var_0 = Struct_4(-_wgslsmith_mod_i32(~(4997i & arg_0.a), 0i), Struct_2(arg_0.c.a, vec3<u32>(4294967295u, min(arg_0.b.a.b.x, 4294967295u), min(~arg_3.x, u_input.b.x)), _wgslsmith_sub_u32(arg_2.c, ~13640u), any(select(arg_2.a.c, arg_0.b.a.c, select(vec2<bool>(arg_2.d, false), vec2<bool>(false, true), true)))), Struct_2(Struct_1(vec3<f32>(arg_0.c.a.a.x, _wgslsmith_f_op_f32(arg_0.b.a.a.x * 779f), arg_2.a.a.x), arg_2.b >> (u_input.a % vec3<u32>(32u)), vec2<bool>(u_input.c <= u_input.c, arg_2.a.c.x), arg_3.x != ~1u), ~(_wgslsmith_div_vec3_u32(arg_2.b, vec3<u32>(0u, 46905u, 18050u)) | arg_2.a.b), 18942u, arg_2.d), min(~firstTrailingBit(-2147483647i), ~(-abs(u_input.c))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a.x, -1312f, 330f, arg_0.b.a.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(784f, arg_2.a.a.x, arg_2.a.a.x, 481f) * vec4<f32>(1020f, arg_2.a.a.x, -735f, 452f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.a.x, -693f, var_0.c.a.a.x, arg_0.b.a.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.a.x, var_0.b.a.a.x, arg_0.c.a.a.x, -962f)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1277f, arg_0.c.a.a.x, 1339f, arg_0.b.a.a.x), vec4<f32>(1997f, arg_0.c.a.a.x, arg_2.a.a.x, var_0.c.a.a.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(740f)), 213f, _wgslsmith_f_op_f32(1000f + var_0.c.a.a.x), _wgslsmith_f_op_f32(round(arg_0.b.a.a.x))))))));
    var var_2 = all(vec4<bool>((_wgslsmith_sub_u32(arg_2.c, 42420u) > 16332u) == all(!vec4<bool>(false, arg_0.b.d, false, false)), all(select(!vec3<bool>(arg_2.a.d, arg_0.b.d, arg_0.b.d), select(vec3<bool>(arg_0.b.a.d, arg_2.d, arg_2.a.c.x), vec3<bool>(false, arg_0.b.d, var_0.b.a.d), arg_0.c.d), vec3<bool>(arg_0.b.d, true, arg_0.b.d))), false, !any(vec3<bool>(var_0.c.d, true, var_0.c.a.d))));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_2.a.a.yz)))))));
    var var_4 = abs(firstLeadingBit(vec2<i32>(countOneBits(-u_input.c), ~(i32(-1i) * -2147483647i))));
    return vec2<f32>(-434f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1030f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-201f - arg_0.b.a.a.x) * _wgslsmith_f_op_f32(644f - arg_2.a.a.x))))));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(668f)), 1000f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(-u_input.c, Struct_2(Struct_1(vec3<f32>(1011f, -1226f, -1000f), u_input.a, vec2<bool>(false, true), false), u_input.b, 4294967295u, true), Struct_2(Struct_1(vec3<f32>(-995f, -215f, 1009f), vec3<u32>(39896u, 0u, 21415u), vec2<bool>(true, true), true), u_input.b, 11646u, false), -2147483647i), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<f32>(-1615f, 531f, -901f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<bool>(true, true), true), abs(u_input.a), u_input.b.x, select(false, false, true)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b.x, 28317u), ~u_input.b.zz, vec2<u32>(4294967295u, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2451f, 296f), vec2<f32>(-919f, -532f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1543f, -249f))), vec2<f32>(-134f, -217f)))))));
    let var_1 = -_wgslsmith_div_vec2_i32(vec2<i32>(-(u_input.c >> (u_input.b.x % 32u)), -(u_input.c | u_input.c)), vec2<i32>(6454i, ~(~(-14309i))));
    var var_2 = Struct_3(true, ~(~_wgslsmith_div_i32(u_input.c, u_input.c) | _wgslsmith_mult_i32(countOneBits(36081i), _wgslsmith_mod_i32(32121i, var_1.x))));
    var var_3 = -select(firstLeadingBit(~(-u_input.c)), -1i, var_2.a);
    let var_4 = 1i;
    return Struct_4(-2147483647i, Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1426f + var_0.x), _wgslsmith_f_op_vec2_f32(func_3(Struct_4(var_2.b, Struct_2(Struct_1(vec3<f32>(-1000f, var_0.x, 169f), vec3<u32>(8842u, 1u, u_input.a.x), vec2<bool>(var_2.a, true), var_2.a), vec3<u32>(0u, 26735u, u_input.a.x), u_input.a.x, false), Struct_2(Struct_1(vec3<f32>(-863f, 1264f, var_0.x), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec2<bool>(true, false), false), u_input.b, 0u, true), var_2.b), 0u, Struct_2(Struct_1(vec3<f32>(var_0.x, var_0.x, 700f), u_input.b, vec2<bool>(true, var_2.a), var_2.a), u_input.b, u_input.a.x, false), u_input.b.yz)).x, _wgslsmith_f_op_f32(f32(-1f) * -900f)), _wgslsmith_div_vec3_u32(u_input.a << (vec3<u32>(u_input.b.x, u_input.b.x, 14383u) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 39775u, 1u) | u_input.a), !select(vec2<bool>(true, var_2.a), vec2<bool>(var_2.a, false), true), !(!var_2.a)), u_input.b, 0u, var_2.a), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, -1020f, 1643f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1485f))), _wgslsmith_mult_vec3_u32(u_input.b | u_input.a, countOneBits(u_input.a)), select(select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(false, true), vec2<bool>(true, var_2.a)), vec2<bool>(var_2.a, true), select(vec2<bool>(false, true), vec2<bool>(var_2.a, true), false)), var_2.a), _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(44559u, u_input.b.x, 4294967295u), u_input.a), u_input.a), ~(_wgslsmith_add_u32(u_input.b.x, 4294967295u) ^ reverseBits(37572u)), !all(!vec3<bool>(var_2.a, true, var_2.a))), 34078i);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> u32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-763f)))))) - var_0.b.a.a.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -2036f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(579f - 2105f))))), 1717f, 635f, _wgslsmith_f_op_f32(var_0.c.a.a.x - var_1));
    var var_3 = vec3<bool>(arg_0.x, var_0.c.d, true);
    var_3 = arg_0;
    return _wgslsmith_mod_u32(abs(~_wgslsmith_div_u32(arg_1.x, 23470u & var_0.b.c)), ~4068u);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(778f, 1420f, false));
    let var_1 = firstLeadingBit(vec2<u32>(min(~12066u, reverseBits(0u)) | arg_0, u_input.a.x));
    var var_2 = vec3<bool>(false, false, 1i != ((countOneBits(arg_1.b) ^ -u_input.c) & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b, -29380i, 66090i), vec3<i32>(-2147483647i, 1i, 27660i)), select(vec3<i32>(arg_1.b, 1i, arg_1.b), vec3<i32>(u_input.c, -2147483647i, u_input.c), arg_1.a))));
    var_2 = !(!vec3<bool>(all(vec4<bool>(var_2.x, var_2.x, var_2.x, true)), !(var_0 == 1012f), arg_1.a));
    let var_3 = _wgslsmith_f_op_f32(105f + _wgslsmith_f_op_vec2_f32(func_3(func_2(), _wgslsmith_dot_vec2_u32(max(arg_2 ^ vec2<u32>(arg_2.x, 36804u), _wgslsmith_mod_vec2_u32(var_1, vec2<u32>(u_input.b.x, u_input.b.x))), ~arg_2), func_2().b, _wgslsmith_clamp_vec2_u32(var_1, vec2<u32>(min(59753u, arg_2.x), 1u), ~var_1))).x);
    return func_2().c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec3<bool>(-u_input.c >= u_input.c, false, true), u_input.b), Struct_3(false, u_input.c), abs(select(firstLeadingBit(u_input.b.zy) >> (u_input.a.zx % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 4294967295u), true)));
    var_0 = Struct_1(vec3<f32>(-1936f, 514f, var_0.a.x), vec3<u32>(~152941u, u_input.b.x | (var_0.b.x << (var_0.b.x % 32u)), ~(~reverseBits(u_input.b.x))), select(vec2<bool>(!(!var_0.d), true), vec2<bool>(var_0.d, ~u_input.a.x == _wgslsmith_clamp_u32(72496u, 4294967295u, var_0.b.x)), vec2<bool>(func_4(var_0.b.x, Struct_3(var_0.d, u_input.c), ~u_input.b.zx).c.x, var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, 102f))) - -299f) == 186f);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1059f * var_0.a.x), var_0.a.x, var_0.a.x), var_0.a)))), u_input.a ^ ~func_4(countOneBits(u_input.b.x), Struct_3(true, u_input.c), ~vec2<u32>(u_input.a.x, var_0.b.x)).b, !select(var_0.c, !select(var_0.c, var_0.c, var_0.c.x), false), false);
    let var_1 = Struct_4(max(_wgslsmith_add_i32(0i, u_input.c), 1i), func_2().c, func_2().b, _wgslsmith_sub_i32(82568i, u_input.c));
    var var_2 = Struct_4(_wgslsmith_add_i32(-reverseBits(_wgslsmith_clamp_i32(var_1.a, -1i, var_1.a)), u_input.c), Struct_2(func_4(~17394u, Struct_3(true, firstLeadingBit(u_input.c)), _wgslsmith_sub_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 803u))), abs(~u_input.b), var_1.c.c, (_wgslsmith_f_op_f32(max(-890f, var_0.a.x)) >= _wgslsmith_f_op_f32(310f + -1753f)) || true), var_1.b, var_1.d >> (func_4(u_input.a.x ^ max(var_1.b.b.x, 79514u), Struct_3(false != var_1.c.a.d, 25275i), ~reverseBits(vec2<u32>(var_0.b.x, var_0.b.x))).b.x % 32u));
    let var_3 = Struct_3(all(vec2<bool>(true, func_2().b.a.c.x)), ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, var_1.a), vec3<i32>(-844i, var_3.b, u_input.c)) ^ ~_wgslsmith_mult_vec3_i32(vec3<i32>(-11059i, var_1.d, u_input.c), vec3<i32>(var_2.a, 8879i, -6728i))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(min(~vec4<i32>(-14796i, -41201i, var_2.a, u_input.c), -vec4<i32>(var_3.b, u_input.c, var_1.a, 31920i)), abs(vec4<i32>(var_1.d, -2147483647i, var_3.b, 3380i))), ~select(vec4<i32>(u_input.c, u_input.c, u_input.c, var_2.d), vec4<i32>(1i, var_1.a, var_2.d, var_3.b), !vec4<bool>(var_3.a, var_0.d, true, false))), ~(-var_3.b), 0u >> (countOneBits(_wgslsmith_sub_u32(~var_0.b.x, _wgslsmith_dot_vec3_u32(var_0.b, u_input.b))) % 32u), var_1.c.a.a.x);
}

