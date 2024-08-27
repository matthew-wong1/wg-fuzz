struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 16880i, 1i);

var<private> global1: vec2<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = Struct_1(~u_input.a.yx, _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(95433u, global1.x)), ~(~u_input.a.wy)) ^ u_input.a.wx, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))))), ~_wgslsmith_sub_u32(~abs(global1.x), 38619u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), 1365f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-2505f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1280f - arg_0.x), _wgslsmith_f_op_f32(ceil(arg_0.x))), -386f, arg_0.x)));
    global1 = ~(~(~firstLeadingBit(_wgslsmith_add_vec2_u32(var_0.a, vec2<u32>(47155u, 1u)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + _wgslsmith_f_op_f32(select(-1140f, _wgslsmith_f_op_f32(ceil(-2234f)), arg_1.x))) - var_0.e.x);
    global0 = vec3<i32>(u_input.c, reverseBits(~(~6932i)), _wgslsmith_mult_i32(2147483647i, _wgslsmith_clamp_i32(firstTrailingBit(2755i) << (global1.x % 32u), _wgslsmith_div_i32(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -7319i, 2869i, 2147483647i), vec4<i32>(global0.x, -1i, u_input.c, u_input.c))), max(48818i, _wgslsmith_mult_i32(global0.x, -1270i)))));
    var var_2 = Struct_3(Struct_1(vec2<u32>(~(~global1.x), firstLeadingBit(global1.x)), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 4294967295u) ^ global1.x, ~(~20133u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1253f, var_0.c.x))) + arg_0.xz), 1u, _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, -394f, 716f, arg_0.x))))), ~(-26015i >> (0u % 32u)) & _wgslsmith_mod_i32(u_input.c, -(~global0.x)), var_0, Struct_2(~u_input.a, -global0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1347f, 145f) + var_0.e.xx), _wgslsmith_f_op_vec2_f32(arg_0.xy - var_0.c))) - arg_0.xx), 2147483647i));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-529f, _wgslsmith_f_op_f32(-var_2.c.c.x)) + vec2<f32>(_wgslsmith_div_f32(var_1, 1000f), _wgslsmith_f_op_f32(-663f * -161f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - arg_0.x)), var_0.e.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3.e;
    let var_1 = Struct_3(Struct_1(select(countOneBits(vec2<u32>(arg_3.a.x, global1.x)), vec2<u32>(arg_2.c.d, 1u), true), vec2<u32>(15432u, firstTrailingBit(_wgslsmith_mod_u32(1u, u_input.a.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.c - vec2<f32>(330f, 1545f))))), ~_wgslsmith_mod_u32(u_input.b.x, min(arg_3.d, arg_2.a.d)), arg_2.c.e), _wgslsmith_mod_i32(2147483647i, 1i), arg_3, arg_2.d);
    global1 = _wgslsmith_sub_vec2_u32(~abs(u_input.a.xx), var_1.c.b);
    global0 = _wgslsmith_div_vec3_i32(select(~(~(~vec3<i32>(40115i, 0i, var_1.b))), -_wgslsmith_mod_vec3_i32(vec3<i32>(439i, arg_0.x, var_1.b), vec3<i32>(-940i, var_1.b, var_1.d.b)) | vec3<i32>(~(-1i), arg_0.x, -2147483647i), !all(vec3<bool>(true, false, true))), vec3<i32>(~(~arg_0.x | u_input.c), arg_0.x, u_input.c));
    var var_2 = _wgslsmith_f_op_f32(-arg_3.e.x);
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.a.x, select(select(39869u, 46377u, true), _wgslsmith_div_u32(18263u, 4294967295u), true)), abs(vec2<u32>(var_1.a.d, arg_3.a.x >> (u_input.a.x % 32u))));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_3(Struct_1(u_input.a.zz, abs(u_input.a.zx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1391f)))), vec2<f32>(322f, 856f), false)), func_4(global0.xy, _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(1000f, -983f, 789f, -1534f), vec2<bool>(true, false))), Struct_3(Struct_1(u_input.a.zz, vec2<u32>(0u, global1.x), vec2<f32>(1078f, -944f), global1.x, vec4<f32>(-103f, 198f, -659f, -382f)), _wgslsmith_add_i32(global0.x, 1i), Struct_1(vec2<u32>(51783u, global1.x), u_input.b, vec2<f32>(377f, 1774f), u_input.a.x, vec4<f32>(1583f, 1160f, -113f, 267f)), Struct_2(u_input.a, 1i, vec2<f32>(-1323f, -815f), 1i)), Struct_1(u_input.a.zw, select(u_input.b, u_input.a.wz, vec2<bool>(false, true)), vec2<f32>(224f, 1544f), _wgslsmith_clamp_u32(0u, u_input.a.x, global1.x), vec4<f32>(1240f, 632f, -147f, -288f))), vec4<f32>(1f, 1f, 1f, 1f)), u_input.c, Struct_1(~vec2<u32>(~global1.x, ~global1.x), vec2<u32>(1u, min(_wgslsmith_add_u32(1u, 6181u), 0u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, -1046f, true)), _wgslsmith_f_op_f32(sign(1029f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(273f, -1000f) * vec2<f32>(-481f, -2417f)), true)), _wgslsmith_mult_u32(~u_input.e, _wgslsmith_add_u32(~0u, ~u_input.d)), vec4<f32>(_wgslsmith_f_op_f32(min(1271f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-2163f + -1401f), 369f, _wgslsmith_f_op_f32(f32(-1f) * -990f))), Struct_2(~(~(~vec4<u32>(22441u, u_input.e, 0u, 1u))), 1i, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - 129f), -807f)), _wgslsmith_div_f32(508f, _wgslsmith_f_op_f32(1040f - 563f))), _wgslsmith_mult_i32(min(2147483647i, firstTrailingBit(-22001i)), _wgslsmith_sub_i32(-u_input.c, ~2147483647i))));
    var_0 = Struct_3(var_0.a, 1i, Struct_1(vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, 1u)), var_0.d.a.x), var_0.a.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1759f - 682f) + _wgslsmith_f_op_f32(round(598f))), _wgslsmith_f_op_f32(floor(var_0.a.c.x))), 4920u, _wgslsmith_f_op_vec4_f32(var_0.c.e + _wgslsmith_f_op_vec4_f32(vec4<f32>(859f, 1085f, 741f, var_0.c.e.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-648f, var_0.c.e.x, var_0.d.c.x, var_0.c.c.x))))), Struct_2(~u_input.a, var_0.d.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-150f, -2141f))), _wgslsmith_mod_i32(global0.x, -1i)));
    global0 = (~(vec3<i32>(-2147483647i, 0i, u_input.c) & vec3<i32>(0i, global0.x, u_input.c)) | _wgslsmith_sub_vec3_i32(-vec3<i32>(-1060i, 1i, -23440i) & vec3<i32>(var_0.b, -2147483647i, 1i), vec3<i32>(-u_input.c, u_input.c & 2147483647i, abs(var_0.b)))) | ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c | -31106i, _wgslsmith_mod_i32(var_0.b, 1i), ~var_0.b), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, u_input.c, global0.x) << (var_0.d.a.zzx % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, global0.x, -17150i), vec3<i32>(var_0.d.d, var_0.b, -10290i))));
    var var_1 = _wgslsmith_add_u32(countOneBits(reverseBits(27906u)), 52397u ^ ~_wgslsmith_dot_vec4_u32(var_0.d.a, var_0.d.a));
    var_0 = Struct_3(Struct_1(reverseBits(var_0.d.a.yz), var_0.d.a.wy, var_0.d.c, _wgslsmith_dot_vec4_u32(select(var_0.d.a, countOneBits(vec4<u32>(u_input.b.x, var_0.a.d, 14311u, 4294967295u)), true), u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c.x)), var_0.a.c.x, -1825f, -1144f)), abs(global0.x), var_0.c, var_0.d);
    return ~(~_wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(61860i, global0.x, u_input.c)), ~select(vec3<i32>(u_input.c, 2147483647i, -10883i), vec3<i32>(global0.x, -29584i, global0.x), vec3<bool>(false, false, false))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = 24070u;
    global1 = u_input.a.xz;
    let var_1 = countOneBits(vec2<i32>(global0.x, ~arg_0));
    var var_2 = 87631u;
    global0 = _wgslsmith_add_vec3_i32(~vec3<i32>(~(-2147483647i), global0.x | 53006i, -var_1.x), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(34909i, global0.x, -2147483647i), -vec3<i32>(-1i, global0.x, 336i), ~vec3<i32>(-2147483647i, 0i, 1i)), ~func_2(), vec3<bool>(true, true, true))) << (u_input.a.zzz % vec3<u32>(32u));
    return Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, var_0, 0u, var_0), max(~vec4<u32>(var_0, var_0, u_input.b.x, u_input.e), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(0u, var_0, var_0, var_0)))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, select(vec2<u32>(12985u, u_input.d), u_input.a.yz, true)), var_0, ~min(17455u, global1.x), var_0) % vec4<u32>(32u)), _wgslsmith_sub_i32(u_input.c, global0.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(198f, 1954f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-534f, -1236f) * vec2<f32>(-294f, 1373f))))))), 2147483647i);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c.x, -836f, arg_0.c.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1584f, 927f, 1223f)), vec3<f32>(-806f, -1450f, arg_0.c.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1344f, _wgslsmith_f_op_f32(-1123f + arg_0.c.x), -1787f)))));
    let var_1 = any(vec4<bool>(any(vec4<bool>(true, false, false, false)) && true, true, select(true, true, false), true)) || true;
    let var_2 = Struct_1(vec2<u32>(~(~1u), ~(~arg_0.a.x)) | firstTrailingBit(abs(~vec2<u32>(arg_0.a.x, global1.x))), ~arg_0.a.yw, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(var_0.x + -355f))), _wgslsmith_f_op_f32(f32(-1f) * -878f)))), abs(1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-979f, 1f, _wgslsmith_f_op_f32(select(-1408f, _wgslsmith_f_op_f32(f32(-1f) * -1030f), 4294967295u != arg_0.a.x)), -697f)));
    global1 = _wgslsmith_sub_vec2_u32(func_1(func_1(global0.x).b).a.xz, var_2.b);
    let var_3 = vec3<bool>(all(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true)), false);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_1(-8321i).c.x), 1227f)) - _wgslsmith_f_op_f32(986f + var_2.c.x)), var_0.x, -946f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(sign(arg_0.c.x))));
}

fn func_6(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~min(reverseBits(vec4<u32>(arg_0.d.a.x, 81994u, arg_0.c.b.x, u_input.d)), abs(vec4<u32>(arg_0.a.b.x, global1.x, 4294967295u, 1680u))), select(u_input.a, arg_0.d.a, all(vec4<bool>(true, false, true, false)))), ~vec4<u32>(33286u, global1.x, u_input.a.x, ~abs(global1.x)));
    global1 = ~(~arg_0.d.a.xw);
    global0 = _wgslsmith_div_vec3_i32(-vec3<i32>(_wgslsmith_mult_i32(u_input.c, u_input.c), -740i, 1i) & abs(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(18547i, 36682i, u_input.c), vec3<i32>(global0.x, 1i, global0.x)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, 3732i), vec3<i32>(-55262i, arg_0.d.b, global0.x)))), ~(~(-vec3<i32>(59732i, -1i, arg_0.d.b))));
    var var_1 = Struct_1(~vec2<u32>(~var_0.x << (~global1.x % 32u), ~_wgslsmith_dot_vec3_u32(var_0.wxx, var_0.yyy)), arg_0.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, arg_0.a.c.x), vec2<f32>(arg_0.d.c.x, arg_0.c.e.x)), vec2<f32>(arg_0.d.c.x, -1324f))))), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(min(var_0, arg_0.d.a), func_1(-6667i).a)), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a.e * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.c.x, -1171f, 1499f, arg_0.c.e.x), vec4<f32>(arg_0.d.c.x, arg_0.d.c.x, arg_0.c.c.x, arg_0.d.c.x)))) + _wgslsmith_f_op_vec4_f32(-arg_0.a.e)));
    let var_2 = var_1.b;
    return StorageBuffer(-1194f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(280f, var_1.c.x)), arg_0.d.c.x), vec2<i32>(-1i, _wgslsmith_sub_i32(1i, ~arg_0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.e.x, -1289f)) * 1934f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-761f, arg_0.c.c.x, false)) + 1f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec3<bool>(_wgslsmith_clamp_u32(global1.x, u_input.e, global1.x) != countOneBits(1u), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true)), !(u_input.c > -2147483647i)));
    var var_1 = 4294967295u;
    let var_2 = true;
    let var_3 = u_input.a.xw;
    global1 = u_input.b;
    let x = u_input.a;
    s_output = func_6(Struct_3(Struct_1(vec2<u32>(firstTrailingBit(30015u), ~0u), vec2<u32>(global1.x >> (1u % 32u), reverseBits(var_3.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1982f, -859f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-233f, -1359f), vec2<f32>(931f, 1000f), vec2<bool>(var_0, var_0))))), _wgslsmith_dot_vec2_u32(var_3, vec2<u32>(global1.x, 59398u)), _wgslsmith_f_op_vec4_f32(func_5(func_1(-12660i), vec2<u32>(0u, var_3.x) | var_3))), -2147483647i, Struct_1(u_input.a.xy, var_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, 1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -952f), vec2<f32>(785f, -1424f))), ~u_input.b.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-640f, -359f, -1000f, -1601f)))))), Struct_2(~min(vec4<u32>(global1.x, u_input.a.x, u_input.a.x, var_3.x), u_input.a), global0.x, vec2<f32>(_wgslsmith_f_op_f32(floor(1607f)), _wgslsmith_f_op_f32(abs(357f))), global0.x | (i32(-1i) * -20884i))));
}

