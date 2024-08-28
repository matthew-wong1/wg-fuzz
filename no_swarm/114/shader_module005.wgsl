struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = arg_0.x;
    var var_1 = Struct_1(~(vec4<u32>(0u, ~4294967295u, arg_1.x, countOneBits(6213u)) | u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(490f, _wgslsmith_f_op_f32(327f - 470f), 1000f))), select(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(u_input.b < u_input.b, false), select(true, true, all(vec2<bool>(false, true)))), vec2<bool>(true, true), !any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), ~arg_1.x & firstTrailingBit(_wgslsmith_add_u32(4791u, ~arg_1.x)), 1456f);
    let var_2 = var_1.a;
    var_1 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.b)) * _wgslsmith_f_op_vec3_f32(var_1.b * var_1.b)))))), vec2<bool>(var_1.c.x, any(vec3<bool>(-1336f == var_1.e, all(vec3<bool>(true, var_1.c.x, true)), 1681f <= var_1.b.x))), 59514u, -828f);
    return _wgslsmith_clamp_u32(~(~(63858u ^ arg_1.x)) & max(var_1.a.x, 1u), abs(var_2.x) << (var_2.x % 32u), _wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.b << (arg_1.x % 32u), 24051u), ~max(~arg_1.x, arg_1.x)));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> vec3<i32> {
    let var_0 = select(~vec2<u32>(func_3(firstLeadingBit(arg_0.a), ~vec2<u32>(u_input.b, 4294967295u)), 4294967295u), vec2<u32>(_wgslsmith_add_u32(6280u, arg_0.c << (_wgslsmith_dot_vec3_u32(u_input.a.yyy, u_input.a.zyy) % 32u)), 1u), !any(!arg_0.d.a.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_0.d.c) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.d.a.b.yx))) * arg_0.d.a.b.zz));
    var var_2 = u_input.a.zz;
    let var_3 = arg_0.d.a;
    let var_4 = Struct_2(arg_0.d.a, vec2<i32>(_wgslsmith_clamp_i32(-10151i, -12887i, _wgslsmith_sub_i32(_wgslsmith_div_i32(65380i, 16665i), 1i)), _wgslsmith_clamp_i32(0i, 2147483647i, firstTrailingBit(~(-2147483647i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1412f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a.b.x)), arg_0.d.a.c.x)), ~_wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(22905u, var_2.x), vec2<u32>(77046u, 19577u)), abs(~vec2<u32>(var_2.x, 73647u))));
    return _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_4.b, arg_0.a.yw), vec2<i32>(-54291i, var_4.b.x)), ~arg_0.a.x, var_4.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), _wgslsmith_mult_i32(firstLeadingBit(arg_0.d.b.x), max(-1383i, arg_0.d.b.x)), ~(~var_4.b.x)), vec3<i32>(var_4.b.x, var_4.b.x, 2553i)), (~_wgslsmith_mod_vec3_i32(arg_0.a.zwz, arg_0.a.zzw) << (var_4.a.a.xxx % vec3<u32>(32u))) & (firstLeadingBit(arg_0.a.zwx & arg_0.a.yxx) & _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.a.xyz, vec3<i32>(1i, arg_0.d.b.x, 16939i), arg_0.a.wwy), arg_0.a.xwy)));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = -25835i;
    var var_1 = arg_3.a.b;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.a.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.a.b + vec3<f32>(-499f, arg_3.a.e, arg_0.d.a.b.x))))));
    var var_2 = func_2(arg_0, _wgslsmith_f_op_f32(arg_3.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))))));
    let var_3 = Struct_4(firstLeadingBit(var_2.x));
    return 0i | select(_wgslsmith_div_i32(-15978i | var_2.x, func_2(Struct_3(arg_0.a, arg_1, arg_1, arg_0.d, vec3<u32>(30786u, u_input.a.x, arg_0.c)), 387f).x) ^ ~_wgslsmith_mod_i32(arg_0.d.b.x, -20218i), 0i, any(vec2<bool>(arg_0.d.a.c.x, any(arg_0.d.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-select(i32(-1i) * -4023i, -1i, true) & firstTrailingBit(_wgslsmith_mult_i32(func_1(Struct_3(vec4<i32>(-9406i, 7884i, 2147483647i, 0i), 0u, u_input.b, Struct_2(Struct_1(vec4<u32>(u_input.a.x, 6795u, u_input.a.x, 4294967295u), vec3<f32>(897f, -662f, 2408f), vec2<bool>(false, true), 23562u, 552f), vec2<i32>(-4209i, 4570i), -437f, vec2<u32>(u_input.a.x, 9232u)), u_input.a.yzw), 0u, vec4<i32>(2147483647i, 1i, 22106i, 0i), Struct_2(Struct_1(vec4<u32>(4294967295u, 3754u, 27898u, u_input.b), vec3<f32>(-666f, -582f, -156f), vec2<bool>(false, true), 57091u, -556f), vec2<i32>(34416i, -1484i), -1081f, u_input.a.wz)), -28353i)));
    var var_1 = abs(~u_input.a.x | _wgslsmith_mod_u32(u_input.a.x, 62139u));
    var_1 = 3573u;
    let var_2 = min(u_input.b, select(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 16059u, u_input.a.x, 4294967295u), ~u_input.a), vec4<u32>(u_input.b | u_input.a.x, 106398u, 23155u, u_input.b)), 28930u, all(vec4<bool>(true, u_input.b >= 0u, true, true))));
    let var_3 = Struct_3(-(~(~reverseBits(vec4<i32>(1i, var_0, var_0, var_0)))), var_2, ~abs(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a.xxz), u_input.a.xxy)), Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-737f, -1132f, -208f))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(true, true)), var_2, _wgslsmith_f_op_f32(f32(-1f) * -734f)), reverseBits(max(vec2<i32>(-35931i, var_0) ^ vec2<i32>(var_0, -2147483647i), vec2<i32>(-11620i, 0i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-162f, 1951f))), _wgslsmith_f_op_f32(f32(-1f) * -995f)), _wgslsmith_mult_vec2_u32(u_input.a.xx, reverseBits(u_input.a.wz))), select(vec3<u32>(abs(~var_2), _wgslsmith_mod_u32(37532u, ~u_input.a.x), ~u_input.b), select(vec3<u32>(var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(19512u, 43599u, var_2), u_input.a.xww), 1u), u_input.a.yxx, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(-5637i, _wgslsmith_add_i32(firstTrailingBit(~var_0), var_0 & -14225i)), -2147483647i, -1i);
}

