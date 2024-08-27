struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-708f, -1194f, 1478f), vec3<f32>(-322f, 932f, 162f), vec3<f32>(-1312f, 483f, -744f), vec3<f32>(-133f, 1880f, 2121f), vec3<f32>(1000f, 689f, -1334f), vec3<f32>(-1580f, 1000f, 433f), vec3<f32>(-2220f, 1802f, -1383f), vec3<f32>(-1676f, 325f, -1730f), vec3<f32>(746f, 1000f, 138f), vec3<f32>(593f, -581f, 1209f), vec3<f32>(475f, -1000f, 179f), vec3<f32>(1043f, 362f, -269f), vec3<f32>(-470f, 1548f, -1219f), vec3<f32>(1595f, -630f, 472f), vec3<f32>(-654f, 246f, -238f));

var<private> global2: Struct_4;

var<private> global3: array<u32, 10> = array<u32, 10>(12147u, 29739u, 1u, 4294967295u, 36130u, 90628u, 39247u, 66358u, 24476u, 1u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> bool {
    global2 = Struct_4(global2.a, global2.b, global2.c, Struct_2(global0.b, Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-101f, -822f, 968f, global0.b.c) + vec4<f32>(global2.b.a.b.x, -356f, global0.b.c, -946f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.c, global0.b.b.x, -942f, -956f), vec4<f32>(144f, global0.a.b.x, 809f, global2.b.b.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.c - -1844f))), global2.d.b.d)), countOneBits(-1i));
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(global2.d.a.b.zyw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(730f, _wgslsmith_f_op_f32(-var_0.a.c), -1753f), vec3<f32>(_wgslsmith_div_f32(global2.d.a.c, global2.d.a.b.x), -303f, -677f), vec3<bool>(global2.a.x && global2.c, false & global2.c, false)))));
    let var_2 = Struct_4(global2.a, Struct_2(global0.a, arg_1.a), true, Struct_2(global0.b, Struct_1(firstLeadingBit(abs(global2.d.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1278f, global0.a.c, global2.d.a.b.x, -1930f))), _wgslsmith_f_op_f32(-126f + global2.b.b.b.x), 45285u)), firstLeadingBit(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2.e), global2.b.b.a.yy), min(arg_0, arg_1.a.a.x))));
    let var_3 = vec4<bool>(var_2.c, false, false, false);
    return var_2.a.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> Struct_4 {
    let var_0 = -800f;
    global1 = array<vec3<f32>, 15>();
    var var_1 = -2147483647i >> (global0.a.d % 32u);
    let var_2 = global2.b.a.b.ww;
    let var_3 = -_wgslsmith_mod_i32(_wgslsmith_add_i32(-21706i, _wgslsmith_div_i32(min(-16227i, -2147483647i), global2.d.b.a.x)), 1i & u_input.a);
    return Struct_4(global2.a, global2.d, true, global2.d, global0.a.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_5 {
    let var_0 = all(select(select(arg_0.a, select(select(arg_0.a, global2.a, vec4<bool>(true, global2.a.x, false, false)), !global2.a, global2.c), vec4<bool>(true, arg_0.c, arg_0.a.x, any(vec3<bool>(true, false, true)))), !global2.a, true));
    global3 = array<u32, 10>();
    return Struct_5(global2.b.a);
}

fn func_5(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> Struct_4 {
    global1 = array<vec3<f32>, 15>();
    let var_0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(1u, 1u), abs(_wgslsmith_mod_u32(arg_0.a.d, 39028u))), ~u_input.c);
    let var_1 = abs(14784u);
    let var_2 = func_3(_wgslsmith_clamp_vec4_i32(~global2.d.b.a, reverseBits(vec4<i32>(~u_input.b.x, global0.b.a.x >> (global2.d.b.d % 32u), 1i, _wgslsmith_mult_i32(global0.a.a.x, u_input.a))), global2.d.b.a), global2.a.x | true, arg_0.a.b, global2.c);
    global0 = Struct_2(func_3(-(~firstLeadingBit(global0.b.a)), (-21080i > u_input.a) || any(!vec4<bool>(true, var_2.a.x, false, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 - global2.b.b.b) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1445f, global0.a.c, 249f, -426f) * arg_3)))), false).b.b, func_3(-arg_0.a.a, false, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(min(1290f, global2.b.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-936f)) + -1242f), _wgslsmith_div_f32(arg_2.x, global0.b.c)), true).d.b);
    return var_2;
}

fn func_1() -> Struct_4 {
    global2 = func_5(func_4(func_3(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global0.b.a, global0.a.a), global0.a.a), !func_2(u_input.b.x, Struct_5(global0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.b * global2.b.a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b.x, global0.a.b.x, -724f, global2.d.b.c) + vec4<f32>(-1554f, 149f, global0.a.b.x, -1154f))), true || (global2.c | global2.c)), reverseBits(~vec3<u32>(4294967295u, u_input.c.x, global0.b.d) ^ vec3<u32>(6904u, global2.d.b.d, global2.d.a.d))), _wgslsmith_f_op_vec2_f32(global0.b.b.zz - _wgslsmith_f_op_vec2_f32(global0.b.b.zy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2020f, global0.a.b.x)))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.d.a.b.x, -1253f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(573f * 1000f), _wgslsmith_f_op_f32(round(global0.a.c)), all(global2.a.yw))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.a.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-115f, global2.b.a.c, global0.b.b.x, global2.b.b.c), global0.a.b)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1317f, global2.d.b.c, 426f, 1726f), global0.b.b) - global0.a.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.d.a.b.x), _wgslsmith_f_op_f32(-global0.b.c), -1496f, _wgslsmith_f_op_f32(min(global0.b.b.x, global0.b.b.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.b) - global2.d.a.b)));
    global0 = global2.d;
    var var_0 = 3229i;
    let var_1 = global2.a.wwy;
    var var_2 = ~(~(select(vec3<u32>(2769u, global3[_wgslsmith_index_u32(0u, 10u)], 8756u), vec3<u32>(global2.d.b.d, 1u, global0.b.d), true) >> (vec3<u32>(1u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25788u, 10u)], 10u)]) % vec3<u32>(32u))) | ~vec3<u32>(_wgslsmith_sub_u32(37976u, 25279u), _wgslsmith_sub_u32(u_input.c.x, 0u), reverseBits(u_input.c.x)));
    return func_3(global0.b.a, select(true, true, true) != ((global3[_wgslsmith_index_u32(1u, 10u)] ^ abs(global0.b.d)) > (1u >> (_wgslsmith_div_u32(global0.a.d, 3634u) % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, global0.b.c, 215f, global0.b.b.x))))) * global0.b.b), true);
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5) -> u32 {
    let var_0 = arg_0;
    global0 = func_3(max(global2.b.b.a, arg_0.d.b.a & vec4<i32>(u_input.b.x | 29542i, ~2147483647i, var_0.e, _wgslsmith_mod_i32(11403i, -16591i))), false | !arg_1, arg_2.a.b, arg_0.a.x).b;
    global0 = func_5(Struct_5(Struct_1(max(arg_2.a.a, -arg_2.a.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1325f, arg_2.a.b.x, 2006f, global2.d.a.c), vec4<f32>(1000f, 160f, 252f, 976f))))), func_1().b.a.b.x, func_3(_wgslsmith_div_vec4_i32(arg_2.a.a, vec4<i32>(54471i, u_input.a, -1i, -29807i)), arg_1 || global2.c, vec4<f32>(var_0.d.b.b.x, -1518f, -760f, arg_2.a.b.x), true).b.b.d)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.a.b.x, -1140f)), global0.a.c), global2.d.b.b.yw), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a.c, global0.b.c, 971f, -184f))), _wgslsmith_div_vec4_f32(global0.a.b, vec4<f32>(-253f, -1206f, -1176f, global0.a.b.x))) - var_0.b.b.b), var_0.d.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, 540f, var_0.b.a.b.x, 1000f))), var_0.d.b.b)))).d;
    global3 = array<u32, 10>();
    var var_1 = firstTrailingBit(-(~(-1i)));
    return u_input.c.x;
}

fn func_7(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: bool) -> vec2<u32> {
    let var_0 = 7566i;
    var var_1 = !func_1().a.x;
    global1 = array<vec3<f32>, 15>();
    global1 = array<vec3<f32>, 15>();
    let var_2 = _wgslsmith_f_op_f32(round(-465f));
    return arg_0.yy;
}

fn func_8(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_5(global2.d.a);
    var var_1 = countOneBits(abs(func_5(Struct_5(Struct_1(vec4<i32>(-35565i, -1i, var_0.a.a.x, global2.b.b.a.x), vec4<f32>(372f, global2.b.b.c, global2.d.b.b.x, 789f), var_0.a.c, arg_0.x)), vec2<f32>(-540f, 574f), vec4<f32>(global2.d.a.c, -114f, global0.a.b.x, -1000f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.c, global0.b.b.x, 353f, 2143f), vec4<f32>(global2.b.a.b.x, 321f, var_0.a.b.x, -980f)))).d.a.a.x)) ^ func_4(func_1(), vec3<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 63862u, 18010u, global0.a.d), vec4<u32>(51439u, arg_0.x, 1u, 38869u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.d, 4294967295u, 47629u, 57747u), vec4<u32>(u_input.c.x, u_input.c.x, var_0.a.d, var_0.a.d))), ~(~0u))).a.a.x;
    let var_2 = Struct_3(global2.d, vec3<bool>(!(false | any(global2.a)), false, func_1().c), u_input.c.x, global0.a.c, Struct_1(~func_3(-vec4<i32>(global0.a.a.x, 0i, var_0.a.a.x, -1i), global2.c, vec4<f32>(global2.b.b.b.x, 473f, var_0.a.c, 348f), !global2.c).b.b.a, vec4<f32>(365f, global2.d.a.c, _wgslsmith_div_f32(-741f, global0.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.a.c, 1000f) * _wgslsmith_f_op_f32(exp2(global2.b.a.b.x)))), 529f, 0u));
    let var_3 = select(vec4<bool>(true, false, !(!(global2.d.a.d < u_input.c.x)), var_2.b.x), !vec4<bool>(true, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e.d, global0.a.d, arg_0.x), vec3<u32>(arg_0.x, global0.b.d, u_input.c.x)) > ~u_input.c.x, false && any(vec4<bool>(false, true, true, false)), all(select(var_2.b, global2.a.zzx, false))), any(global2.a.wwy));
    var var_4 = ~(select(abs(vec3<u32>(76043u, var_0.a.d, 4294967295u)), ~vec3<u32>(global0.b.d, global0.a.d, 23533u) | vec3<u32>(2202u, var_2.c, global3[_wgslsmith_index_u32(1u, 10u)]), func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, var_0.a.a.x, 3571i, 10248i), var_0.a.a), !global2.a.x, var_0.a.b, true).a.wyy) & _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_2.e.d, 57751u, global0.b.d), abs(vec3<u32>(global0.b.d, global0.b.d, 8665u))), vec3<u32>(func_5(var_0, vec2<f32>(global2.d.a.b.x, var_2.d), global0.b.b, global2.b.a.b).b.a.d, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, var_2.a.b.d, 4294967295u), vec4<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(var_2.c, 10u)], 1u)), _wgslsmith_add_u32(1u, 1u))));
    return global2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -372f);
    var var_1 = global0.a;
    let var_2 = -23950i;
    var_1 = func_8(func_7(vec3<u32>(18349u, ~(~55046u), global3[_wgslsmith_index_u32(~15797u, 10u)]), func_6(func_1(), false, func_4(Struct_4(vec4<bool>(true, false, global2.c, global2.c), Struct_2(Struct_1(vec4<i32>(var_2, 14554i, -1i, 2147483647i), vec4<f32>(1000f, global2.b.a.b.x, var_0, 248f), global0.b.c, var_1.d), global2.b.b), global2.a.x, global2.d, global0.b.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.d.a.d, global2.b.b.d, global2.b.b.d), vec3<u32>(1u, global2.b.a.d, u_input.c.x)))), 0i, global2.a.x));
    global3 = array<u32, 10>();
    let var_3 = abs(func_4(func_5(func_4(Struct_4(vec4<bool>(global2.c, false, false, global2.a.x), global2.b, global2.a.x, Struct_2(global2.b.b, Struct_1(vec4<i32>(global2.e, -1i, global0.b.a.x, 1i), var_1.b, var_0, 23378u)), u_input.b.x), ~vec3<u32>(global0.b.d, global3[_wgslsmith_index_u32(global0.a.d, 10u)], 41661u)), vec2<f32>(448f, var_1.c), _wgslsmith_f_op_vec4_f32(-func_4(Struct_4(vec4<bool>(global2.c, false, false, global2.a.x), Struct_2(Struct_1(global2.d.a.a, var_1.b, -1000f, 1u), Struct_1(global0.b.a, global0.b.b, global0.b.c, global0.b.d)), global2.a.x, global2.d, -2147483647i), vec3<u32>(32682u, 16415u, u_input.c.x)).a.b), _wgslsmith_f_op_vec4_f32(-func_5(Struct_5(Struct_1(global2.d.b.a, var_1.b, global2.d.a.c, global2.d.b.d)), vec2<f32>(var_0, -163f), global2.b.a.b, global2.d.a.b).b.b.b)), countOneBits(_wgslsmith_mult_vec3_u32(min(vec3<u32>(global2.b.b.d, 1u, 69580u), vec3<u32>(global2.d.b.d, global3[_wgslsmith_index_u32(63002u, 10u)], 3299u)), vec3<u32>(u_input.c.x, u_input.c.x, 0u)))).a.a.yz);
    global1 = array<vec3<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(40311u, 10u)] ^ (firstTrailingBit(4294967295u) >> (_wgslsmith_add_u32(4294967295u, global2.d.a.d) % 32u)), var_1.d), vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.b.b.x)), global0.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.b.x), var_0)), vec3<i32>(2147483647i, global0.a.a.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(~global2.e, u_input.a), firstTrailingBit(var_2 << (55748u % 32u)))), func_1().b.b.a.xwy);
}

