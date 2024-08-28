struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
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

var<private> global0: array<vec4<i32>, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    var var_0 = vec4<u32>(0u, arg_0.x, _wgslsmith_div_u32(u_input.a, u_input.a) & ~_wgslsmith_mult_u32(select(arg_0.x, 0u, false), 4294967295u), ~0u);
    var var_1 = false | all(vec2<bool>(true, true));
    let var_2 = all(!select(vec3<bool>(u_input.c > u_input.c, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(true, false)))));
    var var_3 = arg_2;
    var var_4 = Struct_2(~2147483647i);
    return _wgslsmith_f_op_f32(-var_3.e);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    global0 = array<vec4<i32>, 15>();
    let var_0 = Struct_2(min(-21368i, -1i));
    var var_1 = vec4<f32>(-1335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1556f + arg_0.b)) - _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(func_2(arg_1, arg_0.b, arg_0, arg_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.e)))), _wgslsmith_f_op_f32(arg_0.c.x - 1000f)))), _wgslsmith_f_op_f32(max(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1033f, -489f)))));
    var_1 = _wgslsmith_div_vec4_f32(arg_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.c, arg_0.c) + _wgslsmith_f_op_vec4_f32(arg_0.c * arg_0.c))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, var_1.x, var_1.x, var_1.x)) * vec4<f32>(var_1.x, -405f, var_1.x, _wgslsmith_f_op_f32(ceil(388f))))));
    global0 = array<vec4<i32>, 15>();
    return ~select(-(~firstLeadingBit(-30740i)), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_mod_i32(u_input.c, arg_0.d)), -(2147483647i | arg_0.d), _wgslsmith_div_i32(abs(u_input.c), 0i)), any(vec2<bool>(all(vec4<bool>(true, false, true, false)), false)));
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-316f, -430f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1146f * -1456f))))));
    global0 = array<vec4<i32>, 15>();
    let var_1 = select(select(vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), true, true), select(vec3<bool>(2147483647i <= u_input.c, false, true), vec3<bool>(select(false, false, false), all(vec3<bool>(true, false, false)), any(vec2<bool>(true, true))), !select(true, true, false)), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, true))), vec3<bool>(all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, true, true))), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false))), all(vec4<bool>(any(vec4<bool>(false, true, true, false)), false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), u_input.a == ~u_input.b.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(256f - -540f), _wgslsmith_f_op_f32(trunc(927f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-208f, 1000f, -2049f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1061f, -237f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(486f, 143f, 873f, 1000f) - vec4<f32>(-113f, 351f, -583f, -1593f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(493f, -1000f, -587f, 894f)))) * vec4<f32>(1502f, -208f, 1464f, _wgslsmith_f_op_f32(round(1184f))))), firstTrailingBit(~_wgslsmith_div_i32(~arg_0.a, 1i)), -555f);
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_2.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.c.x, var_2.b, var_2.b, 235f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, -1000f, 705f, var_2.b) - var_2.c))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f) * _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-596f - var_2.b))), var_2.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c.x)))), var_2.c, select(vec4<bool>(true, any(var_1), var_1.x && var_1.x, !var_1.x), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, false), var_1.x), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x))))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    global0 = array<vec4<i32>, 15>();
    var var_0 = _wgslsmith_mod_vec3_u32(u_input.b, ~(u_input.b >> (~vec3<u32>(u_input.a, u_input.a, 43011u) % vec3<u32>(32u))) ^ (~(u_input.b >> (vec3<u32>(u_input.b.x, u_input.a, 1883u) % vec3<u32>(32u))) ^ u_input.b));
    var var_1 = Struct_1(vec3<f32>(551f, -1000f, _wgslsmith_f_op_f32(func_2(reverseBits(u_input.b.yx), -684f, Struct_1(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(max(357f, -484f)), vec4<f32>(-1779f, 1000f, 1412f, -227f), ~u_input.c, _wgslsmith_f_op_f32(-288f + -633f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-473f, -1542f, 806f), vec3<f32>(-1712f, 144f, 314f)), vec3<f32>(-1347f, 409f, -347f)))))), _wgslsmith_f_op_f32(-297f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -575f), 688f, u_input.c < u_input.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(532f - 368f))), _wgslsmith_f_op_f32(func_2(var_0.zz, -1000f, Struct_1(vec3<f32>(282f, -1575f, -611f), 627f, vec4<f32>(-1483f, 474f, 463f, -1641f), 1i, 324f), vec3<f32>(-327f, -1134f, -1207f))) >= _wgslsmith_f_op_f32(816f - 839f)))), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(func_3(Struct_1(vec3<f32>(-1025f, -2781f, 860f), 1454f, vec4<f32>(-1000f, -1071f, 1820f, -318f), -2147483647i, -353f), vec2<u32>(u_input.b.x, 1u), -673f)))), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-381f))))));
    var_0 = ~vec3<u32>(~(~(~14838u)), _wgslsmith_sub_u32(min(firstTrailingBit(4294967295u), var_0.x), ~u_input.a >> (countOneBits(34266u) % 32u)), ~50086u);
    var var_2 = vec3<i32>(u_input.c ^ min(reverseBits(var_1.d), -9698i), i32(-1i) * -53348i, _wgslsmith_div_i32(-2147483647i, u_input.c)) ^ select(abs(~(-vec3<i32>(-2147483647i, var_1.d, var_1.d))), _wgslsmith_mod_vec3_i32(min(select(vec3<i32>(1680i, 4287i, var_1.d), vec3<i32>(u_input.d, -1i, var_1.d), arg_0), vec3<i32>(-41489i, -2147483647i, u_input.c)), abs(vec3<i32>(u_input.c, var_1.d, var_1.d) ^ vec3<i32>(var_1.d, -11446i, var_1.d))), !(arg_0 & !arg_0));
    return var_1.d;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = vec2<i32>(arg_0.a, arg_2.a << (_wgslsmith_clamp_u32(u_input.a, ~56558u, arg_3.x) % 32u));
    let var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(max(-1i, select(arg_2.a, 0i, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, -14654i, arg_0.a), vec3<i32>(12993i, 0i, u_input.c) & arg_1.wxx), -2147483647i), _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-17592i, 1i, arg_1.x), arg_1.yxx)), -max(select(vec3<i32>(arg_0.a, arg_2.a, var_0.x), vec3<i32>(-75495i, var_0.x, arg_0.a), vec3<bool>(false, true, false)), _wgslsmith_mult_vec3_i32(vec3<i32>(77805i, 38109i, arg_2.a), vec3<i32>(2147483647i, arg_0.a, arg_0.a)))));
    global0 = array<vec4<i32>, 15>();
    global0 = array<vec4<i32>, 15>();
    global0 = array<vec4<i32>, 15>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1326f * -286f), _wgslsmith_f_op_f32(609f + -512f), -255f)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1030f))), _wgslsmith_f_op_f32(432f + _wgslsmith_f_op_f32(ceil(-129f))), _wgslsmith_f_op_f32(1258f * _wgslsmith_f_op_vec4_f32(func_4(Struct_2(32224i))).x))), _wgslsmith_f_op_f32(step(1397f, 501f)), vec4<f32>(_wgslsmith_f_op_f32(round(488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2092f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1001f), -1000f), i32(-1i) * -14646i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f + _wgslsmith_f_op_f32(f32(-1f) * -782f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 15>();
    global0 = array<vec4<i32>, 15>();
    var var_0 = Struct_2(2147483647i);
    let var_1 = func_5(Struct_2(u_input.d), ~_wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(0i, var_0.a, -33903i, u_input.c)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], vec4<i32>(30014i, -1i, var_0.a, -34468i)), ~global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<i32>(_wgslsmith_mult_i32(2147483647i, u_input.c), u_input.c, func_1(false, vec4<bool>(false, true, true, true)), 19928i ^ var_0.a)), Struct_2(0i), reverseBits(min(max(vec4<u32>(4294967295u, u_input.a, 17471u, u_input.b.x), abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.b.x))), vec4<u32>(~u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.xz), u_input.b.x))));
    let var_2 = Struct_2(-1i);
    var_0 = var_2;
    var var_3 = Struct_1(var_1.c.zyz, -533f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -350f), -982f, _wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(-var_1.b))))), var_0.a, var_1.c.x);
    var var_4 = select(u_input.b.yz & firstTrailingBit(~abs(u_input.b.yz)), vec2<u32>(u_input.a, u_input.a), true);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_3.a))));
}

