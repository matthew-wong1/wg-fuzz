struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec3<f32> {
    global0 = !select(!all(!vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], true)), any(!select(vec4<bool>(false, arg_3.x, arg_0, false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 32u)], arg_0), vec4<bool>(false, false, arg_0, arg_0))), any(!vec2<bool>(false, arg_0)));
    var var_0 = vec4<f32>(-1998f, -352f, 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) + 726f))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1832f), _wgslsmith_f_op_f32(-var_0.x), select(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 32u)])))))), var_0.x, vec2<bool>(true, arg_3.x), select(-1376f > _wgslsmith_f_op_f32(step(-1000f, var_0.x)), true, all(vec2<bool>(!arg_0, arg_3.x))), false);
    var var_2 = var_1;
    var_2 = var_1;
    return var_0.zyw;
}

fn func_2(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = 74903u;
    global1 = array<bool, 32>();
    global0 = arg_0.x;
    var var_1 = 1i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-880f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1085f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-643f * -740f) * _wgslsmith_div_f32(143f, -1000f)))), 1734f, arg_0.xz, !all(vec2<bool>(true, u_input.b.x < u_input.b.x)), false);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b, var_2.a, -568f))) + vec3<f32>(1017f, var_2.a, -822f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.b, 206f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_2.b, -540f) + vec3<f32>(var_2.b, var_2.b, var_2.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.a + var_2.a), 1208f, _wgslsmith_f_op_f32(-var_2.b)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(arg_0.x, 0i, vec2<i32>(0i, 16007i), vec2<bool>(var_2.d, true))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    global1 = array<bool, 32>();
    return ~(-27464i);
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-537f, 308f)) - _wgslsmith_f_op_f32(-1000f * 1073f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), vec2<bool>(-567f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - 118f) * 573f), _wgslsmith_add_u32(1u, abs(47350u)) <= ~u_input.a.x), global1[_wgslsmith_index_u32(~26269u, 32u)], false);
    let var_1 = arg_3.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2028f))) - arg_2.x)), -617f, !select(!var_0.c, var_0.c, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), var_0.c.x, any(!vec4<bool>(true, true, var_0.c.x, any(vec2<bool>(true, var_0.c.x)))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1625f - 211f)) - _wgslsmith_f_op_f32(-111f + _wgslsmith_f_op_f32(415f * -1131f))) + _wgslsmith_f_op_vec3_f32(func_2(!select(vec3<bool>(var_2.d, var_2.d, var_0.c.x), vec3<bool>(global1[_wgslsmith_index_u32(33427u, 32u)], true, var_2.d), false))).x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(6962u, 32u)], -36254i, vec2<i32>(var_1, -2147483647i), vec2<bool>(true, var_2.c.x))).x)), -347f), select(var_2.c, select(!var_2.c, !var_2.c, 1i > _wgslsmith_clamp_i32(arg_0, -1i, -26654i)), true), all(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(112138u, 32u)], global1[_wgslsmith_index_u32(arg_1.x, 32u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(47426u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_1.x, 32u)])), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], var_0.c.x), true)), var_2.c.x == any(select(vec2<bool>(true, true), select(var_2.c, vec2<bool>(var_0.c.x, false), vec2<bool>(false, var_2.d)), select(var_2.c, var_2.c, var_2.c))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(func_2(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 32u)], false, false))))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, arg_2.x)), _wgslsmith_f_op_f32(-var_2.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~arg_1, arg_1), 32u)]))), vec2<bool>(!(!var_0.d), true), false, false);
    return Struct_1(-329f, _wgslsmith_f_op_f32(-1254f - 1000f), vec2<bool>(var_3.d, false), ~_wgslsmith_dot_vec3_i32(u_input.b.xzw, vec3<i32>(-16947i, arg_3.x, -29099i)) == arg_3.x, (_wgslsmith_mult_i32(1i, var_1 << (3134u % 32u)) == _wgslsmith_mod_i32(u_input.b.x, arg_3.x)) && (_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 18929i), u_input.c), -arg_3) == 66607i));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = func_5(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(true, false, false))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1299f, -1389f, 1000f), vec3<f32>(-373f, 1000f, 132f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-869f, 804f, -107f), vec3<f32>(767f, 665f, 514f)), vec3<f32>(1f, 1f, 1f)))), ~(~u_input.c.x), Struct_1(_wgslsmith_f_op_f32(-543f + _wgslsmith_f_op_f32(sign(374f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-405f + -442f), 393f), !(!vec2<bool>(arg_1.x, arg_1.x)), false, select(select(false, global1[_wgslsmith_index_u32(arg_0, 32u)], true), arg_0 > 95442u, 1u == arg_0))), reverseBits(countOneBits(~vec3<u32>(arg_0, 31993u, 4294967295u))), vec4<f32>(-174f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-646f, -369f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-778f, -326f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(251f)) * _wgslsmith_f_op_f32(f32(-1f) * -1194f))), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.c.x, countOneBits(-2147483647i))), ~u_input.c));
    let var_1 = func_5(-53985i, firstTrailingBit(firstLeadingBit(~(~vec3<u32>(4294967295u, 4294967295u, u_input.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.a, -434f, 1233f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, -1584f, var_0.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -962f, 1489f, var_0.a) + vec4<f32>(1054f, 240f, var_0.b, var_0.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(-158f, -1650f, var_0.a, var_0.a), vec4<f32>(-1000f, 427f, var_0.a, var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, -1125f, var_0.a) + vec4<f32>(695f, 734f, var_0.b, var_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.b, var_0.b, var_0.a))))), u_input.b.zz);
    var var_2 = -742f;
    global0 = true;
    var_0 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(-var_1.a), 285f, func_5(firstTrailingBit(~max(u_input.b.x, 47860i)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(u_input.a.x, 1u, u_input.a.x) | vec3<u32>(30235u, arg_0, arg_0), countOneBits(vec3<u32>(u_input.a.x, arg_0, arg_0))), vec4<f32>(var_1.a, _wgslsmith_f_op_f32(min(-778f, -1595f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(228f, 761f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(241f, -1000f)))), vec2<i32>(-45614i, _wgslsmith_dot_vec3_i32(u_input.b.www & u_input.b.xzx, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 60944i, 14671i), vec3<i32>(21215i, 5807i, 2147483647i))))).c, true, false);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<u32> {
    global1 = array<bool, 32>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(trunc(arg_2.a)), select(vec2<bool>(global1[_wgslsmith_index_u32(~57947u, 32u)], arg_0.c.x), arg_2.c, vec2<bool>(arg_0.d, select(all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(14245u, 32u)])), false, true))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(27195u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, 44374u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u))) >= 1u, arg_0.d);
    var var_1 = firstLeadingBit(u_input.a.x);
    var var_2 = ~arg_1.x;
    var var_3 = _wgslsmith_sub_vec4_i32(u_input.b, -(u_input.b << (vec4<u32>(11109u, 61119u, 883u, u_input.a.x) % vec4<u32>(32u))) >> ((~(~vec4<u32>(41250u, u_input.a.x, u_input.a.x, u_input.a.x)) << (~(vec4<u32>(u_input.a.x, u_input.a.x, 54920u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 48020u, 1u, 53626u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, ~u_input.a.x), max(vec3<u32>(56077u, u_input.a.x, 0u) & vec3<u32>(1u, 4294967295u, u_input.a.x), select(vec3<u32>(u_input.a.x, 73886u, 36456u), vec3<u32>(21825u, u_input.a.x, 4294967295u), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_2.c.x)))), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.a.x, 28745u), 1u), 0u, select(~u_input.a.x, _wgslsmith_mult_u32(8457u, u_input.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 9238u, u_input.a.x)) % 32u), 33035u < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 14800u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))) >> (_wgslsmith_add_vec4_u32(min(~abs(vec4<u32>(u_input.a.x, 4294967295u, 1u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(697u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)) | ~vec4<u32>(u_input.a.x, 39861u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x)), 18572u, ~19268u)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(~1u, !select(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 32u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], true), vec2<bool>(false, true)), vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], false), !global1[_wgslsmith_index_u32(1u, 32u)])), ~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, 23724i), _wgslsmith_clamp_vec3_i32(vec3<i32>(29251i, -893i, u_input.c.x), vec3<i32>(1i, -20816i, 46191i), u_input.b.wxy)), _wgslsmith_mult_vec3_i32(max(u_input.b.xyy, u_input.b.xxw), u_input.b.xwy)), Struct_1(776f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f + _wgslsmith_f_op_f32(142f * -617f))), select(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<bool>(global1[_wgslsmith_index_u32(44268u, 32u)], false)), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), false), !global1[_wgslsmith_index_u32(abs(~123461u), 32u)], true));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1139f, -2039f))))));
    let var_2 = Struct_1(func_5(u_input.b.x, var_0.zzy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1742f, 1728f, -466f, 1094f))))), vec2<i32>(abs(u_input.c.x), max(u_input.c.x, u_input.c.x)) ^ _wgslsmith_div_vec2_i32(abs(u_input.b.wx), ~vec2<i32>(u_input.c.x, 24619i))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -249f))) - _wgslsmith_f_op_f32(f32(-1f) * -1434f))), vec2<bool>(true, true), !func_5(~2147483647i, ~vec3<u32>(var_0.x, 859u, 55164u), vec4<f32>(_wgslsmith_f_op_f32(sign(-1299f)), _wgslsmith_f_op_f32(max(-330f, -655f)), _wgslsmith_f_op_f32(trunc(281f)), _wgslsmith_f_op_f32(-243f - -1000f)), ~vec2<i32>(62255i, 1i)).e, ((-1i << (1u % 32u)) < _wgslsmith_add_i32(6904i, u_input.c.x)) | all(vec3<bool>(true, true, true)));
    var var_3 = func_1(0u, func_1(24665u, func_1(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(var_0.x, u_input.a.x)), var_2.c).c).c);
    var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))), _wgslsmith_f_op_f32(-var_2.a))), -1133f, vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), !var_3.e, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(88517u, 26416u | _wgslsmith_sub_u32(func_6(var_2, u_input.b.yxy, var_2).x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))), 32u)]);
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.a, var_3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -1133f)))))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1558f)))), _wgslsmith_f_op_f32(abs(-1000f))));
    var var_5 = func_1(58221u, var_2.c).c;
    let var_6 = func_1(~var_0.x, !var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(min(-vec4<i32>(0i & u_input.b.x, u_input.c.x, u_input.c.x, ~u_input.c.x), max(~firstLeadingBit(u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.c.x, 2147483647i, u_input.b.x)))), 13304i, u_input.b, var_0.x, vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(select(-u_input.b.yzx, vec3<i32>(-8280i, u_input.b.x, -1i) ^ u_input.b.ywx, select(vec3<bool>(true, false, var_3.e), vec3<bool>(false, var_3.c.x, false), vec3<bool>(false, var_3.c.x, false))), _wgslsmith_sub_vec3_i32(u_input.b.xyy, vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x)) ^ (u_input.b.xxy & u_input.b.xyz)), -(abs(u_input.b.x) ^ -u_input.c.x)));
}

