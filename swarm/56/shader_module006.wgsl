struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_2, 29>;

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(356f, Struct_1(vec4<i32>(-25088i, i32(-2147483648), 0i, 25601i), vec2<i32>(-46486i, 2147483647i), vec3<bool>(false, true, true), vec4<bool>(false, true, true, false))), Struct_2(1000f, Struct_1(vec4<i32>(0i, i32(-2147483648), -1i, 1i), vec2<i32>(0i, 4225i), vec3<bool>(false, false, true), vec4<bool>(false, true, true, true))), Struct_2(-1000f, Struct_1(vec4<i32>(59431i, 44807i, 2147483647i, -13878i), vec2<i32>(23110i, 16707i), vec3<bool>(false, false, false), vec4<bool>(true, false, false, false))), Struct_2(-2516f, Struct_1(vec4<i32>(44868i, 1i, -1i, -1i), vec2<i32>(13949i, -19986i), vec3<bool>(false, true, false), vec4<bool>(false, false, false, true))), Struct_2(-1319f, Struct_1(vec4<i32>(-8616i, 1i, -32302i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(false, false, true), vec4<bool>(false, false, true, false))), Struct_2(-1901f, Struct_1(vec4<i32>(2147483647i, 2147483647i, -1i, -1i), vec2<i32>(2147483647i, 30825i), vec3<bool>(false, true, true), vec4<bool>(false, true, true, false))), Struct_2(724f, Struct_1(vec4<i32>(2147483647i, -8044i, i32(-2147483648), 950i), vec2<i32>(-1i, 1i), vec3<bool>(true, true, false), vec4<bool>(true, true, false, true))), Struct_2(-600f, Struct_1(vec4<i32>(-12382i, 6158i, -3103i, 23551i), vec2<i32>(18260i, -6857i), vec3<bool>(false, false, true), vec4<bool>(true, true, false, true))), Struct_2(427f, Struct_1(vec4<i32>(21916i, 46335i, 1i, -1i), vec2<i32>(-29021i, -1i), vec3<bool>(false, true, true), vec4<bool>(true, false, true, true))), Struct_2(-2225f, Struct_1(vec4<i32>(4551i, -4111i, 0i, -30612i), vec2<i32>(-5905i, -23495i), vec3<bool>(true, false, true), vec4<bool>(false, false, false, true))), Struct_2(-252f, Struct_1(vec4<i32>(12512i, 12921i, 2147483647i, 0i), vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, false, true), vec4<bool>(true, false, true, true))), Struct_2(-412f, Struct_1(vec4<i32>(1i, 42538i, 0i, i32(-2147483648)), vec2<i32>(0i, -1i), vec3<bool>(false, false, false), vec4<bool>(false, false, true, false))), Struct_2(-255f, Struct_1(vec4<i32>(6359i, 5323i, i32(-2147483648), 27652i), vec2<i32>(0i, 0i), vec3<bool>(false, true, true), vec4<bool>(true, false, true, false))), Struct_2(-513f, Struct_1(vec4<i32>(1i, i32(-2147483648), 2147483647i, 2147483647i), vec2<i32>(-70198i, 0i), vec3<bool>(false, false, false), vec4<bool>(true, false, false, true))), Struct_2(1516f, Struct_1(vec4<i32>(-51038i, i32(-2147483648), 44170i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec3<bool>(false, false, false), vec4<bool>(false, false, true, true))), Struct_2(-1000f, Struct_1(vec4<i32>(55690i, -8919i, -2320i, -11521i), vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, false, false), vec4<bool>(true, false, false, true))), Struct_2(330f, Struct_1(vec4<i32>(1176i, 2147483647i, -20409i, 17342i), vec2<i32>(0i, 0i), vec3<bool>(false, true, true), vec4<bool>(false, true, false, false))), Struct_2(-1323f, Struct_1(vec4<i32>(1i, 75769i, 0i, i32(-2147483648)), vec2<i32>(-28369i, 13591i), vec3<bool>(true, false, true), vec4<bool>(true, false, false, false))), Struct_2(1525f, Struct_1(vec4<i32>(i32(-2147483648), 35725i, -58049i, 75827i), vec2<i32>(-24124i, 3135i), vec3<bool>(false, true, false), vec4<bool>(false, false, true, false))), Struct_2(239f, Struct_1(vec4<i32>(-79i, -17987i, 0i, i32(-2147483648)), vec2<i32>(22125i, 2147483647i), vec3<bool>(true, false, false), vec4<bool>(false, false, true, false))), Struct_2(1249f, Struct_1(vec4<i32>(-1i, i32(-2147483648), 46451i, -79286i), vec2<i32>(0i, 476i), vec3<bool>(true, true, false), vec4<bool>(true, false, false, true))), Struct_2(159f, Struct_1(vec4<i32>(-1i, 1i, 2008i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec3<bool>(true, false, false), vec4<bool>(true, true, true, false))), Struct_2(906f, Struct_1(vec4<i32>(1i, -1i, 7566i, -33336i), vec2<i32>(-1i, i32(-2147483648)), vec3<bool>(true, true, false), vec4<bool>(false, true, true, false))), Struct_2(550f, Struct_1(vec4<i32>(4946i, 48150i, -12087i, 19074i), vec2<i32>(-11554i, 34951i), vec3<bool>(false, false, true), vec4<bool>(true, true, false, true))), Struct_2(740f, Struct_1(vec4<i32>(-1i, -6374i, 0i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec3<bool>(false, true, true), vec4<bool>(true, false, false, false))), Struct_2(-435f, Struct_1(vec4<i32>(-3893i, 2147483647i, i32(-2147483648), 2147483647i), vec2<i32>(-1i, -1i), vec3<bool>(true, false, true), vec4<bool>(false, true, false, false))), Struct_2(2911f, Struct_1(vec4<i32>(-38752i, -1i, -15757i, 0i), vec2<i32>(27980i, 15391i), vec3<bool>(true, false, false), vec4<bool>(true, true, false, true))), Struct_2(838f, Struct_1(vec4<i32>(22410i, 0i, -1i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec3<bool>(true, true, true), vec4<bool>(false, false, true, true))), Struct_2(-144f, Struct_1(vec4<i32>(-1i, -59556i, -8474i, i32(-2147483648)), vec2<i32>(-11230i, 0i), vec3<bool>(false, false, false), vec4<bool>(true, true, true, false))), Struct_2(1000f, Struct_1(vec4<i32>(-27863i, -1i, 0i, -41708i), vec2<i32>(21547i, i32(-2147483648)), vec3<bool>(true, true, true), vec4<bool>(true, true, false, false))), Struct_2(1632f, Struct_1(vec4<i32>(18512i, -12369i, -1i, -19741i), vec2<i32>(311i, i32(-2147483648)), vec3<bool>(false, true, false), vec4<bool>(true, true, true, true))), Struct_2(-1259f, Struct_1(vec4<i32>(0i, 15522i, -16798i, -3400i), vec2<i32>(-99867i, 32680i), vec3<bool>(true, true, false), vec4<bool>(false, true, false, true))));

var<private> global4: array<vec3<f32>, 1>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f - 1665f)), -115f, -1908f, _wgslsmith_f_op_f32(-global2.x))));
    var var_1 = Struct_1(reverseBits(arg_2.a), arg_2.a.ww, select(select(select(arg_2.d.zww, arg_2.c, true), arg_2.c, arg_2.c.x), arg_2.c, select(4294967295u < _wgslsmith_dot_vec2_u32(arg_0.xx, arg_0.xx), true, false)), select(vec4<bool>(true, !select(arg_2.d.x, true, false), true, arg_2.d.x), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x < 0u, !arg_2.c.x, !arg_2.c.x, var_0.x < global2.x), arg_2.c.x), false));
    let var_2 = !vec2<bool>(any(select(vec4<bool>(false, var_1.c.x, arg_2.d.x, var_1.d.x), arg_2.d, arg_2.d.x & arg_2.d.x)), any(!vec2<bool>(var_1.d.x, var_1.d.x)) && !var_1.d.x);
    global4 = array<vec3<f32>, 1>();
    let var_3 = ~(~(~firstTrailingBit(~arg_0.x)));
    return false;
}

fn func_2(arg_0: vec2<i32>) -> vec4<f32> {
    global3 = array<Struct_2, 32>();
    let var_0 = 1219f;
    global4 = array<vec3<f32>, 1>();
    var var_1 = Struct_3(!vec4<bool>(!(var_0 < global2.x), func_3(~vec3<u32>(0u, 0u, 22685u), arg_0.x, Struct_1(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -1i), u_input.a.xz, vec3<bool>(false, false, false), vec4<bool>(true, false, false, false))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), !all(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1903f, 1000f, var_0, var_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1717f, var_0)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, -929f, global2.x, global2.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-989f, var_0))))), vec2<u32>(1u, 1u));
    let var_2 = _wgslsmith_f_op_f32(abs(var_0));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0)), global2.x, _wgslsmith_f_op_f32(floor(var_2)), global2.x) + var_1.b)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0.d.wxz;
    global4 = array<vec3<f32>, 1>();
    let var_1 = Struct_3(arg_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, global2.x, -349f, global2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) - vec4<f32>(global2.x, global2.x, -1251f, global2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, arg_0.b.x), vec2<i32>(-2147483647i, 32854i)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(735f, global2.x)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global2.x, global2.x)))), 278f))), select(firstTrailingBit(vec2<u32>(~45857u, ~1u)), vec2<u32>(~(123928u >> (0u % 32u)), 1u), any(vec2<bool>(any(arg_0.d.www), all(vec2<bool>(arg_0.c.x, false))))));
    var var_2 = ~u_input.a;
    var_2 = ~firstLeadingBit(_wgslsmith_div_vec3_i32(~select(u_input.a, vec3<i32>(arg_0.b.x, -2147483647i, var_2.x), var_0), ~(u_input.a & vec3<i32>(var_2.x, -20600i, var_2.x))));
    return ~(-2147483647i);
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_4(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, false, false)) | true, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true))), any(vec2<bool>(true, true)), Struct_3(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(1i, -7895i))), _wgslsmith_div_f32(-220f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), -297f))), vec2<u32>(select(~0u, 1u, true), ~(~23384u))));
    var var_1 = var_0.a;
    var var_2 = u_input.a.x;
    let var_3 = !var_0.a.yz;
    let var_4 = false;
    return Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(max(u_input.a.x, u_input.a.x), u_input.a.x), u_input.a.x, min(15255i, _wgslsmith_div_i32(-2147483647i, 89380i)), ~_wgslsmith_mod_i32(23990i, u_input.a.x)), arg_0, firstLeadingBit((vec4<i32>(arg_0.x, 2147483647i, 2147483647i, 26026i) & arg_0) | firstTrailingBit(vec4<i32>(arg_0.x, 2147483647i, u_input.a.x, -1i)))), -vec2<i32>(68891i, arg_0.x), var_0.a, vec4<bool>(var_1.x == func_3(vec3<u32>(49084u, var_0.c.d.x, 0u), -7334i, Struct_1(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 18593i), vec2<i32>(u_input.a.x, 1i), var_0.c.a.wwx, var_0.c.a)), var_4, !func_3(vec3<u32>(0u, 67900u, var_0.c.d.x), arg_0.x, Struct_1(vec4<i32>(u_input.a.x, -61181i, 0i, u_input.a.x), vec2<i32>(5754i, -37893i), vec3<bool>(var_1.x, var_3.x, var_3.x), var_0.c.a)), abs(min(1u, var_0.c.d.x)) > 1u));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = arg_2;
    global4 = array<vec3<f32>, 1>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = Struct_1((vec4<i32>(arg_0.b.x, arg_2.b.a.x, abs(var_0.b.a.x), firstLeadingBit(2147483647i)) ^ _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_2.b.a.x, arg_2.b.b.x, u_input.a.x, u_input.a.x)), vec4<i32>(-2147483647i, -6893i, -16921i, var_0.b.b.x))) << (firstLeadingBit(~(~vec4<u32>(18485u, 4294967295u, 1u, arg_1))) % vec4<u32>(32u)), abs(vec2<i32>(arg_0.a.x, var_0.b.b.x)), vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_2.a, var_0.a)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a)), 1502f), !func_4(arg_3).d.x, !(!arg_2.b.d.x || (arg_1 < arg_1))), arg_0.d);
    let var_2 = func_4(~(~max(vec4<i32>(-1i, arg_2.b.a.x, 11056i, var_1.b.x), arg_3))).d.ww;
    return Struct_2(-910f, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 1i, -1i), vec4<i32>(-38892i, u_input.a.x, 1i, 83981i)), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -2147483647i)), _wgslsmith_add_i32(func_1(Struct_1(vec4<i32>(-2147483647i, u_input.a.x, -32450i, 1i), vec2<i32>(-2147483647i, u_input.a.x), vec3<bool>(false, false, true), vec4<bool>(true, false, true, false))), i32(-1i) * -39050i), -15235i, u_input.a.x)), ~1u, Struct_2(-250f, func_4(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, 12383i, 63837i, u_input.a.x), vec4<i32>(u_input.a.x, -4625i, 1i, 20610i)))), -vec4<i32>(-18811i, u_input.a.x, (u_input.a.x ^ 1i) | 2147483647i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a.x));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, 1000f, 448f))))) * global4[_wgslsmith_index_u32(~40012u, 1u)]);
    var var_1 = vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a.x, u_input.a.x), u_input.a.yx), -2147483647i), 0i), u_input.a.x);
    var var_2 = Struct_4(vec3<bool>(false, any(func_5(Struct_1(var_0.b.a, u_input.a.zz, var_0.b.c, vec4<bool>(true, true, true, false)), _wgslsmith_mod_u32(1u, 2861u), Struct_2(var_0.a, var_0.b), var_0.b.a | vec4<i32>(-40436i, 7016i, var_1.x, -26035i)).b.c), false), any(select(select(vec3<bool>(var_0.b.c.x, var_0.b.d.x, var_0.b.d.x), var_0.b.c, false), var_0.b.c, !var_0.b.c)), Struct_3(!vec4<bool>(var_0.b.c.x, false, true, true == var_0.b.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -193f) + vec4<f32>(454f, var_0.a, -278f, -879f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1040f, global2.x, var_0.a, var_0.a), vec4<f32>(var_0.a, -297f, -884f, global2.x)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2193f, global2.x, -1109f, -111f) - vec4<f32>(global2.x, 2274f, var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(984f, var_0.a, global2.x, var_0.a) + vec4<f32>(global2.x, global2.x, -112f, global2.x))))), var_0.a, ~firstLeadingBit(~vec2<u32>(4294967295u, 0u))));
    var var_3 = Struct_3(var_0.b.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_2.c.c))), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f + global2.x) * 427f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.a.xx)).x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1330f)))), var_2.c.c))), _wgslsmith_f_op_f32(-1951f - _wgslsmith_f_op_f32(-global2.x)), select(_wgslsmith_mult_vec2_u32(var_2.c.d, select(~vec2<u32>(64150u, 39121u), select(vec2<u32>(52415u, var_2.c.d.x), var_2.c.d, var_2.a.yy), var_0.b.c.x)), min(var_2.c.d, var_2.c.d), vec2<bool>(var_0.b.d.x, true & func_5(Struct_1(vec4<i32>(var_1.x, 1i, var_1.x, 33951i), u_input.a.xz, vec3<bool>(true, var_0.b.c.x, true), var_2.c.a), 7472u, global1[_wgslsmith_index_u32(var_2.c.d.x, 29u)], vec4<i32>(2147483647i, u_input.a.x, var_1.x, -5796i)).b.c.x)));
    var var_4 = ~1u;
    var var_5 = !var_0.b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~max(var_3.d, select(min(vec2<u32>(1u, var_3.d.x), vec2<u32>(var_2.c.d.x, var_3.d.x)), ~vec2<u32>(var_2.c.d.x, var_2.c.d.x), select(var_0.b.c.zx, var_0.b.c.zz, vec2<bool>(true, true)))));
}

