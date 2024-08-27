struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(24812u, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -10512i, 21613i, 1i), u_input.c), _wgslsmith_div_i32(-2147483647i, 8821i)), -u_input.a.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(771f, 372f) * vec2<f32>(343f, arg_0.x))))), !(u_input.a.x < _wgslsmith_clamp_i32(-5323i, u_input.d, u_input.c.x))), u_input.b.x, u_input.a, true, vec3<bool>(all(vec3<bool>(any(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, true)), true)), !all(vec4<bool>(false, true, true, true)), !(u_input.b.x > u_input.e)));
    var var_1 = Struct_1(max(var_0.a.a, _wgslsmith_div_u32(max(var_0.b, 63922u), ~2179u) << (select(_wgslsmith_div_u32(65956u, var_0.a.a), 4294967295u ^ var_0.a.a, true) % 32u)), _wgslsmith_mod_vec2_i32(var_0.a.b, vec2<i32>(16344i, _wgslsmith_dot_vec2_i32(var_0.a.b, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, var_0.c.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0, arg_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.c.x))), 302f)), var_0.e.x);
    var_1 = Struct_1(4294967295u, _wgslsmith_add_vec2_i32(vec2<i32>(-13311i, -11062i) ^ vec2<i32>(_wgslsmith_add_i32(29873i, var_1.b.x), _wgslsmith_mult_i32(2849i, var_1.b.x)), vec2<i32>(-22629i, ~(~0i))), vec2<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-102f, _wgslsmith_f_op_f32(abs(arg_0.x))))), false);
    return select(select(select(var_0.e.yx, !(!var_0.e.yz), !var_0.e.xx), select(var_0.e.yz, var_0.e.yz, any(vec3<bool>(var_1.d, false, false))), !(var_0.a.c.x <= _wgslsmith_f_op_f32(floor(arg_0.x)))), select(var_0.e.zx, !var_0.e.zx, true), vec2<bool>(all(!(!var_0.e)), !(!(!var_1.d))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: u32, arg_3: i32) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1819f, _wgslsmith_f_op_f32(844f * -795f))) + _wgslsmith_f_op_f32(sign(-796f))))), Struct_1(_wgslsmith_add_u32(firstLeadingBit(1u), arg_2), firstLeadingBit(-arg_0), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1153f, 700f) - vec2<f32>(546f, -835f)))))), true));
    var var_1 = abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(reverseBits(arg_0.x), -26750i, ~(-11047i), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), ~(vec4<i32>(-1i) * -vec4<i32>(arg_0.x, 0i, var_0.b.b.x, -39627i)), vec4<i32>(-50984i, arg_0.x, firstLeadingBit(arg_0.x), -33080i) >> (~vec4<u32>(arg_2, u_input.b.x, u_input.b.x, var_0.b.a) % vec4<u32>(32u))));
    let var_2 = Struct_2(Struct_1(var_0.b.a, arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.c)), any(select(func_3(var_0.b.c), !vec2<bool>(var_0.b.d, true), all(vec3<bool>(false, false, arg_1))))), 4294967295u, _wgslsmith_mod_vec3_i32(-u_input.c.wyx, u_input.c.zyw), false, !select(select(select(vec3<bool>(var_0.b.d, var_0.b.d, arg_1), vec3<bool>(false, false, arg_1), vec3<bool>(false, false, arg_1)), select(vec3<bool>(true, arg_1, false), vec3<bool>(true, false, arg_1), var_0.b.d), arg_1), select(vec3<bool>(false, false, true), !vec3<bool>(var_0.b.d, false, false), !vec3<bool>(var_0.b.d, arg_1, true)), !vec3<bool>(var_0.b.d, arg_1, false)));
    let var_3 = vec2<bool>(true, true);
    var_1 = vec4<i32>(51684i, min(-2147483647i, ~_wgslsmith_add_i32(reverseBits(arg_3), ~arg_0.x)), 6002i, abs(abs(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-20977i, 43720i, 1i), var_2.c)))));
    return Struct_4(vec2<i32>(-arg_3 >> (~0u % 32u), u_input.d) << (vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(20301u, 22829u, arg_2), vec3<u32>(4294967295u, 1u, var_0.b.a)), _wgslsmith_mult_u32(_wgslsmith_div_u32(20881u, 50654u), firstTrailingBit(1u))) % vec2<u32>(32u)), _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.e & var_0.b.a, 4294967295u, arg_2)) & ~abs(u_input.b), _wgslsmith_mult_u32(arg_2, 1u), _wgslsmith_f_op_vec2_f32(round(var_0.b.c)), var_2.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(~1u, arg_2.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(-144f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(abs(472f)))))), true);
    var var_1 = func_2(u_input.c.zw, !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_2.c.x, -923f)))) > _wgslsmith_f_op_f32(arg_2.c.x * 1407f)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~arg_0.x | _wgslsmith_add_u32(12959u, arg_2.a), ~1u), u_input.e, ~firstTrailingBit(~63787u)), var_0.b.x).e;
    var var_2 = true;
    var var_3 = 66820i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2709f, 1115f)), arg_2.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1092f, _wgslsmith_f_op_f32(-arg_1.e.c.x)))));
    return select(~vec4<u32>(36788u, _wgslsmith_dot_vec3_u32(~arg_1.b, arg_1.b), 59266u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(26664u << (_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(var_0.a, u_input.b.x)) % 32u), var_0.a, ~(~0u), _wgslsmith_add_u32(arg_1.c, _wgslsmith_div_u32(0u, arg_1.c))), vec4<u32>(0u, 80507u, ~arg_2.a, _wgslsmith_dot_vec3_u32(countOneBits(arg_1.b), firstLeadingBit(vec3<u32>(var_1.a, 4294967295u, arg_1.e.a))))), vec4<bool>(((1u & var_0.a) & var_1.a) <= _wgslsmith_dot_vec4_u32(vec4<u32>(90496u, 48543u, 10228u, 34560u) & vec4<u32>(0u, arg_2.a, 48670u, 32787u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, arg_0.x, arg_0.x, 52678u), vec4<u32>(var_1.a, 0u, arg_2.a, arg_1.e.a))), !(!var_0.d), any(!(!vec4<bool>(arg_1.e.d, false, arg_1.e.d, arg_2.d))), false));
}

fn func_5(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = ~max(select(u_input.c.xyw, -u_input.a, vec3<bool>(true, true, true)), -vec3<i32>(-1i, 17757i, 52494i)) >> (vec3<u32>(~1u & max(~107221u, ~arg_0.x), 4294967295u, ~(~0u)) % vec3<u32>(32u));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(sign(-467f)), func_2(var_0.yx, all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), arg_0.x, ~var_0.x).e);
    var_1 = Struct_3(var_1.b.c.x, func_2(reverseBits(_wgslsmith_mod_vec2_i32(u_input.c.ww | vec2<i32>(2147483647i, 1i), ~vec2<i32>(var_1.b.b.x, u_input.a.x))), all(select(vec4<bool>(false, false, var_1.b.d, true), vec4<bool>(false, var_1.b.d, true, var_1.b.d), true)) && true, abs(abs(var_1.b.a)), reverseBits(countOneBits(var_0.x)) | firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1.b.b, vec2<i32>(var_0.x, u_input.a.x)))).e);
    let var_2 = vec4<bool>(any(!vec3<bool>(var_1.b.d, true, false)), false, var_1.b.d, all(!vec3<bool>(var_1.b.d, select(var_1.b.d, var_1.b.d, true), func_3(var_1.b.c).x)));
    var var_3 = arg_0.zx;
    return Struct_4(~firstLeadingBit(-vec2<i32>(-4921i, var_0.x)) >> (u_input.b.zx % vec2<u32>(32u)), firstTrailingBit(~(u_input.b ^ arg_0.wyy)), reverseBits(_wgslsmith_sub_u32(var_3.x, 1u)), var_1.b.c, Struct_1(var_1.b.a, func_2(vec2<i32>(u_input.d, -1i), !var_2.x, firstTrailingBit(var_3.x), ~var_0.x << (_wgslsmith_mult_u32(36168u, 23445u) % 32u)).e.b, vec2<f32>(-2108f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.a, 168f))))), true | (var_2.x == false)));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = !(!select(arg_0.xyx, arg_0.xyx, !arg_0.yyx));
    var_0 = !arg_0.wzx;
    var var_1 = arg_3.x;
    var_1 = 114f;
    var_0 = select(!arg_0.xzx, vec3<bool>(arg_0.x, true, true), select(arg_0.xzz, select(arg_0.wyw, arg_0.zyx, arg_0.x), true));
    return Struct_2(Struct_1(~_wgslsmith_mod_u32(~11573u, 60056u), vec2<i32>(-63640i, u_input.d), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(arg_2.d.x - arg_2.e.c.x)), !(!var_0.x) & arg_0.x), ~(func_4(u_input.b.zx, func_5(vec4<u32>(arg_2.b.x, 4294967295u, u_input.b.x, 2874u)), arg_2.e).x << (~u_input.e % 32u)), arg_1.yxx, !all(arg_0.wxy), select(!vec3<bool>(var_0.x, false, !arg_0.x), arg_0.xzy, select(vec3<bool>(arg_0.x | true, func_2(arg_1.yz, arg_2.e.d, 0u, arg_1.x).e.d, var_0.x), select(!vec3<bool>(false, var_0.x, false), arg_0.zxx, arg_2.e.d), select(!arg_0.zwx, !vec3<bool>(true, var_0.x, true), arg_0.wxw))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    var var_0 = arg_1;
    var_0 = u_input.c;
    let var_1 = func_6(vec4<bool>((false && any(vec4<bool>(false, false, true, true))) | true, select(u_input.e > 0u, any(vec4<bool>(true, false, true, false)), false) || true, any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false)), true), vec4<i32>(abs(var_0.x & _wgslsmith_div_i32(u_input.c.x, -33407i)), abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(~0i, select(2147483647i, -5231i, false)), -(vec2<i32>(35155i, 17121i) >> (u_input.b.zy % vec2<u32>(32u)))), arg_1.x), func_5(_wgslsmith_clamp_vec4_u32(func_4(_wgslsmith_div_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, u_input.b.x)), func_2(vec2<i32>(u_input.a.x, var_0.x), true, 2009u, arg_1.x), Struct_1(u_input.e, vec2<i32>(2147483647i, var_0.x), vec2<f32>(-399f, -877f), false)), abs(vec4<u32>(4294967295u, u_input.e, u_input.b.x, u_input.b.x)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.e, 1u, 86559u), vec4<u32>(u_input.e, u_input.b.x, u_input.b.x, 52380u)), func_4(vec2<u32>(u_input.e, 4294967295u), Struct_4(vec2<i32>(23502i, arg_1.x), vec3<u32>(u_input.e, u_input.e, 1u), 0u, vec2<f32>(865f, arg_0), Struct_1(112938u, arg_1.yy, vec2<f32>(2148f, -1429f), true)), Struct_1(1u, var_0.yz, vec2<f32>(arg_0, -587f), false)), func_3(vec2<f32>(294f, arg_0)).x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(483f, 1111f, 954f, -1678f) - vec4<f32>(1437f, -674f, -1335f, -356f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -213f, -241f, arg_0), vec4<f32>(103f, arg_0, 1037f, 369f)))))))));
    let var_2 = var_1.a.b;
    var_0 = select(~vec4<i32>(~(-var_0.x), var_0.x & -21188i, -10825i, 0i), vec4<i32>(u_input.c.x & _wgslsmith_mult_i32(firstLeadingBit(var_1.c.x), _wgslsmith_div_i32(-2147483647i, 23834i)), 1i, var_0.x, var_1.a.b.x), !select(vec4<bool>(var_1.a.d | true, false, -9132i != u_input.c.x, false), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, var_1.e.x, true), vec4<bool>(var_1.d, false, false, true), vec4<bool>(var_1.e.x, false, true, true)), !vec4<bool>(var_1.e.x, true, false, var_1.a.d)), var_1.e.x));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, 1719f, -789f, -829f)) * vec4<f32>(-195f, -1377f, -118f, -847f)))));
    var var_1 = vec4<f32>(-201f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_div_f32(var_0.x, var_0.x))), 524f)), var_0.x, -1024f);
    var var_2 = vec3<u32>(~(~(u_input.b.x | _wgslsmith_sub_u32(u_input.b.x, u_input.e))), 0u, 93485u);
    let var_3 = Struct_3(745f, Struct_1(~9150u & func_1(var_0.x, vec4<i32>(u_input.d, u_input.c.x, 2147483647i, u_input.d) | vec4<i32>(u_input.c.x, u_input.d, 3659i, u_input.a.x)), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -39664i), vec2<i32>(43578i, -82249i))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, 323f))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(1926f * var_0.x))), true));
    let var_4 = vec3<f32>(func_5(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 121108u, 93877u, 19634u), vec4<u32>(u_input.b.x, var_2.x, var_3.b.a, 37167u)) % 32u), ~11682u)).d.x, -883f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + var_3.a))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-504f, 1000f)), var_0.x)))));
    let var_5 = abs(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(min(48616u, 4294967295u), min(var_3.b.a, u_input.e), 64216u)), _wgslsmith_mod_vec3_u32(u_input.b, ~u_input.b), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_0.x))))));
}

