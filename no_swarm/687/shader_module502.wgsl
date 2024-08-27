struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> bool {
    var var_0 = abs(_wgslsmith_sub_vec2_u32(~(~select(vec2<u32>(37397u, 1u), vec2<u32>(4294967295u, 0u), false)), ~(~vec2<u32>(36892u, 10666u))));
    var var_1 = select(~(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)) ^ vec2<i32>(-22393i, u_input.a)) ^ _wgslsmith_mult_vec2_i32(reverseBits(~vec2<i32>(-2147483647i, u_input.a)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-26541i, u_input.a), vec2<i32>(-2147483647i, u_input.a))), -((-vec2<i32>(-2147483647i, 2147483647i) >> (select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x), true) % vec2<u32>(32u))) & vec2<i32>(2147483647i, _wgslsmith_mod_i32(1i, u_input.a))), !all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))));
    var var_2 = vec3<f32>(1f, 1f, 1f);
    var var_3 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, true), (u_input.a > -28170i) || true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), true), vec2<bool>(true, all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))), vec2<bool>(!(!any(vec2<bool>(true, false))), any(vec4<bool>(true, true, true, true)) == any(vec4<bool>(true, true, true, true))));
    var var_4 = !vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(var_3.x, var_3.x), true)), !var_3.x, select(true, true, false), true && ((var_2.x == var_2.x) || all(vec3<bool>(false, true, var_3.x))));
    return var_4.x;
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = select(vec4<bool>(select(!arg_0.a, true, arg_0.a), func_3() | arg_0.b.b, all(select(vec4<bool>(arg_0.b.b, arg_0.b.b, true, false), vec4<bool>(arg_0.c.b, arg_0.c.b, true, arg_0.a), arg_0.c.b)), func_3()), !vec4<bool>(all(vec2<bool>(false, false)), arg_0.c.c != 413f, ~(-1i) != ~u_input.a, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-244f)))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-972f, _wgslsmith_f_op_f32(1000f - arg_0.b.a.x), arg_0.c.b)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1206f * 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-747f, arg_0.c.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1653f)))));
    var var_1 = arg_0.d;
    var var_2 = 154990u;
    var_2 = 74768u;
    return 405f;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: u32, arg_3: f32) -> bool {
    var var_0 = arg_0.yww;
    var var_1 = 1i;
    var var_2 = vec2<i32>(~_wgslsmith_mod_i32(min(2147483647i, -2147483647i), i32(-1i) * -19336i), u_input.a);
    global0 = _wgslsmith_f_op_f32(func_4(Struct_2(!(arg_1 < ~arg_2), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(633f)), _wgslsmith_f_op_f32(-1800f + arg_3)), func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - -332f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1270f, 549f))), all(vec3<bool>(true, arg_0.x, false)), 149f), 48413u)));
    var var_3 = min(min(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -16775i, -5324i), vec4<i32>(u_input.a, -17769i, u_input.a, -19813i))), -reverseBits(vec4<i32>(var_2.x, -37713i, -66323i, u_input.a)) >> (~abs(vec4<u32>(0u, arg_2, 4294967295u, arg_2)) % vec4<u32>(32u))), countOneBits(vec4<i32>(i32(-1i) * -2147483647i, ~_wgslsmith_clamp_i32(-2147483647i, var_2.x, -34662i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(29648i, var_2.x), -var_2.x), reverseBits(-u_input.a))));
    return select(!(!((arg_2 ^ 0u) >= reverseBits(4294967295u))), arg_0.x, true);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-901f)), 188f)), true | (func_2(vec4<bool>(false, true, true, true), select(arg_0, arg_0, false), _wgslsmith_clamp_u32(0u, arg_0, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -154f)) != select(select(true, true, true), select(false, false, false), 53182u < arg_0)), 1534f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(var_0.a)), all(vec4<bool>(true, !var_0.b, any(vec4<bool>(false, var_0.b, var_0.b, var_0.b)) & (false | var_0.b), !any(vec2<bool>(false, var_0.b)))), 793f);
    var var_2 = select(min(select(vec3<u32>(119709u, 26253u, arg_0), vec3<u32>(28900u, 82744u, arg_0) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u)), false) << ((select(vec3<u32>(26802u, 1u, 0u), vec3<u32>(1u, arg_0, arg_0), true) >> (~vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_div_u32(arg_0, arg_0), 71095u, countOneBits(4294967295u))), _wgslsmith_mod_vec3_u32(select(~vec3<u32>(0u, 22511u, 0u), ~vec3<u32>(arg_0, arg_0, 1u), vec3<bool>(var_0.b, false, false)) & (vec3<u32>(0u, arg_0, arg_0) << (firstTrailingBit(vec3<u32>(60639u, 5346u, 0u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(arg_0, arg_0, arg_0)), ~select(vec3<u32>(52763u, arg_0, 28608u), vec3<u32>(arg_0, arg_0, 46382u), vec3<bool>(var_0.b, var_0.b, var_0.b)))), !func_3());
    let var_3 = -13297i;
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(false, Struct_1(vec2<f32>(var_1.c, var_1.a.x), var_0.b, -813f), Struct_1(vec2<f32>(1067f, var_0.c), var_0.b, var_0.a.x), arg_0))), var_0.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(-var_0.c))))) <= var_0.a.x, _wgslsmith_f_op_f32(-609f + _wgslsmith_f_op_f32(floor(282f))));
    return Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c), var_1.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(862f + -1165f))))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_1.c)))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(firstTrailingBit(-19579i & u_input.a), u_input.a), u_input.a), min(u_input.a, _wgslsmith_mod_i32(u_input.a & reverseBits(u_input.a), _wgslsmith_clamp_i32(0i, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a), vec3<i32>(u_input.a, -2284i, u_input.a))))));
    var var_1 = Struct_2(arg_0.b, arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-336f, -123f))), true, func_1(4294967295u).a.x), ~0u);
    var var_2 = Struct_2(true, func_1(~firstLeadingBit(_wgslsmith_sub_u32(101744u, 50627u))), var_1.b, _wgslsmith_dot_vec3_u32(~firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_1.d, var_1.d), vec3<u32>(var_1.d, var_1.d, 43637u), vec3<u32>(1731u, var_1.d, 4294967295u))), max(~vec3<u32>(0u, var_1.d, var_1.d) ^ ~vec3<u32>(94774u, var_1.d, 4294967295u), vec3<u32>(133u, var_1.d, 22589u))));
    let var_3 = ~countOneBits(~_wgslsmith_mult_u32(var_1.d, ~var_1.d));
    let var_4 = Struct_1(_wgslsmith_div_vec2_f32(arg_0.a, _wgslsmith_f_op_vec2_f32(var_2.b.a * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 220f) - var_1.b.a) - _wgslsmith_f_op_vec2_f32(select(var_1.c.a, var_1.c.a, vec2<bool>(var_1.b.b, false)))))), all(!vec3<bool>(true, var_2.d != var_2.d, !var_2.c.b)), var_1.c.c);
    return func_1((38586u << (abs(var_2.d) % 32u)) ^ var_3);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global0 = arg_2.c.a.x;
    var var_0 = Struct_1(arg_1.c.a, all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.c + 1804f)), _wgslsmith_f_op_f32(-354f * arg_2.c.c)))));
    var_0 = func_1((~_wgslsmith_mod_u32(arg_1.d, 45954u) << ((arg_3 & arg_3) % 32u)) << (4294967295u % 32u));
    return Struct_2(true, func_1(arg_1.d >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.d, arg_2.d, arg_2.d, 4294967295u)), vec4<u32>(7102u, arg_2.d, 57562u, arg_1.d)) % 32u)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(621f, arg_2.b.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1503f * arg_2.b.a.x), _wgslsmith_f_op_f32(-arg_1.c.c))), !arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.b.c)))), arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(-u_input.a, Struct_2(-u_input.a == 1i, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1743f, 1893f)), false, _wgslsmith_div_f32(-991f, -992f)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(469f, -1560f), vec2<f32>(-907f, -1000f), vec2<bool>(true, true))), true, -296f), ~1u), Struct_2(true, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-489f, -624f) + vec2<f32>(444f, 638f)), true, _wgslsmith_f_op_f32(-552f - -249f)), func_5(func_1(1u)), 4294967295u), ~(~firstLeadingBit(1u))), 4294967295u, max(reverseBits(_wgslsmith_div_vec3_i32(-vec3<i32>(-15439i, -26376i, u_input.a), vec3<i32>(-1i, u_input.a, -90140i) & vec3<i32>(u_input.a, u_input.a, 2147483647i))), vec3<i32>(u_input.a, -_wgslsmith_mult_i32(-1i, u_input.a), ~1i)));
    global0 = _wgslsmith_f_op_f32(select(-1125f, _wgslsmith_f_op_f32(var_0.a.b.c * 1750f), !all(!select(vec2<bool>(var_0.a.c.b, false), vec2<bool>(var_0.a.b.b, var_0.a.c.b), true))));
    var var_1 = func_5(var_0.a.c);
    var var_2 = var_0.a;
    global0 = var_1.c;
    var var_3 = !(func_6(~(-1i ^ u_input.a), var_0.a, func_6(-u_input.a, Struct_2(var_1.b, Struct_1(vec2<f32>(var_2.b.c, var_1.a.x), var_1.b, -768f), Struct_1(var_1.a, false, var_0.a.b.c), 4294967295u), func_6(49280i, var_0.a, var_0.a, 63172u), select(var_2.d, 52469u, true)), var_0.b).b.b == true);
    let var_4 = var_0.a;
    let var_5 = func_6(1i, func_6(_wgslsmith_mult_i32(-2147483647i, -u_input.a), func_6(_wgslsmith_add_i32(_wgslsmith_mult_i32(-26760i, u_input.a), -2147483647i), Struct_2(true, Struct_1(var_1.a, true, var_2.c.c), Struct_1(var_2.b.a, var_0.a.b.b, -724f), 1u), var_4, var_0.a.d), Struct_2(var_1.b, Struct_1(var_0.a.b.a, var_2.b.b, _wgslsmith_f_op_f32(var_0.a.b.c * 691f)), var_0.a.c, var_2.d), ~(~_wgslsmith_div_u32(var_2.d, 16213u))), Struct_2(true, var_0.a.c, var_2.c, 1u), var_4.d);
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_5.c.a.x, 1000f, -888f, 252f), vec4<f32>(var_1.a.x, var_5.c.a.x, 853f, var_2.c.c))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(183f, 409f, 1898f, var_5.c.a.x))) - vec4<f32>(var_4.b.a.x, 481f, var_4.b.a.x, -337f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-670f)), func_1(var_4.d).a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.c.a.x + var_2.c.c)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2027f, 828f, var_1.a.x, 1817f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_0.a.c.c, -893f, 691f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2082f, var_0.a.b.a.x, var_4.c.c, 1022f), vec4<f32>(var_0.a.b.a.x, -638f, 1784f, var_4.b.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2056f, var_1.c, var_2.b.a.x, var_5.b.a.x), vec4<f32>(-1211f, var_5.b.c, -386f, var_4.c.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(1567f, vec3<u32>(var_4.d, _wgslsmith_div_u32(var_0.a.d, ~var_0.b), var_2.d), var_5.d);
}

