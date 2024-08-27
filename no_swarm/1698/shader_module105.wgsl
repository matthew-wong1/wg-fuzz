struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32) -> f32 {
    return _wgslsmith_f_op_f32(-1237f - -769f);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = -arg_1.b;
    let var_1 = u_input.a.ww;
    let var_2 = Struct_5(arg_2.b, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(562f, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, -616f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, 209f, arg_2.a.x, arg_2.a.x) - vec4<f32>(arg_2.a.x, 257f, arg_2.a.x, arg_2.a.x))), arg_2.a), 0u < firstTrailingBit(22853u), arg_2.c << ((~u_input.a & (vec4<u32>(1u, 18933u, 61731u, 4294967295u) ^ vec4<u32>(var_1.x, var_1.x, var_1.x, 26185u))) % vec4<u32>(32u)), arg_1.b.x, var_1.x), vec4<bool>(arg_2.b || any(vec4<bool>(false, arg_2.b, false, arg_2.b)), any(vec4<bool>(!arg_2.b, 1135f > arg_2.a.x, true, arg_2.b && arg_2.b)), select(all(vec3<bool>(arg_2.b, arg_2.b, arg_2.b)), true, select(!arg_2.b, !arg_2.b, false)), 1916f <= _wgslsmith_f_op_f32(min(664f, arg_2.a.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(93597u, 1u << (arg_0.x % 32u)) >> (vec2<u32>(abs(arg_0.x), ~arg_2.e) % vec2<u32>(32u)), vec2<u32>(~select(1u, 4294967295u, true), ~_wgslsmith_add_u32(arg_1.a, var_1.x))), select(select(select(select(vec4<bool>(arg_2.b, false, false, arg_2.b), vec4<bool>(arg_2.b, false, arg_2.b, arg_2.b), vec4<bool>(arg_2.b, true, arg_2.b, arg_2.b)), vec4<bool>(false, false, arg_2.b, arg_2.b), var_1.x >= 1u), select(vec4<bool>(false, true, false, true), vec4<bool>(arg_2.b, false, arg_2.b, false), true), _wgslsmith_f_op_f32(-arg_2.a.x) == arg_2.a.x), select(vec4<bool>(arg_2.b || arg_2.b, all(vec3<bool>(arg_2.b, true, true)), 39113u < arg_1.a, true), vec4<bool>(-1i != arg_1.b.x, true, true | arg_2.b, arg_2.b), select(select(vec4<bool>(false, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(true, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(false, arg_2.b, false, false)), !vec4<bool>(false, arg_2.b, arg_2.b, true), !arg_2.b)), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), arg_2.b)), true, true, arg_2.b)));
    let var_3 = false;
    let var_4 = arg_2.a.zyw;
    return false;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> vec4<f32> {
    var var_0 = firstTrailingBit(u_input.c);
    let var_1 = any(select(!select(vec2<bool>(true, true), vec2<bool>(arg_2.b, arg_1), false), vec2<bool>(arg_2.b || arg_1, arg_1), select(vec2<bool>(arg_2.b, func_3(vec2<u32>(arg_2.e, 11371u), arg_3, Struct_1(arg_2.a, arg_2.b, vec4<i32>(u_input.d.x, arg_0, 3363i, 6592i), arg_2.c.x, arg_3.a), arg_2.c.x)), vec2<bool>(false, false), !all(vec4<bool>(arg_1, false, true, false)))));
    var var_2 = var_1;
    let var_3 = arg_2;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(arg_2.a)), arg_2.a)), ~var_3.e != ~firstLeadingBit(40232u), vec4<i32>(var_3.d, ~arg_2.c.x & (2147483647i << (0u % 32u)), arg_0, _wgslsmith_mult_i32(var_3.c.x, max(-2147483647i, arg_0))), u_input.d.x, _wgslsmith_add_u32(arg_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 51459u, arg_3.a, 4294967295u), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a.x, 757f, -314f, arg_2.a.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-885f, arg_2.a.x, -1195f, -1799f), vec4<f32>(-1055f, 704f, var_4.a.a.x, 581f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, var_3.a.x, 2737f, -660f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-959f, -1942f, arg_2.a.x, -1985f), vec4<f32>(-963f, 1117f, var_4.a.a.x, var_4.a.a.x), vec4<bool>(var_4.a.b, true, var_3.b, var_1))))), vec4<f32>(_wgslsmith_f_op_f32(480f - arg_2.a.x), -1013f, _wgslsmith_f_op_f32(round(var_3.a.x)), 265f), select(vec4<bool>(arg_1, false, var_1, arg_1), !vec4<bool>(arg_2.b, false, true, false), select(vec4<bool>(arg_1, arg_2.b, var_1, arg_2.b), vec4<bool>(var_1, false, true, true), vec4<bool>(var_1, true, true, false)))))))));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = firstTrailingBit(~reverseBits(firstLeadingBit(abs(vec4<u32>(u_input.c.x, 0u, 4294967295u, 0u)))));
    return Struct_4(_wgslsmith_mult_u32(~(~var_0.x), var_0.x), vec3<i32>(min(reverseBits(_wgslsmith_mult_i32(-6347i, -50980i)), max(u_input.d.x, 1i)), ~0i & u_input.d.x, max(-2147483647i, u_input.d.x << (~u_input.e % 32u))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = -7117i;
    var var_2 = 51209i;
    let var_3 = func_5(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_u32(u_input.a.x, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(0i, func_3(_wgslsmith_mult_vec2_u32(u_input.c.xz, vec2<u32>(19944u, u_input.c.x)), Struct_4(u_input.c.x, vec3<i32>(-2147483647i, -2147483647i, u_input.d.x)), Struct_1(vec4<f32>(495f, 1734f, 512f, 1283f), false, vec4<i32>(8304i, 1i, u_input.d.x, u_input.d.x), u_input.d.x, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -28265i, -26132i, u_input.d.x), vec4<i32>(0i, u_input.d.x, -2147483647i, u_input.d.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, -681f, -1712f, -178f)), !arg_0, vec4<i32>(41178i, u_input.d.x, 1i, u_input.d.x), reverseBits(u_input.d.x), abs(4294967295u)), Struct_4(~u_input.c.x, abs(vec3<i32>(1i, u_input.d.x, 25992i)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1151f, 1104f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1489f), _wgslsmith_f_op_f32(step(-547f, 2298f)))))));
    var var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-723f * 129f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1304f, 110f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-515f, -468f)) - _wgslsmith_f_op_f32(634f * 2761f)))), -1545f, -904f), !func_3(~(~u_input.a.yz), var_3, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, 632f, 942f, 689f)), var_0, vec4<i32>(u_input.d.x, u_input.d.x, -1i, var_3.b.x) & vec4<i32>(32783i, var_3.b.x, var_3.b.x, 0i), u_input.d.x, ~67366u), _wgslsmith_clamp_i32(2147483647i, firstLeadingBit(-45924i), 40046i)), firstLeadingBit(~_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.d.x, u_input.d.x, 1i, var_3.b.x), vec4<i32>(14647i, -23559i, u_input.d.x, -18188i), var_0), ~vec4<i32>(var_3.b.x, u_input.d.x, -20267i, var_3.b.x))), -1i, _wgslsmith_div_u32(u_input.c.x, var_3.a));
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(var_4.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_4.a, var_4.a))) - vec4<f32>(_wgslsmith_f_op_f32(var_4.a.x * var_4.a.x), 966f, var_4.a.x, _wgslsmith_f_op_f32(select(var_4.a.x, var_4.a.x, false)))), select(!(!vec4<bool>(var_0, false, arg_0, true)), select(!vec4<bool>(false, var_4.b, true, var_4.b), select(vec4<bool>(var_4.b, arg_0, true, false), vec4<bool>(arg_0, var_4.b, true, var_4.b), vec4<bool>(false, arg_0, arg_0, true)), vec4<bool>(arg_0, var_4.b, var_4.b, false)), select(select(vec4<bool>(arg_0, true, true, var_4.b), vec4<bool>(false, var_0, true, true), var_0), vec4<bool>(var_4.b, var_4.b, false, var_0), var_4.a.x <= -794f)))), true, var_4.c, 0i, 1u);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = -638f;
    return func_1(true);
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = !(_wgslsmith_mod_i32(-1i, ~(arg_1.c.x >> (u_input.e % 32u))) == (6939i >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e, 4294967295u, 46157u, u_input.e), u_input.b) ^ min(u_input.a.x, u_input.a.x)) % 32u)));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(min(-48102i, i32(-1i) * -8628i), _wgslsmith_dot_vec3_i32(arg_1.c.wzx ^ arg_1.c.ywy, abs(arg_1.c.xyx))), abs(-28783i)) >= 33249i;
    let var_2 = !(!(!(!all(vec4<bool>(arg_0.x, arg_1.b, var_0, false)))));
    let var_3 = u_input.d.x;
    var var_4 = -_wgslsmith_clamp_vec4_i32((vec4<i32>(17908i, -2147483647i, var_3, var_3) >> (max(u_input.a, vec4<u32>(arg_1.e, 8010u, 1u, 4294967295u)) % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u)), max(arg_1.c, -select(arg_1.c, arg_1.c, vec4<bool>(true, true, true, true))), -arg_1.c);
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-640f - arg_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(327f - arg_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-999f, arg_1.a.x), _wgslsmith_f_op_f32(-arg_2.x))), -1078f)), _wgslsmith_f_op_vec2_f32(-arg_2.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(~abs(min(u_input.a.x, u_input.b.x)), select(~0u, ~1u ^ ~u_input.b.x, any(vec2<bool>(true, true)))), ~1u, 50977u, ~select(reverseBits(1u), 79660u, false));
    let var_1 = func_7(vec2<bool>(true, true), func_6(Struct_2(Struct_1(vec4<f32>(-560f, 2221f, -1299f, -1216f), true, -vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 27475i), u_input.d.x, u_input.b.x)), func_1(true), func_1(!(var_0.x > var_0.x)).c.yzw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1271f, 240f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1893f, -550f), vec2<f32>(-979f, 340f), vec2<bool>(false, true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1016f, -1489f, 257f) * vec3<f32>(1541f, 363f, 990f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1723f, 940f, -1196f), vec3<f32>(864f, 878f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1284f, -481f, 296f)), vec3<bool>(true, false, false))))));
    var_0 = ~(~u_input.b);
    var_0 = max(reverseBits(~(~(vec4<u32>(4294967295u, 0u, var_0.x, u_input.e) & vec4<u32>(var_0.x, 49302u, 4294967295u, 1u)))), ~max(u_input.b, _wgslsmith_add_vec4_u32(u_input.a << (vec4<u32>(0u, var_0.x, var_1.a, var_1.a) % vec4<u32>(32u)), vec4<u32>(var_1.a, 6555u, 1u, u_input.e))));
    var_0 = vec4<u32>(~(((u_input.a.x << (1u % 32u)) & var_0.x) << (~var_0.x % 32u)), 60535u << (func_1(-1318i < (var_1.b.x ^ 24394i)).e % 32u), _wgslsmith_sub_u32(~var_0.x | (var_0.x ^ 4294967295u), ~0u) ^ _wgslsmith_sub_u32(~func_7(vec2<bool>(false, false), Struct_1(vec4<f32>(-1143f, 1479f, -383f, 294f), false, vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x), u_input.d.x, 47721u), vec3<f32>(387f, -1138f, 476f)).a, var_1.a), ~u_input.a.x);
    var_0 = u_input.a;
    let var_2 = Struct_3(true);
    let var_3 = 17564i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(func_6(Struct_2(Struct_1(vec4<f32>(2409f, -109f, 199f, 378f), false, vec4<i32>(-2147483647i, -1475i, 61089i, -52291i), var_3, u_input.a.x)), Struct_1(vec4<f32>(635f, -435f, 1102f, 669f), var_2.a, vec4<i32>(-2147483647i, var_1.b.x, 2147483647i, var_3), -29200i, 41966u), vec3<i32>(24375i, 29893i, -14649i), vec2<f32>(1000f, -1446f)).d >> (66131u % 32u), 1i));
}

