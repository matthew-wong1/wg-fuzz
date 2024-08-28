struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 771u);

var<private> global1: vec4<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-3903i, var_0.x), var_0.x), -19131i, var_0.x, -arg_0.x), arg_0);
    let var_1 = arg_1.x;
    var_0 = select(~arg_0, arg_0, select(!(any(vec2<bool>(global1.x, false)) & global1.x), !all(!arg_1.zy), any(vec2<bool>(all(vec2<bool>(true, false)), true))));
    var var_2 = arg_1.wxz;
    return !select(!(!select(arg_1, vec4<bool>(var_1, true, false, false), var_2.x)), !select(vec4<bool>(false, true, global1.x, false), select(vec4<bool>(true, arg_1.x, true, var_1), vec4<bool>(arg_1.x, var_2.x, var_2.x, var_2.x), arg_1), !arg_1), select(arg_1, !vec4<bool>(var_1, true, true, true), true));
}

fn func_2() -> Struct_1 {
    global1 = !select(!select(func_3(vec4<i32>(1i, 1i, 8596i, 0i), vec4<bool>(global1.x, global1.x, true, global1.x)), select(vec4<bool>(true, global1.x, false, false), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, true)), !vec4<bool>(global1.x, global1.x, true, false)), !vec4<bool>(true, select(global1.x, true, true), u_input.a < 0u, true), vec4<bool>(false, global1.x, !global1.x, true));
    let var_0 = reverseBits(vec4<u32>(global0.x, ~23195u, ~countOneBits(_wgslsmith_sub_u32(0u, u_input.a)), ~abs(~67862u)));
    let var_1 = Struct_1(~abs(~(1u & global0.x)), global1.x | false, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, -1375f, _wgslsmith_f_op_f32(select(-400f, 333f, false)), _wgslsmith_f_op_f32(f32(-1f) * -123f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1366f, -134f, -1000f, -163f))))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.x, var_1.c.x)) * 1492f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)));
    var var_3 = Struct_1(_wgslsmith_sub_u32(~4294967295u, ~(max(9031u, var_1.a) ^ (var_0.x ^ 30122u))), true, vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), 1220f, -235f));
    return Struct_1(_wgslsmith_clamp_u32(6645u, firstLeadingBit(select(max(var_3.a, var_3.a), u_input.a, false || var_1.b)), 31939u), true, vec4<f32>(677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(trunc(var_1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c.x, _wgslsmith_f_op_f32(exp2(var_3.c.x))) + var_2), -503f));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    global0 = _wgslsmith_clamp_vec2_u32(arg_0.xy, ~(countOneBits(~vec2<u32>(arg_1.a, u_input.a)) >> (countOneBits(arg_0.yz) % vec2<u32>(32u))), firstTrailingBit(arg_0.yy));
    global1 = !vec4<bool>(all(vec2<bool>(all(global1.zyy), true)), true, 7203i != max(1i, -59172i >> (arg_1.a % 32u)), false);
    global1 = vec4<bool>(arg_1.b & arg_1.b, true, all(global1.zyx), false);
    global0 = abs(vec2<u32>(arg_0.x, ~(u_input.a | 30672u)));
    var var_0 = Struct_1(1u, false && all(!select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, global1.x, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, global1.x, arg_1.b, global1.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c.x, arg_2.x, 1f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_1.c.x * arg_2.x))))));
    return global1.x;
}

fn func_1() -> vec2<u32> {
    var var_0 = ~(-1i);
    global1 = !vec4<bool>(global1.x != !global1.x, func_4(abs(vec3<u32>(4294967295u, u_input.a, global0.x)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(9664u, 27396u, 1u), vec3<u32>(global0.x, global0.x, global0.x)) % vec3<u32>(32u)), func_2(), vec3<f32>(1f, 1f, 1f)), true, global1.x);
    var var_1 = ~(~1i);
    let var_2 = Struct_1(abs(~27233u), !func_4(vec3<u32>(u_input.a | u_input.a, 1u, u_input.a), func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-528f, -1276f, -1278f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1910f, 392f, -768f), vec3<f32>(-662f, -956f, 1329f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1187f, -1220f, 1109f, -1219f)) * vec4<f32>(-380f, -1000f, -2037f, 417f)) - vec4<f32>(_wgslsmith_div_f32(-310f, 2453f), _wgslsmith_f_op_f32(-389f * 207f), -592f, _wgslsmith_f_op_f32(f32(-1f) * -1453f))) + _wgslsmith_div_vec4_f32(vec4<f32>(308f, _wgslsmith_f_op_f32(612f - -471f), _wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, 765f, 587f, 529f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1132f, 318f, 1643f, 856f)))))));
    var var_3 = select(vec4<i32>(65569i, firstTrailingBit(42661i), 2147483647i, 0i), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, 1i, -36019i, 2147483647i), vec4<i32>(i32(-1i) * -1i, select(2147483647i, -4259i, var_2.b), _wgslsmith_mult_i32(13336i, 0i), select(1i, -1i, var_2.b))), vec4<bool>(!func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 49088i, 1i, -283i), vec4<i32>(0i, 2147483647i, 2147483647i, 41481i)), func_3(vec4<i32>(0i, 5454i, -12779i, -28738i), vec4<bool>(false, global1.x, var_2.b, true))).x, false, var_2.b, true));
    return _wgslsmith_add_vec2_u32(reverseBits(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(36556u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(72762u, var_2.a), vec2<u32>(1u, 1u)), vec2<u32>(u_input.a, var_2.a))), abs(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.a, 4294967295u)), ~vec2<u32>(var_2.a, global0.x)) & abs(max(vec2<u32>(0u, 1u), vec2<u32>(46809u, 9792u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.www;
    global0 = _wgslsmith_mult_vec2_u32(countOneBits(func_1()), vec2<u32>(global0.x, global0.x));
    global1 = select(select(select(vec4<bool>(false, true, !var_0.x, false), !(!vec4<bool>(var_0.x, true, global1.x, global1.x)), vec4<bool>(true, true, global1.x | false, var_0.x)), select(vec4<bool>(true, !global1.x, true, !var_0.x), vec4<bool>(true, false, true, func_3(vec4<i32>(0i, 1i, -63i, -1i), vec4<bool>(global1.x, var_0.x, global1.x, false)).x), all(select(global1.wxw, global1.xzz, var_0.x))), vec4<bool>(func_2().b, global1.x, func_4(vec3<u32>(u_input.a, u_input.a, 79720u), Struct_1(61203u, global1.x, vec4<f32>(-397f, 280f, -1231f, 304f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(281f, -963f, 933f) * vec3<f32>(1148f, -668f, -252f))), var_0.x)), vec4<bool>(var_0.x, global1.x, global1.x, var_0.x), vec4<bool>(!(!all(vec3<bool>(true, false, true))), var_0.x, false, false));
    let var_1 = Struct_1(_wgslsmith_add_u32(1u, ~4294967295u), !(_wgslsmith_f_op_f32(select(-1947f, -1953f, true)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) * _wgslsmith_f_op_f32(round(117f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(sign(1818f)), _wgslsmith_f_op_f32(func_2().c.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-562f)), 1f)), 1269f));
    var_0 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i)) >> (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(9073u, 13681u, global0.x), vec3<u32>(u_input.a, global0.x, u_input.a) << (vec3<u32>(4294967295u, 15312u, 28155u) % vec3<u32>(32u))), reverseBits(~vec3<u32>(var_1.a, 37349u, global0.x))) % vec3<u32>(32u)), _wgslsmith_sub_u32(u_input.a, 1u) & ~(~(~61975u)), ~4294967295u, ~max(~1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-59932i, -30505i, -19312i, -19761i), vec4<i32>(1i, -2147483647i, 78492i, 2147483647i))), max(2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -19150i), vec2<i32>(-47551i, -1i)) ^ max(max(-1i, 43080i), 31599i)));
}

