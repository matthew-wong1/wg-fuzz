struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 3117u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(i32(-1i) * -2147483647i, vec3<i32>(min(29236i, -22765i), _wgslsmith_add_i32(i32(-1i) * -34987i, 572i), -1i) << (vec3<u32>(~(~1u), firstTrailingBit(0u), ~_wgslsmith_clamp_u32(104487u, u_input.b, 98942u)) % vec3<u32>(32u)));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-132f * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 1302f) - 2676f), -1550f, 218f), Struct_1(_wgslsmith_clamp_i32(4454i, -6210i, var_0.a), vec3<i32>(reverseBits(~0i), 53840i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.b.x, var_0.a, var_0.b.x), vec4<i32>(10059i, 59222i, 77304i, var_0.b.x)))), Struct_1(_wgslsmith_dot_vec2_i32(~abs(var_0.b.xy), vec2<i32>(13147i >> (1u % 32u), var_0.a >> (1u % 32u))), firstTrailingBit(_wgslsmith_div_vec3_i32(var_0.b, _wgslsmith_mod_vec3_i32(var_0.b, var_0.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2554f, 1000f, -680f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(515f, 332f, 942f, -1497f))))));
    let var_2 = select(vec2<bool>(u_input.b > (_wgslsmith_sub_u32(u_input.b, u_input.a) ^ u_input.b), !any(vec3<bool>(true, true, true))), vec2<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    global0 = 0u;
    let var_3 = _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.b.a, firstTrailingBit(var_0.b.x)), vec2<i32>(93201i >> (u_input.b % 32u), 12548i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(-993f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1114f, -884f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1415f, -1290f)))))));
    global0 = 1u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u | u_input.b, 4294967295u, ~u_input.a), vec3<u32>(~countOneBits(u_input.a), ~(~u_input.a), u_input.b)) % 32u);
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1522f, -1482f), vec2<f32>(var_0.x, var_0.x), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-705f, var_0.x))), all(vec4<bool>(true, true, true, true)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(862f, var_0.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(164f, var_0.x) - vec2<f32>(var_0.x, 337f)) - vec2<f32>(622f, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -657f), vec2<f32>(-194f, 1000f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1395f, -1267f), vec2<f32>(-258f, -276f), vec2<bool>(false, true)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1000f) * vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x))))))), vec2<bool>((1i << (0u % 32u)) <= _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 3652i), vec2<i32>(1i, 1i)), true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, _wgslsmith_f_op_f32(select(1991f, var_0.x, false)), _wgslsmith_f_op_f32(708f + var_0.x))))));
    global0 = u_input.a;
    return Struct_1(-(firstLeadingBit(-1i) >> (_wgslsmith_clamp_u32(firstLeadingBit(u_input.a), u_input.b | u_input.a, ~4294967295u) % 32u)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, 2147483647i), i32(-1i) * -1i) | select(~0i, 1i, true), _wgslsmith_add_i32(firstTrailingBit(i32(-1i) * -1i), _wgslsmith_div_i32(31516i, 1i)), reverseBits(~1i ^ select(-1i, 1i, true))));
}

fn func_1() -> Struct_1 {
    global0 = (((_wgslsmith_add_u32(u_input.b, 6156u) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.b, 45486u), vec4<u32>(24905u, 2060u, u_input.b, 4294967295u))) ^ 49026u) << (6977u % 32u)) << (9872u % 32u);
    var var_0 = Struct_2(vec4<f32>(-101f, -194f, 447f, -102f), func_2(), func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 306f, 1367f, -953f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-276f, -857f, -136f, -635f) * vec4<f32>(1000f, 1360f, -614f, 302f))))));
    var var_1 = 7445u;
    var var_2 = Struct_1(var_0.b.b.x, _wgslsmith_div_vec3_i32(-(min(vec3<i32>(var_0.c.b.x, 27077i, var_0.c.b.x), var_0.c.b) & -vec3<i32>(var_0.b.b.x, var_0.b.b.x, var_0.b.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(var_0.b.a, -60397i, -15974i), var_0.c.b), var_0.c.b), var_0.c.b, var_0.c.b)));
    var var_3 = var_0.c;
    return var_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> vec3<bool> {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = ~(arg_2.x << (firstLeadingBit(~52552u) % 32u));
    var var_2 = true;
    var_2 = true;
    return select(vec3<bool>(true, ((u_input.a << (u_input.b % 32u)) | ~27167u) <= arg_2.x, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))), vec3<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, true), arg_2.x == arg_2.x)), true, _wgslsmith_div_u32(~u_input.b, arg_2.x | 107002u) >= firstTrailingBit(~arg_2.x)), vec3<bool>(4294967295u < arg_2.x, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.b >> (0u % 32u));
    var var_1 = func_4(func_1(), Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(306f, -1217f, -485f, 1f))), func_1(), Struct_1(2147483647i, ~func_2().b), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-938f - 659f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2064f + 122f) - _wgslsmith_f_op_f32(max(2045f, 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1282f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-252f, -738f)), _wgslsmith_f_op_f32(round(1458f)))))), ~(~((vec4<u32>(u_input.b, 0u, u_input.b, var_0) | vec4<u32>(u_input.a, 84762u, u_input.b, 0u)) >> (countOneBits(vec4<u32>(4294967295u, 0u, 1u, var_0)) % vec4<u32>(32u)))), -_wgslsmith_add_i32(reverseBits(abs(-1i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 54108i), vec3<i32>(-21132i, 5628i, -1i))));
    var var_2 = func_2();
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, -1628f, _wgslsmith_div_f32(-3326f, _wgslsmith_f_op_f32(trunc(-672f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1227f, -1067f))))), func_1(), Struct_1(_wgslsmith_mult_i32(max(0i, var_2.a), 2147483647i), var_2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(556f, -100f, -581f, -1675f) * vec4<f32>(1000f, -1000f, -1350f, -1354f)))))));
    let var_4 = func_2();
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(366f, var_3.d.x, _wgslsmith_f_op_f32(floor(-1232f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.d.x, var_3.d.x) + _wgslsmith_f_op_f32(-2109f + var_3.d.x))))));
    let var_6 = vec2<bool>(true, false);
    let var_7 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_5.x, var_5.x, var_5.x)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_5.x)))), var_5.x, var_3.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_3.a.x))))))), Struct_1(-2147483647i, firstTrailingBit(vec3<i32>(~1i, 28749i, func_1().b.x))), func_2(), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_5.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.d.x, 1000f, var_1.x)) - _wgslsmith_f_op_f32(-766f - -1000f)), var_3.d.x))));
    global0 = _wgslsmith_mult_u32(~(~abs(37254u) | _wgslsmith_div_u32(var_0, u_input.b)), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_7.a.x + _wgslsmith_f_op_f32(var_5.x * _wgslsmith_f_op_f32(-var_3.d.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.d.x)) * var_7.d.x))), -1000f, _wgslsmith_f_op_f32(min(831f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_7.a.x * 489f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(735f)))))), vec4<f32>(var_5.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f), -689f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_7.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_5.x, var_1.x)))), var_3.d.x), firstLeadingBit(~firstLeadingBit(min(vec4<u32>(u_input.b, var_0, 4294967295u, 105u), vec4<u32>(17818u, 24258u, var_0, var_0)))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.a, var_0), u_input.b & 1u, 0u)), min(~vec3<u32>(var_0, 0u, 0u), ~vec3<u32>(4294967295u, 55107u, var_0))));
}

