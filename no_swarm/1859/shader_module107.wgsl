struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 66967u, 4294967295u, 0u);

var<private> global1: f32;

var<private> global2: f32 = 1680f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    global0 = ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 79175u, 0u, 0u), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, u_input.d), vec4<u32>(34215u, 85449u, 89110u, u_input.a.x)), ~vec4<u32>(global0.x, 41880u, 4294967295u, global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(48060u, global0.x, global0.x, 0u), vec4<u32>(global0.x, global0.x, 43603u, 5511u)))));
    global1 = _wgslsmith_f_op_f32(sign(arg_2.c.x));
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(354f, _wgslsmith_f_op_f32(arg_0.a * arg_0.c.x))))), !(arg_0.d.x < arg_2.c.x), arg_1.c.xy, vec4<f32>(_wgslsmith_f_op_f32(-987f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(-302f + arg_1.c.x)))), 715f, _wgslsmith_f_op_f32(883f + -415f), -1000f), ~(~arg_0.e));
    var var_1 = select(arg_3.b.c, !(!vec4<bool>(true, false, all(arg_3.b.c), true)), 2147483647i != -arg_1.b);
    let var_2 = vec3<f32>(-1983f, -280f, _wgslsmith_f_op_f32(arg_0.c.x - -2230f));
    return (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(64631u, global0.x, 42127u, 10701u), _wgslsmith_mod_vec4_u32(vec4<u32>(29958u, 1u, u_input.b, u_input.c.x), vec4<u32>(u_input.c.x, u_input.a.x, global0.x, 25689u))), u_input.b) >> (u_input.c.x % 32u)) > _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.a.x, u_input.d), _wgslsmith_mult_u32(~(~1u), 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(select(u_input.c.x, u_input.d, false), abs(u_input.b)), u_input.c));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = select(select(select(vec4<bool>(true, any(vec2<bool>(false, true)), any(vec2<bool>(true, true)), select(false, false, true)), vec4<bool>(true, true, func_3(Struct_5(-235f, true, vec2<f32>(-182f, -697f), vec4<f32>(999f, -676f, -1819f, -327f), 2147483647i), Struct_4(Struct_1(0i), -62226i, vec4<f32>(187f, -437f, 277f, -1714f)), Struct_4(Struct_1(arg_0), -7180i, vec4<f32>(-910f, -1305f, 327f, -836f)), Struct_3(vec3<bool>(true, true, true), Struct_2(Struct_1(2147483647i), vec2<bool>(false, true), vec4<bool>(true, true, true, true), false, vec4<bool>(false, false, false, false)), 2147483647i)), false), func_3(Struct_5(1677f, false, vec2<f32>(797f, -147f), vec4<f32>(799f, 1226f, 152f, -2147f), arg_0), Struct_4(Struct_1(arg_0), 28666i, vec4<f32>(208f, 621f, 1000f, -2111f)), Struct_4(Struct_1(arg_0), 0i, vec4<f32>(-992f, -198f, -396f, -255f)), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(arg_0), vec2<bool>(false, false), vec4<bool>(true, true, false, false), false, vec4<bool>(true, true, false, false)), 10719i))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(4294967295u == arg_1.x, false, true, true), vec4<bool>(true, true, true, true))), !(!vec4<bool>(false, true, all(vec4<bool>(false, true, true, true)), arg_0 < arg_0)), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(true, true)) && true, -arg_0 < ~32078i, true, !any(vec3<bool>(false, false, true))), vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false)), true, true, false)));
    let var_1 = Struct_1(arg_0);
    let var_2 = 1u >= u_input.a.x;
    global1 = 865f;
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-821f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-941f, _wgslsmith_f_op_f32(sign(1514f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-492f, 1180f, false)), _wgslsmith_div_f32(-659f, 2222f)))))));
    return Struct_2(var_1, !vec2<bool>(true, !any(var_0)), select(!vec4<bool>(!var_0.x, any(vec3<bool>(var_2, true, false)), true, true), select(select(!var_0, select(vec4<bool>(false, true, var_0.x, false), var_0, false), false), select(var_0, vec4<bool>(var_2, var_0.x, false, var_0.x), select(vec4<bool>(false, var_0.x, var_2, var_0.x), vec4<bool>(true, true, var_2, var_0.x), var_0)), vec4<bool>(var_2, var_2, false, !var_2)), var_2), true || var_0.x, vec4<bool>(true, !(!var_0.x & func_3(Struct_5(247f, true, vec2<f32>(573f, -1559f), vec4<f32>(114f, -712f, 639f, 656f), arg_0), Struct_4(var_1, -2147483647i, vec4<f32>(1000f, -330f, -1243f, -243f)), Struct_4(Struct_1(48803i), 0i, vec4<f32>(1201f, -675f, -387f, -1390f)), Struct_3(var_0.www, Struct_2(var_1, var_0.yy, var_0, true, vec4<bool>(false, true, var_2, var_2)), var_1.a))), all(var_0.xw), var_1.a < _wgslsmith_sub_i32(i32(-1i) * -43963i, abs(1i))));
}

fn func_4(arg_0: Struct_2) -> f32 {
    global2 = _wgslsmith_f_op_f32(-864f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2504f - 685f), 362f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1695f, 371f)), false)))));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1116f, -221f)))))));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -288f)));
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_mult_vec2_u32(~u_input.a.xz, global0.zy);
    return _wgslsmith_f_op_f32(f32(-1f) * -183f);
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: vec2<i32>) -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(func_2(-arg_1.e << (1u % 32u), ~vec2<u32>(7131u, 83752u))))));
    var var_2 = -(~abs((vec4<i32>(arg_2.x, 0i, -14250i, arg_2.x) ^ vec4<i32>(26213i, arg_1.e, -18602i, arg_2.x)) ^ -vec4<i32>(arg_2.x, -1i, arg_2.x, arg_2.x)));
    global1 = _wgslsmith_f_op_f32(sign(arg_0));
    return _wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(func_4(func_2(firstTrailingBit(reverseBits(var_2.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 1u), global0.yx, vec2<u32>(18319u, 11782u)) ^ global0.wz)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(415f, Struct_5(-1375f, false, vec2<f32>(-338f, 429f), vec4<f32>(-958f, -1907f, -1000f, -648f), -1i), vec2<i32>(-2912i, -6346i))), -199f, 572f) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -582f, -1814f)))))) - vec3<f32>(-544f, -1161f, _wgslsmith_f_op_f32(f32(-1f) * -1349f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1280f, _wgslsmith_f_op_f32(min(2628f, -269f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-526f * -134f) + _wgslsmith_f_op_f32(-942f * 1813f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(-837f, Struct_5(-819f, false, vec2<f32>(799f, 1240f), vec4<f32>(1853f, 1217f, -560f, 1256f), 2147483647i), vec2<i32>(-16764i, -26215i))), _wgslsmith_f_op_f32(round(-283f)), _wgslsmith_f_op_f32(select(588f, 1479f, true))))));
    var var_1 = -vec4<i32>(~_wgslsmith_add_i32(~1i, -42916i), _wgslsmith_add_i32(-43068i, _wgslsmith_mod_i32(firstTrailingBit(38791i), 40800i)), i32(-1i) * -24069i, 1i);
    var_1 = ~vec4<i32>(_wgslsmith_mult_i32(-(0i | var_1.x), var_1.x), var_1.x, ~(-(var_1.x >> (36772u % 32u))), ~abs(select(-2147483647i, 1i, false)));
    let var_2 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1790f)), _wgslsmith_f_op_f32(var_0.x - -297f)), any(vec3<bool>(true, !any(vec3<bool>(false, true, false)), all(vec2<bool>(false, false)) || func_2(-2147483647i, global0.wx).c.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(-175f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(447f, -582f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(1326f - 313f), 541f, -1956f)))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(var_2.d.wz, var_0.xy)), -(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, -2147483647i, -4572i, 1i), firstLeadingBit(vec4<i32>(var_1.x, 0i, var_1.x, -2147483647i))) | -_wgslsmith_dot_vec3_i32(var_1.xxx, var_1.xyx)), var_2.d, var_0.x, var_2.e);
}

