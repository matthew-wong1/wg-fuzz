struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: u32) -> i32 {
    global0 = true;
    let var_0 = arg_2.x;
    var var_1 = Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, 12969i, arg_0, arg_0) | -vec4<i32>(arg_0, -8286i, arg_0, arg_0), firstLeadingBit(-vec4<i32>(0i, 16098i, 0i, arg_0))), vec4<i32>(1300i | arg_0, ~arg_0, arg_0, countOneBits(28205i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-459f, 1153f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(938f, 832f)))) + 1042f)), select(!(!var_0) & true, false, any(vec3<bool>(any(arg_2.xzy), all(vec2<bool>(var_0, arg_1.x)), false))), ~u_input.a.yxx, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(1u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(42817u, u_input.a.x, 24258u), vec3<u32>(arg_3, arg_3, 87748u) & u_input.a.yzw))));
    let var_2 = Struct_2(select(arg_1, arg_1, vec2<bool>(any(vec3<bool>(var_0, var_0, true)) != true, var_1.c)), Struct_1(~u_input.a, _wgslsmith_f_op_f32(-var_1.b.x)), Struct_1(u_input.a << (vec4<u32>(67575u, ~arg_3, ~48751u, _wgslsmith_add_u32(25702u, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1172f, var_1.b.x))))), arg_2, var_1.a.wx);
    var var_3 = !(!(var_1.e > _wgslsmith_add_u32(~129033u, ~arg_3)));
    return 0i;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_clamp_vec4_i32(abs(reverseBits(vec4<i32>(-17338i, arg_1, -2147483647i, -6809i))), abs(min(-vec4<i32>(arg_1, 1i, 0i, arg_1), max(vec4<i32>(0i, -2147483647i, arg_2.x, arg_3.x), vec4<i32>(-36518i, 42579i, arg_2.x, 0i)))), vec4<i32>(arg_2.x, arg_0 | -23540i, _wgslsmith_sub_i32(func_3(-10463i, vec2<bool>(false, false), vec4<bool>(false, false, false, true), 26105u), arg_3.x), arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1016f, -1220f)), vec2<f32>(-1329f, -1149f), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-952f, -1082f)))), true, vec3<u32>(4294967295u, 1u, _wgslsmith_mod_u32(~(~1u), u_input.b)), _wgslsmith_clamp_u32(~1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), ~vec3<u32>(u_input.a.x, u_input.a.x, 2128u)) % 32u), ~4294967295u, ~(~66733u)));
    global0 = true;
    return vec4<f32>(161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(206f - var_0.b.x)))), -122f);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> bool {
    global0 = arg_0.a.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(~2147483647i, -arg_0.e.x, max(arg_0.e, -vec2<i32>(func_3(-1i, arg_1.yx, vec4<bool>(arg_0.d.x, arg_0.d.x, arg_1.x, false), arg_0.c.a.x), countOneBits(1i))), vec2<i32>(1i, abs(25385i) << (~(arg_0.c.a.x >> (arg_0.c.a.x % 32u)) % 32u))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 389f, 395f, -353f), vec4<f32>(-867f, 333f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 814f)), _wgslsmith_f_op_f32(abs(arg_0.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(121f, arg_0.c.b))), 1527f))));
    var var_1 = !arg_0.a.x;
    global0 = true;
    return !arg_0.d.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = any(!vec3<bool>(true, true, func_2(Struct_2(vec2<bool>(false, false), arg_1, arg_1, vec4<bool>(true, true, false, false), vec2<i32>(-15409i, -28033i)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))));
    let var_0 = -16643i;
    global0 = -193f < _wgslsmith_f_op_vec4_f32(func_4(var_0, _wgslsmith_sub_i32(1i, ~(~var_0)), (_wgslsmith_mult_vec2_i32(vec2<i32>(-10345i, var_0), vec2<i32>(-61421i, var_0)) >> ((u_input.a.wz >> (arg_1.a.xx % vec2<u32>(32u))) % vec2<u32>(32u))) >> (arg_1.a.yx % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_0), vec2<i32>(2147483647i, 10693i)), abs(vec2<i32>(var_0, -14404i)))))).x;
    var var_1 = 1i;
    var var_2 = select(1u ^ u_input.b, ~(~firstLeadingBit(arg_1.a.x) << (u_input.a.x % 32u)), true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_1 = func_1(~reverseBits(4294967295u), Struct_1(u_input.a, _wgslsmith_f_op_f32(trunc(var_0.x))));
    global0 = (0i ^ countOneBits(~(-16086i) >> (u_input.a.x % 32u))) >= _wgslsmith_add_i32(-_wgslsmith_div_i32(~2147483647i, -57435i << (u_input.a.x % 32u)), 0i);
    global0 = any(select(vec3<bool>(!any(vec3<bool>(true, false, false)), true, -1355f < _wgslsmith_f_op_f32(ceil(var_1.b))), select(vec3<bool>(any(vec4<bool>(false, false, true, true)), any(vec3<bool>(false, true, false)), true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), any(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_0.x) * vec2<f32>(525f, 140f)) - vec2<f32>(_wgslsmith_f_op_f32(-1411f - 444f), _wgslsmith_f_op_f32(sign(-826f))))), -vec2<i32>(abs(1i), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -25421i), vec2<i32>(1i, 5683i))), Struct_3(vec4<i32>(-1i, func_3(max(-33203i, -61825i), vec2<bool>(true, true), vec4<bool>(true, true, true, true), 1u), -(~(-22233i)), -(-38480i >> (var_1.a.x % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(657f, -204f) + vec2<f32>(-623f, var_1.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 117f)))), true, vec3<u32>(reverseBits(55080u), 44568u, abs(u_input.a.x) ^ ~29156u), ~_wgslsmith_dot_vec4_u32(var_1.a | vec4<u32>(8221u, var_1.a.x, var_1.a.x, 1u), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(1u, u_input.b, u_input.a.x, 0u)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -857f))));
    let var_3 = select(var_2.c.c & all(vec3<bool>(false, any(vec3<bool>(false, false, true)), var_2.c.c)), false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - -584f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1389f) - _wgslsmith_f_op_f32(var_1.b * var_1.b)))) != -2394f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1541f))) + _wgslsmith_f_op_f32(round(254f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_f_op_f32(step(-1346f, -1139f))) * _wgslsmith_f_op_vec2_f32(max(var_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -1087f) * var_2.a)))) - vec2<f32>(-475f, 451f)), vec3<i32>(var_2.b.x >> (~var_2.c.e % 32u), ~var_2.c.a.x, -_wgslsmith_div_i32(~(-2147483647i), var_2.b.x << (var_1.a.x % 32u))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-20228i, -1i, ~var_2.c.a.x, i32(-1i) * -2147483647i), ~(~vec4<i32>(var_2.c.a.x, var_2.b.x, -1i, 25666i)), ~reverseBits(vec4<i32>(-1i, var_2.b.x, var_2.b.x, 68882i))), select(-vec4<i32>(48577i, var_2.c.a.x, var_2.b.x, var_2.b.x), vec4<i32>(0i, var_2.c.a.x, 2147483647i, 20700i), !vec4<bool>(true, var_2.c.c, var_3, var_2.c.c)) & abs(-var_2.c.a), var_3), _wgslsmith_f_op_f32(min(904f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))));
}

