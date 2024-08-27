struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1972f, 1869f, 1332f, 1287f);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, true), 2432f, vec4<i32>(71631i, 1i, 0i, -65435i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = global1.c.xw;
    return select(!vec4<bool>(global1.a.x, !(!global1.a.x), any(global1.a) | global1.a.x, true), select(select(!vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true), select(vec4<bool>(global1.a.x, false, global1.a.x, false), vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), global1.c.x < var_0.x), !(!vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))), !select(!vec4<bool>(true, true, true, global1.a.x), !vec4<bool>(false, true, false, global1.a.x), vec4<bool>(true, false, global1.a.x, global1.a.x)), vec4<bool>(global1.a.x, !(!global1.a.x), all(!global1.a), any(!vec3<bool>(global1.a.x, global1.a.x, global1.a.x)))), vec4<bool>((_wgslsmith_mod_i32(0i, global1.c.x) < global1.c.x) | (~6240i > u_input.b), !select(global1.a.x, false, !global1.a.x), true, !(var_0.x != _wgslsmith_dot_vec3_i32(global1.c.yyx, global1.c.wyy))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global1 = arg_1;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -969f), global0.x, -160f, _wgslsmith_f_op_f32(-global0.x));
    let var_0 = arg_1;
    var var_1 = select(!vec4<bool>(all(var_0.a.zy), global1.a.x, false, false | !arg_1.a.x), vec4<bool>(any(arg_1.a.xz), true, countOneBits(arg_1.c.x) >= -2147483647i, !all(!vec3<bool>(arg_1.a.x, var_0.a.x, false))), !(!select(func_3(), func_3(), true)));
    var_1 = func_3();
    return Struct_1(global1.a, 1707f, _wgslsmith_mult_vec4_i32(~select(abs(var_0.c), ~vec4<i32>(-70871i, -23829i, global1.c.x, var_0.c.x), var_1.x | true), -_wgslsmith_clamp_vec4_i32(global1.c & vec4<i32>(var_0.c.x, 1i, arg_2, 2147483647i), _wgslsmith_div_vec4_i32(global1.c, var_0.c), global1.c)));
}

fn func_1() -> vec4<f32> {
    var var_0 = func_2(~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 0u, 0u), ~(~vec4<u32>(19268u, 49663u, 1u, 4294967295u))), Struct_1(select(vec3<bool>(true, global1.a.x, !global1.a.x), vec3<bool>(global1.a.x, true, global1.a.x), false), 227f, vec4<i32>(1i, global1.c.x, global1.c.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(-40719i, 0i)))), ~(-(~(u_input.a ^ u_input.a))));
    var var_1 = func_2(vec4<u32>(max(3461u, 1u), abs(firstTrailingBit(30005u) & 45989u), abs(_wgslsmith_mod_u32(~0u, firstTrailingBit(34060u))), ~(~(~4294967295u))), func_2(vec4<u32>(min(max(26538u, 19127u), reverseBits(22596u)), ~1u, 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(6689u, 4294967295u, 70318u), vec3<u32>(5674u, 13163u, 47263u)), reverseBits(vec3<u32>(51041u, 69895u, 13698u)))), func_2(abs(firstTrailingBit(vec4<u32>(67211u, 0u, 4294967295u, 4294967295u))), func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(40824u, 16884u, 37553u, 42697u), vec4<u32>(1u, 19497u, 39485u, 31763u)), func_2(vec4<u32>(2637u, 86299u, 1u, 63930u), Struct_1(vec3<bool>(false, global1.a.x, false), global0.x, vec4<i32>(var_0.c.x, -2147483647i, -35008i, var_0.c.x)), var_0.c.x), 1i), min(var_0.c.x, u_input.a)), ~(abs(12719i) << (0u % 32u))), var_0.c.x);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-872f, var_1.b, -842f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))))));
    var var_2 = !func_3();
    var var_3 = global0.x;
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b, _wgslsmith_div_f32(global0.x, global1.b), any(var_1.a.zy))) - var_0.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-109f, global1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-552f)), _wgslsmith_f_op_f32(trunc(global0.x))), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_2(vec4<u32>(1u, 18061u, 13311u, 4294967295u), Struct_1(global1.a, -700f, vec4<i32>(global1.c.x, u_input.a, u_input.a, 2147483647i)), u_input.a).b)) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(507f)))), 2615f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1()).x)), global0.x)), _wgslsmith_f_op_vec4_f32(func_1()).x));
    let var_1 = func_2(~(~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(35504u, 73096u, 20890u), vec3<u32>(4294967295u, 16118u, 8924u)), ~106812u, 33892u)), func_2(~vec4<u32>(1u, reverseBits(1u), reverseBits(2567u), max(27842u, 10535u)), func_2(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(55842u, 16150u, 105232u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), func_2(vec4<u32>(1u, 1u, 1u, 1u), Struct_1(global1.a, -992f, vec4<i32>(u_input.b, 0i, 176i, -2147483647i)), u_input.a | -18635i), u_input.a), 0i), _wgslsmith_clamp_i32(firstLeadingBit(0i & u_input.a), max(36158i, u_input.b) >> (4294967295u % 32u), select(-1i, 51258i, false)) ^ u_input.a);
    global1 = var_1;
    global1 = Struct_1(vec3<bool>(var_1.a.x, func_3().x, var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(min(-vec4<i32>(-27691i, 3952i, 0i, -2147483647i), reverseBits(global1.c)), ~vec4<i32>(9404i, -51255i, global1.c.x, var_1.c.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-3216i, 49936i), firstTrailingBit(-16560i)), _wgslsmith_div_i32(-20841i & global1.c.x, -2147483647i), global1.c.x, -1i), vec4<i32>(var_1.c.x, reverseBits(-2147483647i) ^ (u_input.a & global1.c.x), _wgslsmith_mult_i32(var_1.c.x, 14762i) << (~0u % 32u), u_input.b)));
    var var_2 = ~(~(~17951u));
    var var_3 = var_1.c.yzz ^ global1.c.zyw;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -103f, global0.x, 934f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, 1136f, var_1.b, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(u_input.b | -19100i), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 93878u)), abs(~vec2<u32>(0u, 4294967295u))), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 42772u)))));
}

