struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true), false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.xwy, countOneBits(~u_input.b.wzz), u_input.b.zyz), vec3<i32>(arg_0.b, -1i, max(arg_0.b, u_input.b.x | arg_0.b))), ~(vec3<i32>(u_input.d, 1i, 2147483647i) ^ -u_input.b.wzw) | select(-firstTrailingBit(u_input.b.xzz), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, arg_0.b, 24660i), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b, -50479i, u_input.d), u_input.b.zxz, vec3<i32>(59305i, u_input.b.x, -4345i))), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_add_i32(abs(_wgslsmith_div_i32(1i, arg_0.b) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, var_0.x), vec4<i32>(arg_0.b, var_0.x, -4574i, 19079i) >> (vec4<u32>(arg_1.x, 11105u, arg_1.x, 82001u) % vec4<u32>(32u)))), arg_0.b);
    var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(max(~u_input.b, u_input.b << (vec4<u32>(arg_1.x, 16019u, arg_1.x, 4294967295u) % vec4<u32>(32u))), vec4<i32>(var_0.x, 0i, 6127i, u_input.b.x) ^ abs(vec4<i32>(1i, arg_0.b, 39271i, 75722i))), _wgslsmith_sub_i32(-2147483647i, ~max(arg_0.b, 2147483647i))) ^ 1i;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1572f)), -139f)))) * _wgslsmith_f_op_f32(arg_0.d.x + -1417f)));
    let var_3 = Struct_1(countOneBits(arg_1.x), any(arg_0.c), reverseBits(vec4<i32>(20633i >> ((u_input.c << (1u % 32u)) % 32u), -select(-2147483647i, -2147483647i, arg_0.c.x), _wgslsmith_div_i32(firstTrailingBit(21316i), abs(-1i)), -2040i)), _wgslsmith_div_i32(~var_0.x, -_wgslsmith_div_i32(0i, arg_0.b & 43174i)), -231f);
    return vec2<bool>(var_3.b, arg_0.c.x);
}

fn func_2() -> bool {
    var var_0 = Struct_2(func_3(Struct_3(Struct_2(global0.a, true), 1i, !select(vec3<bool>(global0.b, false, true), vec3<bool>(global0.a.x, global0.a.x, true), vec3<bool>(global0.a.x, global0.b, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-474f, 1062f, 1226f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-2073f, 1356f, 178f), vec3<f32>(219f, 1055f, 100f))), false), _wgslsmith_div_vec2_u32(u_input.a.zy, firstLeadingBit(~vec2<u32>(u_input.c, u_input.a.x))), true), all(select(vec4<bool>(false, global0.a.x, false, global0.a.x), vec4<bool>(global0.a.x, !global0.a.x, global0.a.x, global0.a.x), vec4<bool>(global0.b != false, !global0.a.x, true, false))));
    var var_1 = _wgslsmith_mult_vec4_i32(-u_input.b, ~(~vec4<i32>(2147483647i, abs(54910i), 31278i, ~u_input.b.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-926f, -2200f, var_0.b)) - -492f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-979f, -659f))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1128f, _wgslsmith_f_op_f32(trunc(1388f))) - vec2<f32>(287f, 1f)))) * vec2<f32>(var_2.x, -1259f));
    var var_3 = !global0.a.x;
    return global0.a.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(372f + 904f), 415f, 1388f, _wgslsmith_div_f32(516f, 243f)) + vec4<f32>(_wgslsmith_f_op_f32(floor(-1191f)), _wgslsmith_f_op_f32(trunc(-338f)), _wgslsmith_f_op_f32(sign(181f)), -1093f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(540f, -1652f, -1000f, 733f), vec4<f32>(-125f, -643f, -593f, -103f), false)) + vec4<f32>(1158f, 1016f, -664f, -931f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(500f, -1100f, -1880f, -836f), vec4<f32>(550f, 307f, 761f, -2104f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1692f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-180f)))))), 437f, 1090f));
    var var_1 = firstTrailingBit(u_input.a.zx);
    var_1 = vec2<u32>(82844u, abs(1u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2187f)))) - _wgslsmith_f_op_f32(round(var_0.x)));
    return ~(~4294967295u);
}

fn func_1() -> Struct_3 {
    global0 = Struct_2(vec2<bool>(false, true), global0.a.x);
    var var_0 = vec4<u32>(func_4(vec3<bool>(!global0.b, true & global0.a.x, func_2()), vec2<bool>(!global0.a.x, global0.a.x)), 0u, u_input.c, u_input.a.x);
    let var_1 = -u_input.b.www;
    let var_2 = ~vec4<u32>((~u_input.c >> (select(4294967295u, u_input.a.x, global0.b) % 32u)) | 1u, ~_wgslsmith_mod_u32(var_0.x, u_input.c & var_0.x), 3767u, u_input.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(858f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2653f, -2215f), _wgslsmith_div_f32(-1000f, -396f)))), _wgslsmith_f_op_f32(-1223f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-907f - -721f), _wgslsmith_f_op_f32(ceil(549f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1373f - -185f), _wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(trunc(-786f))))), _wgslsmith_f_op_f32(f32(-1f) * -649f)));
    return Struct_3(Struct_2(select(!select(vec2<bool>(true, global0.b), global0.a, vec2<bool>(global0.a.x, false)), vec2<bool>(global0.a.x, false && global0.b), all(select(vec3<bool>(false, global0.b, false), vec3<bool>(global0.b, false, true), vec3<bool>(false, global0.b, false)))), any(select(vec3<bool>(global0.b, true, true), vec3<bool>(global0.b, true, global0.b), false))), var_1.x, select(select(!select(vec3<bool>(global0.b, true, true), vec3<bool>(false, global0.b, global0.a.x), true), vec3<bool>(true, all(vec3<bool>(global0.a.x, global0.b, true)), global0.b), vec3<bool>(true, true, true)), vec3<bool>(var_1.x < var_1.x, !any(vec4<bool>(global0.b, global0.b, true, false)), false), global0.b), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1262f, var_3.x)))), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(724f, -1026f))))), (!(852f >= var_3.x) && true) && true);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>) -> vec3<bool> {
    global0 = Struct_2(func_1().a.a, global0.a.x);
    let var_0 = -10770i;
    let var_1 = Struct_1(u_input.a.x, -1485f <= _wgslsmith_f_op_f32(-arg_0.d.x), -(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -1i), reverseBits(vec4<i32>(arg_2.x, arg_2.x, arg_0.b, -2325i))) ^ u_input.b), -(i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(-501f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -153f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-260f, -640f))))));
    var var_2 = any(arg_1.a);
    let var_3 = -842f;
    return !vec3<bool>(arg_0.a.b, false, true);
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = u_input.d;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(~abs(u_input.c), -2147483647i, Struct_3(Struct_2(!select(global0.a, vec2<bool>(false, true), false), global0.b || global0.a.x), _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.d, -21505i), vec4<i32>(32188i, 8465i, u_input.d, u_input.b.x))) | firstTrailingBit(u_input.d & u_input.d), select(func_5(func_1(), Struct_2(vec2<bool>(global0.b, true), true), -u_input.b.yy), !(!vec3<bool>(global0.b, global0.b, global0.a.x)), func_1().e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1196f, 400f, -634f))), false));
    var var_0 = ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.yz), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), u_input.a), func_4(vec3<bool>(global0.a.x, true, global0.a.x), global0.a), max(u_input.a.x, 59299u))) | ((vec4<u32>(u_input.c, u_input.a.x, u_input.c, u_input.a.x ^ u_input.c) << (vec4<u32>(1u, u_input.a.x, u_input.c, firstLeadingBit(u_input.c)) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, u_input.c, u_input.c), vec4<u32>(1u, u_input.a.x, u_input.c, 30858u))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, 1u), ~vec4<u32>(33802u, u_input.a.x, u_input.c, u_input.a.x)), vec4<u32>(abs(u_input.a.x), ~u_input.a.x, firstLeadingBit(18525u), 11142u)) % vec4<u32>(32u)));
    let var_1 = -abs(((i32(-1i) * -20822i) | (u_input.b.x >> (4294967295u % 32u))) & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 1i), u_input.b.zzx), _wgslsmith_sub_i32(u_input.d, u_input.b.x)));
    global0 = Struct_2(vec2<bool>(any(select(vec4<bool>(global0.b, global0.a.x, global0.b, global0.a.x), vec4<bool>(global0.b, false, false, true), vec4<bool>(false, true, global0.b, global0.a.x))) || ((var_1 & 1i) < 6554i), global0.a.x & global0.a.x), global0.a.x);
    var var_2 = select(true, !(!all(vec2<bool>(true, true))), all(vec2<bool>(global0.a.x, global0.b)));
    let var_3 = Struct_3(func_1().a, 1i, !(!(!(!vec3<bool>(global0.a.x, global0.b, global0.a.x)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-128f)) + 873f), -1220f), -561f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-762f, -1523f)) + -1365f))), false);
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-(~vec4<i32>(-1i, u_input.d, u_input.b.x, u_input.b.x)), vec4<i32>(_wgslsmith_sub_i32(1i, -32662i), reverseBits(51623i), 2147483647i, -17784i)) | u_input.b, u_input.b, vec2<f32>(var_3.d.x, var_3.d.x), ~(~var_0.wyz));
}

