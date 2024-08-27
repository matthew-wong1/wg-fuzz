struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(440f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(644f + -146f) - _wgslsmith_f_op_f32(sign(1131f))) * 609f)) - _wgslsmith_f_op_f32(select(665f, _wgslsmith_f_op_f32(-1f), false | (true | all(vec2<bool>(arg_0, false))))));
    var_0 = _wgslsmith_f_op_f32(-1609f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-868f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-102f)) - -1258f))));
    var var_1 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -u_input.a ^ -u_input.a, ~(-17364i), -2147483647i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 38016i, -37937i, 1i), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))), Struct_1(_wgslsmith_f_op_f32(round(1322f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(911f, -1118f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 781f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1549f, 312f) + vec2<f32>(1000f, 387f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-735f, -531f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1385f, -231f)))), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0)))), abs(_wgslsmith_mod_u32(~_wgslsmith_div_u32(0u, arg_1.x), 4294967295u)));
    let var_2 = arg_0;
    let var_3 = Struct_2(var_1.a, Struct_1(108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1176f, _wgslsmith_f_op_f32(f32(-1f) * -215f)))), var_1.b.c), ~(abs(33120u) & arg_1.x) ^ 17949u);
    return var_3.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_5(Struct_2(countOneBits((vec4<i32>(u_input.a, 2147483647i, -2147483647i, arg_1) << (arg_0 % vec4<u32>(32u))) ^ max(vec4<i32>(-1i, arg_2.x, arg_1, -4848i), vec4<i32>(u_input.a, u_input.a, arg_2.x, -5079i))), Struct_1(-787f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-910f - -389f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(887f, 637f))), ~39745u));
    let var_1 = _wgslsmith_div_u32(firstTrailingBit(firstTrailingBit(1u)), 4294967295u) | ~48377u;
    let var_2 = Struct_2(~func_3(true, vec3<u32>(~arg_0.x, reverseBits(var_1), var_0.a.c)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b.b + 517f), _wgslsmith_div_f32(var_0.a.b.a, 1259f)) + var_0.a.b.b), _wgslsmith_div_f32(var_0.a.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.b.b)) * var_0.a.b.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.a.b.c)))), abs(~1u));
    var var_3 = abs(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-(arg_2 << (arg_0.xw % vec2<u32>(32u))), ~vec2<i32>(1i, var_0.a.a.x) >> (max(arg_0.zw, arg_0.zz) % vec2<u32>(32u))), reverseBits(arg_2)));
    var var_4 = all(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), var_0.a.a.x <= -1i), true));
    return Struct_4(Struct_2(firstLeadingBit(-var_2.a), var_2.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(27692u, var_2.c), ~1u, reverseBits(var_2.c)) & var_0.a.c), _wgslsmith_f_op_f32(step(var_2.b.c.x, var_2.b.a)), _wgslsmith_sub_i32(-2147483647i, -select(u_input.a, 0i, true)) >> (select(~4294967295u, var_1, var_0.a.a.x == (i32(-1i) * -2147483647i)) % 32u), 1000f, _wgslsmith_div_vec4_u32(arg_0, arg_0) & _wgslsmith_add_vec4_u32(arg_0, vec4<u32>(abs(0u), ~var_1, var_1, ~var_1)));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    var var_0 = reverseBits(0u) << (_wgslsmith_div_u32(96047u, arg_0.e.x) % 32u);
    var_0 = _wgslsmith_clamp_u32(min(_wgslsmith_add_u32(~_wgslsmith_mult_u32(4294967295u, arg_0.a.c), ~4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.a.c, arg_0.e.x, arg_0.e.x), firstLeadingBit(arg_0.e.zyy), vec3<u32>(0u, 0u, arg_0.e.x)), vec3<u32>(~4294967295u, _wgslsmith_mod_u32(47853u, 9100u), 31537u))), 4294967295u, min(firstTrailingBit(_wgslsmith_div_u32(max(arg_0.e.x, 0u), _wgslsmith_dot_vec2_u32(arg_0.e.xz, arg_0.e.wz))), 55084u));
    var var_1 = func_2(vec4<u32>(~arg_0.a.c, select(arg_0.a.c, ~arg_0.a.c, _wgslsmith_dot_vec4_i32(arg_0.a.a, arg_0.a.a) >= u_input.a), _wgslsmith_add_u32(arg_0.e.x, 1u << (~arg_0.a.c % 32u)), 65328u), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(min(arg_0.c, u_input.a), -14348i, ~0i)), firstTrailingBit(arg_0.a.a.www)), vec2<i32>(_wgslsmith_mod_i32(-20792i | arg_0.a.a.x, _wgslsmith_div_i32(arg_0.a.a.x, 1i)), 1i) << (_wgslsmith_mult_vec2_u32(~countOneBits(arg_0.e.xy), ~vec2<u32>(arg_0.a.c, 1u)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(9177i >> (1u % 32u), firstTrailingBit(arg_0.a.a.x), _wgslsmith_sub_i32(u_input.a, -18274i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(var_1.a.a.xwy, var_1.a.a.yxy))) >> (var_1.e.zzz % vec3<u32>(32u)), vec3<i32>((1404i & func_3(true, arg_0.e.xyy).x) | countOneBits(~0i), -2147483647i, 26181i));
    let var_3 = false;
    return func_2(~(~(vec4<u32>(var_1.a.c, arg_0.e.x, arg_0.a.c, 4294967295u) & var_1.e)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(17903u, ~var_1.a.c, abs(var_1.e.x), ~0u), abs(vec4<u32>(var_1.e.x, var_1.a.c, var_1.a.c, 4294967295u))), -(~73956i), vec2<i32>(-1i) * -min(vec2<i32>(-2147483647i, 34212i), _wgslsmith_mult_vec2_i32(var_2.xx, var_1.a.a.zy)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_5 {
    let var_0 = all(vec2<bool>((func_2(arg_0.e, u_input.a, vec2<i32>(arg_2.x, 1i)).d == _wgslsmith_f_op_f32(arg_0.d + arg_1.a)) && false, true));
    let var_1 = -func_3(!(all(vec2<bool>(var_0, false)) & var_0), arg_0.e.wyz).x;
    var var_2 = -2147483647i;
    var_2 = var_1;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.b.a, _wgslsmith_f_op_f32(-543f + arg_1.a))) * -594f)), _wgslsmith_f_op_f32(abs(-601f)), 138f);
    return Struct_5(arg_0.a);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_5(func_4(func_2(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_i32(u_input.a, -8248i), _wgslsmith_clamp_vec2_i32(vec2<i32>(39483i, 15234i), -vec2<i32>(2147483647i, 0i), ~vec2<i32>(-1i, u_input.a)))), func_4(Struct_4(func_4(func_4(Struct_4(Struct_2(vec4<i32>(2147483647i, u_input.a, -11229i, 0i), Struct_1(-718f, 1732f, vec2<f32>(arg_0, -201f)), 0u), -834f, u_input.a, -987f, vec4<u32>(4294967295u, 64582u, 1u, 11849u)))).a, _wgslsmith_f_op_f32(arg_0 - 127f), _wgslsmith_add_i32(~(-46234i), u_input.a & u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 - 158f))), reverseBits(vec4<u32>(4294967295u, 16722u, 0u, 50796u)))).a.b, vec2<i32>(0i, func_3(false, _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(22625u, 16812u, 0u), vec3<u32>(0u, 23358u, 33762u), vec3<u32>(4294967295u, 1u, 0u)), ~vec3<u32>(52193u, 7865u, 5457u))).x), ~(~(~vec3<u32>(42225u, 1u, 1u))));
    let var_1 = any(vec2<bool>(true, false));
    var var_2 = ~_wgslsmith_mod_vec4_u32(~min(~vec4<u32>(var_0.a.c, var_0.a.c, 1u, 78327u), vec4<u32>(var_0.a.c, 6410u, 32402u, var_0.a.c)), func_4(func_2(reverseBits(vec4<u32>(1u, var_0.a.c, var_0.a.c, 4294967295u)), func_3(var_1, vec3<u32>(4294967295u, 44751u, var_0.a.c)).x, vec2<i32>(-1i, -1i))).e);
    var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~func_2(vec4<u32>(var_0.a.c, var_0.a.c, 0u, var_2.x), var_0.a.a.x, vec2<i32>(u_input.a, u_input.a)).e, vec4<u32>(max(1u, 58382u), 1u, var_2.x, var_2.x & var_0.a.c)) << (~(~vec4<u32>(1u, var_2.x, 1u, var_0.a.c)) % vec4<u32>(32u)), vec4<u32>(1u, ~60319u, _wgslsmith_mod_u32(var_2.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 13674u), _wgslsmith_sub_u32(var_0.a.c, var_0.a.c))), max(var_0.a.c, ~24712u)));
    let var_3 = Struct_3(~select(vec4<u32>(func_4(Struct_4(var_0.a, 784f, u_input.a, var_0.a.b.a, vec4<u32>(var_0.a.c, var_0.a.c, var_2.x, var_2.x))).e.x, var_0.a.c << (82841u % 32u), var_0.a.c, 5226u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.a.c, 1u, 4294967295u), vec4<u32>(126318u, 1u, 0u, var_2.x) | vec4<u32>(var_2.x, 39067u, var_0.a.c, var_2.x)), !vec4<bool>(var_1, true, var_1, var_1)));
    return var_0.a.b;
}

fn func_6(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = -1000f;
    var_0 = _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) + _wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_f_op_f32(-arg_0.b))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-3445f - -834f), _wgslsmith_f_op_f32(arg_0.b + arg_0.c.x))))), vec3<f32>(766f, -523f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1074f)), _wgslsmith_f_op_f32(-2029f * arg_0.a), any(vec4<bool>(true, false, false, true))))))));
    var var_3 = ~func_3(all(vec3<bool>(true, select(false, false, true), true)), func_2(~vec4<u32>(86641u, 44242u, 37836u, 23929u), _wgslsmith_add_i32(var_1, -2147483647i), abs(vec2<i32>(50583i, 34964i))).e.ywy & vec3<u32>(0u, ~50248u, _wgslsmith_div_u32(32089u, 16922u))).x;
    return !vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec3<bool>(select(true, true, true), true, true), vec3<bool>(true, 2147483647i <= u_input.a, true), func_6(func_1(1022f)))) && false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f - -1703f) - -1000f)))));
    let var_2 = vec4<u32>(func_2(~reverseBits(~vec4<u32>(4294967295u, 1u, 0u, 75484u)), 25587i, _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, -67149i), -vec2<i32>(13539i, 17103i))).a.c, 4294967295u, _wgslsmith_clamp_u32(1u, 15068u, ~1u), ~1u);
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -322f);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-802f * 168f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3, 570f)) + -631f)), _wgslsmith_f_op_f32(-427f + var_3)), select(func_2(var_2, -2147483647i, firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-15847i, u_input.a), vec2<i32>(u_input.a, -2147483647i)))).a.a.zw, ~(-vec2<i32>(-8493i, u_input.a)), !select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), ~vec2<i32>(select(u_input.a, i32(-1i) * -2147483647i, true), u_input.a));
}

