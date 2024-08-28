struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> f32 {
    let var_0 = vec4<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(arg_3.e.a, arg_3.e.a), true)), !(!(true | all(vec4<bool>(arg_3.e.a, false, arg_3.e.a, true)))), arg_3.e.a, true);
    var var_1 = 1i;
    let var_2 = abs(vec4<u32>(_wgslsmith_div_u32(arg_2, _wgslsmith_mult_u32(u_input.d, 10673u)), 94681u, _wgslsmith_div_u32(4298u, 92657u), 81850u));
    let var_3 = Struct_5(~vec2<u32>(u_input.d, _wgslsmith_div_u32(u_input.b, 14880u) ^ 2143u), _wgslsmith_clamp_vec4_i32(arg_3.a, select(u_input.e, -(~vec4<i32>(1i, arg_3.c, u_input.e.x, arg_3.a.x)), select(var_0, vec4<bool>(true, true, arg_3.e.a, false), any(var_0))), arg_3.a), arg_3);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f));
}

fn func_2() -> i32 {
    let var_0 = ~(-42766i);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-822f, -840f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(-1000f)), ~u_input.b, u_input.c.x | u_input.c.x, Struct_4(u_input.e, vec2<f32>(-2258f, -580f), 2147483647i, vec4<u32>(72025u, 0u, 14344u, 53739u), Struct_2(true)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1081f, -486f, 180f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(383f, 173f, -514f) + vec3<f32>(408f, 808f, 403f))))))));
    let var_2 = select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(all(vec2<bool>(false, true)), true, select(false, false, true), var_1.x != var_1.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), any(vec2<bool>(true, true))), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), false)), all(!vec4<bool>(var_1.x <= var_1.x, true, u_input.d >= 56632u, u_input.c.x <= 1u)));
    let var_3 = u_input.d;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(380f)) - _wgslsmith_f_op_f32(-var_1.x));
    return 2147483647i;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<u32>) -> u32 {
    let var_0 = ~49606u;
    return min(2500u, reverseBits(_wgslsmith_sub_u32(~u_input.d | ~var_0, ~_wgslsmith_clamp_u32(9164u, 15924u, var_0))));
}

fn func_1() -> Struct_2 {
    let var_0 = 0u;
    var var_1 = Struct_1(47692i, u_input.a);
    var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~(-41130i), abs(2147483647i)), i32(-1i) * -var_1.a), select(select(_wgslsmith_mult_i32(-12432i, u_input.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, var_1.a, 2724i), u_input.e), true), _wgslsmith_add_i32(u_input.e.x, _wgslsmith_clamp_i32(var_1.a, 61495i, -32952i)), !all(vec2<bool>(true, false)))), vec3<u32>(~18248u, func_4(Struct_3(func_2(), true, vec2<f32>(-990f, 1000f), -848f, _wgslsmith_clamp_vec4_i32(u_input.e, u_input.e, vec4<i32>(2147483647i, -24132i, 12117i, var_1.a))), vec2<f32>(355f, _wgslsmith_f_op_f32(529f - -145f)), _wgslsmith_div_f32(1000f, -2289f), vec4<u32>(u_input.b, abs(4294967295u), 1u, ~1u)), var_1.b.x));
    var var_2 = u_input.e.xxw | vec3<i32>(_wgslsmith_mult_i32(func_2(), _wgslsmith_mod_i32(var_1.a, -12130i) >> (u_input.d % 32u)), _wgslsmith_clamp_i32(u_input.e.x, -9894i, -61197i), min(var_1.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -1914i, var_1.a), vec3<i32>(u_input.e.x, -2981i, 8835i))));
    var_2 = vec3<i32>(2147483647i, var_1.a, u_input.e.x);
    return Struct_2(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1561f)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(551f))))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_5) -> Struct_5 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(_wgslsmith_mod_i32(-1i, 2147483647i)) << ((1u | ~arg_3.a.x) % 32u), i32(-1i) * -(~arg_2.c), arg_3.b.x, -(~select(20292i, u_input.e.x, true))), u_input.e, -u_input.e | u_input.e);
    var var_2 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_1.b.x, arg_2.a.x, -32257i, -1i), _wgslsmith_mod_vec4_i32(arg_2.a, vec4<i32>(arg_3.c.a.x, arg_1.c.a.x, var_1.x, 37102i))), u_input.e, var_1);
    var_2 = _wgslsmith_add_vec4_i32(-var_1, vec4<i32>(_wgslsmith_sub_i32(countOneBits(arg_1.b.x) ^ _wgslsmith_mod_i32(u_input.e.x, 24863i), abs(arg_2.c << (arg_1.a.x % 32u))), ~(-2147483647i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_1.b.wwx, vec3<i32>(arg_0.x, arg_2.c, -1i)), max(43874i, 2147483647i)), arg_2.c), -75387i));
    var_2 = _wgslsmith_mod_vec4_i32(-vec4<i32>(i32(-1i) * -35819i, -func_2(), ~_wgslsmith_clamp_i32(-47926i, arg_3.b.x, arg_3.b.x), countOneBits(0i) & (arg_2.a.x ^ 0i)), vec4<i32>(reverseBits(_wgslsmith_clamp_i32(i32(-1i) * -1i, 1i, arg_1.b.x)), arg_3.c.c, 25226i, min(-1i, var_1.x)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5((vec4<i32>(-1i, -u_input.e.x, u_input.e.x, 5685i) ^ abs(-u_input.e)) & _wgslsmith_div_vec4_i32(u_input.e, ~(-vec4<i32>(u_input.e.x, 2147483647i, 27665i, u_input.e.x))), Struct_5(u_input.a.xx, -u_input.e, Struct_4(select(u_input.e, vec4<i32>(10087i, u_input.e.x, -26237i, u_input.e.x), vec4<bool>(true, true, true, false)) >> (select(vec4<u32>(115171u, u_input.c.x, 68375u, 1251u), vec4<u32>(32593u, 4294967295u, u_input.a.x, u_input.a.x), false) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1577f, 465f) - vec2<f32>(1657f, 592f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-137f, 822f))), firstLeadingBit(798i), abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 36675u, u_input.d, 4294967295u), vec4<u32>(58481u, 65093u, u_input.a.x, u_input.d))), Struct_2(true))), Struct_4(u_input.e, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1722f, 237f)) - 868f), -1000f), u_input.e.x, firstLeadingBit(vec4<u32>(0u, _wgslsmith_clamp_u32(5751u, u_input.c.x, 46557u), 1u, reverseBits(u_input.c.x))), func_1()), Struct_5(~(min(u_input.c, u_input.c) << (firstTrailingBit(u_input.c) % vec2<u32>(32u))), (vec4<i32>(-1i) * -u_input.e) ^ abs(vec4<i32>(u_input.e.x, 2147483647i, -1051i, u_input.e.x)), Struct_4(u_input.e, vec2<f32>(-531f, _wgslsmith_f_op_f32(min(835f, -575f))), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(2147483647i, -11427i, u_input.e.x, 33284i) ^ u_input.e), ~select(vec4<u32>(u_input.a.x, u_input.b, 7236u, u_input.d), vec4<u32>(u_input.d, 16261u, u_input.d, u_input.d), true), func_1())));
    var_0 = Struct_5(var_0.a, -_wgslsmith_add_vec4_i32(-(~var_0.b), ~vec4<i32>(u_input.e.x, 1582i, -48420i, u_input.e.x) & -vec4<i32>(10124i, 0i, -2147483647i, 24105i)), Struct_4(u_input.e, vec2<f32>(_wgslsmith_f_op_f32(trunc(-1215f)), _wgslsmith_f_op_f32(sign(739f))), firstTrailingBit(select(var_0.b.x, var_0.b.x, var_0.c.e.a)) >> (func_4(Struct_3(-2147483647i, false, var_0.c.b, var_0.c.b.x, vec4<i32>(var_0.c.c, var_0.b.x, 25538i, 30188i)), _wgslsmith_f_op_vec2_f32(round(var_0.c.b)), _wgslsmith_f_op_f32(floor(var_0.c.b.x)), var_0.c.d << (vec4<u32>(u_input.b, 107903u, var_0.a.x, u_input.d) % vec4<u32>(32u))) % 32u), ~_wgslsmith_sub_vec4_u32(func_5(vec4<i32>(4823i, u_input.e.x, 12512i, 55234i), Struct_5(var_0.c.d.yy, vec4<i32>(u_input.e.x, var_0.c.c, u_input.e.x, u_input.e.x), var_0.c), var_0.c, Struct_5(var_0.a, u_input.e, Struct_4(vec4<i32>(-12093i, u_input.e.x, 17509i, -11252i), var_0.c.b, u_input.e.x, vec4<u32>(4294967295u, u_input.d, u_input.a.x, 7302u), Struct_2(false)))).c.d, var_0.c.d), var_0.c.e));
    var_0 = func_5(vec4<i32>(~u_input.e.x, func_5(vec4<i32>(min(2147483647i, var_0.b.x), u_input.e.x, ~23592i, u_input.e.x), func_5(vec4<i32>(var_0.c.c, -1i, -13612i, u_input.e.x), func_5(u_input.e, Struct_5(vec2<u32>(u_input.a.x, 49919u), vec4<i32>(u_input.e.x, var_0.c.c, u_input.e.x, 1i), Struct_4(u_input.e, var_0.c.b, var_0.c.a.x, var_0.c.d, Struct_2(var_0.c.e.a))), var_0.c, Struct_5(u_input.c, vec4<i32>(21035i, -31212i, 60424i, 1i), Struct_4(vec4<i32>(1i, u_input.e.x, u_input.e.x, -54640i), var_0.c.b, u_input.e.x, vec4<u32>(0u, 4294967295u, 50392u, var_0.a.x), Struct_2(var_0.c.e.a)))), func_5(var_0.b, Struct_5(u_input.c, u_input.e, Struct_4(vec4<i32>(1i, u_input.e.x, -24267i, var_0.b.x), vec2<f32>(315f, -450f), u_input.e.x, var_0.c.d, var_0.c.e)), Struct_4(vec4<i32>(var_0.b.x, -8147i, var_0.b.x, 0i), vec2<f32>(-952f, var_0.c.b.x), u_input.e.x, var_0.c.d, var_0.c.e), Struct_5(vec2<u32>(var_0.a.x, var_0.a.x), u_input.e, Struct_4(vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, 1i), var_0.c.b, var_0.b.x, var_0.c.d, var_0.c.e))).c, Struct_5(vec2<u32>(u_input.a.x, u_input.a.x), vec4<i32>(2637i, u_input.e.x, 14145i, 2147483647i), Struct_4(vec4<i32>(u_input.e.x, u_input.e.x, 4684i, var_0.b.x), vec2<f32>(-1947f, var_0.c.b.x), -2147483647i, vec4<u32>(u_input.d, u_input.b, 1u, 0u), var_0.c.e))), var_0.c, func_5(-u_input.e, Struct_5(vec2<u32>(19211u, u_input.b), var_0.c.a, var_0.c), func_5(vec4<i32>(u_input.e.x, 27525i, 0i, -2147483647i), Struct_5(vec2<u32>(4294967295u, u_input.d), var_0.b, Struct_4(var_0.b, vec2<f32>(var_0.c.b.x, var_0.c.b.x), -2147483647i, vec4<u32>(var_0.a.x, 1u, 1u, 1u), var_0.c.e)), Struct_4(var_0.b, vec2<f32>(var_0.c.b.x, var_0.c.b.x), var_0.b.x, var_0.c.d, Struct_2(var_0.c.e.a)), Struct_5(vec2<u32>(var_0.a.x, u_input.b), vec4<i32>(-1554i, var_0.b.x, 2147483647i, 38890i), Struct_4(vec4<i32>(0i, 11002i, u_input.e.x, u_input.e.x), var_0.c.b, u_input.e.x, var_0.c.d, Struct_2(var_0.c.e.a)))).c, func_5(vec4<i32>(42795i, -2690i, u_input.e.x, -1i), Struct_5(vec2<u32>(108181u, 1u), var_0.c.a, Struct_4(vec4<i32>(24494i, var_0.b.x, var_0.c.c, -51007i), var_0.c.b, 14544i, vec4<u32>(4294967295u, var_0.c.d.x, 4294967295u, 1u), Struct_2(false))), Struct_4(u_input.e, vec2<f32>(var_0.c.b.x, -1000f), u_input.e.x, vec4<u32>(var_0.a.x, var_0.c.d.x, 7239u, 38144u), var_0.c.e), Struct_5(u_input.c, u_input.e, var_0.c)))).b.x, var_0.c.c, -2147483647i), func_5(~reverseBits(-u_input.e), Struct_5(u_input.c & _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, var_0.c.d.x), vec2<u32>(1u, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, -2147483647i, u_input.e.x, u_input.e.x) ^ vec4<i32>(50965i, 11663i, u_input.e.x, 0i), ~u_input.e), func_5(max(vec4<i32>(u_input.e.x, var_0.c.a.x, u_input.e.x, u_input.e.x), vec4<i32>(0i, 0i, var_0.c.c, var_0.b.x)), Struct_5(vec2<u32>(1u, 1u), vec4<i32>(u_input.e.x, -1i, var_0.c.a.x, 30813i), Struct_4(vec4<i32>(-19278i, u_input.e.x, 1944i, -25356i), var_0.c.b, u_input.e.x, vec4<u32>(u_input.a.x, u_input.d, u_input.d, u_input.d), Struct_2(var_0.c.e.a))), var_0.c, func_5(vec4<i32>(-1i, 1i, -1i, 2147483647i), Struct_5(var_0.c.d.wy, vec4<i32>(-2147483647i, 20785i, -15125i, 8363i), Struct_4(vec4<i32>(var_0.b.x, 0i, 1i, 36443i), vec2<f32>(-302f, var_0.c.b.x), var_0.b.x, var_0.c.d, Struct_2(true))), var_0.c, Struct_5(var_0.c.d.yy, u_input.e, var_0.c))).c), var_0.c, Struct_5(var_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, u_input.e.x, 1i, 14370i), ~u_input.e), var_0.c)), Struct_4(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -353i), u_input.e.zw), 49896i, u_input.e.x, u_input.e.x), vec2<f32>(var_0.c.b.x, -186f), var_0.b.x, vec4<u32>(0u, firstTrailingBit(17973u), u_input.b ^ 18491u, 1u) >> (vec4<u32>(u_input.b, 4294967295u, 7005u, ~u_input.c.x) % vec4<u32>(32u)), var_0.c.e), func_5(vec4<i32>(30614i, 13711i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.c, u_input.e.x, 9443i, 1i), abs(u_input.e)), _wgslsmith_mod_i32(-1936i, ~2127i)), func_5(select(_wgslsmith_mod_vec4_i32(vec4<i32>(3051i, 1i, 0i, var_0.c.a.x), u_input.e), u_input.e, var_0.c.e.a), Struct_5(func_5(var_0.c.a, Struct_5(u_input.c, var_0.b, var_0.c), var_0.c, Struct_5(vec2<u32>(4294967295u, var_0.c.d.x), var_0.c.a, var_0.c)).c.d.yx, vec4<i32>(var_0.c.c, var_0.c.c, -16111i, 9536i) | vec4<i32>(-2147483647i, u_input.e.x, var_0.c.c, 2147483647i), func_5(var_0.b, Struct_5(vec2<u32>(var_0.a.x, 1u), vec4<i32>(1i, var_0.b.x, u_input.e.x, u_input.e.x), Struct_4(u_input.e, var_0.c.b, 1i, vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.c.d.x), var_0.c.e)), Struct_4(var_0.c.a, vec2<f32>(var_0.c.b.x, var_0.c.b.x), -13366i, var_0.c.d, var_0.c.e), Struct_5(u_input.c, u_input.e, var_0.c)).c), func_5(select(u_input.e, vec4<i32>(8701i, var_0.c.a.x, var_0.c.c, u_input.e.x), true), Struct_5(vec2<u32>(0u, var_0.c.d.x), vec4<i32>(2147483647i, -1i, -11860i, -1i), var_0.c), func_5(vec4<i32>(-20037i, -35052i, u_input.e.x, u_input.e.x), Struct_5(vec2<u32>(u_input.b, var_0.c.d.x), vec4<i32>(u_input.e.x, var_0.b.x, -43062i, 0i), Struct_4(vec4<i32>(-2147483647i, 37445i, -9973i, var_0.c.c), vec2<f32>(var_0.c.b.x, var_0.c.b.x), u_input.e.x, vec4<u32>(4294967295u, 9366u, u_input.b, var_0.a.x), var_0.c.e)), Struct_4(vec4<i32>(var_0.b.x, u_input.e.x, 2147483647i, var_0.c.a.x), var_0.c.b, var_0.c.a.x, vec4<u32>(var_0.c.d.x, 4294967295u, 0u, 11697u), var_0.c.e), Struct_5(vec2<u32>(u_input.b, u_input.b), vec4<i32>(-25610i, u_input.e.x, var_0.c.c, var_0.c.a.x), var_0.c)).c, func_5(u_input.e, Struct_5(vec2<u32>(1u, 55070u), vec4<i32>(u_input.e.x, u_input.e.x, 1i, -37221i), var_0.c), Struct_4(u_input.e, vec2<f32>(var_0.c.b.x, 1565f), -1i, vec4<u32>(1u, u_input.b, u_input.d, 8852u), Struct_2(var_0.c.e.a)), Struct_5(vec2<u32>(u_input.a.x, 65084u), u_input.e, var_0.c))).c, Struct_5(max(u_input.a.xy, var_0.c.d.yx), vec4<i32>(28564i, u_input.e.x, -2147483647i, var_0.c.c), func_5(u_input.e, Struct_5(u_input.c, u_input.e, var_0.c), Struct_4(u_input.e, vec2<f32>(var_0.c.b.x, var_0.c.b.x), u_input.e.x, var_0.c.d, Struct_2(true)), Struct_5(vec2<u32>(u_input.b, 0u), vec4<i32>(0i, u_input.e.x, u_input.e.x, var_0.b.x), Struct_4(u_input.e, vec2<f32>(-619f, var_0.c.b.x), u_input.e.x, var_0.c.d, var_0.c.e))).c)), func_5(var_0.c.a, Struct_5(_wgslsmith_add_vec2_u32(var_0.a, u_input.c), u_input.e, func_5(u_input.e, Struct_5(var_0.a, vec4<i32>(14932i, -32319i, 25038i, u_input.e.x), Struct_4(var_0.b, var_0.c.b, 1i, vec4<u32>(63956u, 45340u, 57083u, var_0.a.x), var_0.c.e)), var_0.c, Struct_5(vec2<u32>(10590u, 4294967295u), var_0.b, var_0.c)).c), var_0.c, Struct_5(vec2<u32>(var_0.c.d.x, var_0.c.d.x), var_0.c.a, func_5(var_0.b, Struct_5(vec2<u32>(27431u, u_input.a.x), var_0.b, var_0.c), Struct_4(u_input.e, var_0.c.b, var_0.b.x, var_0.c.d, var_0.c.e), Struct_5(vec2<u32>(0u, 1u), vec4<i32>(var_0.b.x, -21206i, var_0.c.c, 1i), var_0.c)).c)).c, func_5(var_0.b, Struct_5(~u_input.c, -u_input.e, func_5(var_0.b, Struct_5(vec2<u32>(var_0.a.x, 4294967295u), u_input.e, var_0.c), var_0.c, Struct_5(vec2<u32>(var_0.a.x, 7935u), vec4<i32>(2147483647i, u_input.e.x, var_0.b.x, u_input.e.x), Struct_4(var_0.c.a, var_0.c.b, 35085i, var_0.c.d, var_0.c.e))).c), Struct_4(var_0.c.a >> (vec4<u32>(u_input.b, var_0.c.d.x, u_input.c.x, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c.b.x, 188f))), abs(-25953i), vec4<u32>(21805u, var_0.c.d.x, var_0.a.x, u_input.b), func_1()), Struct_5(vec2<u32>(1u, 1u), u_input.e, func_5(vec4<i32>(-23965i, -25182i, var_0.b.x, -52770i), Struct_5(vec2<u32>(97562u, var_0.c.d.x), vec4<i32>(u_input.e.x, 28347i, var_0.c.a.x, 28218i), var_0.c), Struct_4(u_input.e, vec2<f32>(-343f, var_0.c.b.x), 14547i, var_0.c.d, var_0.c.e), Struct_5(u_input.c, vec4<i32>(-44168i, u_input.e.x, u_input.e.x, 35772i), Struct_4(vec4<i32>(u_input.e.x, 8313i, 0i, var_0.c.c), var_0.c.b, var_0.b.x, var_0.c.d, var_0.c.e))).c))));
    var var_1 = var_0.b.wzy;
    var_0 = func_5(-vec4<i32>(u_input.e.x, 72710i << (var_0.c.d.x % 32u), var_1.x & ~(-38882i), var_1.x), func_5(~(-vec4<i32>(2391i, var_1.x, -2147483647i, u_input.e.x) ^ vec4<i32>(0i, var_1.x, 1i, -49393i)), Struct_5(var_0.a, vec4<i32>(~(-2147483647i), 1i, countOneBits(18382i), -1i), func_5(abs(vec4<i32>(13567i, var_0.c.a.x, var_1.x, -1i)), func_5(u_input.e, Struct_5(u_input.a.zx, vec4<i32>(u_input.e.x, u_input.e.x, -3291i, -23647i), var_0.c), Struct_4(vec4<i32>(var_1.x, -18547i, 2147483647i, -23978i), vec2<f32>(var_0.c.b.x, 1553f), -15283i, vec4<u32>(1761u, 55599u, 60996u, 95098u), Struct_2(var_0.c.e.a)), Struct_5(u_input.c, var_0.c.a, Struct_4(vec4<i32>(0i, -2147483647i, -12309i, var_0.b.x), vec2<f32>(var_0.c.b.x, var_0.c.b.x), var_0.b.x, vec4<u32>(10403u, 1u, var_0.a.x, 1u), Struct_2(true)))), func_5(u_input.e, Struct_5(var_0.c.d.wy, var_0.b, Struct_4(var_0.c.a, vec2<f32>(var_0.c.b.x, var_0.c.b.x), var_0.b.x, vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), Struct_2(false))), var_0.c, Struct_5(vec2<u32>(4294967295u, 66547u), vec4<i32>(u_input.e.x, var_1.x, var_0.c.a.x, 2147483647i), var_0.c)).c, func_5(vec4<i32>(var_0.b.x, u_input.e.x, -9466i, -1i), Struct_5(u_input.c, var_0.c.a, Struct_4(vec4<i32>(1i, var_1.x, u_input.e.x, 10205i), var_0.c.b, -1i, var_0.c.d, var_0.c.e)), var_0.c, Struct_5(var_0.a, vec4<i32>(var_1.x, 2147483647i, -7182i, 22102i), Struct_4(u_input.e, vec2<f32>(216f, var_0.c.b.x), u_input.e.x, vec4<u32>(var_0.c.d.x, 85350u, var_0.a.x, 4294967295u), var_0.c.e)))).c), func_5(select(vec4<i32>(-45403i, 0i, -36621i, -2147483647i), _wgslsmith_sub_vec4_i32(var_0.b, var_0.c.a), select(vec4<bool>(var_0.c.e.a, var_0.c.e.a, var_0.c.e.a, true), vec4<bool>(var_0.c.e.a, var_0.c.e.a, false, false), vec4<bool>(true, true, true, false))), func_5(vec4<i32>(u_input.e.x, u_input.e.x, var_0.c.a.x, 2147483647i), func_5(vec4<i32>(var_0.c.a.x, var_0.b.x, -49532i, var_1.x), Struct_5(u_input.c, var_0.b, var_0.c), Struct_4(var_0.c.a, var_0.c.b, var_1.x, vec4<u32>(0u, 0u, 0u, 0u), var_0.c.e), Struct_5(vec2<u32>(42733u, 1u), u_input.e, var_0.c)), var_0.c, func_5(var_0.c.a, Struct_5(vec2<u32>(4294967295u, 17143u), vec4<i32>(u_input.e.x, u_input.e.x, -2147483647i, 1558i), Struct_4(vec4<i32>(-2147483647i, 0i, var_1.x, var_1.x), var_0.c.b, var_1.x, vec4<u32>(17220u, 13386u, 1u, 0u), Struct_2(var_0.c.e.a))), var_0.c, Struct_5(vec2<u32>(4294967295u, var_0.c.d.x), u_input.e, var_0.c))), func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(42111i, var_1.x, var_1.x, 0i), vec4<i32>(49281i, var_0.c.c, var_1.x, -27842i)), func_5(u_input.e, Struct_5(u_input.c, u_input.e, Struct_4(vec4<i32>(2147483647i, 0i, -2147483647i, -34163i), var_0.c.b, var_1.x, vec4<u32>(0u, u_input.c.x, var_0.c.d.x, var_0.a.x), Struct_2(var_0.c.e.a))), var_0.c, Struct_5(vec2<u32>(var_0.c.d.x, 1u), vec4<i32>(-18554i, var_0.c.c, 1i, 1i), Struct_4(u_input.e, vec2<f32>(1812f, 1626f), 11671i, var_0.c.d, Struct_2(true)))), Struct_4(vec4<i32>(-2147483647i, var_0.c.c, var_1.x, var_0.c.c), var_0.c.b, 1i, var_0.c.d, var_0.c.e), Struct_5(vec2<u32>(u_input.b, u_input.b), u_input.e, Struct_4(vec4<i32>(u_input.e.x, 1i, var_1.x, 0i), var_0.c.b, 2904i, var_0.c.d, var_0.c.e))).c, Struct_5(select(vec2<u32>(42831u, 1u), var_0.a, vec2<bool>(var_0.c.e.a, var_0.c.e.a)), u_input.e, Struct_4(var_0.b, vec2<f32>(var_0.c.b.x, var_0.c.b.x), -17815i, vec4<u32>(var_0.a.x, 30855u, 1u, 32624u), Struct_2(true)))).c, Struct_5(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.d.x, var_0.a.x), ~var_0.c.d.xx), var_0.b, func_5(_wgslsmith_mult_vec4_i32(u_input.e, vec4<i32>(2147483647i, -3808i, u_input.e.x, 2147483647i)), Struct_5(var_0.c.d.zw, vec4<i32>(-76895i, var_1.x, -31967i, 3977i), Struct_4(vec4<i32>(var_0.b.x, 0i, u_input.e.x, var_1.x), vec2<f32>(var_0.c.b.x, 627f), 45874i, var_0.c.d, var_0.c.e)), var_0.c, Struct_5(var_0.c.d.zz, vec4<i32>(0i, u_input.e.x, -1i, var_1.x), Struct_4(var_0.c.a, vec2<f32>(-348f, var_0.c.b.x), var_1.x, vec4<u32>(var_0.a.x, var_0.c.d.x, u_input.a.x, 1u), Struct_2(var_0.c.e.a)))).c)), var_0.c, Struct_5(abs(u_input.a.yy), vec4<i32>(var_0.c.c ^ 1i, var_1.x, i32(-1i) * -24912i, ~var_1.x) ^ vec4<i32>(-u_input.e.x, u_input.e.x ^ var_0.c.c, _wgslsmith_sub_i32(var_1.x, 176i), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e)), var_0.c));
    var var_2 = ~firstTrailingBit(func_5((vec4<i32>(12048i, -24869i, 19617i, 2147483647i) & var_0.c.a) ^ _wgslsmith_sub_vec4_i32(u_input.e, vec4<i32>(var_0.c.a.x, u_input.e.x, var_1.x, 17588i)), func_5(vec4<i32>(-20493i, 19694i, -16600i, -1i), func_5(var_0.c.a, Struct_5(vec2<u32>(u_input.c.x, 4294967295u), u_input.e, var_0.c), Struct_4(vec4<i32>(var_0.b.x, var_1.x, -4912i, 0i), vec2<f32>(var_0.c.b.x, 107f), u_input.e.x, var_0.c.d, Struct_2(false)), Struct_5(vec2<u32>(0u, var_0.c.d.x), vec4<i32>(19548i, -31065i, var_1.x, 62176i), Struct_4(var_0.b, var_0.c.b, var_0.c.c, var_0.c.d, Struct_2(var_0.c.e.a)))), Struct_4(vec4<i32>(-1i, var_0.b.x, 0i, -61465i), vec2<f32>(-459f, 327f), 2147483647i, vec4<u32>(u_input.d, 0u, u_input.b, u_input.a.x), Struct_2(false)), func_5(vec4<i32>(-31481i, 0i, u_input.e.x, 1i), Struct_5(vec2<u32>(44668u, u_input.a.x), u_input.e, Struct_4(vec4<i32>(u_input.e.x, u_input.e.x, -4629i, var_1.x), vec2<f32>(var_0.c.b.x, var_0.c.b.x), 0i, var_0.c.d, var_0.c.e)), var_0.c, Struct_5(vec2<u32>(var_0.c.d.x, u_input.d), var_0.b, Struct_4(u_input.e, vec2<f32>(var_0.c.b.x, 386f), -16479i, var_0.c.d, Struct_2(false))))), func_5(-u_input.e, Struct_5(vec2<u32>(0u, 60351u), vec4<i32>(-19933i, var_1.x, 57049i, 29096i), var_0.c), var_0.c, func_5(u_input.e, Struct_5(vec2<u32>(20311u, var_0.a.x), u_input.e, Struct_4(vec4<i32>(var_0.c.a.x, 1i, 1i, u_input.e.x), vec2<f32>(var_0.c.b.x, var_0.c.b.x), -1025i, vec4<u32>(u_input.b, var_0.a.x, u_input.b, 1u), Struct_2(var_0.c.e.a))), var_0.c, Struct_5(vec2<u32>(var_0.a.x, var_0.c.d.x), u_input.e, Struct_4(vec4<i32>(37436i, -1i, 2147483647i, var_1.x), var_0.c.b, 0i, var_0.c.d, var_0.c.e)))).c, Struct_5(select(var_0.a, u_input.c, false), abs(vec4<i32>(var_1.x, -1i, u_input.e.x, var_1.x)), Struct_4(var_0.b, var_0.c.b, -52260i, var_0.c.d, var_0.c.e))).a.x);
    var_1 = vec3<i32>(~var_1.x, _wgslsmith_mod_i32(7857i, var_1.x), _wgslsmith_sub_i32(~2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(-75966i, -1i, 20975i), vec3<i32>(var_0.c.c, 2147483647i, 2147483647i)), -var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.c.d | vec4<u32>(~32527u, 10994u, ~71895u, u_input.c.x)));
}

