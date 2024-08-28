struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = ~u_input.c;
    global0 = u_input.c << (select(0u, ~(~max(86557u, u_input.b.x)), !any(vec3<bool>(false, false, true))) % 32u);
    var var_0 = select(select(vec3<bool>(true, false, true), vec3<bool>(true, true || all(vec2<bool>(false, true)), true), select(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), vec3<bool>(true, true, true), true)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, any(vec4<bool>(true, false, true, false))), all(vec4<bool>(true, true, true, true))), select(vec3<bool>(select(true, true, true), select(false, false, false), all(vec4<bool>(true, false, false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), true), false), 783f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) - -702f))));
    var_0 = vec3<bool>(var_0.x, true, select(!var_0.x, var_0.x, true) & !all(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, true, true))));
    let var_1 = vec3<f32>(-578f, _wgslsmith_f_op_f32(-1034f - 958f), _wgslsmith_f_op_f32(-921f - 560f));
    return !(u_input.a < (u_input.b.x ^ u_input.b.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = true || all(vec4<bool>(!any(vec4<bool>(true, false, true, true)), true, true, true));
    global0 = -(u_input.c << (~1u % 32u));
    var var_1 = Struct_1(vec3<bool>(true, !(var_0 | func_3()), var_0), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c.x, u_input.c, -49928i, 23419i), vec4<i32>(-70865i, arg_1.b.x, u_input.c, -2147483647i))), vec4<i32>(-10745i, -51748i, -12746i, u_input.c)), vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(arg_1.c.x), _wgslsmith_mod_i32(-2147483647i, 1771i)), 62284i, u_input.c, abs(u_input.c))), _wgslsmith_add_vec4_u32(arg_1.a, vec4<u32>(~u_input.a, ~(~u_input.a), 4294967295u, _wgslsmith_mod_u32(arg_1.a.x, u_input.b.x) << (~1736u % 32u))), firstLeadingBit(_wgslsmith_mult_u32(~u_input.a, 1u & arg_1.a.x)));
    let var_2 = select(select(select(!(!vec4<bool>(var_1.a.x, false, var_1.a.x, false)), vec4<bool>(u_input.c <= 10468i, func_3(), true, !var_1.a.x), vec4<bool>(false, false, select(var_1.a.x, false, false), func_3())), select(vec4<bool>(func_3(), true, !var_0, var_1.c.x == 4477u), !vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(any(vec4<bool>(var_0, false, var_0, true)), true, var_0 || true, !var_1.a.x)), select(select(select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_1.a.x, false, var_0, true), var_1.a.x), !vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, false, var_0, true)), !(!vec4<bool>(var_1.a.x, true, var_1.a.x, true)), vec4<bool>(select(var_0, var_1.a.x, var_0), true, var_1.a.x, var_0 || false))), select(select(!vec4<bool>(false, true, var_1.a.x, var_1.a.x), select(!vec4<bool>(false, var_1.a.x, false, true), select(vec4<bool>(var_1.a.x, var_0, var_0, true), vec4<bool>(var_0, false, var_1.a.x, false), var_1.a.x), select(vec4<bool>(var_1.a.x, true, var_1.a.x, false), vec4<bool>(var_1.a.x, true, var_0, true), var_0)), !vec4<bool>(var_1.a.x, false, var_1.a.x, true)), !vec4<bool>(true, any(vec2<bool>(true, var_0)), var_0, true), -_wgslsmith_sub_i32(var_1.b.x, u_input.c) != _wgslsmith_dot_vec4_i32(var_1.b, select(vec4<i32>(-5022i, u_input.c, 0i, var_1.b.x), var_1.b, true))), select(vec4<bool>(any(select(vec4<bool>(var_0, var_1.a.x, var_1.a.x, false), vec4<bool>(var_0, false, var_0, var_1.a.x), vec4<bool>(true, false, var_1.a.x, false))), var_0, !(2551i < arg_1.c.x), !var_1.a.x), !select(vec4<bool>(var_0, true, true, false), vec4<bool>(true, var_1.a.x, true, true), any(vec3<bool>(var_0, true, var_1.a.x))), vec4<bool>(!var_0, arg_0.x != _wgslsmith_f_op_f32(2188f + arg_0.x), true, true)));
    var_1 = Struct_1(vec3<bool>(any(vec2<bool>(var_2.x, var_2.x & var_1.a.x)), true, true), var_1.b, arg_1.a, ~4294967295u);
    return Struct_1(select(!select(vec3<bool>(var_2.x, var_2.x, false), select(var_1.a, vec3<bool>(true, var_0, var_1.a.x), var_2.x), !vec3<bool>(var_0, var_2.x, true)), vec3<bool>((arg_0.x >= 209f) && true, !(arg_0.x != 1000f), var_0), all(var_2)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(48929i >> (arg_1.a.x % 32u), arg_1.c.x & 17853i, _wgslsmith_add_i32(-24854i, u_input.c)), arg_1.b), -23700i, u_input.c, -51889i), vec4<u32>(abs(select(~4294967295u, ~4294967295u, var_0)), 1u, (firstLeadingBit(4294967295u) >> (var_1.c.x % 32u)) ^ 1u, var_1.d), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, var_1.c.x), abs(1u)));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = false && (u_input.a < _wgslsmith_add_u32(68365u, ~u_input.b.x));
    global0 = -(~_wgslsmith_div_i32(~(-2147483647i), u_input.c));
    let var_1 = vec2<i32>(~_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, 3019i), i32(-1i) * -2501i), u_input.c) & ~arg_0.c;
    var_0 = false;
    var var_2 = arg_0.c;
    return func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2149f, 409f)))))), Struct_3(arg_0.a, arg_0.b, vec2<i32>(2147483647i, -24936i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) * _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x))));
    let var_1 = 1524f;
    global0 = -(i32(-1i) * -21130i);
    var var_2 = select(!select(!(!vec4<bool>(arg_0.a.a.x, false, arg_0.a.a.x, false)), select(vec4<bool>(arg_0.c, arg_0.b.a.x, true, true), vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, true, arg_0.c), !arg_0.b.a.x), false), select(select(select(select(vec4<bool>(true, arg_0.a.a.x, arg_0.c, false), vec4<bool>(arg_0.a.a.x, false, true, arg_0.a.a.x), vec4<bool>(arg_0.b.a.x, true, arg_0.b.a.x, arg_0.c)), !vec4<bool>(arg_0.c, true, arg_0.a.a.x, arg_0.b.a.x), arg_0.b.a.x), select(select(vec4<bool>(arg_0.b.a.x, arg_0.a.a.x, false, false), vec4<bool>(true, true, arg_0.b.a.x, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.b.a.x, true, arg_0.b.a.x)), vec4<bool>(arg_0.b.a.x, true, true, true), true), true), vec4<bool>(!(1395f < var_0.x), true, arg_0.b.a.x == func_3(), !(!arg_0.b.a.x)), arg_0.b.a.x), !(!(_wgslsmith_sub_i32(u_input.c, 15076i) < reverseBits(-1i))));
    var_2 = vec4<bool>(false, false, func_3() && var_2.x, false);
    return Struct_3(arg_0.b.c, ~arg_0.a.b.yxx, arg_0.a.b.wx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -64202i;
    global0 = 64124i;
    let var_0 = func_4(Struct_2(func_1(Struct_3(~vec4<u32>(16712u, u_input.b.x, 0u, u_input.a), vec3<i32>(u_input.c, 1i, -11409i) ^ vec3<i32>(u_input.c, u_input.c, -2147483647i), vec2<i32>(u_input.c, u_input.c))), Struct_1(vec3<bool>(true, true, true), select(vec4<i32>(u_input.c, 1i, 47748i, 1i), vec4<i32>(6831i, -8538i, 17683i, u_input.c), vec4<bool>(true, false, false, true)) << (reverseBits(vec4<u32>(4294967295u, u_input.a, 0u, 34840u)) % vec4<u32>(32u)), countOneBits(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 4294967295u))), _wgslsmith_add_u32(0u, 11117u) ^ ~u_input.b.x), select(true, true, true) || !all(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-649f, _wgslsmith_f_op_f32(410f + -633f)), vec2<f32>(1f, 1f), func_1(Struct_3(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 4294967295u), vec3<i32>(-1i, 2147483647i, u_input.c), vec2<i32>(u_input.c, u_input.c))).a.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-802f, -101f))))))), u_input.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c << (u_input.a % 32u), func_1(Struct_3(vec4<u32>(u_input.b.x, 0u, 0u, u_input.a), vec3<i32>(u_input.c, 44009i, u_input.c), vec2<i32>(-42703i, u_input.c))).b.x, u_input.c, ~(-16898i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -116i, u_input.c, u_input.c), vec4<i32>(u_input.c, 2147483647i, u_input.c, 17060i))));
    let var_1 = Struct_2(Struct_1(vec3<bool>(true, func_3(), true), vec4<i32>(u_input.c, -_wgslsmith_mult_i32(u_input.c, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, var_0.b.x) ^ vec3<i32>(1i, var_0.c.x, 0i), countOneBits(var_0.b)), var_0.b.x), var_0.a << (var_0.a % vec4<u32>(32u)), func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-959f, 116f), vec2<f32>(1220f, -1000f))))), func_4(Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(u_input.c, u_input.c, -16439i, 53137i), vec4<u32>(1u, u_input.a, var_0.a.x, 4294967295u), u_input.b.x), Struct_1(vec3<bool>(false, false, false), vec4<i32>(u_input.c, u_input.c, 6876i, -18561i), vec4<u32>(44269u, u_input.b.x, 4294967295u, 22487u), 1u), false), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -336f))), countOneBits(var_0.a.x), -var_0.c.x)).d), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-500f - 1253f), _wgslsmith_div_f32(383f, -481f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-800f, 1340f) - vec2<f32>(-302f, -881f)), vec2<f32>(-1000f, 1360f))), var_0), true);
    global0 = func_4(var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-580f, 1000f))) + vec2<f32>(-803f, _wgslsmith_f_op_f32(ceil(-949f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -836f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1248f) - _wgslsmith_f_op_f32(-1144f * -589f)))), _wgslsmith_div_u32(func_2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(198f + -236f)), var_0).d, var_0.a.x), var_0.b.x).c.x;
    var var_2 = Struct_1(!var_1.b.a, _wgslsmith_sub_vec4_i32(-vec4<i32>(36596i, _wgslsmith_clamp_i32(u_input.c, 1i, -2147483647i), 1i, 63945i), vec4<i32>(var_0.b.x, -u_input.c, u_input.c, _wgslsmith_add_i32(-15500i, -1i) & u_input.c)), vec4<u32>(51750u, 1u, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1395f, 167f), vec2<f32>(1227f, 1236f))), var_0).d, ~min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.d, var_1.b.d, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)), 87200u ^ var_0.a.x)), 0u);
    var_2 = func_1(func_4(Struct_2(Struct_1(!var_2.a, countOneBits(vec4<i32>(-2147483647i, var_0.c.x, 3873i, 1i)), vec4<u32>(u_input.a, var_2.c.x, var_0.a.x, 24242u), 45678u), Struct_1(var_1.a.a, var_2.b, var_0.a, _wgslsmith_mult_u32(u_input.a, 4294967295u)), all(vec4<bool>(true, var_2.a.x, true, var_2.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(257f, -873f))))), ~_wgslsmith_sub_u32(func_1(var_0).d, firstLeadingBit(u_input.a)), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.c, u_input.c);
}

