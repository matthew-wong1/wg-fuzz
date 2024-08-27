struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = Struct_2(u_input.a);
    var var_1 = vec4<bool>(false == !(_wgslsmith_sub_i32(u_input.a, global0.a) < ~27151i), any(vec4<bool>(false, true, true, true)), true, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1705f - 1308f) - 161f)))));
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.a, _wgslsmith_sub_i32(u_input.a >> (1u % 32u), -(var_0.a << (12329u % 32u))), i32(-1i) * -2147483647i), _wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(~vec4<i32>(global0.a, var_0.a, u_input.a, 0i), vec4<i32>(u_input.a, 0i, -38895i, u_input.a) << (vec4<u32>(0u, 4294967295u, 1u, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_0.a, var_0.a, -2709i), vec4<i32>(18212i, 0i, var_0.a, u_input.a))), vec4<i32>(global0.a | 2147483647i, 1i, select(0i, 3375i, true), _wgslsmith_div_i32(8940i, -8066i)))));
    let var_4 = Struct_1(global0.a, 446i, 46472i);
    return -29909i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_2(abs(func_3() << (~1u % 32u)));
    var_1 = Struct_2(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.a, -35927i), _wgslsmith_sub_vec3_i32(vec3<i32>(-7098i, arg_0.b, arg_0.b) << (vec3<u32>(1u, 21823u, 109698u) % vec3<u32>(32u)), vec3<i32>(u_input.a, arg_0.a, global0.a)))));
    let var_2 = max(select(~vec4<u32>(1u, ~23810u, _wgslsmith_div_u32(36203u, 1u), 1u), ~abs(vec4<u32>(1u, 1u, 1u, 1u)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true))), vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true))), ~(~abs(vec4<u32>(68748u, 35953u, 4294967295u, 39530u))));
    var var_3 = Struct_2(~0i);
    return Struct_1(~49669i, global0.a, var_3.a);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(56830u, 4294967295u, 4294967295u, 19041u), ~vec4<u32>(0u, 23559u, 59258u, 64055u)) & abs(1u), 4294967295u, 73165u, ~(~(~89708u))) << (firstLeadingBit(abs(max(~vec4<u32>(1u, 0u, 5612u, 64099u), ~vec4<u32>(28091u, 25737u, 72020u, 17331u)))) % vec4<u32>(32u));
    global0 = Struct_2(global0.a & arg_0);
    let var_1 = Struct_2(~9301i);
    var var_2 = arg_1;
    let var_3 = var_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-450f, -844f, 502f, 379f), vec4<f32>(-1104f, -1089f, -471f, -176f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, 941f, -496f, -535f)), true)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1347f), _wgslsmith_f_op_f32(-1161f - -1000f), _wgslsmith_f_op_f32(-732f + -2872f), _wgslsmith_f_op_f32(round(571f)))))));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = arg_3.x;
    global0 = Struct_2(1i);
    global0 = Struct_2(u_input.a);
    global0 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-39794i, max(_wgslsmith_sub_i32(2147483647i, 37756i), _wgslsmith_mult_i32(global0.a, 0i))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-26329i, 0i), countOneBits(vec2<i32>(0i, global0.a))), vec2<i32>(firstLeadingBit(43493i), 1i))));
    var var_1 = 1i;
    return Struct_2(~countOneBits(func_3()));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: u32) -> i32 {
    global0 = func_5(false, arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(-u_input.a, func_2(Struct_1(1i, 8817i, 1i))))), vec3<bool>(true, true, true));
    var var_0 = func_5(!select(false && all(vec4<bool>(false, true, false, false)), !all(vec4<bool>(false, false, false, false)), true), 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(147f * 444f), _wgslsmith_f_op_vec4_f32(func_4(u_input.a, Struct_1(-2147483647i, global0.a, 2147483647i))).x, true)) + _wgslsmith_f_op_f32(sign(arg_2))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(2533f, 1714f))))), vec3<bool>(false, any(vec3<bool>(true, false, true)) & !(global0.a < 0i), true & all(vec3<bool>(false, true, false))));
    global0 = func_5((abs(_wgslsmith_add_u32(1u, arg_0)) ^ firstTrailingBit(~arg_3)) != _wgslsmith_div_u32(arg_0, arg_3), countOneBits(29253u), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1140f), -993f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-862f)), 898f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, arg_2, -201f, arg_2))))))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), false)), vec3<bool>(!any(vec2<bool>(true, false)), false, true)));
    var_0 = func_5(_wgslsmith_div_i32(func_2(Struct_1(2147483647i, 27334i, -32703i)).c | func_2(Struct_1(u_input.a, -22099i, global0.a)).a, abs(30112i)) > -37142i, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_3, ~(~14976u)), ~(arg_3 << (arg_3 % 32u)) >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1479f, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1000f), false))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_4(var_0.a, Struct_1(2147483647i, -2147483647i, global0.a))), vec4<f32>(-425f, arg_2, 425f, arg_2)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), vec3<bool>(-1291f <= arg_2, true, true)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1080f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(975f - _wgslsmith_f_op_f32(min(arg_2, -840f)))))))));
    return func_5(false, ~_wgslsmith_sub_u32(~51921u, _wgslsmith_mod_u32(arg_3 << (arg_3 % 32u), firstTrailingBit(0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-2488f, 167f), _wgslsmith_f_op_f32(1632f + -1499f), arg_2, _wgslsmith_div_f32(arg_1.x, arg_2)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, -643f, -1299f, -483f))))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-260f, 430f, 896f, var_1))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1312f, arg_1.x, var_1, 1393f) * vec4<f32>(553f, -1069f, 431f, -712f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1234f, arg_1.x, 2379f, arg_2), vec4<f32>(-221f, arg_2, arg_2, arg_1.x))), any(vec4<bool>(false, false, true, false))))), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), vec3<bool>(any(vec3<bool>(true, true, false)), !any(vec2<bool>(false, false)), true), vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(108973u, arg_3), vec2<u32>(1u, arg_3)) > firstLeadingBit(arg_3), false, false))).a;
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(countOneBits(-vec4<i32>(-1i, -1i, global0.a, 8818i)), vec4<i32>(arg_0, arg_1.a, u_input.a, global0.a) << (max(vec4<u32>(4294967295u, 293u, 0u, 0u), vec4<u32>(0u, 4294967295u, 25905u, 0u)) % vec4<u32>(32u)), vec4<i32>(-2147483647i, 27235i, 19854i, global0.a) | _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, global0.a, arg_1.a, 26352i), vec4<i32>(arg_0, 0i, 68348i, -2147483647i))), -vec4<i32>(~abs(global0.a), i32(-1i) * -global0.a, arg_0, 2147483647i));
    var var_1 = Struct_2(arg_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-587f)), -1116f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -108f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1055f, -500f)), -1189f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1432f, 536f, 232f, -188f) + vec4<f32>(1000f, 391f, -1000f, 604f))), vec4<f32>(_wgslsmith_f_op_f32(min(-463f, 1489f)), _wgslsmith_f_op_f32(sign(-810f)), -1012f, _wgslsmith_f_op_f32(1275f + 542f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), true, any(vec2<bool>(false, false)), any(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-819f, -638f, -847f, -797f) * vec4<f32>(-425f, -1152f, 778f, 899f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(865f, 678f, 1000f, 2159f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1131f, -525f, 662f), vec4<f32>(-505f, 706f, -1035f, 399f)))), vec4<f32>(_wgslsmith_f_op_f32(624f * -1513f), 317f, -359f, _wgslsmith_f_op_f32(max(-1000f, -1000f)))))));
    let var_3 = func_2(func_2(Struct_1(var_0.x, var_0.x ^ firstLeadingBit(2147483647i), arg_1.a)));
    var var_4 = arg_1;
    return Struct_2(var_0.x);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(-global0.a, arg_1)).xww;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(958f * 258f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2221f))), _wgslsmith_f_op_f32(max(-1137f, var_0.x))) + vec3<f32>(_wgslsmith_f_op_f32(-425f * _wgslsmith_f_op_f32(f32(-1f) * -112f)), 2062f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(-var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), var_0.x, _wgslsmith_f_op_f32(-1243f - 1000f)), vec3<bool>(!(any(vec4<bool>(true, true, false, true)) || true), select(!all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, var_0.x), var_0.x)) < 420f)));
    return Struct_2(~arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(func_6(-2147483647i, Struct_2(func_1(1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(119f, 1555f) + vec2<f32>(-648f, 1673f)), _wgslsmith_f_op_f32(863f * 1000f), _wgslsmith_mult_u32(4294967295u, 0u)))), func_2(func_2(Struct_1(1i, firstTrailingBit(-1i), -20599i))), Struct_2(-60015i), func_6(_wgslsmith_div_i32(global0.a, global0.a), Struct_2(u_input.a)));
    global0 = func_6(global0.a, Struct_2(1i));
    var var_0 = 1u;
    let var_1 = func_5(!(!all(vec3<bool>(true, true, true))), countOneBits(4294967295u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1073f, -987f, 762f, 774f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(779f, 457f, 532f, 859f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-556f, 1515f, -1525f, 212f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1049f, 801f, -948f, -871f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1472f, -192f, -1215f, 1037f))))))), !(!vec3<bool>(all(vec3<bool>(false, false, true)), true, all(vec4<bool>(true, true, false, true)))));
    var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), ~firstLeadingBit(vec3<u32>(50418u, 18660u, 6636u))), ~(~(~vec3<u32>(0u, 4294967295u, 64320u))) << (firstLeadingBit(min(select(vec3<u32>(10025u, 36245u, 0u), vec3<u32>(12011u, 49084u, 61060u), false), select(vec3<u32>(27087u, 4294967295u, 4294967295u), vec3<u32>(4241u, 3660u, 28044u), false))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_4(-select(-u_input.a, -2147483647i, true), Struct_1(func_1(4294967295u, vec2<f32>(-338f, -1000f), -775f, 2391u) | firstTrailingBit(0i), -2147483647i, global0.a))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(global0.a, Struct_1(2147483647i, u_input.a, u_input.a))).x + _wgslsmith_f_op_f32(1676f - 1057f))))), u_input.a, firstLeadingBit(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, var_1.a), vec3<i32>(var_1.a, u_input.a, global0.a)), -24272i, var_1.a)), abs(1u));
}

