struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_4(Struct_2(vec3<u32>(4294967295u, _wgslsmith_add_u32(abs(arg_3.c.x), 58124u), arg_3.d.x << (21291u % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_3.d.x, _wgslsmith_div_u32(46049u, arg_3.d.x)), countOneBits(vec4<u32>(arg_3.d.x, 4294967295u, 4294967295u, 0u)) ^ max(vec4<u32>(arg_3.e.x, u_input.b, u_input.b, 123178u), vec4<u32>(27818u, 0u, 1u, 4294967295u))), Struct_1(~58205u, select(vec2<bool>(true, arg_3.b.x), select(vec2<bool>(arg_0, arg_3.b.x), arg_3.b, arg_2.x), true), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, arg_3.a, 4294967295u), vec4<u32>(36244u, arg_3.a, arg_3.e.x, u_input.b)), countOneBits(0u), arg_3.c.x ^ u_input.b), _wgslsmith_mult_vec3_u32(~arg_3.c, arg_3.c), firstLeadingBit(min(vec2<u32>(0u, 0u), arg_3.d.yx))), 30117i, _wgslsmith_f_op_f32(trunc(429f))), vec4<i32>(countOneBits(u_input.a), reverseBits(-56468i), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.a, arg_1.x, 11208i), vec4<i32>(arg_1.x, 49573i, arg_1.x, u_input.a))), i32(-1i) * -35691i), arg_3, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-221f, -367f), vec2<f32>(-102f, 1032f), true))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 899f))))));
    var var_1 = vec3<f32>(1413f, var_0.a.e, 1000f);
    let var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-522f, 989f, -1402f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1796f, var_0.a.e, var_1.x) + vec3<f32>(var_1.x, 866f, var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(796f, var_1.x, var_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_0.d.x, -183f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x)), _wgslsmith_f_op_f32(trunc(-157f)))));
    var_1 = vec3<f32>(674f, -376f, 1005f);
    return ~countOneBits(var_0.a.b.x);
}

fn func_2() -> bool {
    var var_0 = u_input.b;
    var_0 = 15642u;
    var var_1 = Struct_4(Struct_2(~(~vec3<u32>(u_input.b, u_input.b, 8867u)) | vec3<u32>(_wgslsmith_mod_u32(31398u, u_input.b), ~u_input.b, func_3(true, vec2<i32>(1i, u_input.a), vec4<bool>(true, true, true, true), Struct_1(4294967295u, vec2<bool>(true, false), vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<u32>(50586u, 73362u)))), ~vec4<u32>(u_input.b, u_input.b, _wgslsmith_sub_u32(0u, u_input.b), ~u_input.b), Struct_1(1u, vec2<bool>(all(vec4<bool>(true, false, false, true)), true), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 2003u, u_input.b), vec3<u32>(u_input.b, 84764u, u_input.b) << (vec3<u32>(0u, 1u, 14547u) % vec3<u32>(32u))), vec3<u32>(u_input.b, u_input.b, 1u), ~max(vec2<u32>(16939u, u_input.b), vec2<u32>(u_input.b, 4294967295u))), _wgslsmith_clamp_i32(~u_input.c, _wgslsmith_mult_i32(~(-2147483647i), u_input.a), abs(u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 293f))) - -252f)), vec4<i32>(u_input.c, -u_input.a, 2147483647i, 0i), Struct_1(~9906u, select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), (firstLeadingBit(vec3<u32>(51752u, u_input.b, u_input.b)) << (vec3<u32>(u_input.b, 2206u, 1u) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(78108u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 29053u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 32851u), vec3<u32>(0u, 54271u, 4294967295u))) % vec3<u32>(32u)), vec3<u32>(abs(_wgslsmith_sub_u32(u_input.b, u_input.b)), firstLeadingBit(0u), max(63418u, u_input.b)), vec2<u32>(_wgslsmith_div_u32(u_input.b, ~4294967295u), _wgslsmith_mod_u32(u_input.b, u_input.b) & _wgslsmith_mult_u32(0u, 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1677f, 1803f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1180f, -1831f))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1678f, -488f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(379f, 567f) - vec2<f32>(137f, -2986f)))))));
    return var_1.a.c.b.x;
}

fn func_1() -> bool {
    var var_0 = vec3<bool>(!func_2(), all(vec2<bool>(any(vec2<bool>(false, true)), false)), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1f, -1479f)))) - _wgslsmith_f_op_f32(f32(-1f) * -770f)));
    var var_2 = -675f;
    var_0 = vec3<bool>(var_0.x, -_wgslsmith_sub_i32(1i, u_input.a) < ~_wgslsmith_mult_i32(~(-11551i), u_input.c << (u_input.b % 32u)), any(var_0.yz));
    let var_3 = Struct_1(_wgslsmith_mod_u32(u_input.b, u_input.b), select(var_0.yy, vec2<bool>(var_0.x, true && var_0.x), vec2<bool>(any(var_0.zz), true)), select(max(abs(abs(vec3<u32>(u_input.b, 491u, u_input.b))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(14184u, u_input.b, 49839u))), select(~(~vec3<u32>(u_input.b, 1u, u_input.b)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, 11355u, 4294967295u))), vec3<bool>(!var_0.x, any(vec2<bool>(var_0.x, var_0.x)), true)), !vec3<bool>(true, var_0.x, !var_0.x)), vec3<u32>(u_input.b, u_input.b | countOneBits(firstLeadingBit(0u)), _wgslsmith_sub_u32(1u | ~u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(16820u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(42631u, 4294967295u), vec2<u32>(u_input.b, u_input.b))))), firstTrailingBit(reverseBits(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))) >> ((vec2<u32>(~17694u, u_input.b & u_input.b) ^ vec2<u32>(u_input.b, 4294967295u)) % vec2<u32>(32u)));
    return var_3.b.x;
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_4 {
    var var_0 = Struct_2(~vec3<u32>(~u_input.b, ~(~u_input.b), u_input.b << (max(u_input.b, u_input.b) % 32u)), _wgslsmith_mod_vec4_u32(select(select(~vec4<u32>(1u, 0u, 24853u, u_input.b), abs(vec4<u32>(0u, 1u, 52657u, 1719u)), !vec4<bool>(true, arg_1, true, arg_1)), ~max(vec4<u32>(u_input.b, u_input.b, 38582u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 6670u)), false), _wgslsmith_clamp_vec4_u32(~vec4<u32>(44427u, u_input.b, u_input.b, u_input.b), vec4<u32>(func_3(arg_1, vec2<i32>(u_input.c, 0i), vec4<bool>(false, false, true, true), Struct_1(u_input.b, vec2<bool>(arg_1, false), vec3<u32>(46602u, 1u, u_input.b), vec3<u32>(0u, u_input.b, 22774u), vec2<u32>(u_input.b, 1u))), u_input.b, ~14712u, ~10458u), vec4<u32>(u_input.b, 60221u, _wgslsmith_dot_vec3_u32(vec3<u32>(25075u, 1u, u_input.b), vec3<u32>(u_input.b, 81140u, u_input.b)), ~4294967295u))), Struct_1(~0u, !(!select(vec2<bool>(false, true), vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1))), ~firstTrailingBit(firstLeadingBit(vec3<u32>(26130u, 7045u, u_input.b))), vec3<u32>(_wgslsmith_add_u32(u_input.b, firstTrailingBit(u_input.b)), firstLeadingBit(1u), u_input.b), ~vec2<u32>(4006u, 0u) | ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, u_input.b))), u_input.c, 1158f);
    var_0 = Struct_2(~var_0.b.ywx, var_0.b, var_0.c, u_input.a, var_0.e);
    let var_1 = !vec3<bool>(var_0.c.b.x, !(!var_0.c.b.x) & (firstLeadingBit(1u) <= _wgslsmith_mult_u32(var_0.a.x, 21489u)), any(!select(vec3<bool>(arg_1, var_0.c.b.x, false), vec3<bool>(arg_1, var_0.c.b.x, arg_1), vec3<bool>(true, false, var_0.c.b.x))));
    let var_2 = Struct_2(vec3<u32>(var_0.c.c.x, 1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 46263u), var_0.c.d.zz | vec2<u32>(21043u, var_0.c.c.x)), 15185u)), ~vec4<u32>(u_input.b, ~4294967295u, 13561u, ~var_0.c.a), var_0.c, select(~((1i | u_input.c) >> (26157u % 32u)), abs(u_input.a), !arg_1), 1f);
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + -150f), _wgslsmith_f_op_f32(-1000f + arg_0))), _wgslsmith_f_op_f32(-var_0.e), 432f, var_2.e)));
    return Struct_4(var_2, _wgslsmith_sub_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(1420i, -16322i, var_2.d, var_2.d), vec4<i32>(u_input.a, var_0.d, 60996i, u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.d, u_input.a, var_2.d, u_input.a), vec4<i32>(var_0.d, var_2.d, var_0.d, 9411i))), vec4<i32>(u_input.c, 13110i, 0i, var_0.d)) << (_wgslsmith_add_vec4_u32(var_2.b, _wgslsmith_div_vec4_u32(~var_0.b, _wgslsmith_mod_vec4_u32(vec4<u32>(38453u, 42209u, var_0.b.x, 107688u), vec4<u32>(var_0.a.x, var_2.b.x, var_2.c.d.x, var_0.a.x)))) % vec4<u32>(32u)), var_0.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(-1i & u_input.a) >> (_wgslsmith_mod_u32(1u, countOneBits(30622u)) % 32u));
    var_0 = _wgslsmith_mod_i32(~(i32(-1i) * -1i), u_input.c);
    var var_1 = true;
    var var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(676f + 1526f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -779f))), _wgslsmith_f_op_f32(f32(-1f) * -520f))), func_1());
    var_0 = _wgslsmith_dot_vec3_i32(select(var_2.b.ywz, var_2.b.yzy ^ -firstLeadingBit(var_2.b.wzw), var_2.a.c.b.x), firstLeadingBit(~(~vec3<i32>(u_input.a, u_input.a, var_2.b.x) >> ((var_2.a.b.ywy | var_2.a.a) % vec3<u32>(32u)))));
    let var_3 = func_4(1f, !func_2()).b.x;
    var_1 = !func_1();
    var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits(var_2.b | vec4<i32>(var_3, var_2.b.x, var_2.b.x, var_2.b.x))) ^ reverseBits(var_2.b), vec3<i32>(abs(firstTrailingBit(var_2.a.d | u_input.a)), abs(_wgslsmith_add_i32(u_input.a, u_input.a) << (u_input.b % 32u)), _wgslsmith_mod_i32(~u_input.a, u_input.a)));
}

