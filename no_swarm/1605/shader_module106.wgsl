struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<i32> = vec3<i32>(6526i, 1i, 48222i);

var<private> global2: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-1884f, -1095f, -1000f), vec3<f32>(-593f, 744f, -487f), vec3<f32>(-780f, 755f, -1335f), vec3<f32>(-1000f, 1290f, -1000f), vec3<f32>(1900f, -786f, -137f), vec3<f32>(-591f, -889f, -1534f));

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = !(!vec2<bool>(any(select(global3.wzw, vec3<bool>(false, false, true), true)), true));
    global1 = u_input.c.zyz;
    let var_1 = Struct_1(global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-897f, 243f, -978f, -655f), vec4<f32>(1000f, 900f, 283f, 1729f), vec4<bool>(true, true, var_0.x, false))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-245f, 113f, -1643f, -358f), vec4<f32>(-1661f, 190f, -1879f, 803f))))))));
    global2 = array<vec3<f32>, 6>();
    global1 = abs(u_input.c.ywx);
    return var_1.b.x;
}

fn func_2() -> vec3<i32> {
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2142f + -601f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(2147483647i))), false, true, any(select(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global3.x, global0.x, global0.x, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, global3.x, true, true), global3.x), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(false, global0.x, false, global0.x))))), select(select(!(!vec4<bool>(true, false, false, global0.x)), select(!vec4<bool>(false, global0.x, global0.x, global3.x), !vec4<bool>(global3.x, false, false, false), select(vec4<bool>(false, global0.x, true, true), vec4<bool>(false, global3.x, global0.x, global0.x), vec4<bool>(false, false, true, global0.x))), select(false, global0.x, !global3.x)), vec4<bool>(false && (0i > global1.x), false, _wgslsmith_sub_u32(1u, u_input.d.x) == _wgslsmith_mod_u32(u_input.d.x, 0u), true), false), vec4<bool>(global0.x, true, global3.x, all(select(vec3<bool>(true, false, global3.x), global3.zwz, vec3<bool>(global3.x, true, false))) & global3.x));
    var var_1 = Struct_1(-_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.zwy, countOneBits(vec3<i32>(u_input.a, 2147483647i, u_input.b.x))), vec3<i32>(_wgslsmith_clamp_i32(20370i, 1i, global1.x), -342i, global1.x)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-347f, -180f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1002f, -1124f, global3.x)))), 673f));
    let var_2 = Struct_1(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(-1623f - var_1.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1591f * -168f), _wgslsmith_f_op_f32(round(var_1.b.x)), true)))), -564f, _wgslsmith_f_op_f32(-1184f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1032f, var_1.b.x)))))));
    var_0 = !vec4<bool>(global3.x, any(select(vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global3.x, global0.x, false), var_0.zxy, global3.xzy), global0.x)), all(select(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(global0.x, true, false, var_0.x), vec4<bool>(var_0.x, false, true, global3.x)), vec4<bool>(global3.x, var_0.x, global0.x, var_0.x), any(vec4<bool>(var_0.x, false, false, global3.x)))), global0.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(trunc(var_2.b.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(-260f, _wgslsmith_f_op_f32(782f - var_1.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.x * var_2.b.x), _wgslsmith_f_op_f32(-1009f + -604f)))))));
    return (-max(vec3<i32>(u_input.a, var_1.a, 13788i), vec3<i32>(var_1.a, -2147483647i, var_1.a) ^ u_input.b.yzx) >> ((vec3<u32>(countOneBits(u_input.d.x), 0u, 1u) ^ vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 36804u, 1u), vec3<u32>(0u, 0u, 1u)))) % vec3<u32>(32u))) >> ((~reverseBits(firstLeadingBit(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x))) >> (abs(select(firstTrailingBit(vec3<u32>(0u, u_input.d.x, 0u)), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<bool>(true, var_0.x, false))) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global1 = firstLeadingBit(func_2());
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_mod_i32(~(-19980i), ~_wgslsmith_div_i32(global1.x, min(u_input.c.x, var_0.a))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.b, arg_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, arg_2, -355f, arg_2)))))));
    let var_2 = u_input.d.x;
    var var_3 = _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x);
    return Struct_1(28279i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(func_3(6505i << (var_2 % 32u))), arg_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1592f - -1890f)))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(!((_wgslsmith_clamp_i32(-39063i, 49014i, global1.x) >= arg_2.a) & true), min(128399u, u_input.d.x) <= ~(u_input.d.x & ~25163u), !((~7449u >= ~u_input.d.x) && (global3.x || (false == global0.x))));
    let var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -223f), arg_3.b.x), arg_1, arg_1.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), var_1.b.x, _wgslsmith_div_f32(-210f, var_1.b.x))))));
    let var_3 = var_0.yx;
    global0 = global3.xwz;
    return arg_2;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    global1 = u_input.c.yxz;
    global3 = vec4<bool>(true, true, global3.x, true);
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_2.b))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_2.b.x + 722f), 616f, _wgslsmith_f_op_f32(arg_2.b.x + 1069f), -1319f)))));
    var var_1 = Struct_1(_wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(-abs(global1.x), ~select(var_0.a, arg_3, true))), var_0.b);
    var var_2 = func_4(vec3<i32>(arg_2.a, 0i, -_wgslsmith_div_i32(countOneBits(0i), -26160i)), Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -325f, -2188f, var_1.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, -429f, var_0.b.x, var_1.b.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, var_1.b.x)))), arg_2, arg_2);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)) * _wgslsmith_f_op_f32(sign(arg_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec2<f32>(-158f, _wgslsmith_f_op_f32(func_5(!vec3<bool>(true, global3.x, var_0), ~vec3<u32>(select(u_input.d.x, 13167u, false), _wgslsmith_add_u32(u_input.d.x, 8862u), u_input.d.x), func_4(select(u_input.b.yyz, ~vec3<i32>(-36152i, u_input.a, -1i), false), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(939f, 926f)), Struct_1(2147483647i, vec4<f32>(-1141f, 551f, 285f, -436f)), _wgslsmith_f_op_f32(f32(-1f) * -180f)), func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -761f), vec2<f32>(-1174f, 1000f))), func_1(vec2<f32>(-381f, -1000f), Struct_1(-49213i, vec4<f32>(1049f, -818f, -316f, -152f)), -426f), -156f), func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1067f, -1253f))), Struct_1(1i, vec4<f32>(400f, 1046f, -2010f, -1526f)), _wgslsmith_f_op_f32(f32(-1f) * -592f))), -7091i)));
    var var_2 = Struct_1(i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2098f, -1000f, -414f, var_1.x), vec4<f32>(1000f, 1091f, var_1.x, -790f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, var_1.x, -521f, var_1.x))), true)))));
    global0 = vec3<bool>(true, true, false);
    let var_3 = vec3<bool>(false, select(all(!global3.ww), max(0u, 0u << (u_input.d.x % 32u)) < 9506u, select(1i, ~27079i, all(vec4<bool>(false, global3.x, true, true))) == (var_2.a & _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, u_input.a, global1.x, var_2.a), u_input.c))), (firstTrailingBit(~u_input.d.x) >> (~u_input.d.x % 32u)) <= max(0u, 9576u));
    var var_4 = Struct_1(-23172i, _wgslsmith_f_op_vec4_f32(-var_2.b));
    let var_5 = -_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.a, 1364i, -598i), u_input.c.zwz);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, _wgslsmith_add_vec2_i32(-abs(abs(vec2<i32>(-47210i, 2147483647i))), var_5.yy ^ -vec2<i32>(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_2.b.x) + _wgslsmith_f_op_f32(step(1462f, 1871f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.b.x)) * _wgslsmith_div_f32(var_4.b.x, var_2.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(func_3(u_input.a)), true != global3.x)))), vec2<u32>(u_input.d.x, u_input.d.x));
}

