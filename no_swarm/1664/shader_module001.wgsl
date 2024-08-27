struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(858f, arg_1.x, all(select(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x), vec3<bool>(true, false, arg_2.b.x), arg_2.b.x)))), -1840f, _wgslsmith_f_op_f32(floor(arg_1.x)), 944f));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1130f, 817f, -299f, var_0.x))) * vec4<f32>(arg_1.x, 374f, 566f, _wgslsmith_div_f32(var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1307f, -574f, arg_1.x, -131f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1532f, arg_1.x, var_0.x) * vec4<f32>(431f, 919f, arg_1.x, 1000f)), vec4<bool>(true, arg_2.b.x, true, arg_2.b.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(488f, 2021f, arg_1.x, var_0.x) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1615f, 577f, arg_1.x, arg_1.x), vec4<f32>(-1774f, -1131f, var_0.x, 162f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(915f - arg_1.x), 400f, _wgslsmith_f_op_f32(abs(343f)), _wgslsmith_f_op_f32(f32(-1f) * -388f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(340f, 1747f, arg_1.x, var_0.x) - vec4<f32>(arg_1.x, 549f, -100f, 1000f))))));
    let var_1 = Struct_2(arg_2, false, abs(firstTrailingBit(~vec3<u32>(arg_0, arg_2.a.x, 58480u))), Struct_1(abs(abs(~arg_2.a)), !select(select(vec3<bool>(arg_2.b.x, arg_2.b.x, true), vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x), true), arg_2.b, arg_2.b), ~arg_2.c));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(var_0.x * 466f)), 307f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.x, arg_1.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1919f))), 525f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -1330f, arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -937f, -1890f, 248f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, arg_1.x, 1070f, -883f))) + vec4<f32>(-1572f, -443f, var_0.x, arg_1.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -1065f, var_0.x, 183f), vec4<f32>(var_0.x, -1383f, -2097f, arg_1.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, 1341f, arg_1.x, -2185f))), var_1.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(min(-190f, var_0.x)))) > _wgslsmith_f_op_f32(1320f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1298f + arg_1.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1241f, var_0.x) + vec4<f32>(arg_1.x, var_0.x, 469f, -267f)))))));
    return var_0.x;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false))), !all(vec3<bool>(true, true, true)));
    var var_1 = Struct_3(vec4<f32>(-1000f, 620f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(-1338f, -114f), vec2<f32>(262f, -386f)), Struct_1(vec3<u32>(u_input.a.x, arg_0, 1u), vec3<bool>(var_0.x, var_0.x, false), vec2<i32>(17950i, -26342i)))) - 263f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-434f)), _wgslsmith_f_op_f32(f32(-1f) * -1426f)))), !(!(_wgslsmith_f_op_f32(step(-1314f, -1434f)) < 970f)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, abs(u_input.a.xz)) << (~(~92317u) % 32u), select(~arg_0, 4294967295u, !var_0.x), 4294967295u));
    return vec4<bool>(any(vec3<bool>(var_1.b | true, var_1.b, !var_0.x)) & var_1.b, true, var_0.x, false);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = select(!select(func_2(30438u), !vec4<bool>(arg_1.x, false, false, arg_1.x), select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), !arg_1.x)), !(!(!(!vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)))), !vec4<bool>(false, any(arg_1), arg_1.x, arg_1.x));
    var var_1 = vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, -2147483647i), -42894i, 1i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 22808i)), -vec4<i32>(-1i, 0i, -16574i, 1i)), ((-30653i << (u_input.a.x % 32u)) >> (~arg_0 % 32u)) ^ 11356i, 61754i) | firstTrailingBit(~max(vec4<i32>(2147483647i, 6717i, 1i, 2147483647i), vec4<i32>(-37i, 26018i, 1i, -40700i)));
    let var_2 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, ~_wgslsmith_add_u32(31193u, arg_0), 0u), select(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a ^ u_input.a), ~u_input.a, !arg_1.x)), var_0.wyx, vec2<i32>(~var_1.x, var_1.x));
    let var_3 = ~(~(~_wgslsmith_div_u32(0u, arg_0) >> (arg_0 % 32u)));
    let var_4 = Struct_2(Struct_1(abs(~u_input.a), vec3<bool>(false, _wgslsmith_mod_u32(arg_0, var_3) <= arg_0, false), -vec2<i32>(var_1.x, _wgslsmith_mult_i32(var_1.x, 18118i))), arg_1.x, u_input.a ^ _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(arg_0, 4294967295u, 0u)), firstTrailingBit(~u_input.a)), Struct_1(firstTrailingBit(max(_wgslsmith_sub_vec3_u32(var_2.a, vec3<u32>(u_input.a.x, var_2.a.x, u_input.a.x)), vec3<u32>(5828u, arg_0, 28614u))), var_0.wyz, abs(var_2.c)));
    return 1f;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_i32(firstTrailingBit(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_3.xx, arg_3.zy), ~arg_3.x, _wgslsmith_div_i32(arg_1, -25150i))), _wgslsmith_dot_vec2_i32(~reverseBits(_wgslsmith_mult_vec2_i32(arg_3.xy, vec2<i32>(-2147483647i, -1i))), arg_3.yx), -arg_3.x);
    let var_1 = select(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), arg_2 == _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), any(vec2<bool>(true, true))), false), !(!vec3<bool>(all(vec4<bool>(true, true, true, true)), select(false, false, true), 1296f > arg_0)), !vec3<bool>(true, all(vec2<bool>(true, true)), func_2(firstLeadingBit(arg_2)).x));
    let var_2 = Struct_2(Struct_1(~abs(~u_input.a), !select(!vec3<bool>(true, var_1.x, true), select(vec3<bool>(true, false, var_1.x), var_1, var_1.x), var_1.x), arg_3.zx), true, ~(~(~countOneBits(u_input.a))), Struct_1(countOneBits(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), var_1, vec2<i32>(1i, select(arg_1, arg_3.x, false))));
    var_0 = arg_1 ^ max(var_2.a.c.x, arg_1 & ~38837i);
    var var_3 = true;
    return Struct_3(vec4<f32>(171f, _wgslsmith_f_op_f32(-1265f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(996f)))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1076f)), false, min(min(abs(firstTrailingBit(0u)), 0u), ~_wgslsmith_mult_u32(firstTrailingBit(8193u), arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(2365f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(60263u, vec2<bool>(true, false))) * _wgslsmith_f_op_f32(sign(812f))))), 6750i >> ((u_input.a.x << (~countOneBits(93357u) % 32u)) % 32u), u_input.a.x, vec3<i32>(-1i, -23707i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-76299i, 34714i, 2147483647i, -1i), vec4<i32>(67284i, -2147483647i, 10948i, 44142i)), 1i) & 1i));
    var var_1 = all(select(func_2(var_0.c).zz, vec2<bool>(any(vec2<bool>(true, false)) | var_0.b, true), false));
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(select(countOneBits(-3519i), select(-1i, max(-19866i, -2147483647i), true), var_0.b), 2147483647i << (~(~var_0.c) % 32u)), -min(countOneBits(2147483647i), 16843i));
    var var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(20158i, var_2.x, var_2.x), var_2.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.x, var_2.x, -2328i), vec3<i32>(-1i, var_2.x, var_2.x)), -28193i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, _wgslsmith_mod_i32(var_2.x, var_2.x), var_2.x, _wgslsmith_mod_i32(var_2.x, 45994i)), ~vec4<i32>(2147483647i, var_2.x, var_2.x, var_2.x))), 1i);
    var var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.c, 10594u), ~1u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) << ((~vec3<u32>(var_0.c, var_0.c, 53583u) << (~u_input.a % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 27931u, var_0.c), u_input.a << (abs(u_input.a) % vec3<u32>(32u)), abs(u_input.a))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.x, -13231i, var_3.x, 16848i), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, var_3.x, 1i, var_3.x), vec4<i32>(1i, var_2.x, var_3.x, var_3.x))), -2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_3.x, -12886i, -1i, -2147483647i), ~(~vec4<i32>(var_3.x, -1i, -1i, var_2.x)))), _wgslsmith_mod_vec3_i32(~(-min(vec3<i32>(var_3.x, var_2.x, var_2.x), vec3<i32>(var_3.x, var_3.x, 105564i))), max(vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_3.x, var_3.x), vec3<i32>(_wgslsmith_add_i32(var_2.x, var_3.x), -83301i, max(-16657i, var_2.x)))), 0u, ~max(2147483647i, max(var_3.x, var_3.x) & (2147483647i ^ var_3.x)));
}

