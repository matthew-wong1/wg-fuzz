struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<i32>(40369i, 63108i, 34734i);
    var var_1 = !any(vec2<bool>(true, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1313f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(-723f, 1769f), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(max(816f, -650f)), all(vec2<bool>(false, true))))))));
    let var_3 = ~(abs(u_input.c) & (u_input.c & _wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-33693i, 23364i, 2147483647i, u_input.c), vec4<i32>(var_0.x, 1i, var_0.x, u_input.c)))));
    var var_4 = Struct_5(Struct_3(var_0.xz, Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.x, -743f))), _wgslsmith_clamp_vec2_i32(var_0.yz, ~vec2<i32>(u_input.a, var_0.x), ~vec2<i32>(-2147483647i, -14251i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, var_0.x), var_0.zy) << (~47820u % 32u)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)), var_3, -30921i), Struct_2(-215f, ~vec2<i32>(i32(-1i) * -9123i, ~(-71035i)), -35316i));
    return ~_wgslsmith_sub_vec4_u32(u_input.d, reverseBits(vec4<u32>(0u, ~30855u, ~4294967295u, 4294967295u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = !vec2<bool>(true, !(!arg_0.x));
    let var_1 = Struct_4(Struct_1(func_3(), 13447i, u_input.c), arg_0, vec4<u32>(u_input.d.x << (4294967295u % 32u), u_input.d.x, u_input.b, u_input.d.x), abs(u_input.d.x), -(~vec3<i32>(~arg_2.b.c, arg_2.e, u_input.c >> (0u % 32u))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(512f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, 1395f), _wgslsmith_f_op_f32(f32(-1f) * -563f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-398f - 644f), _wgslsmith_f_op_f32(trunc(2096f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(903f, -1970f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(arg_1, arg_2.b.a))) == -576f)));
    var var_3 = ~1i;
    let var_4 = Struct_1(vec4<u32>(~0u, 1u, 4294967295u, 6714u), ~39656i, ~2147483647i | (var_1.e.x >> (firstTrailingBit(4294967295u) % 32u)));
    return arg_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_5(Struct_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.a, ~(-54502i)), max(vec2<i32>(arg_0.c, arg_0.b.x), vec2<i32>(u_input.c, u_input.a)), vec2<i32>(-1i) * -arg_0.b), arg_0, _wgslsmith_f_op_f32(-arg_3.x), 0i, -58192i), func_2(select(select(select(vec3<bool>(arg_2.x, arg_2.x, false), arg_2.zxx, arg_1), select(vec3<bool>(true, false, true), vec3<bool>(true, arg_1.x, arg_2.x), arg_2.zyy), true), arg_2.zyw, true), 120f, Struct_3(vec2<i32>(-u_input.a, _wgslsmith_div_i32(u_input.c, 1i)), arg_0, _wgslsmith_f_op_f32(1441f * _wgslsmith_f_op_f32(-arg_0.a)), -34084i, ~2147483647i)));
    let var_1 = -42119i;
    var var_2 = vec4<bool>(all(arg_2), !arg_1.x, all(select(vec3<bool>(false, all(vec3<bool>(arg_2.x, false, true)), arg_0.a <= var_0.b.a), arg_1, !arg_1)), all(vec3<bool>(arg_2.x & (1i != var_0.b.b.x), any(arg_1), false)));
    let var_3 = _wgslsmith_mod_u32(~u_input.d.x, 0u);
    let var_4 = ~u_input.d.xw;
    return ~0u;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_5(Struct_3(~arg_0.e.yz, func_2(!arg_0.b, 1001f, Struct_3(firstTrailingBit(arg_0.e.zz), func_2(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), -894f, Struct_3(vec2<i32>(-1i, -35214i), Struct_2(311f, arg_0.e.xz, -2147483647i), 1000f, 0i, 54712i)), _wgslsmith_div_f32(1412f, 583f), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -13869i, arg_1.b, 50214i), vec4<i32>(39084i, 2147483647i, 1613i, -3453i)))), -869f, (select(1i, -47873i, false) << (arg_1.a.x % 32u)) ^ arg_2, _wgslsmith_dot_vec2_i32(countOneBits(func_2(arg_0.b, 234f, Struct_3(vec2<i32>(arg_1.b, arg_1.b), Struct_2(1673f, vec2<i32>(arg_1.b, -17149i), arg_1.c), 915f, 2147483647i, 1i)).b), arg_0.e.yx & firstLeadingBit(arg_0.e.zy))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(func_2(arg_0.b, 624f, Struct_3(arg_0.e.xx, Struct_2(1895f, arg_0.e.yy, -56647i), 766f, arg_1.c, arg_1.b)).a, 1592f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0.e.xz, i32(-1i) * -(~arg_2)));
    var_0 = Struct_5(Struct_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2 & -2147483647i, arg_2), abs(vec2<i32>(arg_0.a.c, -1i)), vec2<i32>(61831i | arg_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(12795i, -38328i, 34402i, u_input.c), vec4<i32>(arg_0.e.x, arg_2, 81391i, arg_0.a.c)))), func_2(select(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), !arg_0.b, vec3<bool>(arg_0.b.x, arg_0.b.x, true)), -1041f, var_0.a), _wgslsmith_f_op_f32(ceil(-744f)), func_2(!vec3<bool>(true, false, arg_0.b.x), -625f, var_0.a).c, min(var_0.a.e, 30894i)), var_0.b);
    var var_1 = vec4<bool>(all(select(vec4<bool>(any(vec4<bool>(arg_0.b.x, false, true, true)), 0u < arg_3, true, !arg_0.b.x), vec4<bool>(arg_0.b.x, any(arg_0.b.yx), true, any(vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x))), arg_0.b.x)), !select(!arg_0.b.x, true, arg_0.b.x), false, true);
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1021f, var_0.a.b.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(657f, -468f), vec2<f32>(var_0.b.a, 186f), var_1.x)), true)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-579f, 961f)))))));
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(arg_0.c << (reverseBits(select(arg_1.a, arg_0.a.a, true)) % vec4<u32>(32u)), ~(~_wgslsmith_clamp_vec4_u32(arg_0.c, vec4<u32>(0u, arg_3, 22504u, 35327u), vec4<u32>(u_input.b, 1u, u_input.d.x, arg_0.c.x))), vec4<u32>(4949u, arg_0.d, 73400u, ~arg_0.d) & countOneBits(vec4<u32>(2767u, arg_0.a.a.x, 2846u, arg_3))), ~_wgslsmith_div_i32(1i, -2147483647i), ~_wgslsmith_add_i32(firstTrailingBit(arg_1.b), 1i));
    return arg_0;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: Struct_5) -> Struct_3 {
    let var_0 = Struct_1(max(~vec4<u32>(arg_1.a.a.x, 4294967295u, 0u, u_input.b), max(vec4<u32>(arg_1.d, 0u, 12624u, 0u), abs(u_input.d)) ^ func_5(Struct_4(arg_1.a, arg_1.b, u_input.d, u_input.b, arg_1.e), arg_1.a, -34514i, 0u).a.a), arg_0.a.d, 2147483647i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1035f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.a))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(831f))))), 1000f));
    return Struct_3(select(arg_1.e.yy, arg_1.e.xx, arg_1.b.x), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -398f), 173f)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -2147483647i), _wgslsmith_mod_vec2_i32(arg_1.e.zz, vec2<i32>(arg_3.a.b.b.x, u_input.a))), _wgslsmith_dot_vec3_i32(func_5(Struct_4(Struct_1(u_input.d, 8406i, arg_2.x), arg_1.b, vec4<u32>(35542u, 10389u, 4294967295u, var_0.a.x), arg_1.d, vec3<i32>(0i, 47287i, -1i)), Struct_1(vec4<u32>(33908u, 0u, 1u, 125598u), arg_0.a.a.x, 1i), arg_2.x, 1u).e, arg_2)), arg_3.a.b.a, 0i, -u_input.c);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = u_input.d.wy;
    var var_1 = func_6(Struct_5(Struct_3(vec2<i32>(select(u_input.c, -20006i, true), i32(-1i) * -2147483647i), Struct_2(_wgslsmith_div_f32(arg_0.x, 308f), vec2<i32>(arg_1.b, u_input.c), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x), max(arg_1.c, countOneBits(2147483647i)), arg_1.c), Struct_2(_wgslsmith_f_op_f32(-1544f + -1000f), ~vec2<i32>(22952i, 2147483647i) ^ -vec2<i32>(arg_1.b, arg_1.b), arg_1.c)), func_5(Struct_4(arg_1, vec3<bool>(true, true, true), arg_3, func_4(func_2(vec3<bool>(true, false, true), arg_0.x, Struct_3(vec2<i32>(-1i, u_input.a), Struct_2(arg_0.x, vec2<i32>(2147483647i, 0i), 2147483647i), arg_0.x, arg_1.c, u_input.a)), vec3<bool>(false, true, false), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-581f, 793f, arg_0.x, arg_0.x)))), -min(vec3<i32>(u_input.c, 0i, arg_1.b), vec3<i32>(-55271i, arg_1.b, u_input.a))), Struct_1(vec4<u32>(arg_3.x, arg_2.x, 64637u, arg_2.x) & arg_3, _wgslsmith_div_i32(1i, i32(-1i) * -2147483647i), _wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(2147483647i, 24976i))), u_input.c, 25277u), ~select(select(firstLeadingBit(vec3<i32>(arg_1.c, -3460i, u_input.a)), countOneBits(vec3<i32>(12865i, arg_1.c, u_input.c)), true), abs(vec3<i32>(u_input.a, 1i, 0i)), ~u_input.a < u_input.c), Struct_5(Struct_3(~(vec2<i32>(-1i, -3838i) ^ vec2<i32>(u_input.c, -1i)), Struct_2(_wgslsmith_f_op_f32(-arg_0.x), ~vec2<i32>(2147483647i, -45868i), -arg_1.b), -370f, u_input.c, u_input.a), func_2(vec3<bool>(true, true, true), -719f, Struct_3(firstLeadingBit(vec2<i32>(0i, 4977i)), func_2(vec3<bool>(false, false, true), arg_0.x, Struct_3(vec2<i32>(arg_1.c, arg_1.b), Struct_2(arg_0.x, vec2<i32>(2147483647i, 1i), 39868i), arg_0.x, -1i, 34655i)), _wgslsmith_f_op_f32(632f + arg_0.x), u_input.c, -arg_1.c))));
    let var_2 = func_6(Struct_5(func_6(Struct_5(Struct_3(var_1.b.b, Struct_2(-916f, vec2<i32>(-2147483647i, -2147483647i), 49320i), arg_0.x, u_input.a, 0i), var_1.b), Struct_4(arg_1, vec3<bool>(false, false, true), u_input.d, func_5(Struct_4(Struct_1(vec4<u32>(arg_3.x, 20231u, u_input.d.x, arg_3.x), var_1.d, u_input.a), vec3<bool>(false, true, false), vec4<u32>(arg_3.x, arg_3.x, arg_2.x, 26529u), u_input.d.x, vec3<i32>(-2147483647i, var_1.d, 19655i)), arg_1, -1i, 4294967295u).a.a.x, vec3<i32>(35256i, arg_1.c, 16199i)), ~vec3<i32>(-1i, 37315i, 82584i) & vec3<i32>(-36824i, 23123i, u_input.c), Struct_5(func_6(Struct_5(Struct_3(vec2<i32>(-5379i, -1i), Struct_2(-703f, var_1.b.b, -1i), 1245f, 23189i, var_1.a.x), Struct_2(arg_0.x, vec2<i32>(8120i, arg_1.b), arg_1.b)), Struct_4(arg_1, vec3<bool>(false, true, false), vec4<u32>(u_input.d.x, arg_2.x, 74990u, 24912u), arg_3.x, vec3<i32>(15825i, 1i, 45188i)), vec3<i32>(u_input.a, var_1.b.b.x, u_input.a), Struct_5(Struct_3(var_1.a, Struct_2(var_1.c, vec2<i32>(21198i, -2147483647i), -35300i), 657f, 2147483647i, 20848i), Struct_2(arg_0.x, vec2<i32>(arg_1.b, u_input.c), u_input.c))), func_6(Struct_5(Struct_3(var_1.b.b, var_1.b, arg_0.x, var_1.b.c, 4546i), var_1.b), Struct_4(arg_1, vec3<bool>(false, true, true), arg_1.a, arg_3.x, vec3<i32>(-1i, u_input.c, var_1.b.c)), vec3<i32>(u_input.a, -23465i, arg_1.c), Struct_5(Struct_3(var_1.b.b, var_1.b, 155f, u_input.c, -3164i), Struct_2(arg_0.x, vec2<i32>(28850i, 0i), arg_1.b))).b)), Struct_2(arg_0.x, func_2(func_5(Struct_4(Struct_1(vec4<u32>(arg_2.x, arg_3.x, 70741u, arg_1.a.x), 19059i, 0i), vec3<bool>(true, false, false), vec4<u32>(60917u, 0u, arg_1.a.x, 1u), arg_1.a.x, vec3<i32>(u_input.c, arg_1.b, u_input.a)), Struct_1(u_input.d, arg_1.b, u_input.c), arg_1.b, 4294967295u).b, func_6(Struct_5(Struct_3(vec2<i32>(arg_1.b, 7437i), var_1.b, -1553f, 21373i, -6343i), Struct_2(-446f, vec2<i32>(u_input.c, var_1.d), arg_1.c)), Struct_4(Struct_1(u_input.d, arg_1.c, arg_1.c), vec3<bool>(false, true, false), u_input.d, 1u, vec3<i32>(u_input.a, arg_1.b, -2147483647i)), vec3<i32>(var_1.a.x, arg_1.b, 0i), Struct_5(Struct_3(vec2<i32>(-1i, 0i), var_1.b, arg_0.x, u_input.c, -2147483647i), var_1.b)).b.a, func_6(Struct_5(Struct_3(vec2<i32>(u_input.a, 1i), Struct_2(1168f, vec2<i32>(var_1.b.b.x, arg_1.b), var_1.b.c), arg_0.x, u_input.c, arg_1.c), var_1.b), Struct_4(Struct_1(u_input.d, arg_1.c, arg_1.b), vec3<bool>(false, true, true), vec4<u32>(64383u, 1u, arg_1.a.x, 30180u), 0u, vec3<i32>(-1i, var_1.a.x, 2147483647i)), vec3<i32>(var_1.b.b.x, -21797i, -2147483647i), Struct_5(Struct_3(var_1.a, var_1.b, arg_0.x, var_1.d, 2059i), Struct_2(var_1.c, vec2<i32>(-23095i, u_input.c), u_input.a)))).b, ~abs(var_1.e))), func_5(func_5(func_5(func_5(Struct_4(Struct_1(arg_3, -26521i, -1i), vec3<bool>(true, false, false), vec4<u32>(0u, 1u, arg_1.a.x, arg_3.x), 0u, vec3<i32>(43328i, -1i, var_1.a.x)), Struct_1(vec4<u32>(arg_3.x, 4294967295u, var_0.x, u_input.b), arg_1.b, u_input.c), 0i, arg_3.x), arg_1, ~arg_1.b, 1u), func_5(func_5(Struct_4(arg_1, vec3<bool>(true, true, true), u_input.d, u_input.b, vec3<i32>(var_1.e, -71457i, u_input.a)), arg_1, arg_1.b, 32794u), arg_1, ~17224i, max(4294967295u, arg_2.x)).a, ~_wgslsmith_add_i32(-1i, u_input.a), 30560u), func_5(func_5(Struct_4(Struct_1(u_input.d, 0i, 13893i), vec3<bool>(false, false, true), vec4<u32>(u_input.b, arg_1.a.x, arg_2.x, arg_2.x), 4294967295u, vec3<i32>(u_input.a, u_input.a, arg_1.b)), arg_1, -u_input.c, arg_3.x), func_5(Struct_4(Struct_1(vec4<u32>(var_0.x, 1u, arg_3.x, var_0.x), var_1.d, arg_1.c), vec3<bool>(true, false, false), vec4<u32>(u_input.d.x, arg_1.a.x, 1u, 63725u), 4294967295u, vec3<i32>(59695i, 0i, 38555i)), func_5(Struct_4(Struct_1(vec4<u32>(var_0.x, arg_1.a.x, 53106u, arg_3.x), arg_1.c, -2147483647i), vec3<bool>(false, false, true), u_input.d, 20510u, vec3<i32>(9362i, u_input.a, u_input.c)), arg_1, var_1.d, 0u).a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(u_input.a, 14714i, -1i)), ~arg_3.x).a, _wgslsmith_add_i32(arg_1.b, 2147483647i), 4294967295u).a, -1i, 40900u), vec3<i32>(-13605i, ~(-1i), 37887i), Struct_5(func_6(Struct_5(Struct_3(var_1.a, var_1.b, -1872f, arg_1.c, arg_1.b), Struct_2(arg_0.x, var_1.b.b, 0i)), Struct_4(func_5(Struct_4(Struct_1(arg_3, -40878i, arg_1.b), vec3<bool>(true, false, true), arg_3, 66861u, vec3<i32>(arg_1.b, -2147483647i, u_input.a)), Struct_1(vec4<u32>(u_input.d.x, 0u, arg_2.x, var_0.x), -69282i, 37720i), 1i, 17329u).a, vec3<bool>(true, true, true), arg_1.a, arg_2.x, _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -2147483647i, arg_1.c), vec3<i32>(-2147483647i, -2147483647i, -1i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.c, var_1.a.x, -14996i), vec3<i32>(-1i, u_input.c, arg_1.c)), Struct_5(Struct_3(var_1.b.b, Struct_2(arg_0.x, vec2<i32>(arg_1.c, arg_1.c), -2899i), arg_0.x, arg_1.c, u_input.a), Struct_2(arg_0.x, var_1.a, -8590i))), var_1.b));
    let var_3 = vec2<u32>(~arg_1.a.x, ~arg_1.a.x);
    let var_4 = _wgslsmith_f_op_f32(trunc(-568f));
    return var_1.b;
}

fn func_7(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2397f * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1482f * -1898f)), func_6(Struct_5(Struct_3(vec2<i32>(2147483647i, arg_2.c), arg_2, 469f, arg_2.c, u_input.a), arg_2), Struct_4(func_5(Struct_4(Struct_1(vec4<u32>(10855u, 4294967295u, 4294967295u, 4294967295u), 0i, 1i), arg_0, u_input.d, arg_1.x, vec3<i32>(arg_2.b.x, -8900i, -2147483647i)), Struct_1(vec4<u32>(24928u, 1u, 1u, 19895u), u_input.c, -39560i), -1i, 4294967295u).a, vec3<bool>(arg_0.x, true, false), select(vec4<u32>(u_input.d.x, 1099u, 3468u, 4294967295u), vec4<u32>(65829u, 1u, u_input.b, 0u), true), _wgslsmith_dot_vec2_u32(vec2<u32>(34501u, 49736u), arg_1), min(vec3<i32>(-2147483647i, u_input.c, arg_2.c), vec3<i32>(0i, -1i, 37292i))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-30737i, arg_2.b.x, arg_2.c), vec3<i32>(arg_2.b.x, 0i, -35232i), vec3<i32>(arg_2.c, 1i, u_input.a)), min(vec3<i32>(-16384i, -1i, u_input.c), vec3<i32>(arg_2.c, u_input.a, u_input.c))), Struct_5(func_6(Struct_5(Struct_3(vec2<i32>(u_input.c, u_input.a), arg_2, arg_2.a, 61078i, arg_2.c), arg_2), Struct_4(Struct_1(u_input.d, 2147483647i, -23627i), vec3<bool>(true, arg_0.x, arg_0.x), vec4<u32>(0u, 1u, arg_1.x, u_input.d.x), 2283u, vec3<i32>(arg_2.c, u_input.a, 1i)), vec3<i32>(u_input.c, u_input.c, -1i), Struct_5(Struct_3(vec2<i32>(21152i, 4594i), arg_2, -2247f, -2147483647i, u_input.c), arg_2)), Struct_2(arg_2.a, arg_2.b, 15050i))).c, 1f));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, arg_2.a, arg_2.a, 423f), vec4<f32>(arg_2.a, 957f, -528f, arg_2.a)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 1015f, 105f, -304f))) - _wgslsmith_f_op_vec4_f32(var_1 + vec4<f32>(var_0.x, arg_2.a, 642f, 282f)))), var_1) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(161f, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-1000f + 1174f), arg_2.a), vec4<f32>(var_0.x, var_1.x, 1300f, _wgslsmith_f_op_f32(trunc(var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(var_1)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_1 * var_1))))) - var_1);
    let var_2 = func_6(Struct_5(Struct_3(vec2<i32>(-arg_2.b.x, -u_input.a), func_2(vec3<bool>(true, true, true), 526f, Struct_3(vec2<i32>(u_input.a, arg_2.b.x), arg_2, 1000f, 0i, -2147483647i)), _wgslsmith_div_f32(-863f, _wgslsmith_f_op_f32(arg_2.a * var_0.x)), 2147483647i, firstLeadingBit(0i) << (countOneBits(41411u) % 32u)), func_2(select(arg_0, vec3<bool>(arg_0.x, true, true), !arg_0), -624f, func_6(Struct_5(Struct_3(arg_2.b, arg_2, 2273f, arg_2.c, u_input.a), arg_2), Struct_4(Struct_1(u_input.d, arg_2.b.x, 0i), vec3<bool>(arg_0.x, arg_0.x, false), vec4<u32>(u_input.d.x, arg_1.x, 4183u, 813u), 10626u, vec3<i32>(-1i, 34052i, arg_2.b.x)), -vec3<i32>(arg_2.c, 25055i, -2676i), Struct_5(Struct_3(arg_2.b, arg_2, var_1.x, 2147483647i, -23561i), Struct_2(-171f, vec2<i32>(arg_2.c, arg_2.c), -58791i))))), func_5(func_5(Struct_4(Struct_1(u_input.d, arg_2.b.x, 0i), vec3<bool>(true, true, true), ~u_input.d, ~u_input.d.x, select(vec3<i32>(u_input.a, u_input.a, arg_2.b.x), vec3<i32>(u_input.c, 72456i, 27499i), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), Struct_1(u_input.d, 2147483647i, u_input.a), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.x, 1i, u_input.a, 1i), vec4<i32>(u_input.a, 2147483647i, -1293i, u_input.c)), 18494u), Struct_1(~abs(vec4<u32>(11272u, 4294967295u, 31426u, arg_1.x)), -2147483647i, _wgslsmith_add_i32(countOneBits(arg_2.c), arg_2.b.x)), u_input.a, _wgslsmith_div_u32(~0u, min(~arg_1.x, arg_1.x))), vec3<i32>(-_wgslsmith_div_i32(1i, -1i), arg_2.b.x, -func_2(vec3<bool>(arg_0.x, true, true), -1364f, Struct_3(arg_2.b, arg_2, var_0.x, u_input.c, arg_2.b.x)).b.x) & firstTrailingBit(-vec3<i32>(arg_2.b.x, 32089i, 44376i)), Struct_5(func_6(Struct_5(Struct_3(arg_2.b, Struct_2(-1600f, vec2<i32>(2147483647i, u_input.c), arg_2.c), 387f, -2147483647i, u_input.c), func_2(arg_0, -863f, Struct_3(vec2<i32>(arg_2.b.x, arg_2.b.x), Struct_2(140f, arg_2.b, 7570i), -759f, u_input.a, u_input.a))), func_5(Struct_4(Struct_1(vec4<u32>(arg_1.x, 17534u, 65164u, u_input.d.x), arg_2.b.x, 37571i), vec3<bool>(arg_0.x, false, false), vec4<u32>(19819u, arg_1.x, 47251u, 132202u), u_input.d.x, vec3<i32>(21336i, u_input.a, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 1u, u_input.d.x, arg_1.x), u_input.a, 55949i), countOneBits(-3195i), _wgslsmith_mod_u32(u_input.b, arg_1.x)), -vec3<i32>(2147483647i, u_input.a, 0i) | select(vec3<i32>(arg_2.b.x, arg_2.b.x, -4480i), vec3<i32>(arg_2.b.x, 2147483647i, u_input.c), arg_0), Struct_5(func_6(Struct_5(Struct_3(arg_2.b, arg_2, -756f, arg_2.c, -2147483647i), Struct_2(arg_2.a, vec2<i32>(arg_2.c, -41106i), 0i)), Struct_4(Struct_1(u_input.d, u_input.a, 29636i), arg_0, u_input.d, 1u, vec3<i32>(u_input.c, 38642i, arg_2.c)), vec3<i32>(2147483647i, -2049i, 26614i), Struct_5(Struct_3(vec2<i32>(u_input.c, -8596i), arg_2, 1037f, u_input.a, arg_2.c), arg_2)), Struct_2(var_0.x, vec2<i32>(u_input.a, 1i), arg_2.b.x))), Struct_2(500f, _wgslsmith_mult_vec2_i32(max(vec2<i32>(0i, arg_2.b.x), vec2<i32>(-59784i, u_input.a)), _wgslsmith_mult_vec2_i32(arg_2.b, arg_2.b)), u_input.a))).b;
    return func_6(Struct_5(Struct_3(max(vec2<i32>(-8984i, arg_2.c), vec2<i32>(0i, u_input.c)) << (~arg_1 % vec2<u32>(32u)), var_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, var_2.a)), 9679i, _wgslsmith_mult_i32(firstLeadingBit(arg_2.b.x), -7826i)), func_1(_wgslsmith_f_op_vec3_f32(floor(var_1.xxy)), func_5(Struct_4(Struct_1(u_input.d, 0i, arg_2.c), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), u_input.d, arg_1.x, vec3<i32>(arg_2.c, -2147483647i, var_2.c)), Struct_1(u_input.d, -1i, var_2.c), func_5(Struct_4(Struct_1(vec4<u32>(4188u, 39954u, 3331u, arg_1.x), -1i, 1i), arg_0, u_input.d, 1u, vec3<i32>(u_input.a, 10988i, u_input.a)), Struct_1(u_input.d, 16879i, u_input.c), -44676i, 71379u).e.x, 6240u >> (u_input.b % 32u)).a, max(vec3<u32>(14748u, u_input.b, 78352u), vec3<u32>(arg_1.x, 17375u, 29027u)) >> (_wgslsmith_clamp_vec3_u32(u_input.d.zwx, u_input.d.zxz, vec3<u32>(u_input.d.x, arg_1.x, 0u)) % vec3<u32>(32u)), vec4<u32>(~arg_1.x, ~29587u, ~8886u, ~arg_1.x))), func_5(Struct_4(Struct_1(u_input.d ^ vec4<u32>(47421u, arg_1.x, 0u, 1u), arg_2.c, -52960i), arg_0, ~(~u_input.d), 0u & max(arg_1.x, 1u), min(vec3<i32>(var_2.c, 7167i, 30368i), vec3<i32>(0i, -2147483647i, -82039i))), func_5(Struct_4(func_5(Struct_4(Struct_1(vec4<u32>(31420u, 0u, 89776u, 1u), 26640i, arg_2.c), arg_0, vec4<u32>(37488u, u_input.b, 38285u, u_input.b), 31047u, vec3<i32>(arg_2.c, arg_2.b.x, 1i)), Struct_1(vec4<u32>(arg_1.x, u_input.b, arg_1.x, arg_1.x), u_input.c, 1i), 17093i, 28791u).a, select(arg_0, arg_0, arg_0.x), ~vec4<u32>(1u, 0u, 1u, 72429u), u_input.b, vec3<i32>(u_input.c, var_2.b.x, 2673i)), func_5(func_5(Struct_4(Struct_1(vec4<u32>(arg_1.x, 22073u, arg_1.x, 4294967295u), -38925i, var_2.b.x), arg_0, vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 22684u), 4294967295u, vec3<i32>(arg_2.b.x, var_2.c, u_input.a)), Struct_1(vec4<u32>(15491u, arg_1.x, arg_1.x, u_input.b), var_2.b.x, -4295i), u_input.c, 7862u), Struct_1(vec4<u32>(15195u, 88225u, arg_1.x, 15268u), -11798i, -1i), ~var_2.c, arg_1.x).a, firstLeadingBit(firstTrailingBit(var_2.c)), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, arg_1.x))).a, max(min(1i, 67331i), 29599i), reverseBits(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(arg_1.x, 0u)))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, -242i), vec3<i32>(0i, u_input.a, u_input.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.x, 2147483647i, 18688i), vec3<i32>(43582i, arg_2.c, arg_2.c))), -vec3<i32>(-1i, -2147483647i, u_input.a) >> (~u_input.d.wzy % vec3<u32>(32u))) ^ firstTrailingBit(reverseBits(max(vec3<i32>(arg_2.b.x, u_input.c, 1i), vec3<i32>(arg_2.b.x, 15534i, u_input.a)))), Struct_5(Struct_3(var_2.b, func_1(_wgslsmith_div_vec3_f32(var_1.wwx, var_1.xwy), Struct_1(u_input.d, var_2.c, var_2.b.x), _wgslsmith_mod_vec3_u32(u_input.d.xwy, vec3<u32>(arg_1.x, arg_1.x, 4294967295u)), vec4<u32>(1u, arg_1.x, 4294967295u, 4294967295u)), 200f, arg_2.c, arg_2.b.x), Struct_2(1005f, vec2<i32>(~(-2147483647i), -u_input.c), 0i)));
}

fn func_8(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_2.a.x, 2147483647i), -24769i) & _wgslsmith_div_i32(0i, arg_2.d), arg_2.d, ~arg_3.c, ~u_input.c >> (1u % 32u)) >> (abs(min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, u_input.d.x, 0u, arg_1), u_input.d >> (u_input.d % vec4<u32>(32u))), ~vec4<u32>(arg_1, u_input.b, u_input.d.x, arg_1))) % vec4<u32>(32u));
    var_0 = -countOneBits(vec4<i32>(_wgslsmith_clamp_i32(var_0.x, arg_0.x, -1i), -arg_2.d, -8139i, abs(51521i)) << (abs(vec4<u32>(arg_1, arg_1, 29475u, 4294967295u)) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(u_input.d, select(~u_input.d, u_input.d, select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(false, false, false, true)))), select(21448i, -var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1041f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1562f * arg_3.a) + _wgslsmith_f_op_f32(round(168f)))), _wgslsmith_add_i32(-15378i, u_input.c));
    var var_2 = true;
    var var_3 = -(~(~(-73883i)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 32641u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_8(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-46355i, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, -21442i, -46783i, u_input.a)), _wgslsmith_div_i32(u_input.c, u_input.a), u_input.c << (41635u % 32u)), reverseBits(~1u), func_7(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), u_input.d.yz, func_1(vec3<f32>(-925f, 1151f, 1624f), Struct_1(vec4<u32>(21225u, u_input.d.x, 0u, 1u), 46943i, u_input.c), vec3<u32>(var_0, 9110u, 0u), u_input.d)), func_1(vec3<f32>(1517f, 520f, 376f), func_5(Struct_4(Struct_1(vec4<u32>(u_input.d.x, var_0, 1u, 32163u), u_input.c, u_input.c), vec3<bool>(true, true, false), u_input.d, u_input.b, vec3<i32>(-1i, u_input.a, 2147483647i)), Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, var_0), u_input.a, u_input.c), u_input.a, 12117u).a, u_input.d.zzw, _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, var_0, u_input.b, var_0)))))), min(-abs(vec2<i32>(u_input.c, 12294i)) >> (u_input.d.zw % vec2<u32>(32u)), ~_wgslsmith_div_vec2_i32(vec2<i32>(9650i, u_input.c), vec2<i32>(-2147483647i, u_input.a)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_0), _wgslsmith_clamp_vec2_u32(u_input.d.wy, vec2<u32>(u_input.b, 4572u), u_input.d.xy)) % vec2<u32>(32u))), (i32(-1i) * -2888i) & ~(-func_7(vec3<bool>(false, true, true), u_input.d.yw, Struct_2(-122f, vec2<i32>(-1i, -1i), -1i)).e));
    let x = u_input.a;
    s_output = StorageBuffer(1838f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, var_1.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-314f, var_1.a))), select(vec2<bool>(false, true), vec2<bool>(false, false), true))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a, -2613f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-646f)), _wgslsmith_f_op_f32(floor(1692f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-398f, var_1.a), vec2<f32>(-537f, -840f))))))));
}

