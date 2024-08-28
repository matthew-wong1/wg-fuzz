struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_2(vec2<i32>(firstTrailingBit(-arg_0.x), (i32(-1i) * -1i) & _wgslsmith_add_i32(arg_1.x, arg_0.x)) | countOneBits((vec2<i32>(arg_1.x, arg_0.x) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) & vec2<i32>(35192i, -180i)), u_input.a.x, select(arg_2.yx, vec2<bool>(any(arg_2), false), arg_2.x | all(vec2<bool>(arg_2.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(755f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(873f, 1663f)))), 298f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1306f, -1523f, arg_2.x))))))));
    var var_1 = true;
    var var_2 = var_0;
    let var_3 = true;
    let var_4 = Struct_1(firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_0.x), u_input.a.wy), arg_1.x, abs(6121i), _wgslsmith_add_i32(0i, u_input.d))) >> ((abs(_wgslsmith_div_vec4_u32(vec4<u32>(14694u, 4563u, 1u, u_input.c.x), vec4<u32>(4294967295u, 0u, u_input.c.x, 1u))) & vec4<u32>(u_input.c.x, 14327u, abs(4294967295u), 4294967295u & u_input.c.x)) % vec4<u32>(32u)), vec3<bool>(!(var_2.c.x | false) || true, !any(select(vec2<bool>(false, false), var_0.c, vec2<bool>(var_2.c.x, var_3))), var_2.c.x));
    return select(vec2<bool>(all(arg_2), false), !arg_2.wy, !var_2.c.x != var_2.c.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = Struct_2(abs(vec2<i32>(~u_input.a.x ^ _wgslsmith_mod_i32(-33654i, 54912i), _wgslsmith_mod_i32(u_input.a.x, 16799i))), ~(~u_input.d), select(vec2<bool>(any(vec3<bool>(true, true, true)), true), !vec2<bool>(all(vec3<bool>(true, true, false)), false), select(func_3(firstTrailingBit(u_input.a.yy), vec4<i32>(-2147483647i, u_input.d, 27403i, -9981i), vec4<bool>(true, true, true, true)), func_3(-u_input.a.yx, u_input.a, select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false)), vec2<bool>(true, true))), vec4<f32>(320f, -1280f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1314f * 433f), _wgslsmith_f_op_f32(-1930f - -2216f)))));
    var var_1 = Struct_1(reverseBits(u_input.a) << (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, 5059u, arg_0.x, arg_0.x), ~(~vec4<u32>(arg_0.x, 0u, u_input.c.x, 1u))) % vec4<u32>(32u)), !vec3<bool>(~0u <= select(arg_0.x, 1u, var_0.c.x), false && (arg_0.x != u_input.c.x), !(!var_0.c.x)));
    let var_2 = any(select(select(vec3<bool>(false, select(var_1.b.x, false, var_0.c.x), any(vec3<bool>(var_0.c.x, true, false))), var_1.b, select(vec3<bool>(var_1.b.x, var_0.c.x, var_0.c.x), select(vec3<bool>(true, false, var_0.c.x), var_1.b, var_1.b), select(vec3<bool>(var_0.c.x, true, var_0.c.x), vec3<bool>(var_1.b.x, false, var_0.c.x), vec3<bool>(var_1.b.x, var_0.c.x, true)))), select(select(!var_1.b, vec3<bool>(true, true, false), select(var_1.b, var_1.b, var_1.b)), var_1.b, select(vec3<bool>(false, false, var_0.c.x), vec3<bool>(var_0.c.x, true, true), var_0.c.x)), !var_1.b));
    var var_3 = Struct_1(var_1.a ^ countOneBits(var_1.a), var_1.b);
    var_1 = Struct_1(-vec4<i32>(_wgslsmith_dot_vec2_i32(var_3.a.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(-34482i, var_1.a.x), u_input.a.yz)), firstTrailingBit(~0i), 1i, countOneBits(0i)), vec3<bool>(true, false, var_0.c.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.x, -1591f))), _wgslsmith_f_op_f32(floor(1f))))));
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.c.x ^ (_wgslsmith_sub_u32(u_input.c.x | u_input.c.x, ~u_input.c.x) << (~1u % 32u)), 0u, 1u);
    var var_1 = u_input.a.x;
    var var_2 = Struct_2(abs(-u_input.a.yz) ^ abs(vec2<i32>(-2147483647i, 1i)), 1i, !(!func_3(vec2<i32>(31942i, u_input.d), vec4<i32>(-1i, u_input.d, -77425i, -47693i), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-1000f + 454f), 1f, _wgslsmith_f_op_f32(1169f - 307f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, -901f, arg_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -113f) - vec4<f32>(arg_0, -2216f, 764f, arg_0)))), any(vec4<bool>(true, true, true, true)))));
    let var_3 = 2147483647i;
    var var_4 = var_2.c.x;
    return Struct_1(u_input.a, !(!vec3<bool>(var_2.c.x, all(var_2.c), select(var_2.c.x, var_2.c.x, false))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(select(18683i, arg_0.a.x, false), -1197i, -20440i, arg_0.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-22425i, -23851i, -2147483647i, 42818i) >> (vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) % vec4<u32>(32u)), ~vec4<i32>(arg_0.a.x, -1i, -19633i, 25375i))), arg_0.b);
    let var_1 = ~countOneBits(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~u_input.c, _wgslsmith_mod_vec2_u32(vec2<u32>(7204u, u_input.c.x), vec2<u32>(u_input.c.x, 3242u)))));
    var var_2 = 1i ^ u_input.d;
    var var_3 = Struct_2(u_input.a.zy, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(arg_0.a.xyx, vec3<i32>(u_input.b, 0i, arg_0.a.x)), min(~u_input.a.wyx, arg_0.a.wzy ^ arg_0.a.yxx)), _wgslsmith_mod_i32(var_0.a.x, var_0.a.x)), select(!func_3(u_input.a.yz, _wgslsmith_div_vec4_i32(vec4<i32>(-6618i, u_input.a.x, 2147483647i, u_input.d), vec4<i32>(u_input.d, -1i, u_input.a.x, arg_0.a.x)), !vec4<bool>(var_0.b.x, arg_0.b.x, var_0.b.x, arg_0.b.x)), arg_0.b.zy, (var_0.b.x || false) | true), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1797f), 100f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1859f))), 1834f)), 1f));
    var var_4 = Struct_2(vec2<i32>(-var_3.a.x, -19774i), _wgslsmith_mod_i32(-13623i, -abs(1i)), select(func_4(529f).b.yy, !vec2<bool>(func_4(341f).b.x, true), select(select(func_3(var_3.a, vec4<i32>(u_input.d, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_3.c.x, true, false, false)), select(vec2<bool>(true, false), var_3.c, var_3.c.x), vec2<bool>(var_3.c.x, arg_0.b.x)), select(func_3(var_3.a, u_input.a, vec4<bool>(false, var_0.b.x, false, var_0.b.x)), func_3(vec2<i32>(arg_0.a.x, var_3.b), vec4<i32>(var_3.b, var_0.a.x, -21411i, var_3.a.x), vec4<bool>(arg_0.b.x, var_3.c.x, false, false)), func_3(var_0.a.wz, var_0.a, vec4<bool>(arg_0.b.x, true, arg_0.b.x, false))), true)), _wgslsmith_f_op_vec4_f32(ceil(var_3.d)));
    return func_4(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(abs(var_1), _wgslsmith_f_op_f32(-var_3.d.x), -314f)))));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = select(true, arg_2, !(!arg_0.b.x || false)) | (_wgslsmith_dot_vec2_i32(countOneBits(arg_0.a.xy), u_input.a.xy) >= arg_0.a.x);
    let var_1 = ~reverseBits(max(arg_0.a.x, abs(countOneBits(-85987i))));
    let var_2 = -(~_wgslsmith_add_i32(func_4(-245f).a.x >> (reverseBits(1u) % 32u), arg_0.a.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(799f, arg_1, 106f))), vec3<f32>(337f, _wgslsmith_f_op_f32(arg_1 - 269f), _wgslsmith_f_op_f32(-1037f * -870f)))))));
    var_0 = !func_5(func_5(func_4(arg_1))).b.x;
    return func_5(arg_0);
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = 61153u;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d.x)))));
    var var_2 = func_6(func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(func_2(u_input.c, -222f, -479f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-890f * var_1))))), true);
    let var_3 = ~func_5(Struct_1(vec4<i32>(1i, abs(-42517i), u_input.d, 2147483647i), var_2.b)).a.xyy;
    return _wgslsmith_f_op_f32(var_1 - arg_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(u_input.b, -16903i), _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(u_input.a, ~u_input.a), ~(~u_input.a) ^ ~firstLeadingBit(vec4<i32>(-18555i, u_input.b, u_input.d, u_input.d))), vec2<bool>(true, select(true, true, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<i32>(u_input.a.x, u_input.b), 1i, vec2<bool>(false, true), vec4<f32>(790f, 698f, -2051f, 1175f)))), 1375f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2809f - 630f), _wgslsmith_f_op_f32(f32(-1f) * -516f))), _wgslsmith_f_op_f32(448f + _wgslsmith_f_op_f32(select(-712f, 1699f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-365f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2100f, -1418f, 1535f, _wgslsmith_f_op_f32(337f - 2249f)) + vec4<f32>(-1261f, 316f, -377f, _wgslsmith_f_op_f32(trunc(-204f))))));
    var_0 = Struct_2(_wgslsmith_sub_vec2_i32(~(~u_input.a.yy), -vec2<i32>(-37393i, _wgslsmith_add_i32(u_input.b, 42498i))), 0i, func_6(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.d.x))))), -574f, ~abs(var_0.a.x) == (i32(-1i) * -var_0.a.x)).b.yx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, 295f))), var_0.d))));
    let var_1 = 4294967295u;
    var_0 = Struct_2(vec2<i32>(-2147483647i, u_input.a.x), firstLeadingBit(-2147483647i), vec2<bool>(var_0.c.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, -411f, 1000f))));
    let var_2 = _wgslsmith_f_op_f32(-var_0.d.x);
    let var_3 = ~(~(~select(vec4<u32>(0u, var_1, 22679u, u_input.c.x) | vec4<u32>(57094u, 60908u, u_input.c.x, var_1), vec4<u32>(17082u, 76751u, u_input.c.x, 53564u), !vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x))));
    var_0 = Struct_2(-_wgslsmith_mult_vec2_i32(u_input.a.ww, func_6(Struct_1(vec4<i32>(0i, -13258i, var_0.a.x, -25244i), vec3<bool>(var_0.c.x, true, var_0.c.x)), 891f, var_0.c.x).a.wy & -u_input.a.xz), func_6(Struct_1(vec4<i32>(var_0.a.x, func_6(Struct_1(vec4<i32>(var_0.a.x, u_input.b, 0i, 29047i), vec3<bool>(false, false, false)), 296f, true).a.x, var_0.b, abs(var_0.b)), !select(vec3<bool>(false, var_0.c.x, var_0.c.x), vec3<bool>(true, true, var_0.c.x), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_2, -2368f)))), var_0.d.x), var_2 >= var_2).a.x, var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1020f, -2146f), _wgslsmith_f_op_f32(var_0.d.x - 146f), _wgslsmith_f_op_f32(var_0.d.x + var_2), _wgslsmith_f_op_f32(abs(-162f))))));
    var_0 = Struct_2(var_0.a, u_input.a.x >> (~_wgslsmith_mult_u32(~0u, u_input.c.x) % 32u), var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d, var_0.d) * _wgslsmith_f_op_vec4_f32(var_0.d * var_0.d)))));
    var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(-var_2)).a.yy, var_0.b, vec2<bool>(!(_wgslsmith_mult_u32(65215u, var_1) <= (var_1 | 4294967295u)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1315f, var_0.d.x) + 1393f), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * 847f) - _wgslsmith_f_op_f32(floor(var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(var_0.d.x, var_2, -364f, -300f)), _wgslsmith_f_op_vec4_f32(-var_0.d))))));
}

