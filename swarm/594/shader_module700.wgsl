struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1000f, -532f, 2293f, 918f), vec4<bool>(false, true, true, true), vec4<f32>(-573f, -235f, 1577f, -2256f), vec2<f32>(-1172f, 459f), false);

var<private> global1: array<i32, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = firstTrailingBit(1u);
    global1 = array<i32, 17>();
    let var_1 = arg_0.b.x;
    var var_2 = Struct_5(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(var_0, u_input.a, 15186u), 24949u, select(var_0, abs(0u), 24103u == var_0)), firstTrailingBit(vec3<u32>(abs(4294967295u), _wgslsmith_sub_u32(var_0, 1u), 4294967295u))), select(select(select(vec4<bool>(true, arg_1.b.x, arg_1.b.x, global0.b.x), vec4<bool>(false, false, false, arg_0.b.x), false), global0.b, arg_1.b), global0.b, select(global0.b.x, false, global0.a.x <= global0.c.x)));
    global0 = arg_1;
    return all(!(!global0.b.yyz));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_5(firstTrailingBit(u_input.a), arg_1.d);
    global1 = array<i32, 17>();
    var var_1 = Struct_5(1u, var_0.b);
    var var_2 = arg_1.b;
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1880f)) + 601f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 1535f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1173f), _wgslsmith_f_op_f32(151f + global0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(268f - -938f), -551f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1715f, -684f, var_2.a.x, 321f), vec4<f32>(global0.c.x, 551f, arg_1.b.c.x, arg_2.b.d.x))) * global0.a) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_2.b.c * vec4<f32>(arg_2.b.c.x, var_2.d.x, 1911f, global0.a.x))))), func_3(arg_1.b, arg_2.b, true))), !select(global0.b, vec4<bool>(arg_1.b.e, !arg_2.d.x, any(var_1.b.zyz), var_0.b.x), !select(vec4<bool>(true, false, var_0.b.x, var_0.b.x), var_2.b, vec4<bool>(global0.e, false, var_2.e, var_1.b.x))), _wgslsmith_f_op_vec4_f32(select(arg_2.b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.c.x, _wgslsmith_f_op_f32(step(-1000f, -386f)), _wgslsmith_f_op_f32(sign(-363f)), arg_2.b.c.x) + arg_2.b.c), vec4<bool>(arg_1.b.e, func_3(Struct_1(var_2.c, vec4<bool>(false, arg_2.b.b.x, false, false), var_2.a, arg_1.b.c.zw, var_1.b.x), arg_2.b, true), var_2.e, !(!global0.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1976f, 608f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.b.d.x, _wgslsmith_f_op_f32(1224f * 848f))))), !(any(select(var_1.b.wy, arg_1.b.b.wx, arg_1.b.b.ww)) && (_wgslsmith_mod_i32(arg_2.c.x, arg_2.c.x) <= ~(-15534i))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = ~u_input.a;
    global1 = array<i32, 17>();
    var var_1 = !func_2(Struct_3(vec3<i32>(1i, reverseBits(u_input.d.x), 2147483647i | u_input.d.x), vec4<i32>(u_input.c, 2147483647i, 1i, 2147483647i) ^ ~vec4<i32>(39568i, -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 17u)], 2147483647i), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, 48170u, arg_3), countOneBits(u_input.a)), abs(~arg_3)), Struct_2(139216u, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-232f, 782f, -134f, 1000f) * global0.c), func_2(Struct_3(vec3<i32>(0i, 10694i, u_input.b), vec4<i32>(-2147483647i, -1i, -2147483647i, 0i), 1u, 47207u), Struct_2(25377u, arg_2, vec4<i32>(-2147483647i, u_input.c, arg_1, arg_1), vec4<bool>(true, false, false, global0.e)), Struct_2(0u, Struct_1(global0.c, vec4<bool>(global0.e, global0.e, true, false), vec4<f32>(arg_2.d.x, arg_2.d.x, -377f, -376f), arg_2.c.yy, global0.b.x), vec4<i32>(u_input.c, 7858i, 28693i, u_input.c), global0.b)).b, vec4<f32>(-289f, -707f, 557f, arg_0), _wgslsmith_f_op_vec2_f32(arg_2.c.xw + vec2<f32>(-149f, arg_0)), true), select(-vec4<i32>(u_input.d.x, 2147483647i, arg_1, 251i), vec4<i32>(u_input.c, 0i, 2147483647i, arg_1) | vec4<i32>(-3942i, 12880i, u_input.d.x, -28635i), vec4<bool>(false, false, true, true)), global0.b), Struct_2(1u, Struct_1(global0.c, vec4<bool>(global0.b.x, global0.e, true, global0.e), arg_2.c, _wgslsmith_f_op_vec2_f32(arg_2.a.xz - arg_2.a.ww), all(global0.b.wxz)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, global1[_wgslsmith_index_u32(16642u, 17u)], arg_1, u_input.c), vec4<i32>(56683i, u_input.b, arg_1, 76755i)) & vec4<i32>(-2147483647i, 39921i, -41935i, -2498i), vec4<bool>(true, true, arg_2.e, global0.e))).b;
    var var_2 = Struct_2(_wgslsmith_div_u32(u_input.a, (_wgslsmith_div_u32(49967u, arg_3) << (arg_3 % 32u)) & abs(u_input.a)), func_2(Struct_3(_wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, 9129i, global1[_wgslsmith_index_u32(0u, 17u)]), abs(vec3<i32>(-2147483647i, 0i, -2147483647i))), firstTrailingBit(vec4<i32>(u_input.b, -6693i, arg_1, global1[_wgslsmith_index_u32(arg_3, 17u)])) & firstLeadingBit(vec4<i32>(1598i, 28980i, -21283i, arg_1)), arg_3, ~u_input.a | arg_3), Struct_2(79992u, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, -912f, arg_0, arg_2.a.x) + arg_2.c), select(global0.b, arg_2.b, true), _wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec2_f32(-global0.c.xw), global0.b.x), select(vec4<i32>(global1[_wgslsmith_index_u32(arg_3, 17u)], global1[_wgslsmith_index_u32(arg_3, 17u)], 0i, u_input.d.x), vec4<i32>(global1[_wgslsmith_index_u32(arg_3, 17u)], -2147483647i, -2147483647i, 0i), true), vec4<bool>(true, !global0.b.x, true, arg_2.e | global0.b.x)), Struct_2(_wgslsmith_mult_u32(1u, arg_3) >> (_wgslsmith_sub_u32(0u, u_input.a) % 32u), func_2(Struct_3(vec3<i32>(arg_1, 1i, arg_1), vec4<i32>(arg_1, 0i, global1[_wgslsmith_index_u32(arg_3, 17u)], arg_1), arg_3, u_input.a), Struct_2(arg_3, Struct_1(arg_2.a, vec4<bool>(var_1.x, true, var_1.x, true), vec4<f32>(-250f, -358f, 1647f, arg_0), vec2<f32>(arg_0, arg_0), false), vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(1u, 17u)], 1i, -2147483647i), vec4<bool>(arg_2.b.x, arg_2.b.x, true, false)), Struct_2(u_input.a, arg_2, vec4<i32>(arg_1, 0i, arg_1, global1[_wgslsmith_index_u32(arg_3, 17u)]), vec4<bool>(false, true, false, true))), _wgslsmith_div_vec4_i32(-vec4<i32>(10932i, -1i, 2147483647i, global1[_wgslsmith_index_u32(57537u, 17u)]), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1, u_input.c, arg_1, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(1307u, 17u)], 9471i, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(8387u, 17u)]))), vec4<bool>(true, var_1.x != arg_2.e, true, func_3(Struct_1(arg_2.a, vec4<bool>(arg_2.b.x, var_1.x, true, true), global0.c, global0.c.yz, arg_2.e), Struct_1(vec4<f32>(-274f, arg_0, -1000f, -544f), arg_2.b, vec4<f32>(arg_2.d.x, global0.a.x, arg_0, global0.d.x), vec2<f32>(arg_0, 1406f), true), false)))), vec4<i32>(u_input.c, countOneBits(28255i), 1i, ~min(u_input.b ^ arg_1, arg_1)), global0.b);
    var var_3 = arg_2.c.x >= arg_2.c.x;
    return firstTrailingBit(countOneBits(1i) & -abs(~arg_1));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_5 {
    let var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(func_4(_wgslsmith_f_op_f32(602f - global0.a.x), arg_2.b.x, func_2(arg_2, Struct_2(arg_2.d, Struct_1(global0.a, global0.b, vec4<f32>(global0.c.x, 230f, 432f, global0.a.x), vec2<f32>(arg_1.x, global0.a.x), global0.e), vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(arg_3.x, 17u)], -2147483647i, 0i), vec4<bool>(true, false, false, global0.b.x)), Struct_2(arg_3.x, Struct_1(vec4<f32>(arg_1.x, -1131f, 647f, arg_1.x), global0.b, vec4<f32>(global0.c.x, arg_1.x, -505f, 256f), arg_1.xz, global0.b.x), arg_2.b, global0.b)), 1u), ~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(54034u, 17u)], u_input.b)), ~arg_0);
    let var_1 = select(arg_3.wx, arg_3.zx, -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_2.b.zz, vec2<i32>(1i, 0i)), arg_0.x, firstTrailingBit(-10477i)) < 18009i);
    var var_2 = firstLeadingBit(min(17981i, arg_0.x));
    return Struct_5(_wgslsmith_clamp_u32(~(~(~5760u)), arg_2.c, reverseBits(var_1.x)), select(select(!global0.b, select(select(global0.b, vec4<bool>(global0.b.x, global0.b.x, true, false), vec4<bool>(global0.b.x, global0.e, true, global0.b.x)), global0.b, all(vec2<bool>(global0.e, global0.e))), global0.e | (-1203f != global0.c.x)), select(!vec4<bool>(false, true, global0.e, false), vec4<bool>(u_input.a > var_1.x, func_3(Struct_1(vec4<f32>(arg_1.x, 421f, arg_1.x, arg_1.x), global0.b, vec4<f32>(arg_1.x, -1000f, -303f, -1671f), vec2<f32>(global0.a.x, -757f), global0.b.x), Struct_1(vec4<f32>(214f, global0.d.x, global0.a.x, 442f), global0.b, vec4<f32>(-1231f, arg_1.x, 200f, 717f), arg_1.yz, true), false), true, any(global0.b.zz)), any(!vec4<bool>(global0.e, true, true, true))), true));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(firstLeadingBit(92u), 17u)], 2147483647i), ~(~(-vec3<i32>(u_input.d.x, 3897i, global1[_wgslsmith_index_u32(u_input.a, 17u)])))), vec4<i32>(_wgslsmith_mult_i32(-u_input.c, arg_2 | u_input.c), abs(~u_input.c), ~u_input.c ^ u_input.d.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(86868u, 17u)], 0i, global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<i32>(arg_2, 32167i, 1i))) ^ firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-9082i, arg_2, -42912i, u_input.d.x), ~vec4<i32>(1i, -1i, 27863i, global1[_wgslsmith_index_u32(arg_0.a, 17u)]))), 29834u, _wgslsmith_sub_u32(61155u, ~_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(arg_0.a, 4294967295u))));
    var var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x - -2986f) + -495f)), 441f));
    global1 = array<i32, 17>();
    let var_2 = Struct_3(vec3<i32>(0i, 84562i, ~(-36126i)), -min(vec4<i32>(2147483647i >> (u_input.a % 32u), 1i, arg_1, ~0i), var_0.b), 4294967295u, u_input.a);
    var_1 = Struct_4(1000f);
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1567f, -918f, global0.d.x, 654f)))), _wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(var_1.a, global0.a.x, global0.a.x, global0.c.x)))))), !vec4<bool>(!all(global0.b.yy), false, true, global0.a.x < _wgslsmith_f_op_f32(round(1000f))), global0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-716f, var_1.a))), var_1.a)), all(func_1(_wgslsmith_mult_vec2_i32(-var_0.a.xz, _wgslsmith_add_vec2_i32(var_0.b.xz, u_input.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, global0.d.x)), var_2, reverseBits(~vec4<u32>(22862u, 60853u, arg_0.a, var_0.d))).b));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> Struct_3 {
    global0 = func_5(Struct_5(1u, !select(vec4<bool>(true, false, true, true), arg_0.b, select(vec4<bool>(arg_0.b.x, arg_0.e, false, arg_0.e), vec4<bool>(false, false, global0.b.x, arg_0.e), global0.b.x))), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(arg_2.x, 17u)], -reverseBits(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.a, 17u)], 2147483647i)), abs(arg_1)), arg_1);
    global1 = array<i32, 17>();
    let var_0 = abs(~(-2147483647i));
    let var_1 = _wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) & abs(vec4<u32>(arg_2.x, u_input.a, arg_2.x, u_input.a) ^ vec4<u32>(84077u, arg_2.x, 29947u, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 80573u, 0u) | _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 23255u), vec4<u32>(11270u, arg_2.x, 64025u, 12509u))) << (abs(~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 39764u, u_input.a, 22386u), vec4<u32>(arg_2.x, 35852u, u_input.a, 0u)))) % vec4<u32>(32u));
    var var_2 = Struct_4(global0.d.x);
    return Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(9727i), -51413i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.a, 17u)], u_input.d.x, var_0)), ~vec4<i32>(arg_1, global1[_wgslsmith_index_u32(4294967295u, 17u)], 2147483647i, -1i))), ~(-vec3<i32>(u_input.c, u_input.c, -2147483647i))), vec4<i32>(~(~max(arg_1, var_0)), -(~global1[_wgslsmith_index_u32(arg_2.x, 17u)]) << (u_input.a % 32u), ~1i, -((var_0 ^ global1[_wgslsmith_index_u32(u_input.a, 17u)]) << (arg_2.x % 32u))), u_input.a, abs(min(~abs(39031u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), ~var_1.yyy))));
}

fn func_7(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = Struct_2(~0u, func_5(Struct_5(_wgslsmith_sub_u32(1u, ~arg_0.c), select(global0.b, !global0.b, vec4<bool>(global0.b.x, false, global0.e, global0.b.x))), 10495i, min(select(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, 0i, arg_0.b.x), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], -1i, arg_0.a.x, arg_0.b.x)), global0.b.x), ~(-39841i))), arg_0.b, select(!(!(!global0.b)), vec4<bool>(!global0.e, global0.b.x, false, global0.b.x), !(global0.b.x || (global0.b.x & global0.b.x))));
    global1 = array<i32, 17>();
    var var_1 = func_2(arg_0, var_0, Struct_2(~_wgslsmith_sub_u32(u_input.a, ~arg_0.d), var_0.b, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-24362i, global1[_wgslsmith_index_u32(var_0.a, 17u)], var_0.c.x, u_input.d.x), vec4<i32>(arg_0.a.x, -2147483647i, u_input.d.x, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(22648i, global1[_wgslsmith_index_u32(0u, 17u)], arg_0.b.x, -61929i), arg_0.b)), var_0.d));
    let var_2 = Struct_3(vec3<i32>(-29063i, arg_0.a.x, func_4(-325f, 1i, var_0.b, ~reverseBits(0u))), _wgslsmith_sub_vec4_i32(abs(min(vec4<i32>(-8155i, 1i, -1i, u_input.c), arg_0.b) & ~vec4<i32>(2147483647i, -1i, 28694i, 43484i)), arg_0.b), _wgslsmith_sub_u32(var_0.a, func_6(var_0.b, 0i, ~vec2<u32>(69093u, 25774u)).d) << (var_0.a % 32u), abs(select(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_0.d, u_input.a, arg_0.d, 1u)), abs(vec4<u32>(var_0.a, var_0.a, u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 54515u, arg_0.d, arg_0.c), vec4<u32>(0u, 28251u, 0u, arg_0.d)), func_5(Struct_5(0u, global0.b), 3749i, var_0.c.x).a.x <= global0.d.x)));
    global0 = func_5(func_1(u_input.d, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.c.x, var_1.c.x, 178f)))))), func_6(func_2(func_6(var_0.b, -1i, vec2<u32>(1u, arg_0.d)), Struct_2(var_0.a, var_0.b, vec4<i32>(arg_0.b.x, -6117i, var_2.a.x, 1i), vec4<bool>(false, var_1.b.x, global0.b.x, false)), Struct_2(var_0.a, var_0.b, vec4<i32>(var_2.b.x, 1i, -1i, -6068i), var_1.b)), -_wgslsmith_clamp_i32(arg_0.b.x, 27052i, global1[_wgslsmith_index_u32(arg_0.d, 17u)]), abs(vec2<u32>(1u, 1u))), vec4<u32>(_wgslsmith_mult_u32(var_2.c, 4294967295u), u_input.a << (~arg_0.d % 32u), 118210u, countOneBits(~u_input.a))), max(0i, 1i), select(-(~(u_input.c ^ global1[_wgslsmith_index_u32(var_0.a, 17u)])), global1[_wgslsmith_index_u32(abs(4294967295u), 17u)], var_0.b.e));
    return StorageBuffer(~select(vec4<u32>(arg_0.d, 4294967295u, arg_0.c, u_input.a), ~select(vec4<u32>(var_0.a, 4294967295u, 50759u, 50153u), vec4<u32>(u_input.a, 1u, var_0.a, 31769u), var_1.b), vec4<bool>(all(vec3<bool>(false, true, var_0.b.b.x)), func_2(arg_0, var_0, var_0).e, var_1.e, false)), ~(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, arg_0.d, var_0.a), vec3<u32>(u_input.a, 1u, 47846u)), 7396u) >> (var_0.a % 32u)), _wgslsmith_f_op_f32(-global0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_6(func_5(func_1(~u_input.d, _wgslsmith_div_vec3_f32(global0.c.wwx, vec3<f32>(-1647f, global0.c.x, global0.d.x)), Struct_3(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], 1i, u_input.d.x), vec4<i32>(7644i, 2147483647i, 0i, u_input.d.x), 1291u, 5181u), min(vec4<u32>(u_input.a, 29976u, 3962u, 73974u), vec4<u32>(u_input.a, 34447u, u_input.a, u_input.a))), u_input.b, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, u_input.b, 31106i)), ~vec3<i32>(345i, 8815i, u_input.c))), -(~global1[_wgslsmith_index_u32(~4294967295u, 17u)]), ~min(vec2<u32>(u_input.a, 22008u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(13315u, u_input.a))));
}

