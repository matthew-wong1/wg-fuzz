struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-225f, false, vec3<i32>(22136i, 2147483647i, 2147483647i), 4294967295u);

var<private> global2: Struct_1;

var<private> global3: vec2<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = arg_0;
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(258f, var_0.a, global2.a))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1429f, -538f, global1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(774f, arg_1.a, -113f), vec3<f32>(-334f, -450f, global1.a), true))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2045f + _wgslsmith_f_op_f32(var_1.x - -287f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - global2.a))), _wgslsmith_add_u32(_wgslsmith_mult_u32(select(arg_0.d, 75608u, true), 1u), ~0u) > ~4294967295u, global1.c, _wgslsmith_mult_u32(1u, firstTrailingBit(~_wgslsmith_clamp_u32(global1.d, 4294967295u, 11952u))));
    let var_3 = var_0.c.x;
    return arg_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(arg_1, arg_1)), true, vec3<i32>(29819i, -global0.c.x ^ arg_1.c.x, max(_wgslsmith_sub_i32(global1.c.x, ~27736i), abs(global2.c.x) >> (select(1u, 16939u, arg_1.b) % 32u))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global0.d), abs(vec3<u32>(arg_0.d, 0u, arg_1.d)))));
    global1 = Struct_1(arg_2.a, true, vec3<i32>(abs(arg_1.c.x | arg_0.c.x), var_0.c.x, -max(-29312i, global0.c.x << (1u % 32u))), _wgslsmith_mod_u32(~(~(~u_input.a.x)), _wgslsmith_mod_u32(~(~global0.d), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, 4294967295u, 5645u), vec3<u32>(60554u, 1u, arg_1.d)))));
    let var_1 = abs(max(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 1848i, 8306i), max(vec3<i32>(global0.c.x, -2147483647i, -30358i), vec3<i32>(global1.c.x, 9401i, arg_0.c.x))) | _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.c.x, -1i, 0i)), vec3<i32>(3564i, -2147483647i, -17739i)), max(countOneBits(~global0.c), arg_2.c)));
    let var_2 = arg_0;
    let var_3 = select(vec2<bool>(((global0.d >> (global0.d % 32u)) > 0u) == (_wgslsmith_f_op_f32(-2308f + 1000f) >= var_2.a), select(any(select(vec4<bool>(global1.b, true, arg_2.b, true), vec4<bool>(false, true, global2.b, global0.b), vec4<bool>(true, true, false, false))), false, true & any(vec3<bool>(false, global0.b, true)))), !vec2<bool>(!global1.b, !any(vec2<bool>(false, false))), vec2<bool>((reverseBits(arg_0.d) << (firstTrailingBit(88804u) % 32u)) < ~_wgslsmith_mod_u32(global2.d, 23393u), any(vec2<bool>(var_2.a <= arg_1.a, true))));
    return arg_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    var var_0 = -abs(select(~global0.c.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-11108i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(arg_1.c.x, global1.c.x, 1i, -20378i))), arg_2.b || any(vec2<bool>(false, false))));
    global0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-180f + arg_2.a), all(vec2<bool>(false, global3.x)), countOneBits(max(arg_2.c, vec3<i32>(41875i ^ arg_2.c.x, abs(u_input.b.x), arg_2.c.x))), global1.d);
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.c.x, 0i, 0i, 0i), vec4<i32>(-69463i, arg_3.x, 25629i, u_input.b.x)), select(vec4<i32>(9177i, -1i, -75466i, 20752i), vec4<i32>(u_input.b.x, 0i, 59653i, 31934i) | vec4<i32>(global1.c.x, arg_2.c.x, 8761i, arg_1.c.x), select(vec4<bool>(false, global3.x, false, true), vec4<bool>(true, arg_2.b, global3.x, true), arg_2.b)))), max(global1.c.x, _wgslsmith_mult_i32(-1i, -1i)), 56182i >> (~(~(~global2.d)) % 32u), ~_wgslsmith_add_i32(1i, ~(global1.c.x << (45824u % 32u))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1247f), true, global0.c, max(u_input.d.x, 15805u));
    return ~4294967295u;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global1 = Struct_1(136f, !(!any(vec3<bool>(arg_3.b, arg_0.b, true))), vec3<i32>(arg_0.c.x >> (abs(~global2.d) % 32u), -(~(~(-1i))), u_input.b.x), _wgslsmith_mult_u32(arg_1, (global0.d << (84487u % 32u)) & 29337u) & _wgslsmith_add_u32(6147u, _wgslsmith_sub_u32(u_input.c, 22263u)));
    var var_0 = (~func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, arg_0.d, arg_0.d), vec4<u32>(0u, 4294967295u, arg_1, 14845u)), Struct_1(1873f, true, vec3<i32>(u_input.b.x, arg_0.c.x, global2.c.x), global0.d), func_2(Struct_1(568f, false, vec3<i32>(2147483647i, global0.c.x, 2147483647i), u_input.a.x), Struct_1(global1.a, false, arg_0.c, 43448u), arg_0), vec2<i32>(-36310i, -2147483647i)) << (0u % 32u)) | 48922u;
    global0 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global1.a))), all(arg_2), _wgslsmith_div_vec3_i32(vec3<i32>(0i, func_2(arg_0, Struct_1(global0.a, global1.b, vec3<i32>(-1i, arg_3.c.x, -24371i), u_input.a.x), arg_0).c.x, -79151i), vec3<i32>(countOneBits(arg_3.c.x), -2147483647i, global2.c.x << (0u % 32u))), arg_0.d), Struct_1(arg_3.a, any(arg_2), vec3<i32>(~45576i, -59940i, global1.c.x), ~(abs(4294967295u) | u_input.d.x)), func_2(arg_0, arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(538f))), true, vec3<i32>(_wgslsmith_div_i32(-1i, -38179i), i32(-1i) * -9329i, arg_0.c.x), ~arg_0.d)));
    var var_1 = countOneBits(~countOneBits(~(~vec4<u32>(arg_1, 4294967295u, 4294967295u, 1u))));
    var var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), (-236f > global0.a) | all(select(vec2<bool>(global2.b, global3.x), arg_2.xx, arg_2.x)), -(~_wgslsmith_mult_vec3_i32(global0.c, vec3<i32>(global2.c.x, 0i, global0.c.x))), arg_3.d), func_2(arg_0, arg_0, Struct_1(297f, 0u >= ~arg_1, ~(global0.c & vec3<i32>(u_input.b.x, 1i, u_input.b.x)), 0u)), func_2(arg_0, arg_0, arg_3));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = all(!(!select(select(vec3<bool>(global3.x, true, false), vec3<bool>(global3.x, global2.b, true), global1.b), vec3<bool>(true, global0.b, false), false)));
    global2 = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) + global2.a), global2.b, global0.c, func_4(~vec4<u32>(global1.d, global1.d, global0.d, global0.d), Struct_1(-111f, false, vec3<i32>(-1i, -2147483647i, 1i), 0u), func_2(Struct_1(global0.a, false, vec3<i32>(-12489i, -2548i, global2.c.x), 24668u), Struct_1(global2.a, true, global1.c, 0u), Struct_1(arg_2.x, true, global2.c, global0.d)), u_input.b) >> (0u % 32u)), arg_0, vec4<bool>(true, 1315f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1302f + global1.a))), false, true), func_2(func_2(func_2(Struct_1(-299f, global1.b, vec3<i32>(global1.c.x, -2147483647i, u_input.b.x), 0u), Struct_1(global1.a, arg_1, global0.c, global1.d), func_2(Struct_1(666f, global3.x, global0.c, 0u), Struct_1(-925f, false, global0.c, u_input.d.x), Struct_1(global0.a, global1.b, vec3<i32>(global0.c.x, global0.c.x, global0.c.x), 4294967295u))), func_2(Struct_1(global1.a, global3.x, vec3<i32>(45398i, 8039i, -2147483647i), 1u), Struct_1(-144f, arg_1, vec3<i32>(-1i, 2147483647i, global2.c.x), global0.d), func_2(Struct_1(851f, global3.x, vec3<i32>(-27656i, -38091i, -2147483647i), global0.d), Struct_1(899f, global0.b, global1.c, u_input.d.x), Struct_1(arg_3.x, global3.x, global0.c, 1u))), Struct_1(_wgslsmith_f_op_f32(trunc(arg_2.x)), global0.b, global0.c >> (vec3<u32>(4294967295u, global2.d, global1.d) % vec3<u32>(32u)), 136617u)), Struct_1(_wgslsmith_div_f32(-1611f, _wgslsmith_f_op_f32(-global1.a)), false, firstLeadingBit(vec3<i32>(0i, u_input.b.x, 1i)), ~_wgslsmith_add_u32(arg_0, 0u)), func_2(func_2(Struct_1(global0.a, false, global0.c, 4294967295u), func_2(Struct_1(arg_2.x, false, global1.c, arg_0), Struct_1(arg_3.x, global3.x, vec3<i32>(-1i, -13475i, u_input.b.x), global0.d), Struct_1(global2.a, arg_1, global0.c, u_input.d.x)), func_2(Struct_1(-593f, true, global2.c, global1.d), Struct_1(global0.a, true, vec3<i32>(-23201i, global2.c.x, 2147483647i), 31129u), Struct_1(-178f, true, global0.c, 65430u))), func_2(func_2(Struct_1(global1.a, global0.b, vec3<i32>(u_input.b.x, 0i, global1.c.x), 13477u), Struct_1(-258f, false, global0.c, 1u), Struct_1(899f, global2.b, global1.c, 1u)), Struct_1(global2.a, false, vec3<i32>(global1.c.x, 66259i, global0.c.x), 1u), Struct_1(-519f, arg_1, vec3<i32>(2147483647i, -1i, u_input.b.x), 1u)), Struct_1(_wgslsmith_f_op_f32(-global2.a), true, global0.c, firstLeadingBit(global1.d)))));
    var var_1 = -10093i <= firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global2.c, vec3<i32>(0i, 0i, global1.c.x)) >> (1336u % 32u), ~(i32(-1i) * -5889i)));
    var var_2 = reverseBits(46529u);
    var var_3 = func_2(func_2(Struct_1(global0.a, arg_1, vec3<i32>(u_input.b.x, global2.c.x, global1.c.x), _wgslsmith_dot_vec2_u32(~u_input.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.d, global2.d), vec2<u32>(global2.d, global1.d), u_input.a))), func_2(func_5(Struct_1(117f, true, global1.c, u_input.d.x), ~0u, !vec4<bool>(true, global1.b, false, global3.x), Struct_1(-1564f, false, vec3<i32>(1i, 0i, 49019i), 110079u)), Struct_1(397f, !global0.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.c.x, 0i, -1i), global0.c, global0.c), 4294967295u), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(arg_2.x, true, vec3<i32>(global2.c.x, global0.c.x, -2147483647i), 0u), Struct_1(-1856f, true, global2.c, 18013u))), global2.b, vec3<i32>(6664i, global1.c.x, u_input.b.x), global2.d)), func_2(Struct_1(_wgslsmith_f_op_f32(select(global0.a, global1.a, arg_1)), !arg_1, min(global2.c, vec3<i32>(-45836i, global2.c.x, 2147483647i)), func_4(vec4<u32>(global1.d, global2.d, 1u, 1u), Struct_1(global1.a, true, global0.c, arg_0), Struct_1(1109f, arg_1, global1.c, arg_0), u_input.b)), Struct_1(arg_3.x, true, func_2(Struct_1(812f, true, vec3<i32>(global2.c.x, global1.c.x, 2147483647i), u_input.d.x), Struct_1(180f, true, global1.c, 3283u), Struct_1(global1.a, global2.b, vec3<i32>(global0.c.x, 1i, global0.c.x), u_input.a.x)).c, _wgslsmith_mod_u32(u_input.a.x, global2.d)), Struct_1(_wgslsmith_f_op_f32(-286f - arg_3.x), global0.b, _wgslsmith_clamp_vec3_i32(global2.c, vec3<i32>(global1.c.x, global0.c.x, global1.c.x), global2.c), 8923u >> (global2.d % 32u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a, global0.a)) - global2.a)), false, global2.c, ~global2.d), func_2(Struct_1(-492f, global2.b, -(~vec3<i32>(global2.c.x, 2147483647i, global1.c.x)), ~4294967295u << (_wgslsmith_div_u32(28819u, 85962u) % 32u)), func_2(func_5(func_2(Struct_1(-1804f, arg_1, vec3<i32>(global1.c.x, u_input.b.x, -1i), 1u), Struct_1(-1159f, false, vec3<i32>(1i, 31990i, global0.c.x), 38744u), Struct_1(global0.a, false, global1.c, u_input.c)), 42695u, !vec4<bool>(global3.x, global2.b, false, true), func_5(Struct_1(global0.a, global0.b, global1.c, 3035u), 1u, vec4<bool>(false, true, global2.b, global3.x), Struct_1(1000f, false, vec3<i32>(-24255i, 1i, 2147483647i), global2.d))), func_2(func_5(Struct_1(global1.a, false, global0.c, 20068u), arg_0, vec4<bool>(true, arg_1, global2.b, global0.b), Struct_1(-999f, global0.b, vec3<i32>(global1.c.x, u_input.b.x, -2147483647i), global2.d)), func_5(Struct_1(-436f, true, global0.c, 4294967295u), 0u, vec4<bool>(global1.b, false, false, true), Struct_1(-674f, arg_1, global1.c, global2.d)), func_2(Struct_1(873f, global1.b, global0.c, global0.d), Struct_1(123f, global3.x, global1.c, 15723u), Struct_1(379f, global1.b, global1.c, u_input.a.x))), func_2(func_5(Struct_1(global0.a, true, global1.c, global0.d), arg_0, vec4<bool>(false, global0.b, arg_1, global0.b), Struct_1(arg_3.x, global3.x, vec3<i32>(u_input.b.x, -2147483647i, 1i), 4760u)), func_2(Struct_1(global1.a, true, global2.c, 4294967295u), Struct_1(327f, true, global0.c, 42529u), Struct_1(arg_2.x, arg_1, global2.c, 113312u)), Struct_1(global0.a, global2.b, vec3<i32>(-1i, global1.c.x, 0i), global2.d))), Struct_1(global2.a, global2.b, ~vec3<i32>(global1.c.x, 35637i, global1.c.x), _wgslsmith_sub_u32(reverseBits(0u), select(global0.d, u_input.a.x, false)))));
    return Struct_1(_wgslsmith_f_op_f32(-global1.a), all(select(!vec4<bool>(true, true, false, global2.b), vec4<bool>(true, true, !global3.x, global3.x == true), !vec4<bool>(false, var_3.b, global1.b, global0.b))), firstLeadingBit(countOneBits(firstTrailingBit(var_3.c))), ~_wgslsmith_add_u32(~arg_0, _wgslsmith_mult_u32(0u, global0.d) >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(4294967295u, !(0u == ~(~global2.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, -352f)), vec2<f32>(-1212f, _wgslsmith_f_op_f32(floor(global1.a))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - global0.a) + _wgslsmith_f_op_f32(ceil(-759f)))), _wgslsmith_f_op_f32(f32(-1f) * -129f), 641f, global0.a));
    global3 = vec2<bool>(754f < global1.a, -535f <= _wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(385f)), -722f)), 1i == global0.c.x)));
    var var_0 = global2.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global2.a), func_5(func_1(~(~53338u), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global1.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.a, global0.a, global1.a, global2.a), vec4<f32>(global1.a, global1.a, global0.a, global0.a)))))), 0u, vec4<bool>(u_input.b.x >= _wgslsmith_mult_i32(global1.c.x, global1.c.x), global0.c.x != global2.c.x, global0.b, global2.b), func_2(Struct_1(_wgslsmith_f_op_f32(394f * global1.a), true, max(vec3<i32>(global1.c.x, u_input.b.x, -1974i), global2.c), global2.d), Struct_1(_wgslsmith_f_op_f32(global0.a - global1.a), true, global1.c, _wgslsmith_mod_u32(4294967295u, 4294967295u)), Struct_1(func_2(Struct_1(global1.a, true, global0.c, 75396u), Struct_1(-1999f, true, global2.c, 1u), Struct_1(global0.a, false, global0.c, 37444u)).a, !global3.x, ~global1.c, 6644u >> (u_input.a.x % 32u)))).b, _wgslsmith_mod_vec3_i32(-global2.c, ~max(-global0.c, vec3<i32>(global0.c.x, -2147483647i, global2.c.x))), ~(_wgslsmith_mod_u32(~16724u, _wgslsmith_mult_u32(global0.d, global2.d)) >> ((_wgslsmith_add_u32(1u, global2.d) & global2.d) % 32u)));
    let var_2 = min(vec3<u32>(_wgslsmith_mult_u32(1u, ~var_1.d << (global1.d % 32u)), _wgslsmith_div_u32(u_input.a.x, var_1.d), 7015u), firstLeadingBit(_wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.d.x, 86247u, global2.d), _wgslsmith_div_vec3_u32(vec3<u32>(18396u, global1.d, 59155u), vec3<u32>(4294967295u, 81326u, 31122u))), vec3<u32>(4294967295u, _wgslsmith_add_u32(1u, 4635u), global1.d))));
    global3 = select(vec2<bool>(any(vec2<bool>(true, global2.b & global3.x)), true), vec2<bool>(false, func_2(func_1(_wgslsmith_mult_u32(1u, 4294967295u), var_1.a >= global2.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a, global0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -1507f, global0.a, -1000f) * vec4<f32>(global2.a, -1706f, -665f, global1.a))), Struct_1(_wgslsmith_f_op_f32(-global1.a), global3.x & true, global0.c, abs(u_input.d.x)), func_2(func_2(Struct_1(global0.a, global2.b, vec3<i32>(var_1.c.x, -1i, 2147483647i), 4294967295u), Struct_1(var_1.a, true, global1.c, 4294967295u), var_1), Struct_1(global1.a, true, global0.c, var_2.x), Struct_1(-394f, true, global2.c, 1u))).b), !(!all(select(vec4<bool>(false, false, global1.b, true), vec4<bool>(global0.b, global0.b, global2.b, false), vec4<bool>(true, global3.x, false, false)))));
    global1 = var_1;
    global1 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2 & vec3<u32>(14860u, 1u, 1u)), vec4<f32>(835f, global1.a, 423f, global2.a), firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-5286i, -16726i, global0.c.x, global2.c.x), abs(vec4<i32>(u_input.b.x, -38197i, -9096i, global1.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.x, global1.c.x, u_input.b.x, -1i), vec4<i32>(global2.c.x, 18147i, -22170i, -19547i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.x, 26290i, u_input.b.x, 11825i), vec4<i32>(var_1.c.x, -2147483647i, global0.c.x, global1.c.x)))), vec4<u32>(~var_2.x, ~firstTrailingBit(~91137u), ~(~u_input.c), global2.d));
}

