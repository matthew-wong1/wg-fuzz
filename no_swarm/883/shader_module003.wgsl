struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = Struct_1(-1118f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.c.b, arg_0.a.b)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.a, -1318f, -489f), arg_0.a.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(412f, arg_0.e.c.x, -1000f) * arg_0.a.b), true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), u_input.d.yzx);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.c)) * _wgslsmith_f_op_vec2_f32(arg_0.a.c * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.c.x * 305f), _wgslsmith_f_op_f32(select(1000f, arg_0.e.a, arg_0.d))) + vec2<f32>(_wgslsmith_f_op_f32(-1000f - -1640f), _wgslsmith_f_op_f32(-1117f * -880f)))));
    let var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-arg_1), global1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - 302f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.e.c.x, var_1.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(426f, arg_1, var_0.a)))))), vec2<f32>(var_0.b.x, -560f), _wgslsmith_mult_vec3_u32((vec3<u32>(global0.x, 4294967295u, global0.x) | vec3<u32>(30179u, 4294967295u, global0.x)) ^ vec3<u32>(select(arg_0.e.d.x, arg_0.b.x, global1.x), arg_0.a.d.x, u_input.d.x), _wgslsmith_clamp_vec3_u32(arg_0.e.d, ~min(var_2.e.d, arg_0.e.d), u_input.d.yxy << (vec3<u32>(var_2.b.x, 4294967295u, var_0.d.x) % vec3<u32>(32u)))));
    var var_4 = ~_wgslsmith_div_vec2_u32(~(~_wgslsmith_div_vec2_u32(arg_0.e.d.yy, vec2<u32>(global0.x, var_2.b.x))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1608u, var_0.d.x), ~u_input.d.yz, u_input.d.wz));
    return _wgslsmith_f_op_f32(-738f - _wgslsmith_f_op_f32(exp2(var_3.a)));
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    global1 = select(select(vec4<bool>(true, global1.x, true, (u_input.d.x << (60163u % 32u)) >= _wgslsmith_mod_u32(32402u, global0.x)), vec4<bool>(!global1.x, true, true, true), !vec4<bool>(global1.x, true, global1.x, true)), vec4<bool>(true | any(vec4<bool>(arg_0.d, false, global1.x, global1.x)), false, true, false), !(!select(select(vec4<bool>(global1.x, false, true, true), vec4<bool>(arg_0.d, true, global1.x, true), vec4<bool>(true, false, arg_0.d, false)), select(vec4<bool>(arg_0.d, false, arg_0.d, true), vec4<bool>(true, true, false, arg_0.d), false), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, false, true), global1.x))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_0.a.c.x, vec3<f32>(arg_0.c.a, arg_0.a.c.x, arg_0.c.a), arg_0.a.b.yx, u_input.d.xxx), u_input.d.zw, Struct_1(arg_0.c.a, arg_0.e.b, vec2<f32>(-1047f, arg_0.e.b.x), arg_0.c.d), global1.x, Struct_1(arg_0.a.a, vec3<f32>(1000f, arg_0.e.a, arg_0.a.b.x), vec2<f32>(532f, -1412f), u_input.d.wzz)), _wgslsmith_f_op_f32(-arg_0.e.b.x))) * 1316f))), arg_0.e.a);
    global2 = ~abs(_wgslsmith_mult_i32(~u_input.c, u_input.a.x)) >> ((_wgslsmith_div_u32(global0.x, 12305u) | 4294967295u) % 32u);
    global1 = !vec4<bool>(firstTrailingBit(u_input.d.x) < u_input.d.x, arg_0.d, arg_0.d, true);
    var var_1 = arg_0;
    return max(vec3<i32>(u_input.c, u_input.c, countOneBits(_wgslsmith_add_i32(u_input.b.x, 2147483647i))), firstTrailingBit(select(vec3<i32>(51541i, 1i, -59813i), vec3<i32>(-3241i, 47223i, -4876i) << (vec3<u32>(var_1.c.d.x, 1u, 4294967295u) % vec3<u32>(32u)), true | var_1.d) | _wgslsmith_clamp_vec3_i32(max(vec3<i32>(19120i, u_input.b.x, -1i), vec3<i32>(1i, u_input.c, -35889i)), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.c), select(vec3<i32>(u_input.c, -42825i, 12294i), vec3<i32>(18559i, u_input.c, 0i), vec3<bool>(false, true, true)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: u32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = arg_3;
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~u_input.d.zw), u_input.d.x), 6461u);
    var var_2 = _wgslsmith_dot_vec3_u32(u_input.d.ywx, u_input.d.xxw);
    var var_3 = Struct_2(Struct_1(-762f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + 1000f)), -2785f, _wgslsmith_f_op_f32(var_0.x + 245f)), vec2<f32>(1f, 1f), u_input.d.yxy), _wgslsmith_mod_vec2_u32(vec2<u32>(max(~18237u, 1u), 4294967295u), u_input.d.zw), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -867f), vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), -166f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1075f, 748f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(arg_3)))))), firstTrailingBit(u_input.d.xyw)), false, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, 805f, 654f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(366f, arg_3.x, 838f) - vec3<f32>(var_0.x, -232f, -1250f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -638f, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, var_0.x, arg_3.x))))), vec2<f32>(-973f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -104f)))), ~min(u_input.d.ywx, vec3<u32>(var_1.x, 40471u, u_input.d.x) & u_input.d.wxz)));
    var var_4 = Struct_1(-2536f, var_3.e.b, _wgslsmith_div_vec2_f32(arg_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.c.c * var_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, var_0.x)))), ~vec3<u32>(30516u, arg_2, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 1u, _wgslsmith_div_u32(var_3.a.d.x, arg_2))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(func_3(Struct_2(var_3.a, vec2<u32>(arg_2, 85442u), var_3.a, false, Struct_1(var_3.c.a, vec3<f32>(-1245f, var_4.b.x, var_0.x), vec2<f32>(var_0.x, -1227f), vec3<u32>(0u, 6041u, 1u))), 572f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4.b.x, 1297f, var_0.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-726f, var_4.a, var_3.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3 + vec2<f32>(var_3.e.c.x, -400f))), firstLeadingBit(~(var_3.c.d >> (vec3<u32>(var_4.d.x, var_3.a.d.x, 2474u) % vec3<u32>(32u))))), reverseBits(max(countOneBits(~vec2<u32>(u_input.d.x, arg_2)), _wgslsmith_clamp_vec2_u32(max(vec2<u32>(4294967295u, 7705u), var_4.d.xz), vec2<u32>(3868u, 0u) & var_4.d.zz, ~u_input.d.yz))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1168f, _wgslsmith_f_op_f32(arg_3.x * -812f))), _wgslsmith_f_op_vec3_f32(sign(var_3.a.b)), _wgslsmith_f_op_vec2_f32(round(var_4.b.xy)), ~firstTrailingBit(reverseBits(vec3<u32>(4772u, arg_2, 18946u)))), true, var_3.a);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(815f, 304f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f))))), 749f, 400f);
    global0 = u_input.d.wz >> (_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, global0.x), vec2<u32>(global0.x, ~u_input.d.x)), ~vec2<u32>(38826u, global0.x ^ global0.x)) % vec2<u32>(32u));
    let var_1 = ~u_input.b.x;
    let var_2 = func_4(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.b.x), func_2(Struct_2(Struct_1(1186f, vec3<f32>(var_0.x, var_0.x, 720f), vec2<f32>(var_0.x, -578f), u_input.d.wxw), vec2<u32>(34540u, 26738u), Struct_1(var_0.x, vec3<f32>(-1114f, var_0.x, var_0.x), vec2<f32>(var_0.x, 332f), u_input.d.xyw), global1.x, Struct_1(-1000f, vec3<f32>(var_0.x, 2074f, var_0.x), vec2<f32>(-1000f, 1000f), u_input.d.xww))))), reverseBits(44458i), 75191u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1089f), var_0.x))));
    var var_3 = var_0.x > -1149f;
    return func_4(-vec3<i32>(u_input.a.x, -u_input.a.x, -(u_input.a.x & var_1)), -_wgslsmith_sub_i32(select(-3361i, -31151i, true), 8950i & var_1) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(~var_2.c.d.zy), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 44993u), ~vec2<u32>(58231u, u_input.d.x))) % 32u), ~_wgslsmith_dot_vec2_u32(min(_wgslsmith_clamp_vec2_u32(u_input.d.yy, vec2<u32>(0u, u_input.d.x), vec2<u32>(var_2.c.d.x, 1u)), vec2<u32>(global0.x, u_input.d.x) | u_input.d.zz), ~u_input.d.zz), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -675f), func_4(vec3<i32>(-var_1, -9138i, 26430i >> (var_2.e.d.x % 32u)), _wgslsmith_div_i32(-1i, 42986i), ~(~var_2.a.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(640f, -1000f) - vec2<f32>(616f, var_2.c.b.x))).c.b.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), ~u_input.d.wy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1295f, 724f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-428f, -1901f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1156f, 886f, true)) * _wgslsmith_f_op_f32(1731f - 1000f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1().c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1248f, -1133f))))), u_input.d.zxx), false, Struct_1(_wgslsmith_f_op_f32(min(-1000f, -633f)), func_4(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, 20755i, 1i), -vec3<i32>(-27999i, u_input.b.x, u_input.b.x)), _wgslsmith_add_i32(u_input.a.x, min(1i, u_input.b.x)), u_input.d.x, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(477f, 609f), vec2<f32>(208f, -1478f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1931f, -1152f), vec2<f32>(-2221f, 775f)))).e.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -1054f), vec2<f32>(-1000f, -1487f)))), vec3<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, ~u_input.d.x), firstTrailingBit(1u), ~(~global0.x))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(290f)), var_0.a.a, var_0.a.b.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(func_4(vec3<i32>(2147483647i, u_input.b.x, -2147483647i), u_input.c, u_input.d.x, var_0.e.b.yx).c.b, _wgslsmith_f_op_vec3_f32(-var_0.c.b))) * _wgslsmith_f_op_vec3_f32(-func_4(vec3<i32>(u_input.c, 8149i, u_input.b.x), 80205i, u_input.d.x, var_0.a.b.xz).a.b))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.e.b, var_0.e.b), var_0.a.b));
    var var_2 = any(vec3<bool>(!(!var_0.d), any(global1.xwy), true));
    let var_3 = false;
    global0 = min(vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(global0.x) | (var_0.a.d.x ^ u_input.d.x), global0.x, 1u), _wgslsmith_mult_u32(~25171u, u_input.d.x)), ~u_input.d.ww);
    let var_4 = var_0.a;
    var var_5 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.a.x), select(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.c.d.x), var_5.d) >> (select(vec3<u32>(0u, var_4.d.x, u_input.d.x), u_input.d.xww, global1.wxx) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(abs(var_0.c.d), (vec3<u32>(1u, 4294967295u, 20393u) | vec3<u32>(var_4.d.x, var_5.d.x, global0.x)) | ~var_4.d, vec3<u32>(select(16185u, var_0.e.d.x, global1.x), 1u, abs(25585u))), global1.xyy), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-max(vec3<i32>(u_input.c, u_input.b.x, 47165i), vec3<i32>(u_input.c, u_input.b.x, u_input.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(13651i, u_input.a.x, 2147483647i), vec3<i32>(82033i, -1i, u_input.a.x)) >> (u_input.d.wxy % vec3<u32>(32u))), (_wgslsmith_clamp_vec3_i32(vec3<i32>(57345i, 25500i, u_input.a.x), vec3<i32>(1i, u_input.b.x, -4327i), vec3<i32>(1i, u_input.b.x, u_input.c)) >> ((vec3<u32>(var_5.d.x, u_input.d.x, var_4.d.x) & var_0.c.d) % vec3<u32>(32u))) & (abs(vec3<i32>(u_input.a.x, u_input.c, u_input.c)) << (var_0.a.d % vec3<u32>(32u)))));
}

