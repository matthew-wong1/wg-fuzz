struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(899f, 1477f, -1000f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_3(arg_1.x & _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_1.wy, arg_1.yw) & arg_1.x, abs(0i)), countOneBits(abs(arg_1.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 362f, _wgslsmith_f_op_f32(613f * -181f), _wgslsmith_f_op_f32(ceil(global0.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) - _wgslsmith_f_op_f32(select(global0.x, 752f, false)))), Struct_1(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(sign(arg_0.x)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -685f))), Struct_1(_wgslsmith_f_op_f32(step(325f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(895f, -1231f)))))));
    var var_1 = Struct_3(var_0.b, ~_wgslsmith_mult_i32(i32(-1i) * -17396i, -36137i), var_0.c, var_0.d);
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(var_0.c.b.a * 943f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(742f)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - var_1.d.a))), _wgslsmith_f_op_f32(-var_0.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -228f))))), Struct_1(_wgslsmith_f_op_f32(select(var_2.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.d.a)) + _wgslsmith_f_op_f32(var_0.c.a.x * global0.x)), true))), var_0.d, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))));
    return 1i;
}

fn func_2() -> i32 {
    let var_0 = Struct_3(-3084i, -(~(-2114i) | -select(11085i, 6670i, false)), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -894f, global0.x, global0.x), vec4<f32>(1051f, global0.x, 407f, global0.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -914f, -597f, 2217f), vec4<f32>(656f, 1383f, 1194f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(849f, global0.x, global0.x, -203f))) * vec4<f32>(-2147f, global0.x, global0.x, global0.x)))), Struct_1(-1000f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -583f))), Struct_1(global0.x)), Struct_1(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(193f + 1616f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.c.a.zww, var_0.c.a.zwx)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.a.xzw - var_0.c.a.xzz) - _wgslsmith_f_op_vec3_f32(-var_0.c.a.zww))))));
    var var_1 = func_3(global0.zx, vec4<i32>(-1i) * -vec4<i32>(10377i, var_0.a, var_0.b, var_0.a)) << (u_input.b % 32u);
    var var_2 = var_0;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)))))), -322f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-732f))) - _wgslsmith_f_op_f32(-var_0.d.a)));
    return countOneBits(var_2.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    global0 = arg_3.a.c.a.yxx;
    let var_0 = arg_3;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-244f * _wgslsmith_div_f32(var_0.d.x, -208f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(614f))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1368f * arg_3.a.c.b.a) * -491f)), var_0.d.x, true)));
    let var_1 = Struct_4(Struct_3(var_0.a.a, -func_2(), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.a.c.a))), var_0.a.c.b, Struct_1(-838f), arg_1.b), Struct_1(1120f)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.a.a & 2147483647i, arg_3.b), firstLeadingBit(-52514i)), vec2<i32>(abs(0i), ~1i) | firstLeadingBit(~select(vec2<i32>(arg_3.a.a, -2147483647i), vec2<i32>(arg_3.c.x, var_0.c.x), vec2<bool>(arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(abs(var_0.d)));
    global0 = vec3<f32>(-1000f, 2297f, -369f);
    return arg_3;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    global0 = arg_1.a.wxy;
    let var_0 = arg_1.a.x;
    var var_1 = arg_2.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(arg_1.a)), Struct_1(global0.x), arg_1.d, arg_1.c);
    var_1 = ~31828u;
    return Struct_1(_wgslsmith_f_op_f32(-arg_1.a.x));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(968f * -1512f) * _wgslsmith_f_op_f32(select(774f, 246f, arg_0))))), -1165f));
    let var_0 = arg_1.b;
    global0 = vec3<f32>(506f, _wgslsmith_f_op_f32(ceil(1000f)), arg_1.c.d.a);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-758f, -796f, -297f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c.a.yxw) + arg_1.c.a.yzx))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(arg_1.c.a.wxx, _wgslsmith_f_op_vec3_f32(-arg_1.c.a.yxz))), arg_1.c.a.wzw)))));
    global0 = _wgslsmith_f_op_vec3_f32(-arg_1.c.a.ywx);
    return _wgslsmith_f_op_vec3_f32(abs(arg_1.c.a.yzy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(func_5(true, Struct_3(80280i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(52501i, -29101i), ~1i, ~1i), ~firstTrailingBit(1i)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(716f - 290f), 742f, global0.x, _wgslsmith_f_op_f32(select(global0.x, global0.x, false))), func_4(func_1(u_input.a.zz, Struct_2(vec4<f32>(global0.x, global0.x, global0.x, -730f), Struct_1(-189f), Struct_1(global0.x), Struct_1(-321f)), true, Struct_4(Struct_3(2692i, -69152i, Struct_2(vec4<f32>(-1278f, -1000f, global0.x, global0.x), Struct_1(global0.x), Struct_1(global0.x), Struct_1(global0.x)), Struct_1(global0.x)), 0i, vec2<i32>(-30819i, -3056i), vec3<f32>(728f, -1053f, 1041f))), Struct_2(vec4<f32>(global0.x, global0.x, global0.x, 802f), Struct_1(1052f), Struct_1(global0.x), Struct_1(global0.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 87956u), u_input.a.zw)), Struct_1(global0.x), Struct_1(-853f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~(~firstLeadingBit(u_input.a.x))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(303f, global0.x, global0.x) - vec3<f32>(-365f, global0.x, -301f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1674f, 292f, -845f))) + _wgslsmith_f_op_vec3_f32(func_5(true, Struct_3(-1i, _wgslsmith_add_i32(-41166i, 2147483647i), func_1(u_input.a.zw, Struct_2(vec4<f32>(995f, global0.x, -101f, global0.x), Struct_1(1168f), Struct_1(641f), Struct_1(373f)), false, Struct_4(Struct_3(-1i, 4671i, Struct_2(vec4<f32>(954f, global0.x, 183f, global0.x), Struct_1(global0.x), Struct_1(global0.x), Struct_1(global0.x)), Struct_1(495f)), 0i, vec2<i32>(2697i, -8793i), vec3<f32>(global0.x, -586f, -611f))).a.c, func_1(vec2<u32>(u_input.a.x, 21235u), Struct_2(vec4<f32>(-304f, global0.x, global0.x, -166f), Struct_1(global0.x), Struct_1(global0.x), Struct_1(678f)), false, Struct_4(Struct_3(1i, -31374i, Struct_2(vec4<f32>(global0.x, global0.x, 497f, -535f), Struct_1(-984f), Struct_1(-2170f), Struct_1(-591f)), Struct_1(global0.x)), 0i, vec2<i32>(-7710i, -79993i), vec3<f32>(143f, 983f, 436f))).a.c.c), 1u))));
    let var_0 = false;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-571f, _wgslsmith_f_op_f32(exp2(global0.x)), -192f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1406f, global0.x, 480f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1924f, 941f, 107f))) + vec3<f32>(global0.x, 1293f, 1134f)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), 908f, _wgslsmith_f_op_f32(960f - global0.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1088f, global0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(Struct_4(Struct_3(-1i, 0i, Struct_2(vec4<f32>(2492f, -1527f, 186f, global0.x), Struct_1(-1604f), Struct_1(123f), Struct_1(global0.x)), Struct_1(-1238f)), 22252i, vec2<i32>(14991i, 41030i), vec3<f32>(-335f, 185f, -1000f)), Struct_2(vec4<f32>(-606f, 559f, global0.x, global0.x), Struct_1(-1000f), Struct_1(-197f), Struct_1(-810f)), vec2<u32>(0u, u_input.a.x)).a + global0.x))), select(select(vec4<i32>(1i, countOneBits(-2147483647i), 29791i, i32(-1i) * -1i), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, true, true, true)), vec4<i32>(~_wgslsmith_add_i32(-21402i, -1i), abs(countOneBits(-28737i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -19750i, -2147483647i), abs(vec3<i32>(2147483647i, 0i, 22220i))), -6949i), !select(select(vec4<bool>(true, false, true, var_0), vec4<bool>(true, false, false, false), var_0), !vec4<bool>(var_0, var_0, var_0, true), select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, true, var_0, var_0), true))), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(~u_input.a.x, 1u), 38925u, u_input.a.x), ~(~(~vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u))), _wgslsmith_f_op_f32(-func_1(~(~u_input.a.xy), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(112f, global0.x, 1038f, -1017f) - vec4<f32>(global0.x, global0.x, -356f, global0.x)), Struct_1(global0.x), Struct_1(1624f), Struct_1(-1693f)), true, func_1(reverseBits(vec2<u32>(u_input.b, 1u)), func_1(u_input.a.yw, Struct_2(vec4<f32>(global0.x, global0.x, global0.x, global0.x), Struct_1(global0.x), Struct_1(global0.x), Struct_1(-1000f)), true, Struct_4(Struct_3(-1i, 1i, Struct_2(vec4<f32>(global0.x, 676f, -1502f, global0.x), Struct_1(global0.x), Struct_1(479f), Struct_1(125f)), Struct_1(-3037f)), 20593i, vec2<i32>(-2147483647i, 0i), vec3<f32>(global0.x, global0.x, global0.x))).a.c, false, Struct_4(Struct_3(1i, -2147483647i, Struct_2(vec4<f32>(1456f, -1211f, -800f, -758f), Struct_1(-458f), Struct_1(2925f), Struct_1(-748f)), Struct_1(global0.x)), -49881i, vec2<i32>(2147483647i, 13326i), vec3<f32>(1011f, global0.x, global0.x)))).a.c.c.a));
}

