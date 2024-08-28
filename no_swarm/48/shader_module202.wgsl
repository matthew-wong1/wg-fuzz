struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    return ~vec3<u32>(arg_0, min(_wgslsmith_sub_u32(arg_0, 1u) | arg_0, 1u), max(arg_0, arg_0));
}

fn func_2() -> Struct_2 {
    var var_0 = -181f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) + 1048f);
    var var_1 = func_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(45252u, ~4294967295u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(22938u, 1u, 36359u, 1u), vec4<u32>(4317u, 47110u, 20464u, 0u)), _wgslsmith_sub_u32(49050u, 0u))));
    var_1 = _wgslsmith_clamp_vec3_u32(abs(_wgslsmith_add_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(36734u, 0u, 4294967295u))), firstTrailingBit(~vec3<u32>(7386u, var_1.x, var_1.x)))), vec3<u32>(var_1.x, ~1u, ~(~_wgslsmith_clamp_u32(var_1.x, var_1.x, 26090u))), _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, var_1.x, 0u), vec3<u32>(1u, 18458u, 1u)) << (vec3<u32>(~4294967295u, min(var_1.x, 46205u), ~var_1.x) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4294967295u, var_1.x), vec3<u32>(var_1.x, 58292u, 40219u))));
    let var_2 = ~vec3<u32>(32523u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(16548u, 25551u, 23286u, 0u), ~vec4<u32>(var_1.x, var_1.x, 0u, var_1.x)), var_1.x), 27320u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(8820u, 4294967295u, var_1.x), vec3<u32>(var_1.x, 0u, var_1.x)) % 32u));
    return Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1285f, 582f) * vec2<f32>(-299f, 675f)))))))), vec2<bool>(true, true), ~33517u, -502f, _wgslsmith_f_op_f32(-1000f * -1591f));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    var var_0 = 4294967295u;
    var var_1 = -(_wgslsmith_div_vec4_i32(select(vec4<i32>(1i, arg_0, u_input.a, arg_0), vec4<i32>(-2147483647i, -2147483647i, arg_3.a.b, arg_3.a.b), arg_3.b.b.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c, 0u, arg_3.a.a.x, 90211u), vec4<u32>(0u, 69605u, 6363u, 1u)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(-1i, arg_3.a.b, arg_0, -1i)) >> (vec4<u32>(arg_3.b.c, arg_3.a.a.x, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, arg_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.b.c, 41362u, arg_1, arg_3.a.a.x), vec4<u32>(40149u, 96569u, arg_1, 1u), vec4<u32>(arg_3.a.a.x, 1u, arg_3.b.c, 46652u)))) % vec4<u32>(32u)));
    let var_2 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(27845u, firstLeadingBit(14488u), min(arg_2.c, 0u)), select(vec3<u32>(arg_1, 4294967295u, arg_1), vec3<u32>(arg_3.a.a.x, arg_2.c, 83120u), 1i != arg_0) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1, arg_1, 4294967295u), abs(vec3<u32>(31769u, 1u, arg_3.b.c)), abs(vec3<u32>(arg_1, 0u, arg_2.c))) % vec3<u32>(32u)));
    var var_3 = vec3<bool>(all(!func_2().b), arg_2.b.x, any(select(vec4<bool>(arg_3.b.b.x, true, 75001u >= arg_2.c, arg_3.b.b.x), !vec4<bool>(false, true, arg_3.b.b.x, arg_3.b.b.x), arg_2.b.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, arg_3.b.a.x, -1145f, 392f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_3.b.d, arg_3.b.e, arg_3.b.d))))))));
    return Struct_1(vec2<u32>(arg_2.c, ~54994u), _wgslsmith_clamp_i32(~(-28686i), ~var_1.x >> (1u % 32u), -1i));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = ~(~firstTrailingBit(~vec4<i32>(-2147483647i, 0i, 0i, arg_3.a.b)));
    var_0 = min(countOneBits(vec4<i32>(var_0.x, u_input.a, 840i, var_0.x) | vec4<i32>(11922i, arg_0.b, 2147483647i, 0i)) ^ vec4<i32>(var_0.x >> (4294967295u % 32u), -44483i, ~(-2147483647i), -25035i), (~vec4<i32>(arg_3.a.b, 1i, var_0.x, var_0.x) >> (arg_1 % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(-vec4<i32>(0i, u_input.a, u_input.a, var_0.x), vec4<i32>(arg_0.b, var_0.x, 2147483647i, -32438i) & vec4<i32>(arg_3.a.b, var_0.x, arg_0.b, arg_0.b))) & abs(max(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, 9484i, -8659i, 1i), -vec4<i32>(var_0.x, 2147483647i, 1i, 0i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.a.b, var_0.x, -5626i, 33793i), vec4<i32>(var_0.x, -54282i, -32457i, var_0.x)), ~vec4<i32>(var_0.x, arg_0.b, arg_3.a.b, 0i))));
    var_0 = vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a), _wgslsmith_div_i32(-(i32(-1i) * -39860i), 1i), 1i, i32(-1i) * -arg_3.a.b);
    let var_1 = !select(select(vec4<bool>(arg_2.x || true, false, true, false), select(select(vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(true, true, true, true), arg_2.x), !vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), all(vec4<bool>(false, arg_2.x, arg_2.x, false))), !select(vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, true, true, arg_2.x), arg_2.x)), vec4<bool>(true, !(arg_2.x | true), arg_2.x, arg_2.x), func_2().b.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(func_2().e, _wgslsmith_div_f32(-715f, -1199f), _wgslsmith_f_op_f32(max(192f, 928f)), -613f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-901f, 696f, 1440f, 1327f)), vec4<f32>(-1224f, -263f, -894f, 745f))), vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-919f * 725f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1680f - 336f)), -670f)));
    return Struct_3(Struct_1(vec2<u32>(arg_0.a.x, 1u), arg_3.a.b));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    let var_0 = ~abs(~(~vec3<u32>(4294967295u, 15251u, 4294967295u)));
    var var_1 = func_5(func_4(2147483647i, 1u, func_2(), Struct_4(Struct_1(var_0.yz, arg_0.x), Struct_2(vec2<f32>(787f, -1000f), select(vec2<bool>(false, false), vec2<bool>(true, false), false), ~var_0.x, _wgslsmith_f_op_f32(ceil(425f)), _wgslsmith_f_op_f32(max(-2108f, 1000f))))), ~(~firstTrailingBit(vec4<u32>(0u, 4294967295u, 31517u, 54647u) << (vec4<u32>(5108u, var_0.x, 4294967295u, var_0.x) % vec4<u32>(32u)))), func_2().b, Struct_3(Struct_1(vec2<u32>(var_0.x, 4294967295u), 0i)));
    var_1 = Struct_3(var_1.a);
    let var_2 = vec4<f32>(-543f, -701f, _wgslsmith_f_op_f32(select(1507f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-865f * _wgslsmith_f_op_f32(-377f - 377f)))), select(all(vec3<bool>(true, true, true)), true, any(vec2<bool>(false, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-739f, _wgslsmith_f_op_f32(f32(-1f) * -722f))), -722f));
    var var_3 = Struct_3(var_1.a);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(firstTrailingBit(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -16325i, -14691i, 0i), vec4<i32>(-2147483647i, u_input.a, u_input.a, 45258i)), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<bool>(false, true, false, false)))), !select(true, true, !all(vec4<bool>(true, false, true, true))), true);
    let var_1 = select(vec4<i32>(u_input.a, u_input.a, _wgslsmith_div_i32(-33285i, _wgslsmith_clamp_i32(countOneBits(u_input.a), 43859i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 21543i), vec4<i32>(u_input.a, 1785i, 17772i, 16670i)))), ~u_input.a), vec4<i32>(u_input.a, i32(-1i) * -(~u_input.a), u_input.a & -2147483647i, -56146i), select(vec4<bool>(!all(vec4<bool>(true, false, false, true)), true, true, any(vec4<bool>(true, true, true, true))), vec4<bool>(true, !any(vec4<bool>(false, false, true, true)), false, false), vec4<bool>(any(vec3<bool>(true, false, true)) & false, all(vec3<bool>(true, true, true)), true, all(func_2().b))));
    let var_2 = u_input.a;
    var var_3 = ~max(1u, ~(~(~4294967295u)));
    var_3 = 60660u;
    var_3 = _wgslsmith_div_u32(func_3(func_2().c).x, ~8211u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(~11467u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10054u, 1u, 120709u), vec4<u32>(54851u, 8232u, 0u, 0u)), _wgslsmith_clamp_u32(34805u, 77305u, 1u), all(vec3<bool>(false, false, false))), 1u)), _wgslsmith_div_u32(func_4(func_4(~0i, countOneBits(33877u), func_2(), Struct_4(Struct_1(vec2<u32>(0u, 33256u), var_1.x), Struct_2(vec2<f32>(237f, -332f), vec2<bool>(false, false), 18811u, -1008f, -359f))).b, func_4(var_2, 19944u, Struct_2(vec2<f32>(-761f, 698f), vec2<bool>(true, true), 1u, -545f, 1399f), Struct_4(Struct_1(vec2<u32>(4294967295u, 0u), -23685i), Struct_2(vec2<f32>(379f, -407f), vec2<bool>(true, true), 59874u, 1000f, 312f))).a.x >> (~11786u % 32u), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1247f, 552f) * vec2<f32>(1000f, 951f)), vec2<bool>(true, false), 24008u, _wgslsmith_f_op_f32(-1699f + -1000f), -176f), Struct_4(func_5(Struct_1(vec2<u32>(4294967295u, 1u), 2147483647i), vec4<u32>(67705u, 15266u, 52993u, 4294967295u), vec2<bool>(true, false), Struct_3(Struct_1(vec2<u32>(0u, 18361u), var_2))).a, func_2())).a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(43009u, 62915u, 35934u)), min(vec3<u32>(167031u, 4294967295u, 21090u), vec3<u32>(0u, 40094u, 4294967295u)), func_3(0u)), vec3<u32>(1u, 1u, 1u))), vec4<i32>(~(~u_input.a), ~var_1.x, -var_2, -(~33334i)) << (vec4<u32>(1u, ~1u, _wgslsmith_add_u32(~4294967295u, _wgslsmith_mult_u32(0u, 0u)), max(select(51800u, 0u, false), 1u)) % vec4<u32>(32u)));
}

