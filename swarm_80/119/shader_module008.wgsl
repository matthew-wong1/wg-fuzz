struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>) -> bool {
    let var_0 = (u_input.a == 4244u) != all(!select(select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), vec4<bool>(arg_1.c.a.c.x, false, arg_0.c.x, arg_0.c.x), arg_1.c.a.c.x), select(vec4<bool>(true, false, arg_1.d.c.x, arg_1.b.x), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_1.c.d.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, true, true)), !vec4<bool>(true, false, true, arg_0.c.x)));
    global1 = any(arg_0.c);
    let var_1 = _wgslsmith_sub_u32(27058u, select(118025u, _wgslsmith_div_u32(countOneBits(0u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], u_input.a, 7507u), vec3<u32>(1u, 31955u, global0[_wgslsmith_index_u32(u_input.a, 20u)])) % 32u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], u_input.a), countOneBits(vec4<u32>(38100u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)]))), 20u)]), true));
    global1 = var_0;
    let var_2 = arg_1.c;
    return false;
}

fn func_2(arg_0: u32) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1149f * -1648f))), select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, false, false)), all(vec2<bool>(false, false))), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(true, false))), vec2<bool>(true, func_3(Struct_1(vec3<f32>(-350f, -1906f, 1919f), -46418i, vec3<bool>(true, true, false), -767f), Struct_3(1568f, vec2<bool>(false, true), Struct_2(Struct_1(vec3<f32>(-987f, -1536f, 1944f), 1i, vec3<bool>(false, true, false), 502f), Struct_1(vec3<f32>(732f, -1714f, 385f), 2147483647i, vec3<bool>(true, false, false), -970f), vec3<f32>(-1000f, 300f, 1545f), Struct_1(vec3<f32>(746f, 951f, 1338f), 2147483647i, vec3<bool>(false, true, true), 208f), Struct_1(vec3<f32>(1945f, -1347f, 189f), 2147483647i, vec3<bool>(true, false, true), 381f)), Struct_1(vec3<f32>(259f, -541f, 333f), 1i, vec3<bool>(false, true, true), 304f)), vec4<f32>(-360f, -1212f, -846f, 1256f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-481f, 1000f, -794f) - vec3<f32>(2119f, 799f, -402f))), 0i, !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1493f))))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2046f, 310f, 717f) - vec3<f32>(175f, -226f, 826f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-504f, 1048f, 1506f)), any(vec2<bool>(false, false)))), i32(-1i) * -34071i, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(step(-1186f, 1507f))), vec3<f32>(102f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1629f - 1362f), _wgslsmith_f_op_f32(-1215f - -481f))), -1517f), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-236f, -1339f, 1334f), vec3<f32>(-1080f, 462f, 2253f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(217f, 1000f, 603f)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))), 65790i << (_wgslsmith_dot_vec3_u32(vec3<u32>(73692u, 66193u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(125847u, 20u)], 20u)], 20u)]), vec3<u32>(arg_0, 1u, 1727u)) % 32u), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), -356f), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(-1952f, 720f, false)), 325f, _wgslsmith_f_op_f32(f32(-1f) * -728f)), -abs(-25037i), vec3<bool>(true, true, true), -819f)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1332f, -511f, -625f))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(50406i, -1i, 2147483647i), vec3<i32>(4877i, -2147483647i, 61544i), vec3<bool>(true, true, false)), vec3<i32>(-1i, -16980i, -2147483647i)), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-36366i, -2147483647i, -1i)), vec3<i32>(-7252i, -58727i, 0i))), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1109f, -229f))), _wgslsmith_f_op_f32(f32(-1f) * -818f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_1 {
    global0 = array<u32, 20>();
    var var_0 = -vec3<i32>(-arg_1.d.b, -(arg_1.d.b ^ -36754i), arg_1.d.b);
    global0 = array<u32, 20>();
    let var_1 = func_2(0u);
    global1 = all(arg_1.d.c);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.xzw), var_0.x << (~u_input.a % 32u), arg_1.c.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(u_input.a).d.d + _wgslsmith_f_op_f32(var_1.a + arg_0.x))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = ~(~(select(vec3<u32>(global0[_wgslsmith_index_u32(1u, 20u)], 4294967295u, arg_1.x) << (vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], arg_1.x, arg_1.x) % vec3<u32>(32u)), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], global0[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(false, arg_0.e.c.x, true)) >> (abs(~arg_1) % vec3<u32>(32u))));
    global0 = array<u32, 20>();
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_0.a.a.x))));
    var var_3 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1748f, 1203f)), -380f, -1625f), arg_0.d.b, vec3<bool>(!(!var_1), any(func_4(vec4<f32>(arg_0.b.a.x, -873f, -396f, 1000f), Struct_3(1212f, vec2<bool>(true, true), arg_0, Struct_1(arg_0.a.a, arg_0.a.b, vec3<bool>(arg_0.b.c.x, false, var_1), arg_0.c.x))).c), var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.d + func_2(global0[_wgslsmith_index_u32(1u, 20u)]).d.d) - -982f)), arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.a)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1681f, 1459f, -737f, -2114f), vec4<f32>(arg_0.e.a.x, arg_0.d.a.x, 1083f, 314f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.d, 484f, 776f, arg_0.e.d), vec4<f32>(arg_0.d.d, -721f, -1834f, arg_0.a.a.x))))), func_2(~4294967295u)), func_2(_wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 20u)], 1u, 21232u))), vec4<u32>(var_0.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)] | 4294967295u, select(arg_1.x, var_0.x, false)))).c.e);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1443f, -239f, true)) * func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1020f, 819f, 1441f, var_3.b.a.x) * vec4<f32>(arg_0.b.a.x, -532f, arg_0.b.a.x, arg_0.a.d)), Struct_3(var_3.d.d, var_3.d.c.yz, arg_0, arg_0.b)).a.x)), arg_2.xx, Struct_2(func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 20u)], 16286u) | vec3<u32>(58161u, var_0.x, 30127u), arg_1)).c.a, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2630f, arg_0.c.x, arg_0.e.d))), 2147483647i, arg_2.zxw, arg_0.d.a.x), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3.d.d)), arg_0.b.d), 724f, var_3.c.x), var_3.a, Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.d.d, -182f, 1890f), arg_0.e.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1387f, 710f, var_3.d.d) * vec3<f32>(2179f, arg_0.e.d, -280f)))), var_3.e.b, var_3.a.c, _wgslsmith_f_op_f32(var_3.d.a.x - -911f))), Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.d.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.d.a - vec3<f32>(var_3.a.d, arg_0.e.a.x, 1288f)) - arg_0.c)), 61085i, arg_0.d.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e.a.x * arg_0.e.a.x) + arg_0.d.a.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(516f * 954f), -580f)))));
}

fn func_6(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_2.c.d.b < -(~(arg_3.d.b & ~2147483647i));
    var var_1 = _wgslsmith_div_i32(26056i, arg_3.a.b) >> (~20398u % 32u);
    var_1 = ~countOneBits(countOneBits(select(arg_2.d.b | arg_2.c.d.b, -arg_3.b.b, func_5(Struct_2(arg_3.b, Struct_1(vec3<f32>(arg_1, arg_0.x, 570f), arg_2.c.e.b, vec3<bool>(arg_3.b.c.x, true, false), -1535f), vec3<f32>(arg_0.x, arg_1, arg_3.a.a.x), Struct_1(arg_3.a.a, arg_3.e.b, vec3<bool>(false, arg_3.b.c.x, arg_3.e.c.x), -575f), arg_2.c.d), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(11859u, 20u)], u_input.a), vec4<bool>(arg_3.b.c.x, true, arg_3.d.c.x, true)).b.x)));
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_3.d.b, i32(-1i) * -(-28626i ^ arg_3.d.b)), min(_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_3.b.b, arg_3.a.b, 0i), firstTrailingBit(select(vec3<i32>(arg_2.c.d.b, arg_3.b.b, 14986i), vec3<i32>(arg_3.a.b, arg_2.c.a.b, arg_2.d.b), arg_2.b.x))), vec3<i32>(arg_2.d.b, i32(-1i) * -arg_2.c.d.b, -32085i)));
    let var_3 = false;
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -912f) + arg_1), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(floor(arg_3.e.a.x)))), 582f, 575f), Struct_3(_wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(arg_2.d.d * arg_1)), func_2(global0[_wgslsmith_index_u32(~(~u_input.a), 20u)]).d.c.yz, func_2(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)] << (u_input.a % 32u))).c, arg_2.d));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: u32, arg_3: vec4<f32>) -> bool {
    let var_0 = arg_3.x;
    global0 = array<u32, 20>();
    let var_1 = false;
    let var_2 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, arg_3.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -815f), func_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, -145f, var_0)), arg_1, !arg_0.yyy, -225f), func_4(_wgslsmith_f_op_vec4_f32(arg_3 * arg_3), func_2(arg_2)), arg_3.ywx, func_4(_wgslsmith_f_op_vec4_f32(arg_3 * arg_3), Struct_3(-208f, vec2<bool>(var_1, false), Struct_2(Struct_1(arg_3.yxz, -30764i, arg_0.zyz, arg_3.x), Struct_1(vec3<f32>(-482f, var_0, 1393f), 2147483647i, arg_0.xyz, arg_3.x), vec3<f32>(var_0, var_0, arg_3.x), Struct_1(vec3<f32>(var_0, -1015f, 877f), arg_1, vec3<bool>(arg_0.x, arg_0.x, false), -1000f), Struct_1(vec3<f32>(471f, var_0, 544f), arg_1, vec3<bool>(true, var_1, var_1), arg_3.x)), Struct_1(arg_3.zxy, 1i, arg_0.wzx, 1467f))), Struct_1(vec3<f32>(arg_3.x, arg_3.x, -437f), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, -1830i)), arg_0.yww, var_0)), vec3<u32>(~abs(42101u), global0[_wgslsmith_index_u32(~(27440u >> (u_input.a % 32u)), 20u)], ~u_input.a), select(!arg_0, !select(arg_0, vec4<bool>(arg_0.x, true, false, false), false), !(global0[_wgslsmith_index_u32(u_input.a, 20u)] != 0u))), func_2(arg_2).c);
    global0 = array<u32, 20>();
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -731i;
    global1 = any(!select(vec2<bool>(func_1(vec4<bool>(true, true, false, true), -2147483647i, 0u, vec4<f32>(279f, -1000f, 413f, -967f)), func_2(global0[_wgslsmith_index_u32(u_input.a, 20u)]).c.d.c.x), vec2<bool>(true, all(vec3<bool>(true, false, false))), true));
    global1 = func_3(func_2(~u_input.a).d, func_2(~(~(~global0[_wgslsmith_index_u32(u_input.a, 20u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1223f - 1000f) + -260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) * _wgslsmith_f_op_f32(144f - -240f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1516f * -398f), _wgslsmith_f_op_f32(-409f * -337f))), -488f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(637f, -1144f, 2217f, 815f) - vec4<f32>(-1093f, -300f, 1383f, 593f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2623f, 1643f, -1325f, -270f))))));
    let var_1 = func_2(85955u).c;
    var_0 = var_1.d.b;
    let var_2 = vec4<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, -287f, -1923f, -1514f) + vec4<f32>(255f, var_1.d.a.x, var_1.d.a.x, -1509f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.d, var_1.c.x, var_1.b.d, var_1.c.x) + vec4<f32>(-893f, var_1.c.x, var_1.e.d, var_1.b.d))), func_5(Struct_2(var_1.e, Struct_1(vec3<f32>(-547f, 454f, var_1.b.a.x), var_1.b.b, var_1.d.c, var_1.c.x), vec3<f32>(-230f, -204f, var_1.b.a.x), Struct_1(var_1.a.a, 0i, var_1.e.c, var_1.d.d), Struct_1(var_1.e.a, -53404i, vec3<bool>(false, var_1.e.c.x, false), var_1.d.d)), abs(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(49129u, 20u)], 28957u)), !vec4<bool>(var_1.b.c.x, var_1.a.c.x, var_1.b.c.x, true))).d * _wgslsmith_div_f32(254f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1102f, var_1.d.d) + _wgslsmith_f_op_f32(var_1.d.a.x + -2400f)))), -258f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.a.x, var_1.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -618f)));
    var var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - var_1.c.x), _wgslsmith_f_op_f32(var_1.b.a.x + func_5(func_5(Struct_2(Struct_1(vec3<f32>(var_2.x, 107f, -396f), var_1.d.b, var_1.a.c, var_1.b.a.x), Struct_1(var_2.zxw, var_1.e.b, vec3<bool>(true, true, var_1.b.c.x), -1000f), var_2.wyx, var_1.b, Struct_1(var_1.b.a, 22642i, var_1.e.c, var_2.x)), vec3<u32>(global0[_wgslsmith_index_u32(13045u, 20u)], global0[_wgslsmith_index_u32(31544u, 20u)], 17099u), vec4<bool>(var_1.b.c.x, var_1.e.c.x, var_1.a.c.x, var_1.e.c.x)).c, abs(vec3<u32>(21081u, 0u, 4294967295u)), vec4<bool>(var_1.e.c.x, false, false, var_1.e.c.x)).d.d)), vec2<bool>(!((var_1.a.c.x | false) & (var_1.b.c.x | var_1.b.c.x)), true), var_1, func_2(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(45779u, global0[_wgslsmith_index_u32(0u, 20u)], 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)]), vec3<u32>(u_input.a, u_input.a, u_input.a))), 20u)])).c.e);
    var var_4 = i32(-1i) * -_wgslsmith_mod_i32(reverseBits(var_3.c.d.b) & _wgslsmith_mod_i32(var_3.c.a.b, 28782i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d.b, var_1.d.b, var_3.d.b), max(vec3<i32>(var_1.d.b, var_1.e.b, -7713i), vec3<i32>(var_3.c.d.b, var_3.c.b.b, var_3.d.b))));
    global1 = any(vec2<bool>(var_1.b.c.x, var_1.e.b <= var_1.e.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.d);
}

