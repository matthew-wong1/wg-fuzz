struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = false;
    let var_1 = max(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0, u_input.b.x), vec3<u32>(abs(firstLeadingBit(arg_0)), firstLeadingBit(u_input.b.x | 35202u), arg_0)), select(~(~vec3<u32>(0u, 1u, 41024u)), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u), all(vec3<bool>(true, true, true))) & select(abs(~vec3<u32>(arg_0, u_input.b.x, 1u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, arg_0, 4294967295u)), vec3<u32>(68572u, arg_0, 22682u) & vec3<u32>(0u, 76701u, 75530u)), vec3<bool>(true, true, true)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1930f, 232f, -897f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1870f, -1183f, -356f))), vec3<f32>(-899f, -1403f, _wgslsmith_f_op_f32(f32(-1f) * -369f)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), all(vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1522f, _wgslsmith_div_f32(405f, -389f), _wgslsmith_f_op_f32(min(-2580f, 840f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(756f, 161f)))), 358f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-611f, 595f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-302f, 749f), vec2<f32>(828f, -500f), false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(306f, 861f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1578f, 497f)))))), u_input.b.x, ~4294967295u, 1i);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-952f, var_2.a.x, var_2.a.x, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(304f, 558f, var_2.a.x, var_2.a.x))))), vec4<f32>(187f, _wgslsmith_f_op_f32(step(var_2.b.x, _wgslsmith_f_op_f32(sign(var_2.a.x)))), -560f, var_2.a.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), var_2.b.x, _wgslsmith_f_op_f32(var_2.b.x + -638f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -984f, var_3.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(427f, var_2.a.x, -1000f)))))), var_3.xy, ~abs(31251u), firstLeadingBit(reverseBits(_wgslsmith_div_u32(reverseBits(var_1.x), countOneBits(4294967295u)))), i32(-1i) * -1i);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1866f, var_2.b.x)), var_2.b.x))), -1527f, 1291f);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, ~u_input.b.x, 1u) << (~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 20097u, 1u), vec3<u32>(55774u, 4294967295u, 13550u))) % vec3<u32>(32u)), abs(vec3<u32>(max(u_input.b.x, abs(82721u)), 71649u, u_input.b.x)));
    let var_1 = var_0.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(1u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -568f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(212f * 485f)))), 73861u, 4294967295u, max(~u_input.a.x, u_input.a.x));
    var var_3 = select(_wgslsmith_mult_vec2_i32(u_input.a.zz, reverseBits(abs(u_input.a.xy))) & (u_input.a.zx << (~_wgslsmith_add_vec2_u32(vec2<u32>(39820u, var_2.d), var_0.yx) % vec2<u32>(32u))), firstTrailingBit(vec2<i32>(i32(-1i) * -u_input.a.x, -firstLeadingBit(u_input.a.x))), !(4294967295u > u_input.b.x));
    let var_4 = true;
    return firstTrailingBit(u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = -min(2147483647i, (i32(-1i) * -2147483647i) >> (u_input.b.x % 32u));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d, arg_2, ~(4294967295u ^ ~arg_0.c), arg_2), (_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.d, u_input.b.x, 3068u, 4294967295u), select(vec4<u32>(1u, 0u, u_input.b.x, 2062u), vec4<u32>(51689u, 4294967295u, u_input.b.x, 0u), arg_1)) | abs(min(vec4<u32>(arg_0.c, arg_2, arg_0.d, u_input.b.x), vec4<u32>(66725u, arg_2, arg_0.c, 52627u)))) & (vec4<u32>(52639u | arg_2, arg_2, ~17337u, ~u_input.b.x) ^ abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 18011u, 4294967295u), vec4<u32>(arg_2, 1u, 0u, 16573u)))));
    var_0 = _wgslsmith_mod_i32(57821i, -41765i);
    var var_2 = u_input.a.zx;
    var_0 = 2147483647i;
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, 1487f, -1659f, arg_2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3, -675f, arg_3, -1701f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1196f, -993f, -2097f)), false)) - vec4<f32>(_wgslsmith_f_op_f32(-566f - 675f), -1254f, -706f, arg_2.x)))));
    var var_1 = true;
    let var_2 = _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~1u, u_input.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(69002u, u_input.b.x, u_input.b.x), firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), ~vec3<u32>(~u_input.b.x, 1655u, u_input.b.x));
    var var_3 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, -695f, arg_0), vec3<f32>(533f, arg_0, arg_0), true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, _wgslsmith_f_op_f32(-var_0.x))), ~0u, _wgslsmith_mult_u32(max(_wgslsmith_clamp_u32(53993u, u_input.b.x, 15361u), u_input.b.x), var_2.x), _wgslsmith_div_i32(~1i, u_input.a.x) << (1u % 32u)), all(!arg_1), u_input.b.x, _wgslsmith_add_i32(func_2(), min(i32(-1i) * -53310i, 0i)));
    var var_4 = arg_2;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, 865f, var_3.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -147f, var_3.b.x))))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(500f, arg_0, 354f) * arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(190f, var_3.a.x, var_4.x)), false && any(vec2<bool>(arg_1.x, true)))), vec3<f32>(-1888f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_3)))), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1466f), _wgslsmith_f_op_f32(910f - -361f), _wgslsmith_div_f32(-1277f, 1061f)) * _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(-1638f + 1000f), vec3<bool>(true, false, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1097f, 278f, 508f) + vec3<f32>(-411f, -1242f, 908f)), 439f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2390f, -299f, -295f) - vec3<f32>(787f, 1984f, -1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(940f, -1586f, -867f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, 887f, 1430f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-152f, 299f, true))) + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1096f, -125f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(148f + -375f) * 1f))), select(~(~17265u), ~(~(4294967295u << (u_input.b.x % 32u))), true), u_input.b.x, reverseBits(-u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1213f);
    let var_2 = func_4(Struct_1(var_0.a, var_0.a.zz, 4294967295u, _wgslsmith_mult_u32(~(u_input.b.x << (var_0.c % 32u)), ~reverseBits(u_input.b.x)), abs(_wgslsmith_sub_i32(u_input.a.x, min(-2605i, u_input.a.x)))), true, var_0.d, select(2147483647i, 8461i, false));
    var_1 = var_0.b.x;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.a.x)), -1387f))), 818f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(var_2.b.x, vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<f32>(-699f, 550f, var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1163f, 1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -529f)))).x));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))))));
    var var_5 = u_input.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(-1350f, ~32181u, vec3<i32>(countOneBits(var_2.e), -_wgslsmith_add_i32(-28103i, 2147483647i), -abs(func_4(var_0, true, 4294967295u, -1i).e)), (~(vec4<u32>(var_0.c, var_0.d, 0u, 0u) >> (vec4<u32>(4294967295u, var_2.c, var_0.c, 10051u) % vec4<u32>(32u))) >> (~(~vec4<u32>(32985u, u_input.b.x, 4294967295u, 48590u)) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(91469u, ~var_2.d, _wgslsmith_sub_u32(u_input.b.x, 1u), 4294967295u), min(~vec4<u32>(25541u, var_0.d, 0u, var_0.c), abs(vec4<u32>(0u, 4294967295u, var_0.c, 79800u))), vec4<u32>(var_0.d << (u_input.b.x % 32u), 8356u, _wgslsmith_sub_u32(var_0.d, 394u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 5098u), u_input.b))) % vec4<u32>(32u)));
}

