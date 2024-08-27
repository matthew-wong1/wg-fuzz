struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: f32 = 211f;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<u32>(0u, 25733u), vec2<i32>(7439i, 0i), -1179f, vec3<i32>(-3395i, 60353i, -1899i)), Struct_1(vec2<u32>(49276u, 1u), vec2<i32>(1i, -3014i), 2637f, vec3<i32>(2147483647i, 18123i, 15538i)), Struct_1(vec2<u32>(103976u, 60926u), vec2<i32>(-48836i, 2147483647i), -1000f, vec3<i32>(-9912i, i32(-2147483648), 0i)), Struct_1(vec2<u32>(1u, 56088u), vec2<i32>(2147483647i, -1i), 448f, vec3<i32>(47413i, -42001i, -1i)), Struct_1(vec2<u32>(4294967295u, 0u), vec2<i32>(22634i, i32(-2147483648)), 1640f, vec3<i32>(6520i, -31600i, 0i)), Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(60840i, 0i), 1017f, vec3<i32>(-7170i, -44199i, -28645i)), Struct_1(vec2<u32>(0u, 4294967295u), vec2<i32>(1i, -1i), 545f, vec3<i32>(-46020i, 58699i, i32(-2147483648))), Struct_1(vec2<u32>(155275u, 0u), vec2<i32>(-373i, 28121i), 2559f, vec3<i32>(-17610i, 2147483647i, 73862i)), Struct_1(vec2<u32>(21285u, 0u), vec2<i32>(1i, 1i), -559f, vec3<i32>(1i, i32(-2147483648), 2147483647i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<i32>(1i, -53025i), 1168f, vec3<i32>(-35121i, -1i, i32(-2147483648))), Struct_1(vec2<u32>(17090u, 0u), vec2<i32>(i32(-2147483648), 14035i), 140f, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))), Struct_1(vec2<u32>(85857u, 3137u), vec2<i32>(i32(-2147483648), -35194i), 764f, vec3<i32>(0i, -1i, -1i)), Struct_1(vec2<u32>(20638u, 0u), vec2<i32>(-1439i, -6003i), -1928f, vec3<i32>(i32(-2147483648), 6148i, -14615i)), Struct_1(vec2<u32>(4294967295u, 426u), vec2<i32>(-18457i, 1i), 234f, vec3<i32>(3691i, 1i, i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 46938u), vec2<i32>(2147483647i, i32(-2147483648)), -501f, vec3<i32>(1i, -27374i, -17719i)), Struct_1(vec2<u32>(0u, 25173u), vec2<i32>(1i, -1i), 1000f, vec3<i32>(-19768i, 58932i, -54518i)), Struct_1(vec2<u32>(29805u, 51637u), vec2<i32>(20707i, 0i), -111f, vec3<i32>(i32(-2147483648), -19057i, 1i)), Struct_1(vec2<u32>(75996u, 1u), vec2<i32>(-58855i, 0i), -218f, vec3<i32>(i32(-2147483648), i32(-2147483648), 1i)), Struct_1(vec2<u32>(1u, 1u), vec2<i32>(14347i, 14698i), 981f, vec3<i32>(-8045i, -8015i, -22125i)), Struct_1(vec2<u32>(1u, 35836u), vec2<i32>(11689i, -27302i), 1546f, vec3<i32>(5495i, -46235i, 6482i)), Struct_1(vec2<u32>(9128u, 4294967295u), vec2<i32>(10748i, 17272i), -2492f, vec3<i32>(-1i, -10330i, 30864i)), Struct_1(vec2<u32>(0u, 1845u), vec2<i32>(-1671i, -74508i), -1873f, vec3<i32>(53939i, -15262i, 2147483647i)), Struct_1(vec2<u32>(4294967295u, 26743u), vec2<i32>(13685i, 2147483647i), -1455f, vec3<i32>(-17415i, -1i, -1i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1827f, 1000f) + vec3<f32>(-1113f, -2543f, 393f))))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -286f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-527f, 1711f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1286f, -164f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-852f, 2092f)))))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1000f)) + var_0.x), _wgslsmith_f_op_f32(-var_0.x), true)), -985f);
    let var_1 = Struct_1(~max(vec2<u32>(u_input.b.x, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.c.x, 77727u))), _wgslsmith_sub_vec2_i32(u_input.d.xx, select(vec2<i32>(abs(0i), u_input.d.x), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), vec2<i32>(-1i, 17555i)), vec2<bool>(true, true))), 665f, u_input.d.wxw | firstLeadingBit(firstTrailingBit(~vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))));
    let var_2 = ~(u_input.d.x >> (_wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, 34951u, 79175u, var_1.a.x) << (vec4<u32>(var_1.a.x, var_1.a.x, u_input.a, u_input.a) % vec4<u32>(32u))), max(vec4<u32>(var_1.a.x, u_input.b.x, u_input.c.x, u_input.a) | vec4<u32>(var_1.a.x, var_1.a.x, 25053u, u_input.a), ~vec4<u32>(var_1.a.x, 0u, 4294967295u, 54259u))) % 32u));
    global1 = -1495f;
    return _wgslsmith_add_u32(_wgslsmith_add_u32(abs(0u), ~_wgslsmith_clamp_u32(6130u, u_input.b.x, firstTrailingBit(0u))), max(var_1.a.x, u_input.b.x));
}

fn func_4(arg_0: bool) -> f32 {
    var var_0 = select(!vec3<bool>(u_input.d.x <= 2147483647i, false, any(vec2<bool>(true, true))), !(!select(vec3<bool>(arg_0, true, arg_0), !vec3<bool>(arg_0, false, arg_0), all(vec4<bool>(arg_0, arg_0, false, true)))), 19591u >= firstTrailingBit(~u_input.b.x));
    let var_1 = !arg_0;
    let var_2 = Struct_1(u_input.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(33277i, -u_input.d.x | -u_input.d.x), vec2<i32>(_wgslsmith_mod_i32(countOneBits(-1i), _wgslsmith_add_i32(u_input.d.x, u_input.d.x)), u_input.d.x), _wgslsmith_mult_vec2_i32(countOneBits(reverseBits(vec2<i32>(u_input.d.x, u_input.d.x))), vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(u_input.d.x, 23836i)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2546f)))), ~_wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -1i), vec3<i32>(0i, 67668i, 0i)), countOneBits(u_input.d.zxz)));
    let var_3 = _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(var_2.d.x >> (4294967295u % 32u), var_2.d.x, -2147483647i)), u_input.d.yxw) & _wgslsmith_clamp_vec3_i32(~u_input.d.xyy, ~u_input.d.xyy, _wgslsmith_add_vec3_i32(~vec3<i32>(var_2.d.x, u_input.d.x, u_input.d.x), var_2.d));
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_2.a.x, u_input.a), 23u)];
    return _wgslsmith_f_op_f32(exp2(var_2.c));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    global0 = array<Struct_1, 12>();
    global2 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_f32(func_4(!(func_3() == u_input.c.x)));
    var_0 = Struct_1(vec2<u32>(_wgslsmith_div_u32(arg_0.a.x, 4294967295u), _wgslsmith_add_u32(1u >> (func_3() % 32u), ~(~45349u))), vec2<i32>(-14173i, ~u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1545f), var_0.c) + arg_0.c) - _wgslsmith_f_op_f32(-var_0.c)), ~(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d.x, u_input.d.x, u_input.d.x) ^ vec3<i32>(arg_0.b.x, var_0.b.x, arg_0.b.x), vec3<i32>(var_0.d.x, -52242i, 0i)) | (abs(vec3<i32>(u_input.d.x, -49519i, arg_0.b.x)) << (vec3<u32>(arg_0.a.x, u_input.b.x, var_0.a.x) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.c)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32) -> bool {
    global0 = array<Struct_1, 12>();
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(false)), arg_1));
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_div_i32(min(select(-1i, firstLeadingBit(u_input.d.x), 1u != u_input.c.x), firstLeadingBit(firstLeadingBit(arg_0.x))) | 0i, 1i);
    return any(select(select(vec3<bool>(any(vec2<bool>(true, true)), u_input.d.x < u_input.d.x, any(vec3<bool>(false, true, false))), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), vec3<bool>(any(vec2<bool>(false, false)), true, true)), !vec3<bool>(all(vec3<bool>(false, true, true)), true, all(vec4<bool>(true, true, false, true))), select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), true), vec3<bool>(true, select(true, false, true), any(vec2<bool>(false, true))), false)));
}

fn func_6(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = vec2<i32>(-24505i, _wgslsmith_mod_i32(0i, -(u_input.d.x & -1i) | (u_input.d.x >> (_wgslsmith_add_u32(u_input.c.x, 6805u) % 32u))));
    var_0 = u_input.d.yy;
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(min(vec2<u32>(31870u, u_input.a), u_input.b), vec2<u32>(1u, 0u)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(56625u, u_input.a)), firstTrailingBit(u_input.c)), max(firstTrailingBit(u_input.c), u_input.b)), u_input.c), ~(~(~vec2<u32>(u_input.a, 42543u)) << (~vec2<u32>(u_input.c.x, 0u) % vec2<u32>(32u))));
    var var_2 = -654f;
    var var_3 = _wgslsmith_mult_vec3_i32(~(~firstTrailingBit(u_input.d.zwx)), firstTrailingBit(u_input.d.xwz) | reverseBits(_wgslsmith_mult_vec3_i32(~u_input.d.wyz, ~u_input.d.wxz)));
    return Struct_1(vec2<u32>(_wgslsmith_clamp_u32(var_1.x, select(u_input.a, 0u, any(vec4<bool>(arg_0, arg_0, true, true))), 7913u), abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_1.x, u_input.b.x), vec3<u32>(1u, 23526u, 10474u)), u_input.b.x, u_input.c.x))), vec2<i32>(-(i32(-1i) * -2147483647i), i32(-1i) * -56911i) ^ vec2<i32>(-26545i, -var_3.x | _wgslsmith_div_i32(19548i, -2147483647i)), -1480f, _wgslsmith_mod_vec3_i32(u_input.d.xwz, min(-u_input.d.wyy, ~u_input.d.zwx << (vec3<u32>(var_1.x, u_input.a, u_input.c.x) % vec3<u32>(32u)))));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 12>();
    let var_0 = abs(u_input.a);
    return func_6(func_5(u_input.d.zy, _wgslsmith_div_f32(1621f, _wgslsmith_f_op_f32(func_2(Struct_1(u_input.c, u_input.d.xz, 151f, vec3<i32>(u_input.d.x, u_input.d.x, -2099i)))))), vec4<bool>(func_5(u_input.d.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(false)))), true, true, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(600f, -880f, false)) + _wgslsmith_f_op_f32(sign(1162f))))), -177f, func_5(u_input.d.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f * -154f))))));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<u32> {
    var var_0 = vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_6(false, vec4<bool>(false, true, arg_1.x, false), arg_0.c).c) + arg_0.c), arg_0.c);
    global2 = array<Struct_1, 23>();
    let var_1 = select(vec3<u32>(func_1().a.x, _wgslsmith_mod_u32(abs(u_input.c.x), _wgslsmith_mult_u32(u_input.a, arg_0.a.x)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(100047u, 4294967295u, 25450u), u_input.c.x << (arg_0.a.x % 32u))), ~(~countOneBits(vec3<u32>(arg_0.a.x, arg_0.a.x, 46547u))), vec3<bool>(true, false, true)) & ~(~vec3<u32>(4951u, arg_0.a.x, arg_0.a.x) << (firstTrailingBit(~vec3<u32>(u_input.b.x, 21944u, 48992u)) % vec3<u32>(32u)));
    global0 = array<Struct_1, 12>();
    let var_2 = true;
    return ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(arg_0.a.x), u_input.b.x & arg_0.a.x, firstLeadingBit(var_1.x), arg_0.a.x), select(vec4<u32>(1u, u_input.c.x, var_1.x, 1u), vec4<u32>(4294967295u, arg_0.a.x, 42356u, 13785u), vec4<bool>(true, var_2, false, false)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, 11584u, 4294967295u), vec4<u32>(17044u, var_1.x, u_input.b.x, u_input.a))), 13456u, ~func_6(false, select(vec4<bool>(false, arg_1.x, var_2, false), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), true), _wgslsmith_div_f32(arg_0.c, arg_0.c)).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 23>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = -1290f;
    var var_0 = _wgslsmith_mod_vec3_u32(~func_7(func_1(), vec3<bool>(true, true, true)), ~(~reverseBits(select(vec3<u32>(u_input.c.x, 0u, 17216u), vec3<u32>(u_input.a, u_input.c.x, u_input.b.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(firstLeadingBit(u_input.d.yxz))), 12955i, abs(vec2<u32>(var_0.x, reverseBits(_wgslsmith_clamp_u32(u_input.b.x, var_0.x, 0u)))), ~(vec3<u32>(4294967295u, _wgslsmith_div_u32(0u, 4294967295u), ~var_0.x) ^ select(select(vec3<u32>(1u, 0u, var_0.x), vec3<u32>(14072u, var_0.x, u_input.b.x), vec3<bool>(true, false, true)), select(vec3<u32>(var_0.x, 87384u, 39519u), vec3<u32>(u_input.a, var_0.x, u_input.c.x), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))));
}

