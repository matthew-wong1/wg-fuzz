struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: i32) -> i32 {
    let var_0 = -397f;
    var var_1 = Struct_2(u_input.e.x > max(29091u, _wgslsmith_div_u32(u_input.a << (u_input.e.x % 32u), abs(u_input.d.x))), vec3<i32>(firstTrailingBit(u_input.b), arg_3, countOneBits(-2147483647i)), -arg_3);
    let var_2 = !select(!select(select(vec4<bool>(false, global0.x, var_1.a, var_1.a), vec4<bool>(true, true, global0.x, true), vec4<bool>(true, true, true, global0.x)), !vec4<bool>(true, true, true, var_1.a), true), !(!select(vec4<bool>(false, global0.x, true, true), vec4<bool>(true, global0.x, true, global0.x), var_1.a)), select(vec4<bool>(false, all(vec4<bool>(false, true, false, false)), true, true), vec4<bool>(false & global0.x, var_0 >= -1344f, all(vec4<bool>(true, true, var_1.a, false)), select(var_1.a, true, true)), vec4<bool>(global0.x, global0.x && global0.x, var_1.a, var_1.b.x != -37162i)));
    let var_3 = Struct_5(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1532f)), _wgslsmith_f_op_f32(select(-1350f, var_0, true)))))), false, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(38060i, 1i), -1i), arg_1), vec2<i32>(countOneBits(var_1.b.x), abs(-15980i))));
    let var_4 = all(select(var_2, vec4<bool>(_wgslsmith_mod_u32(1u, 4294967295u) < max(u_input.c, 0u), var_3.c, any(vec2<bool>(false, false)), var_1.a), global0.x));
    return ~(-2147483647i);
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_5(global0.x, -1143f, global0.x, -vec2<i32>(_wgslsmith_mult_i32(1i, 0i), func_3(-u_input.b, u_input.b << (u_input.c % 32u), firstTrailingBit(-1i), 4574i << (u_input.c % 32u))));
    let var_1 = u_input.d;
    var_0 = Struct_5(!(!any(select(global0.yy, vec2<bool>(false, var_0.a), global0.zx))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2610f + _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(1538f, 607f))), _wgslsmith_div_f32(-185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b)))))), !(-min(var_0.d.x, var_0.d.x) >= -1i), var_0.d);
    let var_2 = var_0.d;
    let var_3 = var_1;
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-123f, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-843f, arg_0.x)) * _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), -1015f)), Struct_3(!vec3<bool>(!var_0.a, select(true, var_0.c, global0.x), var_0.a && false), any(vec4<bool>(arg_0.x < var_0.b, any(global0.zx), !var_0.c, var_0.d.x > 27484i)), Struct_2(var_0.c, vec3<i32>(u_input.b, var_0.d.x, select(-36702i, var_2.x, var_0.c)), u_input.b), Struct_2(!(var_0.b == arg_0.x), -(~vec3<i32>(var_0.d.x, var_0.d.x, var_2.x)), -abs(var_0.d.x)), Struct_2(false, -vec3<i32>(var_0.d.x, var_2.x, var_0.d.x), var_2.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> Struct_3 {
    var var_0 = !vec3<bool>(all(!select(vec4<bool>(arg_1.b.e.a, true, false, arg_0.a), vec4<bool>(arg_1.b.d.a, true, arg_0.a, false), arg_0.a)), global0.x, !arg_1.b.a.x | (!arg_1.b.e.a & !arg_0.a));
    var var_1 = arg_1.a.yz;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-488f)))), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -172f, var_1.x, -189f)))).a.x, arg_1.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-166f, arg_1.a.x, var_1.x, 429f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_1.a.x, -1000f, 238f))) - vec4<f32>(-761f, _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(min(arg_1.a.x, var_1.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a.x, -237f), -1000f), arg_1.a.x)), vec4<bool>(any(vec2<bool>(!arg_0.a, false)), false, arg_0.a, true)));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1089f, var_2.x, 718f, 2088f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1264f, arg_1.a.x, -102f, 1297f), vec4<f32>(-465f, -1000f, var_2.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1412f, -496f, var_1.x, var_2.x)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-882f))), _wgslsmith_f_op_f32(-1289f + 1000f), _wgslsmith_f_op_f32(abs(-908f)), 1000f) - vec4<f32>(1890f, _wgslsmith_div_f32(-348f, 715f), 1386f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1964f - -403f) - _wgslsmith_f_op_f32(min(-240f, -526f))))));
    global0 = !vec3<bool>(arg_0.a, global0.x, global0.x);
    return Struct_3(select(arg_1.b.a, vec3<bool>((true == global0.x) && true, false, (var_0.x && true) == true), arg_1.b.a), !(!var_0.x), arg_0, Struct_2(true, arg_0.b, (_wgslsmith_mod_i32(-1i, 2147483647i) | -u_input.b) ^ _wgslsmith_dot_vec3_i32(abs(arg_0.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 44555i, 55726i), arg_1.b.c.b))), func_2(vec4<f32>(_wgslsmith_f_op_f32(sign(315f)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -2111f)))).b.e);
}

fn func_5(arg_0: Struct_3) -> bool {
    global0 = vec3<bool>(true, all(!(!select(vec4<bool>(false, true, arg_0.d.a, arg_0.c.a), vec4<bool>(arg_0.d.a, arg_0.b, true, global0.x), vec4<bool>(global0.x, true, false, true)))), all(!select(select(vec4<bool>(arg_0.d.a, global0.x, true, global0.x), vec4<bool>(true, true, arg_0.a.x, true), vec4<bool>(false, global0.x, false, true)), !vec4<bool>(global0.x, arg_0.c.a, false, global0.x), !arg_0.c.a)));
    var var_0 = true;
    let var_1 = select(!(!all(!vec4<bool>(arg_0.b, false, true, false))), true, true);
    var var_2 = u_input.d.x;
    let var_3 = true || arg_0.b;
    return !(!all(arg_0.a));
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    global0 = select(arg_0, vec3<bool>(!(global0.x | global0.x), !any(vec4<bool>(arg_0.x, false, false, false)), func_5(func_4(Struct_2(false, vec3<i32>(-1i, 0i, u_input.b), -1i), func_2(vec4<f32>(1000f, -180f, -590f, 850f))))), !global0.x | !select(!arg_0.x, arg_0.x & true, false));
    var var_0 = ~u_input.d.zyz;
    var var_1 = firstLeadingBit(max(_wgslsmith_sub_i32(26355i, u_input.b) & 1614i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b, -38781i), -17059i))) <= select(firstTrailingBit(~reverseBits(u_input.b)), firstTrailingBit(1i), true);
    global0 = arg_0;
    global0 = func_4(Struct_2(arg_0.x, firstLeadingBit(vec3<i32>(u_input.b, u_input.b, 2147483647i)) >> ((~vec3<u32>(30215u, 0u, 1u) << (vec3<u32>(u_input.c, var_0.x, 69944u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~1i << ((var_0.x >> (95940u % 32u)) % 32u)), func_2(vec4<f32>(-101f, _wgslsmith_f_op_f32(-1527f * -1424f), 339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-785f)))))).a;
    return ~(~(~var_0.xz)) ^ abs(vec2<u32>(~13013u, _wgslsmith_mult_u32(18967u, var_0.x)));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1243f, -477f, 574f, -479f) * vec4<f32>(1000f, 1000f, -1929f, -500f))))).b.e;
    let var_1 = select(!vec4<bool>(true, all(vec2<bool>(var_0.a, false)), !select(arg_2, global0.x, true), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-835f, 227f, 1050f, -1724f)))).b.e.a), !(!vec4<bool>(true, any(vec4<bool>(false, false, global0.x, false)), !var_0.a, all(vec4<bool>(arg_2, true, var_0.a, true)))), !(!(!arg_2)));
    let var_2 = select(vec4<bool>(true, func_4(Struct_2(!var_0.a, _wgslsmith_mod_vec3_i32(var_0.b, vec3<i32>(-20544i, 0i, -41423i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, 40311i, 1i), vec4<i32>(var_0.b.x, u_input.b, -31387i, 1365i))), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(340f, 596f, 1948f) - vec3<f32>(-122f, -455f, -405f)), func_2(vec4<f32>(1000f, 253f, -527f, 193f)).b)).d.a, -2147483647i != _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, u_input.b, -11648i, u_input.b), countOneBits(vec4<i32>(u_input.b, u_input.b, arg_1.a, var_0.c))), !((global0.x != false) | !global0.x)), var_1, true);
    global0 = !(!func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(502f, 1000f, 263f, -1000f)))).b.a);
    let var_3 = (_wgslsmith_add_u32(0u, arg_0.x) > 4294967295u) || all(vec2<bool>(select(var_1.x, true, false) | func_5(Struct_3(var_1.zwy, arg_2, Struct_2(arg_2, vec3<i32>(19773i, u_input.b, 1i), arg_1.a), Struct_2(var_1.x, var_0.b, var_0.c), Struct_2(arg_2, var_0.b, arg_1.b))), all(!var_2)));
    return StorageBuffer(vec4<u32>(0u, _wgslsmith_mod_u32(39169u, abs(~92050u)), max(_wgslsmith_sub_u32(u_input.c, arg_0.x), ~18385u), ((u_input.e.x | 25222u) ^ 1u) >> (abs(4294967295u) % 32u)), arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1420f, -1114f, 607f, -899f)), vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -581f, 247f, -1144f), vec4<f32>(1216f, 254f, -544f, -1000f), var_1)))))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(firstLeadingBit(func_1(!(!vec3<bool>(global0.x, global0.x, false)))), Struct_1(-1i, -(~(-2147483647i)) ^ -(u_input.b & u_input.b)), !global0.x);
}

