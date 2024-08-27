struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> vec3<u32> {
    let var_0 = u_input.b.ywz;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_3, arg_1.x)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-957f, -145f, arg_1.x) * vec3<f32>(992f, -236f, arg_1.x))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), arg_3, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))))));
    var_1 = vec3<f32>(arg_3, arg_3, -154f);
    let var_2 = all(vec2<bool>(true, true)) || true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(624f, -1197f)) - _wgslsmith_div_f32(-769f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) - 1f)));
    return vec3<u32>(min(~53334u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(46232u, 20886u)), ~1u)), ~1u, 24608u) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(25127u, 36117u, 129658u)) % vec3<u32>(32u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    let var_0 = abs(select(vec4<u32>(42684u, 1u, 62336u, 4294967295u) >> (select(min(vec4<u32>(27434u, 38328u, 86384u, 4650u), vec4<u32>(1u, 4294967295u, 1u, 27341u)), firstTrailingBit(vec4<u32>(6435u, 0u, 0u, 0u)), vec4<bool>(true, true, true, arg_1.b.x)) % vec4<u32>(32u)), ~vec4<u32>(countOneBits(0u), ~1u, ~29369u, 1u), any(arg_1.b)));
    return true;
}

fn func_1() -> vec4<bool> {
    var var_0 = ~func_2(max(u_input.b.yy, u_input.b.zw ^ u_input.b.ww), vec2<f32>(1720f, _wgslsmith_f_op_f32(ceil(-1058f))), u_input.b.x << (max(4294967295u, 5443u) % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-190f + 1366f), 134f, true))) >> (vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(10530u, 69432u, 7963u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_u32(~17714u ^ select(4294967295u, 1u, false), 1u)) % vec3<u32>(32u));
    let var_1 = Struct_1(u_input.b);
    let var_2 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1255f, -811f, 140f) * vec4<f32>(2152f, -1751f, 146f, 899f)), Struct_2(581f, vec4<bool>(true, false, false, true))))));
    var_0 = abs(_wgslsmith_div_vec3_u32(vec3<u32>(98122u, 0u >> (1u % 32u), countOneBits(42922u)), vec3<u32>(var_0.x, var_0.x, var_0.x)) << (~(firstLeadingBit(vec3<u32>(var_0.x, 23990u, var_0.x)) ^ func_2(u_input.b.wx, vec2<f32>(-342f, -791f), -2147483647i, -241f)) % vec3<u32>(32u)));
    var_0 = vec3<u32>(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, var_0.x), 0u), _wgslsmith_sub_u32(var_0.x, var_0.x | 4294967295u), ~(var_0.x | var_0.x)), _wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(0u, var_0.x, var_0.x)), func_2(u_input.b.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-148f, -1983f)), -10794i | var_1.a.x, _wgslsmith_f_op_f32(1519f + -468f)))), ~_wgslsmith_dot_vec2_u32(abs(var_0.xz) | countOneBits(var_0.xy), select(var_0.yy, firstTrailingBit(vec2<u32>(0u, 37360u)), true)));
    return vec4<bool>(all(select(!vec4<bool>(var_2, var_2, false, true), vec4<bool>(false, var_2, true, var_2), select(select(vec4<bool>(false, false, false, var_2), vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(var_2, var_2, var_2, false)), vec4<bool>(true, true, var_2, false), select(vec4<bool>(var_2, var_2, true, true), vec4<bool>(true, var_2, true, var_2), vec4<bool>(var_2, var_2, true, var_2))))), !(var_2 | var_2), !(true != func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-865f, -1049f, -367f, 1346f))), Struct_2(-512f, vec4<bool>(true, false, var_2, false)))), true);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(countOneBits(u_input.b));
    var var_2 = vec3<bool>(false || arg_3.x, arg_3.x, arg_3.x);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(510f - 1731f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) * _wgslsmith_f_op_f32(sign(116f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -274f), _wgslsmith_div_f32(-1605f, -118f)))), !select(vec4<bool>(var_2.x, var_2.x, !arg_3.x, arg_3.x & arg_3.x), func_1(), ~arg_0.a.x >= ~(-36687i)));
    var_2 = vec3<bool>(var_3.a >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_3.a))))), (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(-var_3.a))) < var_3.a) || select(arg_3.x, any(var_3.b), arg_3.x), true);
    return Struct_1(vec4<i32>(1i, -2147483647i, 2147483647i, min(-abs(0i), firstTrailingBit(arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 14122i;
    var var_1 = func_4(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a, -u_input.a, u_input.a, min(u_input.a, -1i)), -(~u_input.b))), ~(~_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 4294967295u), 4387u)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.b.x, u_input.c) >> (vec3<u32>(4294967295u, 4294967295u, 67161u) % vec3<u32>(32u)), vec3<i32>(~38650i, _wgslsmith_clamp_i32(-8169i, 0i, 45358i), u_input.b.x)), vec3<i32>(-14016i, reverseBits(u_input.a ^ 1185i), u_input.b.x)), vec3<bool>(any(vec2<bool>(true, true)) & true, !any(func_1()), true));
    var_0 = i32(-1i) * -1i;
    var var_2 = true;
    let var_3 = func_1().x;
    let var_4 = Struct_1(_wgslsmith_clamp_vec4_i32(max(-_wgslsmith_div_vec4_i32(var_1.a, vec4<i32>(var_1.a.x, -22096i, -1i, -1i)), var_1.a), func_4(func_4(func_4(Struct_1(vec4<i32>(u_input.b.x, var_1.a.x, var_1.a.x, u_input.b.x)), 22820u, vec3<i32>(var_1.a.x, u_input.c, u_input.b.x), vec3<bool>(false, true, var_3)), ~0u, min(var_1.a.xwz, var_1.a.xzy), select(vec3<bool>(var_3, false, false), vec3<bool>(var_3, var_3, var_3), var_3)), 33968u, u_input.b.yzz, select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(false, false, false), var_3)).a, ~(~_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(-40335i, u_input.c, u_input.a, 2147483647i)))));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1438f, 695f, 670f, -194f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-400f, -2041f, 1814f, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-203f)), -1231f, 466f, 1647f))), var_4.a.x, vec2<i32>(-abs(52184i >> (1u % 32u)), ~_wgslsmith_div_i32(var_1.a.x, -22750i)), ~max(~vec2<u32>(56035u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(36382u, 59967u))));
}

