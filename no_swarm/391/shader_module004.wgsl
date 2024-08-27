struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(4294967295u, vec2<f32>(-439f, -766f), 0i, vec2<bool>(false, true)), Struct_1(49747u, vec2<f32>(-405f, -1258f), 1i, vec2<bool>(false, false)), Struct_1(4294967295u, vec2<f32>(-291f, -243f), i32(-2147483648), vec2<bool>(false, false)), Struct_1(1u, vec2<f32>(1460f, 488f), 1i, vec2<bool>(true, false)), Struct_1(60558u, vec2<f32>(1627f, -1148f), 1i, vec2<bool>(false, false)), Struct_1(1u, vec2<f32>(-1436f, 689f), i32(-2147483648), vec2<bool>(true, true)), Struct_1(0u, vec2<f32>(-2326f, 989f), i32(-2147483648), vec2<bool>(false, false)), Struct_1(77445u, vec2<f32>(239f, 214f), -12409i, vec2<bool>(true, true)), Struct_1(0u, vec2<f32>(-911f, -368f), 24050i, vec2<bool>(false, false)), Struct_1(1u, vec2<f32>(678f, -137f), 2147483647i, vec2<bool>(false, false)), Struct_1(9418u, vec2<f32>(-140f, 322f), 19145i, vec2<bool>(true, true)), Struct_1(13149u, vec2<f32>(1648f, 675f), 2147483647i, vec2<bool>(true, false)), Struct_1(0u, vec2<f32>(-1000f, -571f), 15110i, vec2<bool>(true, true)), Struct_1(14426u, vec2<f32>(-371f, -1459f), 2147483647i, vec2<bool>(false, true)), Struct_1(1u, vec2<f32>(336f, 261f), i32(-2147483648), vec2<bool>(false, false)), Struct_1(60968u, vec2<f32>(-812f, -115f), -15782i, vec2<bool>(false, true)), Struct_1(7852u, vec2<f32>(3213f, 998f), 14896i, vec2<bool>(true, false)), Struct_1(0u, vec2<f32>(-216f, 1598f), 2147483647i, vec2<bool>(true, true)), Struct_1(64020u, vec2<f32>(1000f, -479f), 28143i, vec2<bool>(true, true)), Struct_1(0u, vec2<f32>(-2103f, 502f), -20124i, vec2<bool>(false, true)), Struct_1(0u, vec2<f32>(-1089f, 851f), 0i, vec2<bool>(false, false)), Struct_1(76271u, vec2<f32>(627f, -1005f), 25479i, vec2<bool>(false, true)), Struct_1(61675u, vec2<f32>(435f, -2721f), -1i, vec2<bool>(false, false)), Struct_1(1u, vec2<f32>(-1680f, -1101f), i32(-2147483648), vec2<bool>(true, false)), Struct_1(0u, vec2<f32>(179f, 1250f), 0i, vec2<bool>(false, true)), Struct_1(4294967295u, vec2<f32>(1000f, 1037f), -15889i, vec2<bool>(true, false)));

var<private> global1: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-28854i, -16283i), vec2<i32>(-7726i, 62179i), vec2<i32>(-7689i, -13i), vec2<i32>(0i, -26868i), vec2<i32>(2147483647i, 28051i), vec2<i32>(-20826i, 2147483647i), vec2<i32>(28616i, 0i), vec2<i32>(-2174i, 2147483647i), vec2<i32>(1i, 19877i), vec2<i32>(25480i, -1i), vec2<i32>(-11036i, 0i), vec2<i32>(-1i, 5105i), vec2<i32>(-41007i, 6236i), vec2<i32>(i32(-2147483648), 26711i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, 43490i), vec2<i32>(22685i, -53422i), vec2<i32>(34766i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-21366i, -44677i));

var<private> global2: array<u32, 12> = array<u32, 12>(4294967295u, 1u, 1u, 113642u, 0u, 1u, 47044u, 49874u, 0u, 1u, 4294967295u, 51797u);

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = ~vec3<u32>(max(36658u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 12u)], arg_2.a, 0u), vec4<u32>(arg_1.a, 8235u, 7331u, arg_1.a)), ~global3.a)), arg_2.a, ~select(global3.a << (u_input.b.x % 32u), arg_0.a >> (79371u % 32u), arg_1.b.x >= global3.b.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1090f, _wgslsmith_f_op_f32(arg_0.b.x - 919f), _wgslsmith_f_op_f32(830f + 454f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1732f, arg_1.b.x), vec3<f32>(-504f, -193f, -197f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, global3.b.x, -449f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-1373f - arg_2.b.x), _wgslsmith_f_op_f32(334f - arg_0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-560f * arg_2.b.x), _wgslsmith_f_op_f32(round(arg_0.b.x))))))));
    var_0 = abs(reverseBits(~vec3<u32>(4294967295u, abs(40680u), ~arg_2.a)));
    var var_2 = global0[_wgslsmith_index_u32(0u, 26u)];
    let var_3 = reverseBits(vec3<i32>(~arg_0.c, _wgslsmith_dot_vec4_i32(select(u_input.a, vec4<i32>(1i, global3.c, arg_1.c, 2147483647i), arg_1.d.x) << (~vec4<u32>(0u, 4294967295u, var_2.a, global2[_wgslsmith_index_u32(arg_1.a, 12u)]) % vec4<u32>(32u)), vec4<i32>(-14502i, -2147483647i, arg_0.c, u_input.c | 7851i)), -11757i));
    return ~0u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = func_3(Struct_1(~1u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.x, -457f), vec2<f32>(arg_0.b.x, arg_1.b.x))), arg_1.b)))), reverseBits(_wgslsmith_dot_vec3_i32(select(u_input.a.xzz, vec3<i32>(-1i, 34040i, -2147483647i), false), _wgslsmith_add_vec3_i32(u_input.a.wxz, u_input.a.yww))), !(!global3.d)), global0[_wgslsmith_index_u32(~abs(~(~arg_0.a)), 26u)], Struct_1(0u, vec2<f32>(-1417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1971f - 523f))), _wgslsmith_div_i32(reverseBits(-2147483647i), -arg_0.c), !select(!arg_1.d, select(arg_1.d, vec2<bool>(true, arg_1.d.x), arg_0.d), true)));
    global0 = array<Struct_1, 26>();
    let var_1 = 9027u;
    global3 = Struct_1(~(func_3(Struct_1(1u, arg_0.b, arg_1.c, vec2<bool>(true, true)), arg_1, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1, 58260u), 26u)]) | func_3(global0[_wgslsmith_index_u32(43312u | arg_0.a, 26u)], Struct_1(34235u, arg_0.b, arg_1.c, vec2<bool>(false, false)), Struct_1(arg_1.a, vec2<f32>(global3.b.x, -262f), global3.c, arg_0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(arg_0.b.x + 847f)) + arg_1.b)), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.c >> (var_0 % 32u), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(54976i, -2954i, 0i, arg_1.c))) ^ _wgslsmith_clamp_i32(23011i, min(u_input.a.x, 2147483647i), reverseBits(0i)), -(~_wgslsmith_dot_vec3_i32(u_input.a.xzy, u_input.a.xyy))), select(vec2<bool>(true, all(arg_2)), vec2<bool>(!(arg_0.c <= u_input.c), arg_1.d.x), !vec2<bool>(any(vec4<bool>(true, false, arg_0.d.x, arg_0.d.x)), !arg_0.d.x)));
    let var_2 = -645f;
    return select(vec4<bool>(!global3.d.x, global3.d.x, ~_wgslsmith_sub_i32(arg_0.c, 2147483647i) >= ~reverseBits(arg_1.c), arg_2.x), !(!(!vec4<bool>(false, arg_2.x, false, false))), vec4<bool>(true, arg_0.d.x, false, true));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = firstLeadingBit(~vec4<u32>(u_input.b.x, 28118u, _wgslsmith_div_u32(~0u, ~global3.a), 1u));
    var var_1 = global0[_wgslsmith_index_u32(~(~(65341u | var_0.x)), 26u)];
    let var_2 = Struct_1(17634u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(828f, 434f)) + arg_2.zz)))), global3.c, vec2<bool>(all(func_2(global0[_wgslsmith_index_u32(35473u, 26u)], Struct_1(2499u, vec2<f32>(464f, 1082f), global3.c, vec2<bool>(var_1.d.x, true)), vec3<bool>(var_1.d.x, true, true))) == global3.d.x, !(!(false & var_1.d.x))));
    var var_3 = select(_wgslsmith_mod_vec4_i32(firstTrailingBit(-u_input.a) & _wgslsmith_div_vec4_i32(-vec4<i32>(var_2.c, -2147483647i, arg_1.x, 2147483647i), -vec4<i32>(global3.c, var_2.c, var_2.c, 5153i)), -firstLeadingBit(u_input.a)), _wgslsmith_sub_vec4_i32(u_input.a, -abs(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a))), !func_2(Struct_1(64815u, vec2<f32>(arg_2.x, global3.b.x), ~global3.c, !var_2.d), var_2, !(!vec3<bool>(var_2.d.x, true, false))));
    let var_4 = ~vec3<u32>(var_1.a, global2[_wgslsmith_index_u32(4294967295u >> ((countOneBits(global3.a) & 66507u) % 32u), 12u)], global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(42951u, u_input.b.x), 12u)], 12u)]);
    return _wgslsmith_add_i32(abs(select(select(var_3.x, var_3.x, false) & _wgslsmith_sub_i32(4519i, 2147483647i), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global3.c, u_input.c, arg_1.x, 0i)), u_input.a), global3.d.x)), -global3.c >> (~var_0.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = ~min(u_input.a.x, func_1(global3.d.x, u_input.a.yzx, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, global3.b.x, -1000f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)), 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global3.b.x)), _wgslsmith_f_op_f32(ceil(global3.b.x)), _wgslsmith_f_op_f32(global3.b.x - global3.b.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-796f, global3.b.x, -1845f)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(427f, _wgslsmith_f_op_f32(global3.b.x + -319f)))), _wgslsmith_f_op_f32(1738f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-291f * var_1.x))))), _wgslsmith_f_op_f32(step(global3.b.x, global3.b.x)));
    let var_2 = u_input.b.x;
    var_0 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(243f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.b.x + 1407f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_f_op_f32(sign(global3.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(344f, -294f, var_1.x), vec3<f32>(var_1.x, 164f, global3.b.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1000f, var_1.x), vec3<f32>(global3.b.x, var_1.x, -2113f))))))));
    let var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(~17665u, global2[_wgslsmith_index_u32(global3.a, 12u)], 1u, _wgslsmith_mod_u32(1u, firstTrailingBit(1u))), firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(u_input.b.x, ~u_input.b.x), ~36624u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(13673u, global3.a)), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(18880u, 56685u))), global2[_wgslsmith_index_u32(13081u, 12u)])));
    let var_5 = Struct_1(~(firstTrailingBit(4294967295u) << (reverseBits(4294967295u) % 32u)) & 1u, _wgslsmith_f_op_vec2_f32(var_3.zx - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.b.x, global3.b.x))))), i32(-1i) * -_wgslsmith_clamp_i32(select(16154i, 20252i, false), 1i, 1i), !global3.d);
    let x = u_input.a;
    s_output = StorageBuffer(38891u);
}

