struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(~arg_2.a, select(_wgslsmith_dot_vec3_u32(u_input.a, ~(~u_input.a)), u_input.b, true));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f)), _wgslsmith_f_op_f32(-360f * -531f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f * 436f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(365f, 1982f))), -2078f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(599f - 408f))), _wgslsmith_f_op_f32(step(-1036f, _wgslsmith_f_op_f32(round(621f))))))));
    let var_1 = select(vec4<bool>(true, arg_1, !(!arg_1) && (300f < var_0.x), 0u <= arg_3), vec4<bool>(_wgslsmith_clamp_i32(-1149i, _wgslsmith_add_i32(arg_0.x, arg_0.x), countOneBits(-2147483647i)) > arg_0.x, !any(vec2<bool>(true, true)), !select(false, all(vec3<bool>(arg_1, arg_1, arg_1)), true), any(vec2<bool>(arg_1, false)) & arg_1), true);
    var var_2 = Struct_1(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(39832u, 1u)), ~arg_3);
    var_2 = Struct_1(arg_3, 3463u);
    var_2 = Struct_1(0u, ~reverseBits(45815u));
    return arg_2;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = func_3(-min(min(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-164i, -5055i)) >> (_wgslsmith_clamp_vec2_u32(arg_1.wy, u_input.a.zz, vec2<u32>(u_input.a.x, 1u)) % vec2<u32>(32u)), vec2<i32>(1i, 1i)), all(vec2<bool>(true, arg_0)), func_2(-10883i, select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, 4705i, -21215i, -2147483647i)), -vec4<i32>(51235i, -21835i, -23212i, -1i), !(!vec4<bool>(arg_0, arg_0, arg_0, true))), func_2(max(countOneBits(2147483647i), firstTrailingBit(-2147483647i)), max(vec4<i32>(28287i, 12080i, 38378i, 27844i), min(vec4<i32>(-5251i, -2147483647i, -25630i, 1i), vec4<i32>(-54123i, -47077i, 25209i, 1i))), func_3(vec2<i32>(0i, 2147483647i) << (u_input.a.yz % vec2<u32>(32u)), true, arg_3, arg_2.a))), countOneBits(19246u));
    let var_1 = Struct_1(_wgslsmith_div_u32(1u, arg_1.x), _wgslsmith_mod_u32(~var_0.b >> (4294967295u % 32u), u_input.c) | func_2(abs(-3429i), _wgslsmith_mod_vec4_i32(~vec4<i32>(38361i, -28719i, 0i, 2147483647i), -vec4<i32>(2147483647i, 3962i, -2147483647i, -15959i)), func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-13075i, 0i), vec2<i32>(-38841i, -46697i)), true, arg_3, var_0.b ^ u_input.b)).b);
    var var_2 = select(select(vec3<bool>(any(vec2<bool>(false, true)), !arg_0, arg_0), vec3<bool>(true && arg_0, true, -1i < firstTrailingBit(0i)), !(!select(vec3<bool>(arg_0, true, false), vec3<bool>(false, arg_0, false), true))), vec3<bool>(any(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0))), arg_0, arg_0), !vec3<bool>(false, arg_0, arg_0));
    let var_3 = -53047i;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-162f, -374f, 440f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1353f, 911f, 1072f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(859f, -681f, 730f)))))));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_4.xy * var_4.xz)));
}

fn func_5(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = func_2(_wgslsmith_div_i32(-abs(_wgslsmith_add_i32(-21692i, 39596i)), 1i), -max(vec4<i32>(-19149i, 0i, 23376i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), func_2(_wgslsmith_sub_i32(i32(-1i) * -10500i, ~(-5576i)), firstLeadingBit(~(~vec4<i32>(4633i, -18506i, 0i, 1i))), Struct_1(countOneBits(~119546u), u_input.a.x)));
    var_0 = Struct_1(var_0.a, ~u_input.a.x);
    let var_1 = true && !(!(!all(vec3<bool>(true, false, false))));
    var_0 = Struct_1(u_input.c, ~(~0u));
    var var_2 = min(vec2<i32>(~_wgslsmith_sub_i32(~(-48904i), countOneBits(-36983i)), countOneBits(_wgslsmith_div_i32(1i, 1i))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -47989i, 10723i), vec3<i32>(2147483647i, -1i, -2147483647i), vec3<i32>(0i, -2147483647i, -14079i)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(8886i, 10459i, -25577i), vec3<i32>(1581i, 2147483647i, -26150i), vec3<bool>(var_1, var_1, false)), _wgslsmith_div_vec3_i32(vec3<i32>(16648i, -2147483647i, 10803i), vec3<i32>(-17482i, -2147483647i, -1i)))), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), ~vec2<i32>(0i, -1i))));
    return select(!vec3<bool>(true, select(!var_1, arg_0.x == -733f, var_1 || false), !(var_1 || var_1)), select(!(!(!vec3<bool>(var_1, false, false))), vec3<bool>(!(arg_0.x >= 1311f), true, var_1), vec3<bool>(select(var_2.x, var_2.x, var_1) >= reverseBits(-2844i), false, var_2.x < ~(-1i))), !vec3<bool>(false, var_1, true));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0.x;
    var_0 = func_5(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-476f, 795f)))), -693f)))).x;
    var_0 = all(arg_1);
    let var_1 = func_3(vec2<i32>(-1i) * -(~(~vec2<i32>(arg_2, arg_2))), true | ((min(-32721i, arg_2) < arg_2) || arg_3.x), func_2(_wgslsmith_clamp_i32(arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(-16306i, -27905i, 53563i), vec3<i32>(arg_2, arg_2, arg_2)) >> (func_3(vec2<i32>(arg_2, -1i), arg_0.x, Struct_1(u_input.b, 26376u), u_input.b).b % 32u), _wgslsmith_mod_i32(1i, abs(-32262i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-38599i, arg_2, arg_2, -2147483647i) | vec4<i32>(arg_2, -3331i, 2147483647i, arg_2), abs(~vec4<i32>(arg_2, 26731i, arg_2, -32955i))), func_3(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 4768i, arg_2, arg_2), vec4<i32>(arg_2, arg_2, arg_2, arg_2)), i32(-1i) * -9104i), false, func_3(vec2<i32>(arg_2, arg_2), !arg_1.x, Struct_1(u_input.a.x, 4294967295u), min(35510u, 28491u)), u_input.c)), func_3(~vec2<i32>(-1i, reverseBits(arg_2)), !arg_1.x, Struct_1(_wgslsmith_mult_u32(~u_input.a.x, ~u_input.b), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c, u_input.a.x), ~1u)), ~(~u_input.b) >> (0u % 32u)).a);
    return var_1;
}

fn func_1() -> Struct_1 {
    return func_6(func_5(_wgslsmith_f_op_vec2_f32(func_4(true && all(vec3<bool>(true, false, true)), ~countOneBits(vec4<u32>(u_input.a.x, u_input.c, 1u, u_input.b)), func_3(reverseBits(vec2<i32>(1i, -36892i)), true, func_2(11129i, vec4<i32>(2147483647i, 2147483647i, -62039i, 28999i), Struct_1(u_input.c, u_input.a.x)), 82838u & u_input.b), func_2(-52920i << (u_input.c % 32u), vec4<i32>(-31704i, 1i, -2147483647i, -1i), func_3(vec2<i32>(-23501i, 2147483647i), true, Struct_1(u_input.a.x, 8462u), u_input.a.x))))), vec2<bool>(true, true), -1i, vec4<bool>(select(!select(false, false, true), true, any(vec3<bool>(true, true, true))), !(~u_input.a.x < 6699u), all(vec4<bool>(true, u_input.a.x <= 47296u, select(true, true, true), all(vec4<bool>(false, true, false, true)))), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, any(vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true)), true) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(161f + 210f) * _wgslsmith_f_op_f32(floor(-765f)))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1360f, -112f)))));
    let var_1 = func_1();
    var var_2 = !vec2<bool>(_wgslsmith_sub_i32(2147483647i, 0i >> (1u % 32u)) <= max(countOneBits(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(42720i, 28291i), vec2<i32>(-1i, 30610i))), true);
    var var_3 = Struct_1(58170u, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, 0u, ~183u), min(4294967295u, 11204u)), ~u_input.a.x));
    let var_4 = _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(~var_1.a, func_3(vec2<i32>(-26967i, -1i), false, Struct_1(1u, u_input.a.x), 0u).a), ~var_3.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.b), vec2<u32>(0u, var_3.a)), 18577u), vec4<u32>(var_1.a, func_2(_wgslsmith_add_i32(-1i, ~1i), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, -1i, 27145i), vec4<i32>(70514i, -13150i, 54695i, 2147483647i), vec4<i32>(-1i, -3855i, 1i, -30084i))), func_1()).a, var_3.a, select(_wgslsmith_clamp_u32(~0u, ~var_1.b, u_input.c), 1u, any(vec3<bool>(false, true, var_2.x)))));
    var_3 = func_1();
    var_2 = !select(select(vec2<bool>(true, true), !(!vec2<bool>(var_2.x, false)), vec2<bool>(true, select(true, var_2.x, var_2.x))), !(!select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), var_2.x)), !func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-599f, 283f) + vec2<f32>(669f, -1091f))).xy);
    var_2 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(416f, -1386f)), vec2<f32>(-894f, 1536f)))))).zy;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.wz & ~abs(u_input.a.yz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2306f, _wgslsmith_div_f32(-948f, -701f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))));
}

