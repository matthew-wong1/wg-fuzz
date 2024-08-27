struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-572f, 483f, 1000f, 148f, -687f, 1253f, 1615f, -1294f, -1358f, -784f, -699f, -493f, 1025f, -1151f, -629f, 592f, 351f, -2302f, 948f, -1148f, 339f, 761f, -1658f, 230f, 1219f, 286f, -257f);

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> f32 {
    global1 = array<vec2<bool>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(312f, global0[_wgslsmith_index_u32(4294967295u, 27u)], 438f, -860f), vec4<f32>(1000f, global0[_wgslsmith_index_u32(7648u, 27u)], arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(12612u, 27u)], global0[_wgslsmith_index_u32(15582u, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)]) - vec4<f32>(-107f, global0[_wgslsmith_index_u32(u_input.a, 27u)], -308f, -1376f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1959f, 190f, -992f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(55933u, 27u)], arg_1.x, -793f, -185f) + vec4<f32>(arg_1.x, global0[_wgslsmith_index_u32(24889u, 27u)], -942f, global0[_wgslsmith_index_u32(4294967295u, 27u)]))))));
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(28995u, 35204u, 1735u), ~vec3<u32>(u_input.b.x, u_input.a, u_input.b.x))), firstTrailingBit(u_input.a), 0u), ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.yxy, vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.xwx) >> (vec3<u32>(66898u, u_input.b.x, 1u) % vec3<u32>(32u)));
    var var_2 = Struct_1(1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x ^ 4294967295u, 27u)]) * _wgslsmith_f_op_f32(max(807f, _wgslsmith_f_op_f32(ceil(arg_1.x))))), var_0.x)), _wgslsmith_sub_u32(~max(var_1.x, 63598u), ~reverseBits(0u) << (_wgslsmith_div_u32(0u, _wgslsmith_add_u32(var_1.x, u_input.b.x)) % 32u)));
    var var_3 = vec2<bool>(all(vec4<bool>(any(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true)))), false);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x + -1098f), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, max(var_1.yz, var_1.xz)), 12488u, (22579u ^ var_2.c) & reverseBits(var_1.x)), 27u)]))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global0[_wgslsmith_index_u32(u_input.a, 27u)])) * -2411f)), -661f)));
    var var_1 = true;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-countOneBits(u_input.c.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(203f, global0[_wgslsmith_index_u32(6672u, 27u)], 2655f)), vec3<f32>(global0[_wgslsmith_index_u32(33254u, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)], -1440f))), reverseBits(-3484i)))) + global0[_wgslsmith_index_u32(select(u_input.a, u_input.b.x, false), 27u)]);
    var var_2 = Struct_1(-1i, -315f, u_input.a);
    var_0 = var_2.b;
    return Struct_1(max(~countOneBits(2147483647i), _wgslsmith_add_i32(-22747i, -_wgslsmith_dot_vec3_i32(vec3<i32>(36850i, var_2.a, 0i), vec3<i32>(var_2.a, u_input.d, 2147483647i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.b)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, u_input.b.x, 0u), vec3<u32>(10119u, 22302u, 50229u)), 27u)])))), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(990f, -1287f) * vec2<f32>(356f, 2372f))))))));
    var var_1 = abs(reverseBits(vec3<u32>(~(~30790u), u_input.a, select(_wgslsmith_add_u32(arg_1.c, arg_1.c), 4294967295u, true))));
    let var_2 = select(global1[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], all(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~firstLeadingBit(67324u)), 11u)]));
    global0 = array<f32, 27>();
    let var_3 = vec4<u32>(firstTrailingBit(max(~(~69854u), 19466u)), arg_1.c, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(18165u, u_input.a)), u_input.b.zy) & _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.b.wyz, u_input.b.yxy), min(u_input.b.wxw & vec3<u32>(u_input.b.x, u_input.a, arg_1.c), min(vec3<u32>(arg_1.c, u_input.a, 4294967295u), u_input.b.xyy))), ~(reverseBits(~arg_0.c) << (1u % 32u)));
    return func_2();
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] - arg_3.b)))))));
    var var_1 = !vec2<bool>(all(vec3<bool>(all(vec4<bool>(arg_0, arg_0, false, false)), select(false, arg_0, arg_0), !arg_0)), 162f >= global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, 1u) ^ func_4(arg_3, Struct_1(1i, global0[_wgslsmith_index_u32(arg_3.c, 27u)], arg_3.c)).c, 27u)]);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1044f))), -1495f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(func_4(arg_3, Struct_1(20399i, arg_3.b, 8975u)).c << (_wgslsmith_dot_vec3_u32(vec3<u32>(50128u, arg_2.x, 25246u), u_input.b.zxx) % 32u)), 27u)] * global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_4(arg_3, func_4(arg_3, arg_3)).c, func_2().c), 27u)]));
    var var_3 = arg_3;
    var_1 = !vec2<bool>(select(true, arg_0, all(vec4<bool>(var_1.x, var_1.x, var_1.x, false)) && true), var_2.x != _wgslsmith_f_op_f32(step(408f, _wgslsmith_f_op_f32(sign(var_2.x)))));
    return func_2();
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<bool>(true, !(!arg_0.x), select(true, any(arg_0), arg_1), !all(!select(vec4<bool>(true, arg_1, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), arg_1)));
    global0 = array<f32, 27>();
    global1 = array<vec2<bool>, 11>();
    return func_5(!arg_1, u_input.c.x, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, arg_2.x), u_input.b.zz), func_4(func_2(), func_2()));
}

fn func_6(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = select(~u_input.c, vec2<i32>(~u_input.c.x, _wgslsmith_add_i32(arg_2.a, _wgslsmith_mod_i32(abs(35833i), ~1i))), false);
    global0 = array<f32, 27>();
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(arg_3, arg_2.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_3, arg_2.a) << (u_input.a % 32u), -49812i)), vec3<i32>(abs(func_2().a), _wgslsmith_mult_i32(2147483647i, u_input.d), ~_wgslsmith_div_i32(-1i, reverseBits(arg_2.a))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(-12852i), _wgslsmith_div_i32(0i, ~reverseBits(2147483647i)), -u_input.c.x | (_wgslsmith_mod_i32(var_1.x, u_input.c.x) << (_wgslsmith_div_u32(0u, arg_2.c) % 32u))), vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, var_0.x), _wgslsmith_mod_i32(-2147483647i, u_input.c.x)), min(_wgslsmith_dot_vec4_i32(~vec4<i32>(-30454i, 82118i, 21280i, var_1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 36658i, 0i, -25727i), vec4<i32>(-39094i, 14117i, -1991i, arg_3))), func_2().a), ~(-2842i)));
    global0 = array<f32, 27>();
    return arg_2;
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> bool {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_0 = global1[_wgslsmith_index_u32(~(~countOneBits(u_input.b.x & ~2498u)), 11u)];
    let var_1 = var_0.x;
    var var_2 = select(!(!vec4<bool>(any(vec3<bool>(var_0.x, false, true)), all(vec3<bool>(false, var_0.x, true)), true, all(vec2<bool>(var_0.x, var_0.x)))), !(!vec4<bool>(true, false, !var_0.x, !var_0.x)), !(any(!vec4<bool>(true, false, var_0.x, true)) & true));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 11>();
    global1 = array<vec2<bool>, 11>();
    var var_0 = Struct_1(-7357i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~23818u, 27u)]))), abs(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(firstLeadingBit(5851u), u_input.b.x), ~1u)));
    var var_1 = any(!(!(!global1[_wgslsmith_index_u32(~6984u, 11u)])));
    var_1 = !func_7(abs(5283u), func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f - 130f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(369f, global0[_wgslsmith_index_u32(u_input.a, 27u)], var_0.b)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b, var_0.b, -658f), vec3<f32>(global0[_wgslsmith_index_u32(33497u, 27u)], 1000f, global0[_wgslsmith_index_u32(var_0.c, 27u)])))), func_1(vec3<bool>(true, true, true), all(global1[_wgslsmith_index_u32(u_input.a, 11u)]), u_input.b | vec4<u32>(4294967295u, var_0.c, 13222u, 1u)), _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.a, -2147483647i), i32(-1i) * -2147483647i)));
    var_1 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(!(var_0.a < u_input.d), true, true, func_7(var_0.c, func_1(vec3<bool>(false, false, true), true, u_input.b))), select(vec4<bool>(all(vec4<bool>(false, true, true, true)), any(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), select(true, false, true), true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(-func_1(vec3<bool>(true, true, true), false, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c, u_input.a, 0u, 13734u), ~u_input.b, u_input.b)).b), countOneBits(max(u_input.c, u_input.c)), -(reverseBits(~vec3<i32>(-2147483647i, var_0.a, var_0.a)) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, 2147483647i, 0i), vec3<i32>(-7049i, -6641i, -16854i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.c.x, -26802i), vec3<i32>(0i, 2147483647i, var_0.a)), ~vec3<i32>(var_0.a, var_0.a, 53139i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, -816f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, -764f, var_0.b), vec3<f32>(950f, global0[_wgslsmith_index_u32(u_input.a, 27u)], var_0.b), true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1811f, 942f, global0[_wgslsmith_index_u32(u_input.b.x, 27u)])))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], var_0.b, global0[_wgslsmith_index_u32(21776u, 27u)]))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], 1000f, -405f), vec3<f32>(var_0.b, global0[_wgslsmith_index_u32(39958u, 27u)], var_0.b)))))));
}

