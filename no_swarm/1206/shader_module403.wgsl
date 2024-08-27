struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    global1 = countOneBits(_wgslsmith_div_u32(arg_1.a.x, 121198u));
    global1 = arg_0.b;
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(arg_1.b), 1u), arg_1.a.xw ^ arg_1.a.zy);
    let var_0 = 1u;
    let var_1 = arg_0;
    return _wgslsmith_f_op_f32(min(-757f, arg_1.c));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = vec3<bool>(global0.x, true, all(vec3<bool>(any(!vec2<bool>(false, global0.x)), true, global0.x)));
    global0 = vec4<bool>(select(false, global0.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(-401f - _wgslsmith_f_op_f32(max(arg_0.x, -1123f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-696f, _wgslsmith_f_op_f32(f32(-1f) * -333f))), var_0.x, all(select(select(vec4<bool>(false, arg_2, global0.x, var_0.x), select(vec4<bool>(true, true, var_0.x, global0.x), vec4<bool>(global0.x, true, true, var_0.x), var_0.x), all(vec4<bool>(var_0.x, global0.x, global0.x, arg_2))), select(!vec4<bool>(true, true, true, arg_2), !vec4<bool>(arg_2, true, false, true), vec4<bool>(global0.x, arg_2, true, true)), !(!vec4<bool>(arg_2, true, false, global0.x)))));
    let var_1 = Struct_1(~vec4<u32>(~arg_1.b & arg_1.b, arg_1.a.x, ~arg_1.a.x, 1u), ~4294967295u, -534f, u_input.b.x);
    let var_2 = -3840i;
    var var_3 = arg_1.b;
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    let var_1 = vec3<u32>(arg_2.a.x, _wgslsmith_div_u32(1u, _wgslsmith_add_u32(var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 63837u, 1u), vec3<u32>(arg_2.b, 1u, 28765u)))) << (arg_2.b % 32u), select(var_0.a.x, var_0.b ^ 1u, !any(global0.www)));
    var var_2 = var_0;
    let var_3 = var_0;
    let var_4 = Struct_1(~vec4<u32>(var_3.a.x & 12737u, arg_1, var_0.a.x, var_1.x), select(var_0.b, 4294967295u, global0.x), var_2.c, _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -3983i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2147483647i), u_input.b.zy)), max(vec2<i32>(var_3.d, _wgslsmith_mod_i32(30502i, -1i)), min(vec2<i32>(-1i, -41331i), _wgslsmith_add_vec2_i32(u_input.c, u_input.c)))));
    return !global0.x;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_2.c;
    let var_1 = _wgslsmith_div_i32(1i, arg_1.x);
    global0 = vec4<bool>(all(!vec2<bool>(true, global0.x)) || ((_wgslsmith_sub_i32(arg_1.x, var_1) == ~arg_3.x) | (!global0.x & false)), true, global0.x, func_5(_wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_2, arg_2, arg_2.c, u_input.b)), _wgslsmith_f_op_f32(select(-2421f, var_0, true)), -1413f), arg_2, global0.x)), arg_0, arg_2));
    global0 = select(!(!vec4<bool>(global0.x, !global0.x, true, !global0.x)), vec4<bool>(global0.x, global0.x, func_5(244f, max(~4294967295u, ~arg_0), arg_2), global0.x), !all(vec4<bool>(var_0 < 1000f, func_5(959f, 0u, arg_2), 1u < arg_2.b, arg_0 == arg_2.a.x)));
    var var_2 = arg_2;
    return arg_2;
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-912f * _wgslsmith_f_op_f32(trunc(arg_1.c))), arg_1.c));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> vec4<bool> {
    global1 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.b, func_2(arg_0.b, arg_2.xw, arg_0, vec2<i32>(2147483647i, 0i)).b) & select(vec2<u32>(4294967295u, 37706u), vec2<u32>(1u, arg_0.a.x), global0.x), abs(_wgslsmith_div_vec2_u32(arg_0.a.zz, abs(arg_0.a.ww))), !global0.wy), vec2<u32>(~(arg_0.b << (_wgslsmith_dot_vec3_u32(arg_0.a.wyx, arg_0.a.zwy) % 32u)), 47562u));
    var var_0 = func_2(7960u, _wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(-arg_2.x), arg_2.x), firstTrailingBit(-(~arg_2.zw))), Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(arg_0.a.xxy, vec3<u32>(1u, 35717u, arg_0.a.x)), select(~arg_0.a.x, 37266u, -2147483647i != arg_2.x), _wgslsmith_clamp_u32(27547u, ~4294967295u, 1u ^ arg_0.b), ~4294967295u), _wgslsmith_clamp_u32(abs(4294967295u), ~arg_0.a.x, ~(~arg_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - arg_0.c)), 4784i), ~abs(vec2<i32>(-1i, arg_0.d | -32243i)));
    var_0 = arg_0;
    var_0 = Struct_1(~(var_0.a >> (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, 0u, arg_0.b, 4294967295u), vec4<u32>(var_0.b, 1u, 1u, var_0.b))) % vec4<u32>(32u))), 21462u, var_0.c, abs(_wgslsmith_dot_vec4_i32(u_input.b, arg_2)) & u_input.e);
    global0 = select(!vec4<bool>(func_5(-263f, 1645u, arg_0) == !global0.x, global0.x, -916f >= _wgslsmith_f_op_f32(abs(arg_0.c)), any(global0.yyw) != (global0.x | true)), vec4<bool>(global0.x, all(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), false)), all(vec3<bool>(true, global0.x, all(vec3<bool>(true, global0.x, false)))), all(select(!vec4<bool>(true, false, global0.x, true), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, false, global0.x, true), vec4<bool>(true, true, global0.x, true)), true))), vec4<bool>(true, false, !global0.x, true));
    return vec4<bool>(global0.x & all(global0.yy), global0.x, global0.x, true);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    let var_0 = -9114i;
    var var_1 = -675f;
    global0 = !select(func_7(Struct_1(abs(vec4<u32>(40937u, 0u, 1u, 1451u)), 0u, -1072f, ~arg_0), _wgslsmith_f_op_vec2_f32(func_6(true, func_2(58481u, u_input.a.xy, Struct_1(vec4<u32>(1u, 84259u, 0u, 9002u), 7099u, -1069f, 2147483647i), vec2<i32>(var_0, 12742i)))), select(u_input.b, u_input.b, global0.x)), vec4<bool>(global0.x & func_5(1000f, 1u, Struct_1(vec4<u32>(4294967295u, 30483u, 4706u, 81941u), 1u, -112f, 0i)), !(false != global0.x), arg_1.x, global0.x), select(!(!vec4<bool>(global0.x, false, global0.x, global0.x)), vec4<bool>(all(vec4<bool>(false, global0.x, arg_1.x, global0.x)), true, true, true), func_7(func_2(1u, vec2<i32>(32476i, var_0), Struct_1(vec4<u32>(4524u, 1u, 26009u, 0u), 0u, -220f, -19843i), u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-599f, -1407f) - vec2<f32>(-1685f, -698f)), -vec4<i32>(-1i, arg_0, var_0, -1i))));
    global0 = select(vec4<bool>(-2147483647i != func_2(countOneBits(4294967295u), reverseBits(vec2<i32>(1i, var_0)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), 17628u, -1076f, arg_0), u_input.a.yz ^ vec2<i32>(-251i, u_input.e)).d, func_7(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), abs(4294967295u), _wgslsmith_f_op_f32(sign(-248f)), i32(-1i) * -742i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1230f, -587f))))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, arg_0, var_0, arg_0), vec4<i32>(-67177i, 40491i, 2147483647i, arg_0)))).x, true, (1076f > func_2(1u, u_input.b.yy, Struct_1(vec4<u32>(4294967295u, 1u, 1u, 1u), 10480u, -974f, 2147483647i), vec2<i32>(arg_0, u_input.e)).c) != true), vec4<bool>(global0.x, !all(!vec3<bool>(arg_1.x, false, global0.x)), global0.x, all(func_7(func_2(4294967295u, u_input.a.zy, Struct_1(vec4<u32>(78653u, 41706u, 38435u, 1u), 15384u, -144f, 46381i), u_input.b.wx), _wgslsmith_f_op_vec2_f32(vec2<f32>(1064f, 137f) * vec2<f32>(199f, -1647f)), u_input.b).xx)), arg_1.x);
    var var_2 = Struct_1(func_2(~1u, vec2<i32>(i32(-1i) * -6028i, 72775i), Struct_1(~vec4<u32>(43055u, 35500u, 1u, 16975u), abs(~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-704f - -1899f) * _wgslsmith_f_op_f32(f32(-1f) * -1008f)), -17436i), ~select(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(1i, 10774i)), !arg_1.x)).a, abs(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)), arg_0 & _wgslsmith_clamp_i32(select(1i, -11417i, arg_0 > u_input.a.x), 3752i, firstLeadingBit(var_0)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec2<bool>(global0.x || global0.x, !global0.x)), select(vec2<bool>(true, global0.x), global0.wx, _wgslsmith_mod_u32(~0u, 1u) <= func_1(u_input.a.x, vec2<bool>(true, global0.x))), global0.zz);
    var var_1 = -((i32(-1i) * -2147483647i) & firstLeadingBit(u_input.e >> (1u % 32u)));
    var var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(ceil(497f))));
    var var_4 = Struct_1(vec4<u32>(abs(1u), 1u << (1u % 32u), min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(37810u, 0u))), reverseBits(4679u)), _wgslsmith_clamp_u32(1u, (13417u >> (firstLeadingBit(138119u) % 32u)) >> (min(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(48674u, 0u))) % 32u), 35730u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f + 1127f))), _wgslsmith_sub_i32(-u_input.e & -min(-67143i, 10398i), u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c, -1561f, 1338f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c, -1605f, var_4.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(674f, 1333f, 551f) - vec3<f32>(var_4.c, var_4.c, -1094f)))), select(global0.zwz, vec3<bool>(true, var_0.x, false), vec3<bool>(false, global0.x, true)))) + vec3<f32>(-842f, _wgslsmith_f_op_f32(step(108f, var_4.c)), 1536f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_4.c, var_4.c, 1015f))))), Struct_1(var_4.a, 1u, 1408f, var_4.d), true)), 646f)), ~1u, -(~((vec2<i32>(18343i, -71302i) | u_input.c) | vec2<i32>(-2147483647i, var_4.d))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_div_u32(1u, var_4.b), var_4.b)));
}

