struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(59087u, 0i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(arg_3 & select(arg_3, vec3<i32>(arg_0.a, arg_0.a, 57681i), vec3<bool>(true, false, false)), _wgslsmith_mod_vec3_i32(arg_2, vec3<i32>(1i, 2147483647i, 0i)) & vec3<i32>(-24280i, arg_3.x, 1i)), vec3<i32>(4640i, -_wgslsmith_clamp_i32(35268i, -2147483647i, global0.b), -2147483647i << (0u % 32u))), select(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(global0.b, 2147483647i, 3598i), vec3<i32>(18796i, arg_0.a, -1i)), vec3<i32>(~arg_0.a, arg_2.x, min(arg_2.x | -1i, 0i << (global0.a % 32u))), false));
    global0 = Struct_3(~global0.a, ~(1i >> (u_input.a % 32u)));
    global0 = Struct_3(~54599u & (u_input.a >> (_wgslsmith_sub_u32(1u, global0.a) % 32u)), ~_wgslsmith_sub_i32(abs(var_0.x), _wgslsmith_mult_i32(-24471i, arg_2.x >> (u_input.a % 32u))));
    global0 = Struct_3((_wgslsmith_dot_vec3_u32(vec3<u32>(59943u, 1u, 4294967295u), vec3<u32>(15864u, u_input.a, global0.a)) & _wgslsmith_mult_u32(u_input.a, global0.a | global0.a)) ^ 0u, arg_2.x);
    var var_1 = arg_0;
    return !(!(_wgslsmith_f_op_f32(ceil(-1557f)) >= _wgslsmith_f_op_f32(arg_1.x + arg_1.x))) | true;
}

fn func_2(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(!(!func_3(Struct_2(global0.b), vec3<f32>(-1476f, arg_1, arg_1), vec3<i32>(53635i, -1i, global0.b), vec3<i32>(7580i, -1i, global0.b))), false), vec2<bool>(arg_0, func_3(Struct_2(global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 769f, arg_1) + vec3<f32>(-709f, -108f, 421f))), vec3<i32>(global0.b, 61142i, global0.b), (vec3<i32>(-21558i, global0.b, global0.b) ^ vec3<i32>(global0.b, global0.b, global0.b)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(global0.a, 4294967295u, 79493u), vec3<u32>(global0.a, 0u, u_input.a)) % vec3<u32>(32u)))));
    let var_1 = all(!vec2<bool>(!var_0.x, true));
    var var_2 = Struct_3(24623u, global0.b);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1156f, 1211f, arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1241f, arg_1, -2017f, arg_1) * vec4<f32>(-1396f, arg_1, arg_1, 1081f))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_1)), arg_1, _wgslsmith_f_op_f32(trunc(arg_1)), arg_1), true)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(299f - -313f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_1, 781f, arg_1), vec4<f32>(arg_1, arg_1, arg_1, 918f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -1007f, arg_1, arg_1), vec4<f32>(1352f, 680f, arg_1, 1667f)))), global0.b != (i32(-1i) * -2147483647i))), select(-25025i, -2147483647i, var_1), arg_1, global0.b);
    let var_4 = vec4<bool>(var_1, false, min(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, u_input.a, global0.a), reverseBits(u_input.a)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(93553u, var_2.a, u_input.a), vec3<u32>(4294967295u, 0u, u_input.a))) >= ~(~max(100901u, global0.a)), true);
    return !(!func_3(Struct_2(-2147483647i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_3.a.xww, vec3<f32>(arg_1, 1450f, -1995f)), vec3<f32>(-846f, arg_1, -970f))), -vec3<i32>(var_3.e, global0.b, var_2.b), ~vec3<i32>(6520i, -18775i, var_2.b)));
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<bool>(!(19449u >= u_input.a), !func_2(false, -1000f), true);
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a, _wgslsmith_mult_u32(0u, 30417u)) & (~firstTrailingBit(vec2<u32>(1u, 1u)) >> (_wgslsmith_clamp_vec2_u32(select(vec2<u32>(global0.a, u_input.a), vec2<u32>(0u, 83613u), vec2<bool>(var_0.x, var_0.x)), vec2<u32>(31022u, u_input.a), ~vec2<u32>(25042u, global0.a)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(65778u, 16714u)), abs((vec2<u32>(60349u, u_input.a) & vec2<u32>(u_input.a, global0.a)) << ((vec2<u32>(global0.a, global0.a) >> (vec2<u32>(1u, global0.a) % vec2<u32>(32u))) % vec2<u32>(32u)))), vec2<u32>(_wgslsmith_mult_u32(u_input.a | u_input.a, select(~6892u, 1u, var_0.x)), u_input.a));
    let var_2 = -2767i;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-649f, 1336f), _wgslsmith_f_op_f32(max(-1546f, 607f)), -865f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-446f, 1000f, 1060f), vec3<f32>(-226f, -2251f, 868f))) + vec3<f32>(-435f, -171f, -832f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-306f, -549f, 166f)))), vec3<bool>(true, (false & var_0.x) == var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(467f, -616f, -1000f) * vec3<f32>(-489f, 1000f, 913f)))))));
    var var_4 = -_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.b, -2147483647i | ~global0.b), -global0.b);
    return Struct_3(global0.a, 28294i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = u_input.a;
    let var_1 = !(5515u == _wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.a, 11680u, 24963u, global0.a), vec4<u32>(0u, global0.a, 27873u, u_input.a) << (vec4<u32>(global0.a, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u))), ~vec4<u32>(global0.a, 19049u, 74968u, 0u) >> (~vec4<u32>(global0.a, u_input.a, 45994u, u_input.a) % vec4<u32>(32u))));
    var var_2 = select(!vec2<bool>(true, var_1), !vec2<bool>(false, !any(vec4<bool>(var_1, var_1, var_1, false))), select(vec2<bool>(!(true | var_1), global0.b == -global0.b), vec2<bool>(true, (67842u | u_input.a) >= global0.a), vec2<bool>(any(!vec2<bool>(var_1, false)), var_1)));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, (u_input.a >> (1u % 32u)) & 51150u, 16407u ^ select(global0.a, global0.a, var_1)) >> ((489u ^ ~u_input.a) % 32u), countOneBits(u_input.a));
    var_2 = select(select(!select(select(vec2<bool>(var_2.x, var_1), vec2<bool>(var_2.x, var_1), true), select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), var_2.x), vec2<bool>(var_2.x, var_1)), vec2<bool>(!any(vec4<bool>(var_1, var_1, var_2.x, true)), true), select(select(!vec2<bool>(var_1, false), !vec2<bool>(false, var_1), true), vec2<bool>(global0.b == global0.b, func_3(Struct_2(global0.b), vec3<f32>(696f, 541f, 176f), vec3<i32>(global0.b, global0.b, global0.b), vec3<i32>(global0.b, -53513i, 0i))), !var_2.x)), !vec2<bool>(false | !var_1, select(var_2.x == var_1, var_1, all(vec3<bool>(var_1, false, var_2.x)))), func_3(Struct_2(i32(-1i) * -global0.b), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1843f, 352f, -886f)))))), vec3<i32>(global0.b, max(global0.b & global0.b, -13867i), global0.b), min(-vec3<i32>(0i, 35012i, global0.b) & max(vec3<i32>(global0.b, global0.b, global0.b), vec3<i32>(41551i, global0.b, 55395i)), min(~vec3<i32>(global0.b, 1i, global0.b), firstTrailingBit(vec3<i32>(global0.b, 31836i, global0.b))))));
    var var_4 = !(!vec4<bool>(var_2.x, func_2(true, _wgslsmith_f_op_f32(abs(-134f))), !all(vec4<bool>(true, var_2.x, var_1, var_1)), any(vec2<bool>(var_1, var_2.x))));
    var var_5 = !select(vec2<bool>(var_2.x, var_1), !vec2<bool>(true, !var_2.x), vec2<bool>(true, var_4.x));
    let var_6 = Struct_2(3733i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_6.a | 1i, ~21526i), max(_wgslsmith_div_i32(var_6.a, -2147483647i), global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -361f))) + -111f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1330f, 545f, -616f, 218f)), vec4<f32>(1f, 1f, 1f, 1f))))), 0i);
}

