struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = u_input.a;
    var var_1 = vec3<i32>(~42563i, u_input.c | u_input.c, -u_input.c);
    let var_2 = vec3<i32>(-((countOneBits(-21052i) << (u_input.a % 32u)) | u_input.c), ~2147483647i, _wgslsmith_mod_i32(firstLeadingBit(-_wgslsmith_sub_i32(u_input.c, u_input.c)), ~(var_1.x & firstLeadingBit(var_1.x))));
    var_1 = max(vec3<i32>(abs(max(72818i, select(2147483647i, var_1.x, true))), _wgslsmith_mod_i32(var_1.x, var_1.x << (u_input.a % 32u)), min(_wgslsmith_sub_i32(var_2.x << (0u % 32u), ~20041i), ~var_2.x)), var_2 | vec3<i32>(2147483647i, max(-1i, i32(-1i) * -2147483647i), ~(~u_input.c)));
    var var_3 = !vec2<bool>(true, arg_0.x);
    return ~_wgslsmith_mult_i32(-var_2.x, var_1.x);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_3.wxz;
    let var_1 = -(-u_input.c | ~firstLeadingBit(u_input.c));
    let var_2 = vec4<u32>(u_input.b.x, ~(~u_input.b.x), u_input.b.x, ~(~_wgslsmith_sub_u32(117346u, _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(20331u, u_input.b.x)))));
    var var_3 = vec3<u32>(4294967295u, 24479u, var_2.x);
    var var_4 = arg_3.x;
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = func_3(arg_3, _wgslsmith_add_i32(func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(max(-1441f, -183f)), Struct_1(arg_0.a, 1347f, 210f, vec4<f32>(arg_1.a.x, -439f, -1458f, 172f))), ~(-16042i ^ u_input.c)) | 33455i, arg_3, vec4<bool>(true, true, false, false));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1217f, var_0.a.x)), vec2<f32>(arg_1.a.x, arg_0.b))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(405f, var_0.c) - arg_0.a.yz), _wgslsmith_f_op_vec2_f32(vec2<f32>(-866f, arg_1.a.x) - arg_0.a.yw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.xx, arg_0.d.ww))))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.a.x))), 1467f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.d.zz + arg_1.d.yx)) - vec2<f32>(arg_3.c, _wgslsmith_f_op_f32(step(1553f, arg_1.a.x)))))));
    var var_2 = func_3(func_3(arg_0, 0i, func_3(func_3(func_3(Struct_1(vec4<f32>(559f, 703f, arg_1.d.x, var_1.x), arg_0.c, arg_0.b, arg_1.a), -16305i, arg_1, vec4<bool>(false, false, true, false)), _wgslsmith_add_i32(-32450i, u_input.c), Struct_1(arg_1.a, arg_0.a.x, arg_3.c, vec4<f32>(175f, 400f, arg_3.c, -1828f)), vec4<bool>(false, true, false, true)), u_input.c, arg_3, vec4<bool>(true, true, true, true)), vec4<bool>(true, select(true, all(vec3<bool>(false, true, true)), true), _wgslsmith_f_op_f32(round(235f)) < var_1.x, all(vec3<bool>(true, true, true)))), -27075i | (_wgslsmith_div_i32(~u_input.c, u_input.c & u_input.c) << (~abs(50983u) % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(trunc(arg_3.a.x))) - -1000f), _wgslsmith_f_op_f32(trunc(1625f)), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-1253f * -432f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - 805f), arg_1.c))), vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)))), false && (true | (u_input.c >= u_input.c)), !(!any(vec3<bool>(true, false, false))), true));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(817f + -202f))))), var_1.x, var_0.c);
    var var_4 = select((arg_2 ^ _wgslsmith_div_u32(max(0u, 52801u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, u_input.b.x), vec2<u32>(4294967295u, 63392u)))) != _wgslsmith_dot_vec4_u32(u_input.b, reverseBits(u_input.b)), any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), true)), !(!select(false, u_input.b.x != u_input.b.x, true)));
    return ~vec2<i32>(u_input.c, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(countOneBits(~vec2<i32>(u_input.c, 2147483647i) | vec2<i32>(2147483647i, u_input.c)) | _wgslsmith_div_vec2_i32(-min(vec2<i32>(-9814i, -17124i), vec2<i32>(-5187i, u_input.c)), _wgslsmith_sub_vec2_i32(func_1(Struct_1(vec4<f32>(1431f, 750f, 1335f, -757f), -840f, -263f, vec4<f32>(1257f, 244f, -539f, -583f)), Struct_1(vec4<f32>(621f, 1707f, -582f, 199f), 375f, -517f, vec4<f32>(834f, -535f, 404f, -1000f)), 28646u, Struct_1(vec4<f32>(2063f, -1000f, 1066f, 484f), 3392f, -948f, vec4<f32>(217f, -242f, -256f, 238f))), vec2<i32>(1i, 1i))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-251f, -962f))), 871f, _wgslsmith_f_op_f32(floor(483f)), -1320f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1788f) * -447f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -822f)))), _wgslsmith_div_f32(693f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_3(func_3(func_3(Struct_1(vec4<f32>(-1703f, -136f, 304f, 1000f), 221f, -1286f, vec4<f32>(383f, -696f, -1170f, -1000f)), 2147483647i, func_3(Struct_1(vec4<f32>(1430f, -705f, 995f, -300f), 121f, -887f, vec4<f32>(1000f, 2394f, -134f, -563f)), u_input.c, Struct_1(vec4<f32>(311f, 1065f, 431f, -638f), -2386f, -2896f, vec4<f32>(403f, 916f, -1016f, -536f)), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), -1i, func_3(func_3(Struct_1(vec4<f32>(1158f, 1210f, 1392f, -1007f), -1338f, 302f, vec4<f32>(1090f, -554f, 828f, -2205f)), 0i, Struct_1(vec4<f32>(-811f, -512f, 183f, -278f), -800f, -2351f, vec4<f32>(-258f, 1000f, -1482f, -129f)), vec4<bool>(false, false, true, false)), -var_0.x, func_3(Struct_1(vec4<f32>(-1016f, 318f, 576f, -896f), -1000f, 304f, vec4<f32>(609f, 685f, -507f, -115f)), u_input.c, Struct_1(vec4<f32>(-404f, -1156f, 706f, -1629f), -496f, 475f, vec4<f32>(-1000f, -1264f, 1327f, 332f)), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), -2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(493f, 1344f, -262f, -790f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f * -1000f)), 1f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(2430f, 1276f, -1482f, 1497f))), vec4<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true, true)).a);
    let var_2 = func_3(Struct_1(var_1.d, _wgslsmith_f_op_f32(floor(var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_div_f32(997f, var_1.d.x)) - _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(abs(-994f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(405f, 2319f, -853f, var_1.c) * vec4<f32>(-700f, var_1.a.x, var_1.b, var_1.b)))))), var_0.x, func_3(var_1, u_input.c, var_1, select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), false & (u_input.b.x > u_input.b.x))), !select(vec4<bool>(true, true, true, all(vec2<bool>(true, false))), vec4<bool>(true, var_0.x != var_0.x, all(vec4<bool>(false, true, false, true)), false), vec4<bool>(true, true, true, true)));
    var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, var_0.x), vec2<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(-2147483647i, 9108i, u_input.c), min(1156i, var_0.x)), ~abs(u_input.c)) | vec2<i32>(_wgslsmith_mod_i32(24733i, ~u_input.c), min(-2147483647i >> (u_input.a % 32u), select(34652i, -8766i, true))));
    let var_3 = var_2;
    var_0 = (reverseBits(~max(vec2<i32>(var_0.x, 1i), vec2<i32>(var_0.x, var_0.x))) << (firstLeadingBit(vec2<u32>(~9979u, 15523u)) % vec2<u32>(32u))) << (vec2<u32>(~46804u, _wgslsmith_add_u32(0u, u_input.a)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(var_0.x, 0i), -var_0.x ^ 2147483647i, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.d.x, var_3.c))), _wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(-var_1.c)))), -max(vec2<i32>(2147483647i, 2147483647i), abs(vec2<i32>(2147483647i, var_0.x))) ^ select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c) & vec2<i32>(1i, -32317i), vec2<i32>(u_input.c, u_input.c)), select(vec2<i32>(1i, 1i), vec2<i32>(var_0.x, u_input.c) & vec2<i32>(u_input.c, 6313i), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(true, false)));
}

