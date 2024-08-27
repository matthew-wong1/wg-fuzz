struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec3<u32>(0u, 4294967295u, 29874u), 63572u), Struct_2(vec3<u32>(0u, 4294967295u, 0u), 4294967295u), Struct_2(vec3<u32>(4294967295u, 55139u, 7779u), 0u), Struct_2(vec3<u32>(7559u, 19094u, 0u), 1u), Struct_2(vec3<u32>(0u, 52562u, 4473u), 22859u), Struct_2(vec3<u32>(78166u, 32445u, 0u), 52506u), Struct_2(vec3<u32>(29960u, 21811u, 12952u), 4294967295u), Struct_2(vec3<u32>(1u, 43331u, 1u), 0u), Struct_2(vec3<u32>(28092u, 1u, 91486u), 0u), Struct_2(vec3<u32>(4294967295u, 4294967295u, 0u), 64883u), Struct_2(vec3<u32>(1u, 4294967295u, 22376u), 1u), Struct_2(vec3<u32>(31442u, 4294967295u, 22956u), 1u), Struct_2(vec3<u32>(1696u, 1875u, 6296u), 0u), Struct_2(vec3<u32>(56852u, 2011u, 72666u), 1u), Struct_2(vec3<u32>(4294967295u, 92417u, 4294967295u), 1u), Struct_2(vec3<u32>(1u, 4294967295u, 1u), 0u), Struct_2(vec3<u32>(86584u, 4294967295u, 1u), 11733u), Struct_2(vec3<u32>(10347u, 81714u, 61508u), 10018u), Struct_2(vec3<u32>(15859u, 0u, 2733u), 63712u), Struct_2(vec3<u32>(2538u, 1u, 1u), 6266u), Struct_2(vec3<u32>(0u, 0u, 1u), 31773u), Struct_2(vec3<u32>(70565u, 1u, 15727u), 7917u), Struct_2(vec3<u32>(8939u, 1u, 1u), 39215u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 23>();
    let var_0 = Struct_2(u_input.c.wxw, ~(~(~u_input.c.x)));
    global0 = array<Struct_2, 23>();
    return -25653i;
}

fn func_3() -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-234f * _wgslsmith_f_op_f32(step(650f, 1383f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(950f, 2296f)), -1648f), true)))), -396f, 1f);
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i, countOneBits(~u_input.b), (select(u_input.a, 1i, true) ^ 2147483647i) | ~(-1i)), vec3<i32>(func_1(), select(firstTrailingBit(-16515i), 6396i, true), 54138i) | select(vec3<i32>(abs(-1i), u_input.a, 11588i << (1u % 32u)), ~(vec3<i32>(u_input.a, -17059i, u_input.b) ^ vec3<i32>(-2147483647i, -2147483647i, 1i)), vec3<bool>(false, -41081i > u_input.b, true)));
    let var_2 = _wgslsmith_f_op_f32(-1440f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-541f, var_0.x, true)))))));
    let var_3 = Struct_2(~min(select(reverseBits(u_input.c.yzy), vec3<u32>(42085u, u_input.c.x, u_input.c.x) >> (u_input.c.wzw % vec3<u32>(32u)), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), select(vec3<u32>(1u, u_input.c.x, 35502u), u_input.c.yxz, vec3<bool>(false, true, false)))), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x >> (68170u % 32u), ~abs(u_input.c.x)), 1u));
    var_1 = vec3<i32>(_wgslsmith_div_i32(-1i, (u_input.b << ((var_3.b | u_input.c.x) % 32u)) ^ 10584i), -2147483647i, reverseBits(-(~_wgslsmith_mod_i32(u_input.b, u_input.a))));
    return _wgslsmith_f_op_f32(select(var_2, var_0.x, !(false | ((1i >> (var_3.a.x % 32u)) == _wgslsmith_mult_i32(u_input.a, -1i)))));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(u_input.c.xxx, u_input.c.x);
    var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(~u_input.c.x, 94208u << (u_input.c.x % 32u)), 30339u, u_input.c.x)), 23u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(253f, -844f, _wgslsmith_f_op_f32(func_3()), 1463f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(268f, 418f, 449f, 275f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-475f, -1100f, -1062f, 451f), vec4<f32>(1066f, 1000f, 194f, -409f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1083f, 442f, -2755f, -105f)))))))), _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x & 50385u, 4294967295u), countOneBits(61479u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)), -225f)), countOneBits(countOneBits(min(vec2<i32>(-26715i, u_input.a), vec2<i32>(24929i, 0i)))) ^ countOneBits(vec2<i32>(u_input.b, -1006i)));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 23u)];
    let var_3 = u_input.a;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<Struct_2, 23>();
    let var_0 = arg_1.x;
    global0 = array<Struct_2, 23>();
    let var_1 = -21900i;
    let var_2 = false && any(vec2<bool>(any(vec2<bool>(true, false)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(396f, _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-376f + 2602f), _wgslsmith_f_op_f32(ceil(arg_0.d.x))), _wgslsmith_f_op_f32(-arg_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-1161f + _wgslsmith_f_op_f32(1000f + 942f)), -193f, arg_0.a.x, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 495f, arg_0.b.x, arg_0.d.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1327f, arg_0.a.x, arg_0.d.x, arg_0.d.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.a, vec4<f32>(-1091f, 1286f, arg_0.d.x, -1798f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.b.x, 1319f, arg_0.b.x) - vec4<f32>(1351f, arg_0.b.x, -1000f, 372f))))), max(u_input.c.x, abs(~countOneBits(79800u))), arg_0.d, ~arg_1.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1583f + -895f), _wgslsmith_f_op_f32(min(-660f, 1000f)), _wgslsmith_f_op_f32(-2035f * 274f), _wgslsmith_f_op_f32(f32(-1f) * -1371f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(612f, 675f, -811f, 1053f) + vec4<f32>(1087f, 884f, 619f, -634f)))), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x, 1u & u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-461f, 1985f))), ~countOneBits(~vec2<i32>(18646i, u_input.a))), vec4<i32>(u_input.b, abs(_wgslsmith_add_i32(~(-15273i), 30654i & u_input.b)), ~14528i, _wgslsmith_mult_i32(~u_input.a | func_1(), countOneBits(func_2()))));
    let var_1 = var_0.d;
    var var_2 = _wgslsmith_f_op_f32(sign(-128f));
    var var_3 = vec3<u32>(41610u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, u_input.c), vec4<u32>(u_input.c.x | var_0.c, _wgslsmith_add_u32(var_0.c, u_input.c.x), max(u_input.c.x, u_input.c.x), ~u_input.c.x)), var_0.c >> ((~(u_input.c.x >> (u_input.c.x % 32u)) >> (~u_input.c.x % 32u)) % 32u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(7851u, _wgslsmith_dot_vec2_u32(u_input.c.yw, vec2<u32>(var_0.c, u_input.c.x)), 0u), _wgslsmith_sub_u32(var_0.c, ~var_0.c) | _wgslsmith_sub_u32(~u_input.c.x, var_0.c)));
    var var_4 = select(select(~_wgslsmith_clamp_vec2_u32(~var_3.xy, u_input.c.zz, ~var_3.yy), firstLeadingBit(min(vec2<u32>(var_3.x, 10920u), vec2<u32>(18580u, 50519u) & var_3.yz)), vec2<bool>(false, (var_0.c >= 1u) || any(vec3<bool>(true, true, true)))), max(~u_input.c.yx, _wgslsmith_add_vec2_u32(var_3.zy, vec2<u32>(var_0.c, var_3.x))), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), false));
    var var_5 = Struct_1(vec4<f32>(-396f, var_0.b.x, var_0.a.x, var_1.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d.x)) - 530f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + _wgslsmith_f_op_f32(-1000f - -1802f)), -616f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(167f, var_1.x, 328f, 700f))))))), (_wgslsmith_div_u32(36002u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3.x, var_3.x, 60937u), u_input.c)) << (_wgslsmith_mult_u32(4294967295u, var_3.x) % 32u)) & _wgslsmith_div_u32(func_4(Struct_1(var_0.a, var_0.a, var_3.x, var_0.d, vec2<i32>(15246i, var_0.e.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, var_0.e.x, u_input.b, 51388i), vec4<i32>(var_0.e.x, -1i, -6679i, 32307i), vec4<i32>(-52344i, var_0.e.x, 1i, u_input.b))).c, u_input.c.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_0.b.zw, _wgslsmith_f_op_vec2_f32(vec2<f32>(1603f, var_0.a.x) - var_0.a.wy), false)))), min(reverseBits(vec2<i32>(~9676i, _wgslsmith_mult_i32(0i, 50578i))), abs(vec2<i32>(34369i, 10438i)) >> (var_3.xz % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(var_0.b.yy)), _wgslsmith_f_op_vec2_f32(-var_5.d), var_0.c, 2139i);
}

