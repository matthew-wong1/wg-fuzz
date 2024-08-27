struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec4<i32> {
    global0 = false;
    global0 = all(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), !vec2<bool>(all(vec2<bool>(false, true)), arg_1 >= arg_1), true));
    global0 = true;
    let var_0 = _wgslsmith_mod_u32(~(~arg_3.x), arg_3.x);
    global0 = all(vec4<bool>(any(vec3<bool>(arg_1 < -11462i, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, true, true, false)))), !((233f == arg_2.x) && true), true || !select(false, false, true), true));
    return firstTrailingBit(vec4<i32>(0i, -34273i ^ countOneBits(arg_1), _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a)), _wgslsmith_div_i32(-arg_1, _wgslsmith_div_i32(13458i, -13702i)))) >> (abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, ~var_0, 1u << (arg_3.x % 32u), arg_0), reverseBits(vec4<u32>(var_0, 1u, 5967u, var_0) & vec4<u32>(arg_0, 20382u, var_0, 4294967295u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0, 4294967295u, arg_0, 0u), vec4<u32>(4294967295u, arg_3.x, 2062u, var_0)))) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = true;
    global0 = true;
    var_0 = arg_1.c.a.x != -424f;
    let var_1 = false;
    var var_2 = arg_1.b;
    return arg_1.b.a.a;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2026f - -1252f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -285f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(385f, 341f, true))), _wgslsmith_f_op_f32(1481f * 810f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1193f, -1820f, 1684f, -1611f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1335f, -253f, -516f, 1237f)))))), Struct_5(firstTrailingBit(~func_3(1u, u_input.a, vec3<f32>(2072f, 367f, -930f), arg_0)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-735f, 1622f, -682f))), 1u, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1455f, 1643f, 901f), vec3<f32>(-1000f, -322f, -756f))), Struct_1(vec3<f32>(-2014f, -510f, -1509f)), _wgslsmith_f_op_f32(-349f - _wgslsmith_f_op_f32(660f * 432f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1233f, 670f, 842f), vec3<f32>(1164f, 1000f, 864f), false)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2425f, 457f, 468f)))))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1561u, arg_0.x, arg_0.x), max(vec3<u32>(4294967295u, 22358u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x))) | firstTrailingBit(~vec3<u32>(55392u, arg_0.x, arg_0.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 37759u), arg_0), vec3<u32>(arg_0.x, 49728u, 20116u)) & (firstTrailingBit(vec3<u32>(arg_0.x, 52602u, arg_0.x)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_0.x, arg_0.x), vec3<u32>(0u, 0u, 66413u)) % vec3<u32>(32u))))));
    global0 = true;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1387f, 267f, var_0.x, -174f), vec4<f32>(226f, -1000f, -418f, 1003f), vec4<bool>(false, false, false, false))) - vec4<f32>(var_0.x, -274f, var_0.x, 570f)) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(221f)), var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x))))), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-997f - 714f), -543f));
    var var_2 = ~abs(select(firstTrailingBit(abs(vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x))), reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 45772u, 0u, arg_0.x))), vec4<bool>(true, true, true, true)));
    let var_3 = u_input.a;
    return Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * 776f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), 0u, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)) * var_0)), Struct_1(var_1.b.yyw), var_1.b.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.a.x * -166f));
    global0 = all(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, false), vec3<bool>(true, true, !all(vec3<bool>(false, false, false)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f + _wgslsmith_div_f32(614f, -350f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.a.x)))))) <= arg_3.a.x;
    let var_3 = abs(_wgslsmith_clamp_i32(2147483647i, ~(-1i), _wgslsmith_mult_i32(-1i, 13926i)));
    return vec2<bool>(!(_wgslsmith_add_u32(arg_0.b, _wgslsmith_mod_u32(arg_2.b, arg_0.b)) > max(arg_2.b, _wgslsmith_mod_u32(9647u, arg_0.b))), true);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = !(!select(vec2<bool>(false, true), vec2<bool>(true, false), (i32(-1i) * -8851i) >= -u_input.a));
    var_0 = select(vec2<bool>(true, (i32(-1i) * -2147483647i) != arg_2), select(!func_5(func_2(vec3<u32>(1u, 4294967295u, 22036u)), Struct_4(Struct_2(Struct_1(vec3<f32>(arg_0, -110f, arg_1)), 1834u, Struct_1(vec3<f32>(arg_0, 439f, arg_0)), Struct_1(vec3<f32>(967f, 1707f, arg_1)), arg_0)), Struct_2(Struct_1(vec3<f32>(922f, arg_1, arg_0)), 0u, Struct_1(vec3<f32>(arg_1, arg_0, -571f)), Struct_1(vec3<f32>(arg_0, arg_1, -764f)), -935f), Struct_1(vec3<f32>(arg_1, arg_1, 249f))), vec2<bool>(true, true), abs(64362u << (0u % 32u)) >= func_2(select(vec3<u32>(61069u, 0u, 16014u), vec3<u32>(7098u, 56068u, 0u), vec3<bool>(true, true, false))).b), select(select(!vec2<bool>(false, var_0.x), !select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), var_0.x), any(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), select(select(!vec2<bool>(true, var_0.x), func_5(Struct_2(Struct_1(vec3<f32>(218f, arg_1, 1631f)), 0u, Struct_1(vec3<f32>(arg_0, 978f, arg_1)), Struct_1(vec3<f32>(105f, -1404f, -154f)), -302f), Struct_4(Struct_2(Struct_1(vec3<f32>(1036f, -1345f, 187f)), 4294967295u, Struct_1(vec3<f32>(-973f, arg_1, 557f)), Struct_1(vec3<f32>(1857f, 148f, 1018f)), arg_0)), Struct_2(Struct_1(vec3<f32>(arg_1, -733f, arg_0)), 52851u, Struct_1(vec3<f32>(arg_0, arg_1, arg_0)), Struct_1(vec3<f32>(-362f, arg_1, arg_0)), 429f), Struct_1(vec3<f32>(1011f, arg_0, arg_0))), vec2<bool>(true, var_0.x)), !func_5(Struct_2(Struct_1(vec3<f32>(arg_1, arg_1, arg_0)), 0u, Struct_1(vec3<f32>(1313f, 989f, arg_1)), Struct_1(vec3<f32>(-2545f, 668f, 1000f)), arg_0), Struct_4(Struct_2(Struct_1(vec3<f32>(-550f, -2513f, -1274f)), 45834u, Struct_1(vec3<f32>(940f, arg_0, arg_0)), Struct_1(vec3<f32>(-448f, 922f, 1000f)), 1390f)), Struct_2(Struct_1(vec3<f32>(arg_1, arg_0, arg_1)), 0u, Struct_1(vec3<f32>(282f, -580f, 1186f)), Struct_1(vec3<f32>(arg_1, 1089f, arg_0)), -129f), Struct_1(vec3<f32>(arg_1, -331f, arg_0))), vec2<bool>(var_0.x, var_0.x)), true));
    global0 = !var_0.x;
    let var_1 = -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, arg_2, ~arg_2), vec4<i32>(select(u_input.a, arg_2, var_0.x), ~u_input.a, -19920i ^ u_input.a, arg_2)), firstTrailingBit(firstLeadingBit(-arg_2)), _wgslsmith_clamp_i32(-1856i, arg_2, -2147483647i));
    var var_2 = select(47169u, max(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(15560u, 84028u, 31484u), vec3<u32>(0u, 9822u, 27667u)), ~4294967295u, false), ~1u), any(select(vec3<bool>(var_0.x & var_0.x, any(vec3<bool>(var_0.x, var_0.x, var_0.x)), !var_0.x), !select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x)), vec3<bool>(true, var_0.x, false), true))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0, -788f)))), select(0u, ~_wgslsmith_add_u32(~4294967295u, ~79709u), false), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(128f, arg_1))), 2345f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec3_f32(func_4(Struct_3(vec4<f32>(arg_0, 1032f, 1000f, arg_1), vec4<f32>(arg_1, arg_0, -1014f, arg_0)), Struct_5(vec4<i32>(var_1.x, var_1.x, -6112i, 12658i), Struct_2(Struct_1(vec3<f32>(1000f, -278f, -624f)), 54440u, Struct_1(vec3<f32>(-127f, arg_0, arg_1)), Struct_1(vec3<f32>(arg_1, arg_1, 1206f)), -147f), Struct_1(vec3<f32>(-1213f, arg_1, arg_1)), Struct_1(vec3<f32>(arg_0, -604f, arg_0))), vec3<u32>(1u, 0u, 29690u))).x)))), func_2(_wgslsmith_mod_vec3_u32(select(vec3<u32>(20605u, 38657u, 4294967295u), vec3<u32>(20317u, 14210u, 1u), vec3<bool>(true, var_0.x, false)), ~vec3<u32>(4294967295u, 52887u, 7506u)) & select(vec3<u32>(53336u, 53360u, 68114u), firstTrailingBit(vec3<u32>(1u, 0u, 1u)), true)).c, arg_1);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, -1449f, arg_1.e, arg_1.d.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(1738f + 674f), _wgslsmith_f_op_f32(524f + -596f), _wgslsmith_f_op_f32(sign(535f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-240f, arg_1.d.a.x, arg_1.a.a.x, arg_1.d.a.x), vec4<f32>(arg_1.d.a.x, arg_1.d.a.x, arg_1.c.a.x, arg_1.e)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.c.a.x, arg_1.d.a.x, 699f, arg_1.a.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-702f, -842f, arg_1.a.a.x, 893f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.x))), arg_1.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(695f)))), arg_1.d.a.x));
    global0 = any(!vec4<bool>((u_input.a == 2147483647i) || true, any(arg_0), false, true));
    var var_1 = false;
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1013f * 1798f), -798f, _wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(-1453f - 720f)))) * _wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, arg_1.e, var_0.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, arg_1.a.a.x, arg_1.a.a.x, -812f))), vec4<bool>(false, false, arg_0.x, false)))))), _wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, var_0.a.x, 232f, var_0.b.x)))))));
    let var_2 = ~((~vec2<u32>(19819u, arg_1.b) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 33282u, arg_3), vec3<u32>(0u, 0u, 8802u)), 47545u & arg_1.b)) & ~(~(vec2<u32>(42388u, arg_1.b) >> (vec2<u32>(8827u, arg_3) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1398f, _wgslsmith_f_op_f32(round(arg_1.a.a.x)), _wgslsmith_f_op_f32(-1559f * -385f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(334f, 693f, 207f) - vec3<f32>(-1701f, -684f, -2608f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -582f, -582f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_6(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -840f), 173f, u_input.a), ~(~0u), 1u)))));
    var var_1 = ~max(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -413f)), _wgslsmith_div_f32(121f, _wgslsmith_f_op_f32(f32(-1f) * -830f)), max(u_input.a << (4294967295u % 32u), ~u_input.a)).b, 11222u);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1216f, -947f, _wgslsmith_f_op_f32(-var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(min(1289f, _wgslsmith_div_f32(var_0.x, -709f))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - -908f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(min(func_1(var_0.x, 794f, u_input.a).e, -1000f))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2150f, var_0.x, 658f, -915f), vec4<f32>(-680f, -357f, -1000f, 452f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -277f, -729f))))))), ~u_input.a < ~u_input.a));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1117f - var_0.x)), var_0.x) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-910f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-931f, -822f)), _wgslsmith_f_op_f32(trunc(-1744f)), _wgslsmith_div_f32(1047f, 431f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-483f, var_0.x), _wgslsmith_f_op_f32(step(564f, -276f)), var_0.x, var_2.x))));
    let var_4 = Struct_4(func_2(~vec3<u32>(firstLeadingBit(57139u), 6212u, 0u << (1u % 32u))));
    let var_5 = !select(select(vec3<bool>(any(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec3<bool>(!(u_input.a != u_input.a), u_input.a != select(45470i, -13322i, true), _wgslsmith_f_op_f32(-var_4.a.e) != var_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(exp2(var_4.a.e)))) > _wgslsmith_f_op_f32(f32(-1f) * -554f));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(-187f)), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(366f, 1000f, -872f, var_0.x) - vec4<f32>(var_2.x, 493f, var_3.b.x, var_0.x)), _wgslsmith_f_op_vec4_f32(var_3.b + var_3.b)), Struct_5(vec4<i32>(-209i, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(78100u, var_4.a.b, var_4.a.b, 4294967295u) % vec4<u32>(32u)), Struct_2(Struct_1(var_2.ywx), var_4.a.b, var_4.a.c, Struct_1(var_2.wwz), var_2.x), func_1(-345f, 1630f, 2147483647i).c, var_4.a.c), max(vec3<u32>(var_4.a.b, var_4.a.b, var_4.a.b), vec3<u32>(42050u, 49145u, var_4.a.b)) << (select(vec3<u32>(var_4.a.b, var_4.a.b, 4294967295u), vec3<u32>(1797u, 0u, 0u), var_5.x) % vec3<u32>(32u)))).x), vec4<f32>(var_4.a.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) + _wgslsmith_f_op_vec3_f32(func_6(!var_5, var_4.a, _wgslsmith_sub_u32(var_4.a.b, 10254u), ~77871u)).x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f)))), _wgslsmith_f_op_f32(func_1(var_4.a.d.a.x, _wgslsmith_f_op_f32(ceil(-256f)), u_input.a).c.a.x + -373f)), _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(1f))))), abs(_wgslsmith_mod_u32(10894u, 29191u)));
}

