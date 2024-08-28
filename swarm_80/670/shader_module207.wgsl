struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-697f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-945f)) * _wgslsmith_div_f32(arg_0.b, -134f)))) + -2194f);
    var var_1 = ~(~u_input.a ^ arg_3.d);
    var var_2 = -arg_3.c;
    let var_3 = arg_3;
    let var_4 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(max(~vec2<u32>(64306u, 4294967295u), countOneBits(arg_3.a.yy)) | select(abs(vec2<u32>(0u, var_3.a.x)), ~vec2<u32>(var_3.a.x, 77260u), arg_0.e.x), ~(~var_3.a.zx), arg_0.d), _wgslsmith_div_vec2_u32(arg_0.d, ~select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_3.a.x), vec2<u32>(52920u, var_3.d)), vec2<u32>(1u, arg_3.d), vec2<bool>(false, false))));
    return var_0;
}

fn func_3() -> bool {
    var var_0 = -2147483647i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-175f, -1499f, -1385f) + vec3<f32>(-148f, 1705f, -420f)), vec3<bool>(false, true, false)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -239f))), select(1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(76632i, -22844i), reverseBits(-1496i)) >> (1u % 32u), select(false, false, !select(false, true, true))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~abs(vec2<u32>(u_input.a, 49813u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(u_input.a, 14032u)), min(vec2<u32>(39382u, u_input.a), vec2<u32>(0u, 0u)))), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 1u), ~(~vec2<u32>(1u, 30658u)))), select(vec3<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true)), !select(true, true, false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), select(true, true, true)), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))));
    var_0 = _wgslsmith_add_i32(reverseBits(0i), -1i);
    let var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_1.b, 1270f) - vec4<f32>(570f, -2652f, -1964f, var_1.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.b) * vec4<f32>(var_1.b, -839f, -270f, 1317f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-793f, 1897f, _wgslsmith_f_op_f32(var_1.b - var_1.b), _wgslsmith_f_op_f32(var_1.a.x - 876f)))), var_1.e, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(603f - 614f), var_1.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1275f * -1000f)))), var_1.a.x, select(-var_1.c, abs(_wgslsmith_mod_i32(1i, var_1.c)), true), ~_wgslsmith_add_vec2_u32(~vec2<u32>(var_1.d.x, var_1.d.x), ~vec2<u32>(u_input.a, var_1.d.x)), var_1.e), Struct_2(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, var_1.d.x, u_input.a)), vec3<u32>(~18232u, ~1u, 61258u), vec3<u32>(u_input.a ^ 4294967295u, reverseBits(var_1.d.x), var_1.d.x)), all(select(select(var_1.e.xz, vec2<bool>(true, false), false), !var_1.e.yy, select(var_1.e.zz, vec2<bool>(false, false), var_1.e.x))), -var_1.c >> (u_input.a % 32u), abs(17402u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(exp2(var_1.a.x)), var_1.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), var_1.a.x))), -23i, var_1.d, !var_1.e));
    var_0 = firstLeadingBit(var_2.e.c);
    return false;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    return -1713f;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(-19552i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, 21966i), vec3<i32>(15025i, -28711i, 1i)) >> (~min(vec3<u32>(21672u, u_input.a, u_input.a), vec3<u32>(u_input.a, 70736u, arg_0)) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-17056i, 53627i, 1i), vec3<i32>(1727i, -47991i, 4183i))) >> (vec3<u32>(select(1u, u_input.a, false), 987u, abs(4294967295u)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(func_4(78500i, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(1218f, 1000f, 1714f), 853f, 20023i, vec2<u32>(1u, 10087u), vec3<bool>(true, true, false)), false, -1026f, Struct_2(vec3<u32>(u_input.a, 1u, 4294967295u), false, -45095i, u_input.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(110f + 409f) + -584f), _wgslsmith_f_op_f32(sign(-523f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2256f - -113f) - -1000f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(392f)), _wgslsmith_f_op_f32(f32(-1f) * -293f))), ~(-11823i), ~((vec2<u32>(4294967295u, 55093u) | vec2<u32>(13568u, arg_0)) ^ vec2<u32>(u_input.a, u_input.a)), vec3<bool>(all(vec2<bool>(true, false)) & false, !func_3(), true))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(f32(-1f) * -573f)), _wgslsmith_f_op_f32(-2037f * var_1), _wgslsmith_f_op_f32(func_4(abs(2147483647i), Struct_1(vec3<f32>(-1679f, -607f, var_1), -242f, -1i, vec2<u32>(1u, 13805u), vec3<bool>(true, false, true))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_1, var_1, true)), var_1, var_1, -730f))), select(vec3<bool>(any(vec2<bool>(false, false)) && true, true, any(vec4<bool>(true, false, true, false)) | false), vec3<bool>(true && any(vec3<bool>(false, true, true)), true, func_3() & true), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -1454f) + vec3<f32>(var_1, 431f, var_1)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 * 1265f)))), -(~(~(-32813i))), countOneBits(vec2<u32>(countOneBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(65921u, arg_0, 14341u), vec3<u32>(arg_0, 1u, 44032u)))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), Struct_2(firstTrailingBit(_wgslsmith_add_vec3_u32(abs(vec3<u32>(70031u, arg_0, 79572u)), select(vec3<u32>(arg_0, u_input.a, 0u), vec3<u32>(1u, u_input.a, u_input.a), vec3<bool>(false, false, false)))), true, firstTrailingBit(~_wgslsmith_mod_i32(1i, 6212i)), ~arg_0), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_1), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + var_1) - var_1)), var_1, abs(0i), select(reverseBits(vec2<u32>(1u, u_input.a)), abs(vec2<u32>(1u, 1u)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    let var_3 = _wgslsmith_f_op_vec2_f32(var_2.e.a.yx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_2.a.yw)))))));
    var var_4 = _wgslsmith_div_vec3_f32(var_2.a.zzz, _wgslsmith_f_op_vec3_f32(var_2.c.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a.zxz, vec3<f32>(var_1, var_2.e.b, var_2.e.a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-328f, -1000f, 231f) - vec3<f32>(var_1, 1578f, var_1))))));
    return var_2.e;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_mod_vec3_u32(arg_0.d.a, _wgslsmith_mult_vec3_u32(~arg_1.d.a, min(arg_0.d.a, ~arg_2.a)));
    var_0 = arg_1.d.a;
    var_0 = vec3<u32>(countOneBits(~arg_3.a.x), 0u, arg_0.e.d.x);
    var var_1 = vec4<u32>(0u, _wgslsmith_div_u32(arg_3.d, _wgslsmith_clamp_u32(abs(~arg_3.a.x), select(func_1(4294967295u).d.x, ~var_0.x, var_0.x == arg_0.e.d.x), 0u)), _wgslsmith_add_u32(arg_3.a.x, ~(~arg_0.c.d.x >> (6731u % 32u))), ~(~(~u_input.a) << (4294967295u % 32u)));
    var_0 = vec3<u32>(_wgslsmith_clamp_u32(1u, 11031u, arg_2.a.x), func_1(30218u).d.x | _wgslsmith_clamp_u32(~(~1u), arg_3.a.x, 0u), 1u);
    return vec4<f32>(1119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(func_1(var_0.x), 1i <= (arg_1.c.c & 2147483647i), -232f, arg_0.d)))), -1132f);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = select(vec2<i32>(1i, arg_1.c), vec2<i32>(2147483647i >> (1u % 32u), -arg_1.c ^ firstLeadingBit(arg_1.c)) >> ((arg_1.a.yy >> (arg_1.a.yy % vec2<u32>(32u))) % vec2<u32>(32u)), arg_1.b);
    return StorageBuffer(min(reverseBits(~countOneBits(-1i)), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(func_5(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1981f, 684f, 706f, 570f) + vec4<f32>(122f, -1350f, 498f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1387f, -1236f, 978f, 671f) - vec4<f32>(1000f, 1523f, 827f, 1575f))), vec3<bool>(true, true, true), func_1(1u), Struct_2(countOneBits(vec3<u32>(u_input.a, 1780u, 0u)), false, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 0i, -7020i), vec4<i32>(0i, 24865i, 0i, -1245i)), u_input.a ^ 16015u), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1534f, 203f, -1820f)), _wgslsmith_f_op_f32(1233f + 537f), countOneBits(-1i), vec2<u32>(u_input.a, 18737u) | vec2<u32>(93065u, u_input.a), func_1(u_input.a).e)), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1663f, -1655f, -485f, 1486f)), vec3<bool>(true, true, true), func_1(0u), Struct_2(select(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(34332u, u_input.a, u_input.a), true), true, -40698i, firstLeadingBit(0u)), Struct_1(vec3<f32>(706f, 882f, 2114f), -116f, 2147483647i, ~vec2<u32>(u_input.a, 1u), vec3<bool>(true, true, true))), Struct_2(~vec3<u32>(0u, 1u, u_input.a), any(vec2<bool>(true, true)), 26884i, u_input.a), Struct_2(max(~vec3<u32>(28172u, u_input.a, u_input.a), abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), true, min(func_1(44223u).c, 1i), _wgslsmith_mod_u32(~u_input.a, 1u)))), Struct_2(vec3<u32>(min(32011u, u_input.a) << (select(70302u, u_input.a, false) % 32u), 41941u, 1u), true, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(min(0i, 16231i), 19311i, abs(-5259i)), 1i, -2147483647i), _wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(85673u, 1u)))));
}

