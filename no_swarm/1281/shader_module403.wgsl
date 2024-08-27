struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_3,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = select(-vec2<i32>(countOneBits(0i), ~(7441i << (u_input.b % 32u))), ~(~vec2<i32>(0i, 47680i) >> (~u_input.c.zx % vec2<u32>(32u))), select(vec2<bool>(arg_1 == 191i, true), vec2<bool>(false, arg_0.x), arg_0.x));
    var var_1 = select(vec4<bool>(select(false, false, any(arg_0.xzw)), ~1u <= u_input.a, arg_0.x, arg_0.x), arg_0, false);
    var_1 = !(!arg_0);
    var var_2 = Struct_1(vec3<i32>(-reverseBits(-18668i) ^ _wgslsmith_sub_i32(var_0.x, var_0.x), var_0.x | (-var_0.x | var_0.x), arg_1), 633f, all(!arg_0));
    var var_3 = !(reverseBits(u_input.b) >= _wgslsmith_div_u32(80158u, u_input.c.x)) || all(arg_0.yzz);
    return vec4<bool>((select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(32623u, 11117u, u_input.a), vec3<u32>(u_input.b, 60314u, 4294967295u)), true) | 18548u) == min(13206u, ~_wgslsmith_sub_u32(u_input.c.x, u_input.a)), any(arg_0), arg_0.x, !any(select(vec2<bool>(false, var_1.x), var_1.zy, var_2.c)));
}

fn func_2() -> Struct_1 {
    let var_0 = -(~_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(78208i, 9376i), vec2<i32>(0i, 2147483647i), vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, 1i))) << (abs(_wgslsmith_sub_vec2_u32(u_input.c.xx, u_input.c.xz ^ vec2<u32>(u_input.c.x, u_input.b))) % vec2<u32>(32u)));
    let var_1 = Struct_1(vec3<i32>(var_0.x, 3564i, 1i), _wgslsmith_f_op_f32(sign(-174f)), all(select(vec4<bool>(true, all(vec2<bool>(false, true)), all(vec3<bool>(false, true, true)), u_input.b != u_input.b), vec4<bool>(true, true, true, true), true)));
    var var_2 = -(~(-(~vec2<i32>(var_0.x, var_1.a.x))));
    let var_3 = select(select(vec4<bool>(true, false, var_1.c, var_1.c), !select(!vec4<bool>(false, var_1.c, var_1.c, var_1.c), !vec4<bool>(false, true, var_1.c, var_1.c), 362f > var_1.b), !vec4<bool>(false, true == var_1.c, all(vec3<bool>(var_1.c, var_1.c, true)), var_1.c)), vec4<bool>(true & (all(vec3<bool>(var_1.c, var_1.c, true)) & var_1.c), var_1.c, !((var_1.c && var_1.c) | false), false), select(!select(!vec4<bool>(var_1.c, var_1.c, true, var_1.c), vec4<bool>(var_1.c, false, var_1.c, true), var_1.c), !func_3(vec4<bool>(var_1.c, true, false, true), select(0i, -2147483647i, false)), true));
    var_2 = firstLeadingBit(select(var_0, var_1.a.yx, vec2<bool>(true, false)));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.b, -1807f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1084f, arg_2.b))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b - arg_0.b), arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-261f + 212f)))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b, 577f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b)))))), arg_0.b, arg_0.b);
    let var_2 = Struct_5(Struct_3(func_2(), _wgslsmith_div_f32(arg_0.b, 1f), vec4<u32>(countOneBits(u_input.c.x), ~u_input.a, ~(41810u >> (u_input.b % 32u)), u_input.b), !select(!arg_1, arg_1, true), arg_0));
    let var_3 = var_2.a;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.zy))));
    return Struct_4(func_2(), Struct_2(_wgslsmith_clamp_vec3_u32(select(firstLeadingBit(var_3.c.zzx), select(u_input.c, vec3<u32>(47298u, 1u, var_2.a.c.x), var_2.a.d.x), true), ~vec3<u32>(var_3.c.x, 1u, 2595u), var_3.c.xyy << (_wgslsmith_mult_vec3_u32(var_3.c.xyy, u_input.c) % vec3<u32>(32u))), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xx - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.yz))))), var_2.a, -countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, arg_0.a.x, var_2.a.e.a.x, -30233i), vec4<i32>(-56323i, arg_0.a.x, var_3.a.a.x, 2147483647i) ^ vec4<i32>(-1i, var_3.a.a.x, 0i, var_2.a.a.a.x))));
}

fn func_1() -> f32 {
    var var_0 = 12137i;
    var var_1 = func_4(func_2(), vec3<bool>(!(all(vec3<bool>(true, true, true)) || true), !(!all(vec2<bool>(false, false))), !all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false))), Struct_1(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, 13587i, -2147483647i), select(vec3<i32>(-2147483647i, -16611i, 30879i), vec3<i32>(-2147483647i, 0i, -982i), vec3<bool>(false, true, false)), abs(vec3<i32>(0i, -332i, 10785i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-911f)), -990f, true)) - -722f), false || (select(true, true, false) | true)));
    var var_2 = var_1.d.c.wz;
    let var_3 = Struct_2(var_1.b.a, u_input.c.x);
    var var_4 = var_1.c;
    return func_4(var_1.a, !(!var_1.d.d), Struct_1(var_1.d.a.a & countOneBits(vec3<i32>(var_1.d.e.a.x, var_1.a.a.x, var_1.a.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), var_4.x), !(!(!var_1.d.e.c)))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~10506u;
    var var_1 = Struct_4(Struct_1(vec3<i32>(countOneBits(18533i), -firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(1i, 1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-871f * _wgslsmith_f_op_f32(func_1())), 2122f), true), func_4(Struct_1(reverseBits(firstLeadingBit(vec3<i32>(17028i, 12563i, 38310i))), 273f, any(vec4<bool>(true, true, true, true))), vec3<bool>(true, false, !all(vec2<bool>(false, false))), func_4(func_4(Struct_1(vec3<i32>(0i, -2147483647i, 0i), -1923f, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), Struct_1(vec3<i32>(1i, -2147483647i, -2147483647i), 518f, true)).d.e, vec3<bool>(true, true, true), Struct_1(vec3<i32>(2147483647i, -59419i, -10177i), 341f, true)).a).b, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1939f - 1306f))), -598f), _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-2223f + 1873f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(696f, 937f), vec2<f32>(-2728f, 1273f), true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1359f, -705f) - vec2<f32>(-365f, 260f))))), Struct_3(Struct_1(~(-vec3<i32>(-3931i, 2147483647i, -23846i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(174f + -1017f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(true, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-787f)) - _wgslsmith_f_op_f32(select(836f, 822f, true))) - _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(1000f))))), vec4<u32>(_wgslsmith_sub_u32(~0u, abs(var_0)), 12457u, var_0, ~u_input.b), select(vec3<bool>(true, any(vec2<bool>(true, true)), any(vec3<bool>(true, true, false))), func_4(func_4(Struct_1(vec3<i32>(-2147483647i, -108299i, -6587i), 348f, true), vec3<bool>(false, true, false), Struct_1(vec3<i32>(-40030i, 16137i, 2147483647i), -1141f, true)).d.a, vec3<bool>(true, false, false), Struct_1(vec3<i32>(1i, -1i, -2147483647i), -2249f, true)).d.d, vec3<bool>(func_3(vec4<bool>(false, false, false, false), -2623i).x, true, all(vec2<bool>(false, false)))), Struct_1(-(~vec3<i32>(-1i, 1i, -1i)), _wgslsmith_f_op_f32(-517f + _wgslsmith_f_op_f32(-1000f + -1000f)), any(vec4<bool>(false, false, true, true)))), vec4<i32>(-34739i, i32(-1i) * -1i, _wgslsmith_mult_i32(func_4(Struct_1(vec3<i32>(-39874i, 0i, 16646i), -1232f, false), vec3<bool>(false, true, false), Struct_1(vec3<i32>(1i, 1i, -113072i), -1199f, false)).d.e.a.x, ~(-54047i)), 1i << (1u % 32u)) >> (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, var_0, var_0, 1u)), vec4<u32>(_wgslsmith_mult_u32(var_0, u_input.a), var_0 | var_0, _wgslsmith_sub_u32(u_input.b, 54122u), var_0)) % vec4<u32>(32u)));
    let var_2 = !any(!vec4<bool>(var_1.d.a.c, true, select(false, var_1.d.a.c, false), var_1.d.e.c));
    var_1 = Struct_4(var_1.a, var_1.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1810f, -237f), vec2<f32>(-1099f, -876f)))))), Struct_3(var_1.a, _wgslsmith_f_op_f32(var_1.c.x * var_1.d.e.b), ~var_1.d.c, var_1.d.d, var_1.a), firstLeadingBit(reverseBits(max(abs(vec4<i32>(var_1.a.a.x, -2147483647i, var_1.e.x, -2147483647i)), _wgslsmith_sub_vec4_i32(var_1.e, var_1.e)))));
    var var_3 = _wgslsmith_clamp_u32(1u, abs(17397u), 75218u);
    var var_4 = -_wgslsmith_sub_vec3_i32(vec3<i32>(abs(0i), firstLeadingBit(42418i), _wgslsmith_div_i32(var_1.a.a.x, -2147483647i)), var_1.a.a) & _wgslsmith_clamp_vec3_i32(var_1.a.a, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.a.a, vec3<i32>(var_1.d.a.a.x, 2147483647i, var_1.e.x)), firstLeadingBit(vec3<i32>(2147483647i, 11645i, -63045i))), vec3<i32>(var_1.e.x, ~var_1.d.e.a.x, 0i));
    var_4 = vec3<i32>(-64276i, reverseBits(var_4.x), min(-66256i, (_wgslsmith_dot_vec2_i32(var_4.xx, vec2<i32>(var_1.e.x, 1i)) ^ (var_1.d.e.a.x >> (3744u % 32u))) << (0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.d.e.a.x);
}

