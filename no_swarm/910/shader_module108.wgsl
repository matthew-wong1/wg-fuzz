struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(0u, 1u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1064f - -1692f)) * -1000f)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1966f);
    var var_2 = Struct_1(true, var_1);
    global0 = Struct_2(~(global0.a ^ global0.a));
    var var_3 = vec3<i32>(-1i, u_input.a.x ^ (u_input.b << (u_input.c % 32u)), _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(arg_0), -25067i ^ u_input.a.x), select(_wgslsmith_sub_vec2_i32(u_input.a.yw, u_input.a.wx), vec2<i32>(arg_0, u_input.a.x), true))));
    return global0.a.x;
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-520f)), _wgslsmith_div_f32(-1712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f - -1052f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-927f - _wgslsmith_f_op_f32(floor(860f))))));
    var var_1 = arg_0;
    let var_2 = Struct_1(all(!vec4<bool>(-346f == var_0.x, true, true, true)), _wgslsmith_f_op_f32(floor(var_0.x)));
    let var_3 = 58103u;
    var_1 = Struct_2(vec3<u32>(~_wgslsmith_mult_u32(var_1.a.x, 4294967295u) & 72366u, 67028u, func_3(u_input.b)));
    return _wgslsmith_dot_vec2_i32(u_input.a.zz, max(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.a.wy), select(u_input.a.yx, u_input.a.xy, var_2.a)) & u_input.a.xw) == 51135i;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    global0 = arg_1;
    global0 = arg_1;
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_2.xx, _wgslsmith_f_op_vec2_f32(trunc(arg_2.zz)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2.zy)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.xy), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -374f) - _wgslsmith_f_op_vec2_f32(trunc(arg_2.yx)))))), vec2<bool>(arg_0.x, false)));
    let var_1 = select(arg_0.xxx, !select(vec3<bool>(func_2(Struct_2(vec3<u32>(arg_1.a.x, arg_1.a.x, 67684u))), arg_0.x, 452f > var_0.x), vec3<bool>(arg_0.x, true, u_input.b >= -32809i), any(arg_0.zxx)), ((true == (u_input.b <= -2147483647i)) & !arg_0.x) == any(select(vec2<bool>(false, arg_0.x), select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), false), arg_0.wy)));
    global0 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~arg_1.a.x, arg_1.a.x), 11513u, select(abs(35549u), _wgslsmith_sub_u32(102898u, u_input.c), arg_0.x)), firstTrailingBit(global0.a)));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    global0 = func_1(vec4<bool>(true, true, true, true), Struct_2(vec3<u32>(select(51554u, _wgslsmith_clamp_u32(47916u, arg_2, 20735u), true), arg_0.a.x, ~10706u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-171f, 623f, _wgslsmith_f_op_f32(-334f - -1588f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-599f, 942f, -291f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(183f, 1701f, 1083f))))))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 926f) * 1017f) - _wgslsmith_f_op_f32(-1059f - _wgslsmith_f_op_f32(round(1000f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1228f * -785f))), _wgslsmith_f_op_f32(ceil(293f)));
    var var_1 = false;
    let var_2 = ~vec2<u32>(~93914u, countOneBits(arg_0.a.x));
    let var_3 = select(!(!(!select(vec4<bool>(true, var_0.a, true, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false)))), vec4<bool>(var_0.a, func_2(Struct_2(arg_0.a)), false, !var_0.a), vec4<bool>(all(select(!vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), false), true)), all(vec3<bool>(select(true, true, false), any(vec2<bool>(var_0.a, false)), true)), var_0.a, true));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-524f, -980f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(min(183f, arg_1.b)))), -838f)), vec4<f32>(1000f, arg_0.b, -700f, _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1043f - arg_0.b))))), arg_1.a));
    let var_1 = ~(~vec3<u32>(~90404u, u_input.c, 4294967295u) << (vec3<u32>(1u | ~global0.a.x, countOneBits(u_input.c), u_input.c) % vec3<u32>(32u)));
    global0 = arg_3;
    var var_2 = 283f;
    var var_3 = countOneBits(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(43782u, arg_3.a.x), vec2<u32>(arg_3.a.x, 0u)), ~arg_3.a.xx), ~arg_3.a.xy));
    return _wgslsmith_dot_vec3_u32(max(firstLeadingBit((var_1 << (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u))) ^ global0.a), vec3<u32>(16410u, _wgslsmith_clamp_u32(~arg_3.a.x, ~var_1.x, ~var_1.x), u_input.c)), global0.a);
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = -2167f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(368f * var_0))))), 570f);
    global0 = Struct_2(vec3<u32>(117388u, global0.a.x, ~(~global0.a.x)));
    var var_2 = Struct_1(true, var_1.x);
    var_2 = Struct_1(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.b, var_1.x))), func_4(arg_2, vec2<i32>(u_input.b, u_input.b), ~1u).b));
    return Struct_1(select(func_2(arg_2), !(false & var_2.a) || false, var_2.a), 574f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.a.x, u_input.a.x >> (func_5(func_4(func_1(vec4<bool>(true, true, true, true), Struct_2(global0.a), vec3<f32>(1952f, 119f, -580f)), vec2<i32>(60832i, 9884i) | u_input.a.wx, u_input.c), func_4(Struct_2(global0.a), ~u_input.a.zz, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.x, global0.a.x), vec3<u32>(61206u, 0u, u_input.c))), Struct_1(true, _wgslsmith_f_op_f32(floor(-2081f))), func_1(vec4<bool>(true, true, false, true), func_1(vec4<bool>(true, true, true, true), Struct_2(vec3<u32>(u_input.c, u_input.c, 4294967295u)), vec3<f32>(887f, -1099f, -235f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-446f, -814f, -1072f), vec3<f32>(840f, -477f, -1990f))))) % 32u), func_1(select(vec4<bool>(true, func_2(Struct_2(vec3<u32>(82172u, 19246u, global0.a.x))), true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), Struct_2(global0.a >> (vec3<u32>(0u, global0.a.x, 59156u) % vec3<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-389f, -912f, 725f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1770f, 207f, -1768f) + vec3<f32>(1036f, -1304f, -1811f)), all(vec2<bool>(false, false)))), vec3<f32>(1f, 1f, 1f))));
    global0 = func_1(select(!vec4<bool>(true, !var_0.a, true, any(vec4<bool>(true, true, false, var_0.a))), select(!vec4<bool>(true, true, var_0.a, var_0.a), select(vec4<bool>(var_0.a, true, var_0.a, false), !vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(false, false, true, var_0.a)), select(select(vec4<bool>(true, false, false, var_0.a), vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.a, false, var_0.a, false)), select(vec4<bool>(true, false, var_0.a, var_0.a), vec4<bool>(var_0.a, false, false, var_0.a), true), false)), !var_0.a), func_1(!vec4<bool>(true, all(vec2<bool>(false, var_0.a)), var_0.a, !var_0.a), func_1(!(!vec4<bool>(false, true, var_0.a, true)), func_1(vec4<bool>(var_0.a, var_0.a, true, var_0.a), Struct_2(vec3<u32>(u_input.c, global0.a.x, 1u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 794f, -163f), vec3<f32>(var_0.b, var_0.b, 553f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, var_0.b, var_0.b))), vec3<f32>(_wgslsmith_f_op_f32(floor(1020f)), 155f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.b)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, 388f, var_0.b))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, var_0.b, 1045f), vec3<f32>(730f, var_0.b, -1806f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, -1000f, -872f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 930f, var_0.b)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(327f, var_0.b, var_0.b))), vec3<bool>(var_0.a, var_0.a, var_0.a))))))));
    global0 = func_1(vec4<bool>(!func_6(-2147483647i, 1i, Struct_2(global0.a)).a, var_0.a, ((-6539i & u_input.a.x) ^ u_input.a.x) == -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, 4742i), u_input.a.zzw), var_0.a), func_1(select(!vec4<bool>(false, var_0.a, var_0.a, false), select(vec4<bool>(false, false, var_0.a, true), select(vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(false, false, true, var_0.a), vec4<bool>(var_0.a, false, false, var_0.a)), vec4<bool>(var_0.a, true, false, true)), var_0.a), Struct_2(~global0.a), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1505f - 527f) * _wgslsmith_f_op_f32(var_0.b + var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_0.b) * var_0.b))), vec3<f32>(-1963f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_0.b) * var_0.b) + _wgslsmith_f_op_f32(-1000f + var_0.b))));
    var var_1 = Struct_2(~(global0.a | global0.a));
    var var_2 = func_1(select(vec4<bool>(var_0.a, var_0.a, func_2(func_1(vec4<bool>(var_0.a, false, var_0.a, var_0.a), Struct_2(global0.a), vec3<f32>(var_0.b, var_0.b, 278f))), true), select(!(!vec4<bool>(false, true, var_0.a, false)), !vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(u_input.a.x <= -2147483647i, !var_0.a, var_0.a, true)), true), func_1(vec4<bool>(any(select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, false, var_0.a))), !any(vec4<bool>(var_0.a, false, var_0.a, false)), true, false), func_1(select(select(vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(true, false, false, var_0.a)), vec4<bool>(var_0.a, true, false, true), !vec4<bool>(false, true, true, var_0.a)), Struct_2(_wgslsmith_mult_vec3_u32(var_1.a, global0.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1679f, var_0.b, -382f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, 924f, 429f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, var_0.b, var_0.b)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, 284f, var_0.b))), vec3<f32>(var_0.b, var_0.b, var_0.b)))), vec3<f32>(-1000f, var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b)))), select(select(!vec3<bool>(true, true, var_0.a), vec3<bool>(true, true, true), var_0.a && var_0.a), select(!vec3<bool>(var_0.a, var_0.a, false), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, true, false)), !vec3<bool>(var_0.a, var_0.a, var_0.a)), true))));
    var_2 = Struct_2(~(~var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, 58957i, u_input.b, -2147483647i)), _wgslsmith_sub_i32(-2147483647i, 0i)), abs(-25753i), 40339i, u_input.a.x), vec4<i32>(~u_input.a.x, ~(i32(-1i) * -62304i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, -8904i), -14489i), i32(-1i) * -u_input.b)), vec2<u32>(33471u, u_input.c));
}

