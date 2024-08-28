struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 8118u);

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_2(Struct_1(~global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1574f, -881f, arg_0, -487f) - vec4<f32>(arg_0, arg_0, arg_0, -739f)))));
    var var_1 = firstTrailingBit(4294967295u);
    let var_2 = Struct_2(Struct_1(global1.a), var_0.b);
    var var_3 = Struct_3(var_0.b, _wgslsmith_div_i32(-25173i, -select(u_input.d, 2147483647i, false) | u_input.b.x), -vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, -1i, 134i), _wgslsmith_mod_vec3_i32(vec3<i32>(-2254i, 13709i, -17338i), vec3<i32>(u_input.d, 2147483647i, u_input.e))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.d), -vec2<i32>(u_input.e, 2147483647i)), min(u_input.b.x, abs(-50363i))));
    var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(min(var_0.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(555f, arg_0, arg_0, -752f)), vec4<f32>(var_2.b.x, arg_0, var_3.a.x, arg_0))))))), (-1i | -u_input.d) & u_input.b.x, var_3.c);
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = vec2<bool>(!(!func_3(_wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.b.x, arg_2.x)))), true);
    var var_1 = arg_1.a;
    let var_2 = countOneBits(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-35336i, -1081i, 2147483647i), vec3<i32>(u_input.b.x, u_input.d, 23751i)) >> (~vec3<u32>(u_input.a, 4294967295u, 62677u) % vec3<u32>(32u))) ^ min(vec3<i32>(-1i) * -vec3<i32>(-15650i, u_input.e, u_input.b.x), -(vec3<i32>(-1i, 12646i, -13756i) << (vec3<u32>(var_1.a, global1.a, 4294967295u) % vec3<u32>(32u)))));
    global0 = u_input.c.zx;
    global1 = Struct_1(71331u << (1u % 32u));
    return Struct_3(arg_1.b, 1i, vec3<i32>(45384i, _wgslsmith_add_i32(1i, 1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 5150i, u_input.d), firstTrailingBit(vec3<i32>(-2147483647i, var_2.x, var_2.x)))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> vec4<f32> {
    var var_0 = !select(vec4<bool>(true, arg_1.x, !any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), true), vec4<bool>(all(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), arg_1.x, true, (-2529f <= arg_2.a.x) & all(vec3<bool>(arg_1.x, false, true))), arg_3);
    global0 = ~abs(vec2<u32>(32606u, _wgslsmith_sub_u32(~u_input.a, ~59302u)));
    var_0 = !(!(!select(!vec4<bool>(arg_1.x, false, arg_3, arg_3), vec4<bool>(arg_3, var_0.x, true, arg_1.x), !vec4<bool>(var_0.x, true, false, false))));
    let var_1 = Struct_1(80911u);
    global1 = var_1;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.x, arg_2.a.x, arg_3))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(-arg_2.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(384f, 1000f))))), arg_2.a.x, -148f, arg_2.a.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    global0 = ~(~(~(~abs(u_input.c.xy))));
    var var_0 = arg_0;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(u_input.e, vec3<bool>(true, true, true), func_2(u_input.c.yy, Struct_2(arg_1.a, vec4<f32>(236f, arg_0.x, arg_1.b.x, 1000f)), vec2<bool>(false, false), vec2<f32>(var_0.x, arg_0.x)), arg_1.b.x < arg_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b.x, var_0.x, arg_1.b.x, 790f), arg_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, -1255f, arg_1.b.x, 670f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-620f, arg_0.x, arg_0.x, 2204f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b.x, -436f, -140f, arg_1.b.x)))) * vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(1988f - arg_1.b.x), 1000f))), _wgslsmith_sub_i32(abs(0i) << ((_wgslsmith_add_u32(arg_1.a.a, global0.x) >> (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u)) % 32u), 60069i), ~vec3<i32>(u_input.e, u_input.e, _wgslsmith_sub_i32(-2844i, reverseBits(u_input.d))));
    let var_2 = Struct_1(~(~min(~1u, global1.a)));
    global1 = arg_1.a;
    return arg_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_2) -> vec4<u32> {
    return _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, func_1(_wgslsmith_div_vec2_f32(arg_3.b.wy, vec2<f32>(arg_3.b.x, arg_3.b.x)), arg_3).a.a, u_input.a, _wgslsmith_mod_u32(~3248u, 4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(45831u, u_input.a, 1u, 43276u), firstTrailingBit(vec4<u32>(arg_3.a.a, 0u, 0u, global0.x))), all(vec4<bool>(true, false, true, false)) | all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)))), ~(~select(select(vec4<u32>(global0.x, u_input.c.x, 1439u, 45193u), vec4<u32>(18578u, global1.a, global1.a, arg_3.a.a), vec4<bool>(true, false, true, true)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, global0.x, 4294967295u), vec4<u32>(u_input.c.x, global1.a, arg_3.a.a, 21408u)), vec4<bool>(true, true, true, true))));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    global1 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1129f * arg_3), _wgslsmith_f_op_f32(234f * -192f))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -779f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_4(-2166i, vec3<bool>(true, true, false), Struct_3(vec4<f32>(arg_3, -1335f, arg_3, 1140f), u_input.b.x, vec3<i32>(u_input.d, u_input.b.x, 1i)), arg_0.x)).zy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3)))), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(824f, -917f) + vec2<f32>(arg_3, -365f)), func_1(vec2<f32>(arg_3, arg_3), Struct_2(Struct_1(u_input.a), vec4<f32>(arg_3, -1166f, -1055f, -698f)))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1150f, arg_3, arg_3, -1023f), vec4<f32>(-1000f, arg_3, arg_3, arg_3)))))).a;
    let var_0 = ~(~4294967295u);
    let var_1 = global1.a;
    global1 = Struct_1(firstLeadingBit(~func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, -30982i, 13006i), vec4<i32>(-39599i, 29912i, u_input.e, -19585i)), -vec4<i32>(u_input.d, 2147483647i, u_input.e, 42860i), func_2(vec2<u32>(1u, 89365u), Struct_2(Struct_1(4294967295u), vec4<f32>(arg_3, arg_3, -233f, arg_3)), vec2<bool>(arg_0.x, arg_0.x), vec2<f32>(arg_3, 305f)), func_1(vec2<f32>(-1380f, -1561f), Struct_2(Struct_1(4294967295u), vec4<f32>(134f, 140f, arg_3, arg_3)))).x));
    var var_2 = _wgslsmith_f_op_vec2_f32(-func_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, -228f, arg_0.x)))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) * vec2<f32>(822f, arg_3))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(100f, 833f)), Struct_2(Struct_1(1u), vec4<f32>(arg_3, arg_3, -1456f, -737f))))).b.ww);
    return func_1(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_4(u_input.b.x, select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, arg_0.x), arg_0.yyx), true), func_2(func_5(vec4<i32>(u_input.b.x, u_input.b.x, u_input.e, 2147483647i), vec4<i32>(-29655i, 2147483647i, 0i, u_input.e), Struct_3(vec4<f32>(arg_3, var_2.x, var_2.x, arg_3), u_input.d, vec3<i32>(-1i, 12593i, u_input.b.x)), Struct_2(Struct_1(4294967295u), vec4<f32>(arg_3, 852f, -162f, 420f))).xw, func_1(vec2<f32>(1232f, -1837f), Struct_2(Struct_1(arg_1.x), vec4<f32>(-587f, arg_3, arg_3, var_2.x))), vec2<bool>(arg_0.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1472f))), true)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3343f))), Struct_2(Struct_1(~arg_2), vec4<f32>(-1238f, var_2.x, _wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_2.x)), func_2(vec2<u32>(global0.x, var_0), Struct_2(Struct_1(arg_1.x), vec4<f32>(-162f, arg_3, -1353f, var_2.x)), vec2<bool>(arg_0.x, arg_0.x), vec2<f32>(arg_3, -527f)).a.x, arg_0.x))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(!(!vec4<bool>(true, true, true, select(true, false, false))), ~(~func_5(vec4<i32>(-1740i, u_input.b.x, u_input.e, -5672i), vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, 2147483647i), Struct_3(vec4<f32>(646f, 698f, 691f, 828f), u_input.b.x, vec3<i32>(-32648i, u_input.d, u_input.d)), func_1(vec2<f32>(-1515f, 737f), Struct_2(Struct_1(4920u), vec4<f32>(572f, -101f, 699f, -362f))))), ~_wgslsmith_clamp_u32(~94412u, u_input.c.x, 51788u) & u_input.a, _wgslsmith_div_f32(388f, 324f));
    global1 = func_6(vec4<bool>(!all(vec2<bool>(true, true)), reverseBits(select(-1i, u_input.e, true)) != -u_input.b.x, -2294f < _wgslsmith_div_f32(372f, _wgslsmith_f_op_f32(sign(812f))), false), _wgslsmith_mult_vec4_u32(vec4<u32>(~(global1.a & 93673u), _wgslsmith_mod_u32(~u_input.c.x, ~global1.a), 0u, _wgslsmith_mult_u32(u_input.a, firstLeadingBit(global0.x))), vec4<u32>(1u, ~global0.x, _wgslsmith_div_u32(abs(global0.x), 0u), ~global0.x)), global0.x, 539f);
    var var_0 = func_6(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), firstLeadingBit(vec4<u32>(1u, global1.a, ~(~0u), firstLeadingBit(~1u))), _wgslsmith_mod_u32(~global1.a, u_input.c.x), _wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(955f, 409f)))), func_1(func_2(u_input.c.yz, Struct_2(Struct_1(u_input.a), vec4<f32>(1400f, -953f, -108f, -1834f)), vec2<bool>(true, true), vec2<f32>(491f, -662f)).a.zx, func_1(vec2<f32>(630f, -277f), Struct_2(Struct_1(4294967295u), vec4<f32>(203f, 2365f, 373f, -154f))))).b.x));
    var var_1 = vec4<bool>(true, true, true, true);
    var var_2 = select(!select(var_1.ww, !select(var_1.zz, var_1.xw, var_1.xx), var_1.zz), vec2<bool>(true, !(false & all(var_1.wx))), u_input.c.x <= firstTrailingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 0u, u_input.a, 4905u)), ~vec4<u32>(global0.x, 22889u, 4294967295u, global1.a))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1690f, 1068f, 758f, -2401f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-329f, 1000f, 1000f, -1088f), vec4<f32>(-950f, -742f, -1938f, -1366f))))))), 28579i, _wgslsmith_mult_vec3_i32(vec3<i32>(min(u_input.b.x, 0i), _wgslsmith_div_i32(-2599i, u_input.d), 30511i), _wgslsmith_mod_vec3_i32(-abs(vec3<i32>(-2147483647i, u_input.b.x, -2147483647i)), vec3<i32>(-1i) * -vec3<i32>(u_input.d, u_input.d, -63623i))));
    let var_4 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 556f) - _wgslsmith_f_op_vec2_f32(-var_3.a.xw)) * func_1(_wgslsmith_f_op_vec2_f32(-var_3.a.zw), func_1(var_3.a.wz, Struct_2(Struct_1(1u), vec4<f32>(-297f, var_3.a.x, -975f, 2511f)))).b.wx)), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(476f, -1030f) * var_3.a.wz)), Struct_2(Struct_1(0u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.a.x, -492f, 1312f, var_3.a.x))))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a - _wgslsmith_f_op_vec4_f32(max(var_3.a, var_3.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, 1057f, 525f), vec4<f32>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x))))));
    var_2 = vec2<bool>(!all(var_1.zw), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(var_3.a.yyx, _wgslsmith_f_op_vec3_f32(select(var_4.b.zwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(997f, -624f, -2075f)), !select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_2.x, var_2.x, var_1.x), var_1.xzz))))));
}

