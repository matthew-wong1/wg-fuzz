struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, false, true, false, false, false, true, true, true, false, false, true, false, false, true);

var<private> global2: f32;

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<f32>(-469f, -871f, 1491f, -856f), Struct_1(vec3<bool>(true, false, true), i32(-2147483648), -185f), Struct_1(vec3<bool>(false, true, false), 1i, 1318f)), Struct_2(vec4<f32>(926f, -318f, -1031f, 1185f), Struct_1(vec3<bool>(true, false, false), 1i, -510f), Struct_1(vec3<bool>(false, false, false), i32(-2147483648), -1756f)), Struct_2(vec4<f32>(1828f, 804f, 1000f, -616f), Struct_1(vec3<bool>(false, false, false), 1i, 1596f), Struct_1(vec3<bool>(false, true, false), 0i, 746f)), Struct_2(vec4<f32>(401f, 1325f, 481f, -1845f), Struct_1(vec3<bool>(false, true, false), -3299i, -2534f), Struct_1(vec3<bool>(false, false, false), 33909i, 1000f)), Struct_2(vec4<f32>(403f, 186f, 1941f, 211f), Struct_1(vec3<bool>(true, true, false), 0i, 1726f), Struct_1(vec3<bool>(true, false, false), 2147483647i, -737f)), Struct_2(vec4<f32>(334f, 1000f, -878f, 1000f), Struct_1(vec3<bool>(false, true, false), -1226i, -995f), Struct_1(vec3<bool>(false, false, true), -47622i, -531f)), Struct_2(vec4<f32>(1000f, 524f, 1000f, 1000f), Struct_1(vec3<bool>(false, true, true), 373i, 380f), Struct_1(vec3<bool>(true, true, false), -31829i, 1182f)), Struct_2(vec4<f32>(1986f, 653f, 764f, 1430f), Struct_1(vec3<bool>(true, false, true), 1i, 832f), Struct_1(vec3<bool>(true, true, false), 2147483647i, -685f)), Struct_2(vec4<f32>(463f, -1752f, 709f, 451f), Struct_1(vec3<bool>(true, true, true), i32(-2147483648), -2332f), Struct_1(vec3<bool>(true, false, false), 2147483647i, -1628f)), Struct_2(vec4<f32>(-758f, 1020f, 2277f, 275f), Struct_1(vec3<bool>(false, true, false), -30149i, -543f), Struct_1(vec3<bool>(false, true, false), 1i, 1042f)), Struct_2(vec4<f32>(363f, -714f, 640f, -166f), Struct_1(vec3<bool>(true, true, true), i32(-2147483648), -1179f), Struct_1(vec3<bool>(true, false, true), i32(-2147483648), 115f)), Struct_2(vec4<f32>(832f, -1564f, 440f, 1641f), Struct_1(vec3<bool>(true, false, true), -1i, 646f), Struct_1(vec3<bool>(false, false, true), -41130i, 292f)), Struct_2(vec4<f32>(-1059f, -621f, -827f, 1863f), Struct_1(vec3<bool>(true, true, true), -1i, 1000f), Struct_1(vec3<bool>(false, true, false), -12704i, -196f)), Struct_2(vec4<f32>(150f, -840f, 1140f, -1193f), Struct_1(vec3<bool>(false, false, false), -6036i, 133f), Struct_1(vec3<bool>(true, true, false), i32(-2147483648), 488f)), Struct_2(vec4<f32>(602f, -694f, -1700f, 1000f), Struct_1(vec3<bool>(true, false, true), 18189i, 1095f), Struct_1(vec3<bool>(true, true, false), -35463i, -593f)));

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: f32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 16u)];
    var var_1 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, -1033f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1867f, 509f) - vec2<f32>(arg_1, -164f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(-859f, arg_1)) - vec2<f32>(-1491f, arg_1)))), global3[_wgslsmith_index_u32(u_input.b.x, 15u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_div_f32(var_1.b.b.c, var_1.a.x), _wgslsmith_div_f32(arg_1, 1360f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(305f, arg_1, var_1.b.b.c))), var_1.b.a.wyy, !global1[_wgslsmith_index_u32(31684u, 16u)])))) - var_1.b.a.xzx));
    let var_3 = Struct_4(var_2.xx, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.c, var_2.x, -1022f, var_1.b.a.x))))), var_1.b.b, Struct_1(vec3<bool>(false, true, global1[_wgslsmith_index_u32(~61300u, 16u)]), 1i, _wgslsmith_f_op_f32(-var_2.x))));
    let var_4 = var_3.b.b.a.zy;
    return 15202u;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> f32 {
    global1 = array<bool, 16>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1445f, -313f, -1357f), vec3<f32>(1f, 1f, 1f)))))));
    global0 = array<vec3<bool>, 23>();
    var var_1 = Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x << (countOneBits(u_input.b.x) % 32u), 16u)] || (true == global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), !all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(28216u, 16u)], arg_2.x), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 16u)], false), true))), abs(-(~arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = Struct_1(select(select(vec3<bool>(select(true, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], arg_2.x), var_1.a.x, true), select(global0[_wgslsmith_index_u32(24620u, 23u)], select(vec3<bool>(true, global1[_wgslsmith_index_u32(20440u, 16u)], false), vec3<bool>(var_1.a.x, true, false), global0[_wgslsmith_index_u32(arg_1.x, 23u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(17047u, 16u)], true, var_1.a.x), vec3<bool>(false, true, false), var_1.a.x)), -557f == _wgslsmith_div_f32(-313f, var_0.x)), select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 16u)], arg_2.x, false), var_1.a, vec3<bool>(true, false, true)), vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 16u)], arg_2.x, true), vec3<bool>(var_1.a.x, false, var_1.a.x)), select(arg_2.wxx, !var_1.a, !global1[_wgslsmith_index_u32(1u, 16u)]), !all(vec4<bool>(arg_2.x, true, var_1.a.x, false))), select(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(39293u, 16u)], var_1.a.x), var_1.a, arg_2.x), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], false), global0[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(47298u, 16u)]), true), !select(vec3<bool>(var_1.a.x, var_1.a.x, arg_2.x), arg_2.wyy, vec3<bool>(false, arg_2.x, true)), -2621i < -arg_0.x)), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) * var_0.x));
    return -1162f;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(~1u, 15u)];
    let var_1 = ~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(10995u & u_input.b.x, 23684u, u_input.b.x, u_input.b.x)), vec4<u32>(0u, firstTrailingBit(30706u), u_input.b.x, u_input.b.x));
    let var_2 = var_0.b.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-577f, arg_2.c.c)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - -920f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a.x, 1i, var_0.b.b), vec3<u32>(var_1.x, u_input.b.x, var_1.x), vec4<bool>(var_2.x, var_0.b.a.x, var_2.x, false))) * -251f))))));
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * -1599f) * _wgslsmith_f_op_f32(ceil(1298f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a) - arg_2.a)), arg_2.b, Struct_1(select(var_0.c.a, !global0[_wgslsmith_index_u32(4294967295u, 23u)], select(arg_2.b.a.x, true, false)), _wgslsmith_div_i32(arg_2.c.b, -786i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0)), var_3, true)))));
    return arg_2.c.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(u_input.b.x, func_2(all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 16u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(19456u, 16u)], true), global1[_wgslsmith_index_u32(0u, 16u)]), global1[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1415f, _wgslsmith_f_op_f32(-969f + 1539f)))))), _wgslsmith_add_u32(u_input.b.x, 41707u), max(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x << (2809u % 32u), ~u_input.b.x), abs(4294967295u | u_input.b.x)), u_input.b.x));
    var var_1 = any(!vec4<bool>(false, func_4(_wgslsmith_f_op_f32(func_3(vec3<i32>(-23584i, -57077i, global4.x), var_0.zxw, vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)], false, global1[_wgslsmith_index_u32(var_0.x, 16u)]))), 2147483647i, global3[_wgslsmith_index_u32(var_0.x, 15u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1249f, -444f), vec2<f32>(-787f, 231f), global1[_wgslsmith_index_u32(var_0.x, 16u)]))), global1[_wgslsmith_index_u32(u_input.b.x, 16u)], false));
    var var_2 = true;
    var_2 = false;
    let var_3 = Struct_3(Struct_1(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_0.x >> (u_input.b.x % 32u), 16u)]), vec3<bool>(true, all(global0[_wgslsmith_index_u32(var_0.x, 23u)]), true), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)]))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(reverseBits(u_input.a.x), u_input.a.x | global4.x), -55969i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1105f))))), vec2<i32>(-abs(-global4.x), u_input.a.x));
    return var_3.a;
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_3(func_1(), vec2<i32>(_wgslsmith_mod_i32(4092i, -u_input.a.x) | ~0i, ~arg_0.b));
    global3 = array<Struct_2, 15>();
    global0 = array<vec3<bool>, 23>();
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1538f, 1000f, var_1.c) + vec3<f32>(-1834f, 1000f, -1000f)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(-1508f, -252f), _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(201f, var_1.c, var_0.a.c)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)), -567f, _wgslsmith_f_op_f32(f32(-1f) * -3081f))));
    return StorageBuffer(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 31684u), vec2<u32>(u_input.b.x, 4294967295u)), 46715u), u_input.b >> (reverseBits(u_input.b) % vec2<u32>(32u)))), ~(~(~vec3<u32>(88150u, u_input.b.x, 4294967295u)) & reverseBits(min(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(round(arg_0.c)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-903f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1());
}

