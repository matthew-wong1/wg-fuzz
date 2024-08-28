struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> u32 {
    return ~4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = !arg_2;
    let var_1 = arg_3;
    var var_2 = firstTrailingBit(arg_3.b.c.zx);
    var var_3 = var_1;
    var_2 = vec2<u32>(func_3(Struct_2(~(~vec4<u32>(var_2.x, 1u, arg_3.c, 1u)), Struct_1(u_input.a.wy, ~vec2<u32>(var_2.x, 4294967295u), ~vec3<u32>(129156u, var_3.b.b.x, 1805u), -u_input.b), _wgslsmith_mult_u32(_wgslsmith_add_u32(5456u, var_1.b.c.x), _wgslsmith_clamp_u32(28878u, 21827u, 32657u)), var_3.d | arg_2.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.e - var_1.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 347f, var_1.e.x, var_3.e.x) * arg_3.e))), Struct_3(Struct_1(vec2<i32>(var_3.b.d, 0i), min(vec2<u32>(var_1.b.c.x, var_1.c), var_1.b.b), arg_1.a.c, arg_0.x), arg_1.b), ~0u >> (_wgslsmith_div_u32(~var_3.a.x, _wgslsmith_add_u32(var_3.b.c.x, arg_3.b.b.x)) % 32u)), _wgslsmith_dot_vec2_u32(var_1.b.c.zy, vec2<u32>(arg_1.a.b.x, ~var_3.a.x)));
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(min(~(vec4<u32>(4294967295u, arg_1.a.b.x, 49948u, 1u) & _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 84164u, arg_3.x, arg_0.a.c.x), vec4<u32>(4294967295u, 9727u, 0u, 1u))), ~(~firstTrailingBit(vec4<u32>(arg_0.a.c.x, arg_0.a.c.x, 1u, 62350u)))), ~vec4<u32>(49095u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_3.x, arg_1.a.c.x, 62795u, arg_3.x)), vec4<u32>(27864u, 90474u, arg_0.a.b.x, arg_3.x) & vec4<u32>(4294967295u, 56833u, 4294967295u, 78911u)), arg_0.a.c.x, 53503u));
    let var_1 = any(vec2<bool>(true, (true == any(vec4<bool>(false, false, false, true))) && !any(vec2<bool>(true, false))));
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(27632u, 34169u, 4294967295u, arg_0.a.c.x), reverseBits(vec4<u32>(arg_3.x, 0u, 4294967295u, arg_0.a.c.x))), ~arg_3.x ^ _wgslsmith_add_u32(~arg_1.a.b.x, 1u), _wgslsmith_div_u32(select(~arg_3.x, var_0 & arg_0.a.b.x, !var_1), 0u), _wgslsmith_mod_u32(~arg_0.a.b.x, 0u)), arg_1.a, 0u, false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x - arg_1.b.x), arg_1.b.x, -2197f, arg_1.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-993f, arg_1.b.x, arg_0.b.x, arg_1.b.x)), false)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, arg_1.b.x, 3041f, 1902f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1762f, arg_0.b.x, 1409f, arg_0.b.x), vec4<f32>(arg_0.b.x, 216f, arg_1.b.x, -879f), vec4<bool>(true, true, false, false)))))));
    var_2 = Struct_2(vec4<u32>(1u, 4612u, 1u >> (~(~var_2.c) % 32u), ~((45489u | arg_0.a.b.x) ^ var_2.c)), arg_1.a, 0u, !any(select(vec3<bool>(true, false, false), !vec3<bool>(var_1, var_1, var_2.d), arg_1.a.c.x > 44374u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.e - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, 247f, var_2.e.x, var_2.e.x), var_2.e, var_2.d))))));
    var_2 = Struct_2(var_2.a, Struct_1(vec2<i32>(~(-var_2.b.d), u_input.a.x), vec2<u32>(1u, var_0), vec3<u32>(1u, arg_0.a.c.x, 1u), arg_0.a.a.x), countOneBits(firstTrailingBit(~6146u) << (15041u % 32u)), !(var_2.d || (var_2.e.x <= _wgslsmith_f_op_f32(floor(arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(select(var_2.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, -1820f, 802f, var_2.e.x)) * vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -535f), 104f, -1000f)), select(!select(vec4<bool>(var_1, var_2.d, var_1, true), vec4<bool>(var_2.d, var_1, true, var_1), true), !(!vec4<bool>(false, var_1, true, true)), true))));
    return true && all(select(!select(vec3<bool>(var_2.d, var_2.d, var_1), vec3<bool>(var_2.d, true, true), var_1), select(!vec3<bool>(var_2.d, var_1, false), !vec3<bool>(var_1, true, true), !vec3<bool>(var_2.d, var_2.d, var_2.d)), 12656u <= ~var_2.c));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = ~vec3<u32>(abs(max(30267u, 4294967295u)), _wgslsmith_clamp_u32(min(~4294967295u, func_3(Struct_2(vec4<u32>(4294967295u, 9345u, 13758u, 1u), Struct_1(vec2<i32>(u_input.a.x, u_input.b), vec2<u32>(17803u, 1u), vec3<u32>(100493u, 1u, 74318u), u_input.b), 1u, arg_0, vec4<f32>(586f, arg_3, arg_3, -463f)), Struct_3(Struct_1(u_input.a.wx, vec2<u32>(1u, 4294967295u), vec3<u32>(40074u, 1u, 4294967295u), u_input.a.x), vec2<f32>(arg_3, arg_3)), 4294967295u)), ~1u, 1u), firstLeadingBit(~(~1u)));
    var_0 = ~select(_wgslsmith_mod_vec3_u32(min(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(var_0.x, 1u, var_0.x) << (vec3<u32>(0u, var_0.x, 1u) % vec3<u32>(32u))), reverseBits(vec3<u32>(1u, var_0.x, var_0.x))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(4294967295u, var_0.x, var_0.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(16932u, var_0.x, 19729u), vec3<u32>(var_0.x, var_0.x, 1u))), true);
    let var_1 = _wgslsmith_f_op_f32(arg_3 - -814f);
    var var_2 = select(arg_1.xw, arg_1.wz, any(select(vec4<bool>(false, false, arg_0, arg_1.x), vec4<bool>(false, false, true, arg_1.x), select(arg_1, vec4<bool>(arg_1.x, arg_0, true, false), false))) != true);
    let var_3 = Struct_3(func_2(u_input.a.xz, func_2(firstLeadingBit(vec2<i32>(u_input.b, 30447i) ^ u_input.a.zz), Struct_3(Struct_1(u_input.a.xy, vec2<u32>(var_0.x, 20406u), vec3<u32>(var_0.x, 4294967295u, 31241u), 0i), _wgslsmith_div_vec2_f32(vec2<f32>(arg_3, var_1), vec2<f32>(arg_3, -651f))), select(!arg_1.zy, select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_1.x), arg_0), false), Struct_2(vec4<u32>(var_0.x, 11395u, 60288u, 4294967295u), Struct_1(u_input.a.xy, var_0.xx, vec3<u32>(var_0.x, var_0.x, 0u), u_input.a.x), ~22064u, true, _wgslsmith_div_vec4_f32(vec4<f32>(616f, var_1, arg_3, 1281f), vec4<f32>(arg_3, var_1, arg_3, arg_3)))), vec2<bool>(all(vec4<bool>(false, true, true, var_2.x)), arg_2), Struct_2(vec4<u32>(4294967295u, 55503u, 4294967295u, ~var_0.x), Struct_1(-vec2<i32>(-11124i, u_input.b), _wgslsmith_add_vec2_u32(var_0.xx, vec2<u32>(4294967295u, 66961u)), countOneBits(vec3<u32>(var_0.x, var_0.x, var_0.x)), 760i), ~var_0.x, var_2.x, vec4<f32>(_wgslsmith_f_op_f32(step(979f, -1226f)), _wgslsmith_f_op_f32(-arg_3), -2069f, _wgslsmith_f_op_f32(f32(-1f) * -483f)))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-768f, arg_3))))))));
    return Struct_2(select(~abs(vec4<u32>(var_0.x, 0u, var_0.x, 4294967295u)) | vec4<u32>(abs(1u), countOneBits(21094u), 65621u, var_3.a.b.x), ~(~(~vec4<u32>(var_3.a.c.x, 4294967295u, var_3.a.c.x, var_0.x))), max(~2087u, _wgslsmith_div_u32(var_3.a.c.x, var_0.x)) >= ~var_0.x), var_3.a, var_3.a.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3 - -127f))) >= 334f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(459f, var_1, 239f, 453f) * vec4<f32>(arg_3, -254f, var_3.b.x, 716f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, arg_3, -1223f, arg_3))), _wgslsmith_f_op_vec4_f32(vec4<f32>(224f, 588f, arg_3, var_1) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1588f, var_1, var_1, arg_3) + vec4<f32>(623f, 1925f, 1000f, var_1))), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_3.b.x, arg_3, 312f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, 2318f, 193f, 1497f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -226f), func_2(vec2<i32>(var_3.a.a.x, u_input.a.x), var_3, vec2<bool>(arg_0, arg_2), Struct_2(vec4<u32>(var_3.a.c.x, var_0.x, 4294967295u, 19728u), Struct_1(vec2<i32>(u_input.b, 3199i), var_3.a.b, vec3<u32>(1u, 1u, var_3.a.b.x), var_3.a.a.x), var_3.a.c.x, arg_0, vec4<f32>(arg_3, 460f, arg_3, var_3.b.x))).b.x, -1230f, var_3.b.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-245f)) * _wgslsmith_f_op_f32(f32(-1f) * -1925f))) - 111f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1114f + 388f))))), -692f);
    let var_1 = func_5(all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true)) | false, select(vec4<bool>(func_4(Struct_3(Struct_1(u_input.a.xw, vec2<u32>(4294967295u, 59800u), vec3<u32>(23877u, 43187u, 89909u), u_input.a.x), vec2<f32>(-163f, 315f)), func_2(vec2<i32>(u_input.a.x, -1i), Struct_3(Struct_1(vec2<i32>(10263i, 5470i), vec2<u32>(1u, 78116u), vec3<u32>(1u, 1u, 1u), -5938i), var_0.yy), vec2<bool>(false, false), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 31616u), Struct_1(vec2<i32>(-20756i, -77700i), vec2<u32>(1u, 61939u), vec3<u32>(8892u, 0u, 63685u), u_input.b), 0u, false, vec4<f32>(1000f, -821f, var_0.x, 1000f))), 1i, ~vec3<u32>(1u, 30805u, 20399u)), false, true, any(vec4<bool>(false, true, false, false))), !vec4<bool>(true, u_input.a.x < 17083i, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false), true), true)), true, _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = Struct_1(vec2<i32>(-var_1.b.a.x << ((var_1.c ^ ~var_1.c) % 32u), ~u_input.a.x), var_1.a.zw, ~(func_5(var_1.d || var_1.d, select(vec4<bool>(false, false, true, var_1.d), vec4<bool>(true, var_1.d, var_1.d, var_1.d), var_1.d), var_1.b.d > -1i, _wgslsmith_f_op_f32(sign(var_0.x))).a.zzz ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.c.x, 15303u, var_1.b.b.x) ^ vec3<u32>(1u, var_1.b.c.x, var_1.c), vec3<u32>(48282u, 81671u, 45451u))), max(-var_1.b.d, u_input.a.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.x * var_0.x) - func_2(var_1.b.a, Struct_3(var_1.b, vec2<f32>(var_0.x, var_0.x)), vec2<bool>(false, var_1.d), Struct_2(vec4<u32>(var_2.c.x, var_1.b.c.x, 4294967295u, var_2.b.x), Struct_1(var_1.b.a, vec2<u32>(var_1.b.b.x, 115544u), vec3<u32>(52733u, 39982u, var_1.a.x), u_input.b), var_1.a.x, false, var_1.e)).b.x), _wgslsmith_f_op_f32(var_1.e.x - 1f))));
    let var_4 = func_2(vec2<i32>(~var_2.a.x | -55416i, _wgslsmith_sub_i32(-abs(0i), -14400i)), func_2(~var_1.b.a, func_2(var_2.a, func_2(~vec2<i32>(1i, var_2.d), Struct_3(Struct_1(vec2<i32>(0i, var_1.b.a.x), vec2<u32>(var_2.c.x, 11304u), var_2.c, u_input.a.x), vec2<f32>(var_0.x, -1824f)), vec2<bool>(var_1.d, false), var_1), vec2<bool>(true || var_1.d, var_3.x > var_1.e.x), var_1), select(select(select(vec2<bool>(var_1.d, true), vec2<bool>(var_1.d, true), vec2<bool>(false, false)), vec2<bool>(true, true), !vec2<bool>(true, var_1.d)), vec2<bool>(!var_1.d, true), (6915u & var_2.c.x) < 0u), var_1), select(!select(!vec2<bool>(var_1.d, true), !vec2<bool>(var_1.d, var_1.d), !vec2<bool>(var_1.d, false)), select(select(vec2<bool>(true, true), vec2<bool>(var_1.d, var_1.d), !vec2<bool>(var_1.d, true)), vec2<bool>(true, true), var_1.d), !select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_1.d, true), var_1.d)), var_1);
    return Struct_1(~var_2.a, var_1.b.b, ~(~var_2.c), -var_1.b.a.x);
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: f32) -> vec3<bool> {
    let var_0 = select(!(!select(vec4<bool>(arg_2.x, false, false, true), select(vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(true, false, false, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), false == arg_2.x)), select(select(select(!vec4<bool>(arg_2.x, arg_2.x, true, true), select(vec4<bool>(true, true, arg_2.x, true), vec4<bool>(true, arg_2.x, true, true), vec4<bool>(arg_2.x, true, arg_2.x, true)), !vec4<bool>(true, arg_2.x, arg_2.x, false)), vec4<bool>(!arg_2.x, !arg_2.x, true, arg_0.a.b.x > arg_0.a.b.x), select(!vec4<bool>(arg_2.x, true, true, false), !vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), true)), !(!vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)), vec4<bool>(arg_2.x, true, !(arg_2.x == false), !all(vec3<bool>(arg_2.x, arg_2.x, false)))), select(!vec4<bool>(all(vec2<bool>(true, false)), true, arg_2.x, 1417i > u_input.b), !vec4<bool>(arg_2.x & false, arg_2.x, true, arg_2.x), !vec4<bool>(true, true, false, arg_2.x & false)));
    let var_1 = func_5(all(var_0.xzz), !(!(!var_0)), var_0.x & (arg_2.x && var_0.x), -811f);
    var var_2 = vec3<i32>(-2147483647i, 65894i, _wgslsmith_dot_vec4_i32(abs(firstTrailingBit(~u_input.a)), min(u_input.a, (vec4<i32>(var_1.b.a.x, arg_0.a.d, arg_0.a.d, arg_0.a.a.x) | vec4<i32>(-2147483647i, var_1.b.a.x, 11438i, 43657i)) << ((var_1.a & var_1.a) % vec4<u32>(32u)))));
    return vec3<bool>(var_1.d, true, _wgslsmith_f_op_f32(step(-1325f, arg_1.x)) <= 388f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, false, _wgslsmith_f_op_f32(521f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(509f, 521f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(950f))))));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(select(u_input.a.ww ^ u_input.a.zy, vec2<i32>(2147483647i, u_input.b), vec2<bool>(var_0.x, false)), _wgslsmith_div_vec2_i32(reverseBits(u_input.a.yx), -u_input.a.zw)) ^ u_input.a.ww, ~vec2<u32>(65746u, _wgslsmith_add_u32(1u, 1u)), countOneBits(vec3<u32>(reverseBits(1u), 19581u, abs(1u))), _wgslsmith_dot_vec2_i32(min(~vec2<i32>(u_input.a.x, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -10168i), vec2<i32>(-2147483647i, u_input.b))) | ~(u_input.a.wy ^ u_input.a.yw), max(vec2<i32>(u_input.b, _wgslsmith_mod_i32(-51109i, u_input.a.x)), vec2<i32>(u_input.a.x, -41343i))));
    var_0 = select(!vec3<bool>(any(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), var_0.x, all(vec2<bool>(true, true))), func_6(Struct_3(func_1(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(147f, -681f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(156f, _wgslsmith_f_op_f32(round(1493f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, true)), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_2(u_input.a.zw, Struct_3(var_1, vec2<f32>(731f, 2022f)), vec2<bool>(true, true), Struct_2(vec4<u32>(var_1.b.x, var_1.b.x, var_1.c.x, 64501u), var_1, var_1.b.x, var_0.x, vec4<f32>(126f, -216f, -1000f, 514f))).b.x)) - _wgslsmith_f_op_f32(max(-395f, 2104f)))), !vec3<bool>(all(!vec4<bool>(true, var_0.x, var_0.x, true)), true, func_5(false, vec4<bool>(var_0.x, var_0.x, true, true), false, 969f).a.x > ~var_1.b.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(402f, -1074f, 261f)))))))));
    let var_3 = countOneBits(var_1.c);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-166f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_2.x, 967f, false)))))), var_2.x)), 2107f);
    let var_4 = countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-282i, 15245i), _wgslsmith_mod_vec2_i32(u_input.a.yx, u_input.a.xx), vec2<i32>(-1i) * -u_input.a.xx)) ^ var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(-4099i, u_input.a.www);
}

