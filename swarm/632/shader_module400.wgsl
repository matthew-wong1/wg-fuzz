struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1624f;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global2: f32 = -2276f;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global4: vec3<f32> = vec3<f32>(-104f, -1077f, 400f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> u32 {
    global2 = global4.x;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -716f);
    global3 = arg_3;
    var var_0 = -9565i;
    let var_1 = 1i;
    return ~(max(~_wgslsmith_mod_u32(arg_0, 0u), arg_0) & ~1u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    var var_0 = all(global1.a) | all(select(global1.a, select(select(global1.a, global3.a, global1.a.x), global1.a, global3.a), select(!global3.a, vec2<bool>(arg_2.e, true), select(vec2<bool>(false, false), global1.a, true))));
    var var_1 = Struct_2(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.c.x, 0u, arg_2.c.x, arg_2.c.x), vec4<u32>(41768u, 16687u, 0u, arg_2.c.x)), vec4<u32>(39014u, 86305u, 4294967295u, 13757u) >> (vec4<u32>(arg_2.a, arg_2.c.x, arg_2.a, arg_1.c.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-global4.zx), arg_2.c ^ vec2<u32>(~arg_2.c.x ^ arg_1.c.x, countOneBits(~arg_2.a)), ~(-2147483647i), any(select(!select(vec4<bool>(global1.a.x, global1.a.x, arg_2.e, global3.a.x), vec4<bool>(false, arg_1.e, arg_3.x, true), vec4<bool>(true, true, arg_1.e, global1.a.x)), !select(vec4<bool>(arg_2.e, global3.a.x, arg_1.e, arg_1.e), vec4<bool>(false, false, global1.a.x, true), global3.a.x), (arg_1.c.x == arg_1.a) != any(global3.a))));
    var var_2 = 27336i;
    return _wgslsmith_sub_u32(19694u >> (select(_wgslsmith_mult_u32(arg_1.a, arg_1.c.x), ~arg_1.c.x, false) % 32u), min(firstTrailingBit(firstLeadingBit(var_1.c.x)), abs(~0u))) >> ((select(arg_1.a, 1u, arg_1.e) >> (18594u % 32u)) % 32u);
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-799f, 332f) - _wgslsmith_f_op_f32(arg_3.b.x - global4.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1822f, global4.x, arg_0)))), vec3<f32>(1268f, 284f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(max(global4.x, 1172f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -937f))));
    global0 = -2291f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f));
    let var_1 = -2147483647i;
    global2 = -1376f;
    return Struct_1(vec2<bool>(true, !(!any(vec4<bool>(arg_3.e, false, false, global1.a.x)))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    let var_0 = select(-_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(1i, -29306i, 2147483647i)) | vec3<i32>(u_input.a, 0i, arg_0), vec3<i32>(u_input.a, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, u_input.a), vec3<i32>(u_input.a, -9313i, arg_0))), vec3<i32>(arg_0 & arg_0, ~0i, arg_0)), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(0i, u_input.a, -18450i) >> ((vec3<u32>(arg_2, 20484u, 104216u) >> (vec3<u32>(1u, arg_2, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(-min(arg_0, u_input.a), u_input.a, -1i)), !vec3<bool>(global4.x >= -918f, true, all(vec3<bool>(true, true, true))));
    let var_1 = !select(global3.a, select(select(select(vec2<bool>(false, true), global1.a, true), global3.a, false), vec2<bool>(global3.a.x, all(vec4<bool>(true, arg_1.a.x, false, true))), vec2<bool>(!arg_1.a.x, arg_2 <= 1u)), global1.a);
    let var_2 = Struct_2(29775u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.yy * global4.yz) - vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global4.yz, vec2<f32>(224f, global4.x), vec2<bool>(global3.a.x, true))) - global4.yz) + _wgslsmith_f_op_vec2_f32(-global4.zx))), ~(~vec2<u32>(arg_2, 36994u)) << (max(~vec2<u32>(arg_2, 67877u) << (vec2<u32>(arg_2, 4294967295u) % vec2<u32>(32u)), vec2<u32>(1u, max(arg_2, 4294967295u))) % vec2<u32>(32u)), 57226i, true);
    global1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, var_2.b.x)) - _wgslsmith_f_op_f32(floor(614f))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(428f, _wgslsmith_div_f32(global4.x, -921f)))), vec2<u32>(var_2.a, select(4294967295u & countOneBits(var_2.c.x), _wgslsmith_mod_u32(arg_2, arg_2) | max(arg_2, 1u), (var_2.d | arg_0) <= ~14141i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.xz)), var_2);
    let var_3 = _wgslsmith_div_u32(63228u, arg_2);
    return _wgslsmith_sub_vec4_i32(firstTrailingBit(reverseBits(select(vec4<i32>(var_2.d, var_0.x, var_2.d, 1i), vec4<i32>(-2147483647i, arg_0, arg_0, -7025i), select(vec4<bool>(true, true, var_2.e, var_2.e), vec4<bool>(true, true, var_1.x, arg_1.a.x), false)))), abs(_wgslsmith_mod_vec4_i32(max(vec4<i32>(var_2.d, arg_0, -2147483647i, 1651i), vec4<i32>(var_0.x, var_2.d, arg_0, u_input.a)) >> ((vec4<u32>(0u, var_3, 30304u, 0u) << (vec4<u32>(var_2.a, 18169u, var_3, var_3) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(-vec4<i32>(2147483647i, -41704i, -1i, 28614i)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(48734i, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(364f + -845f), 535f)), vec2<u32>(~func_2(4415u, u_input.a, global3.a.x, Struct_1(vec2<bool>(global1.a.x, global1.a.x))), ~(~4294967295u)), _wgslsmith_f_op_vec2_f32(-global4.yy), Struct_2(func_3(_wgslsmith_f_op_f32(min(1065f, 958f)), Struct_2(60766u, global4.xy, vec2<u32>(0u, 1u), u_input.a, global1.a.x), Struct_2(36587u, global4.yz, vec2<u32>(1u, 1u), u_input.a, global3.a.x), select(vec3<bool>(global3.a.x, false, global3.a.x), vec3<bool>(true, false, global3.a.x), vec3<bool>(global1.a.x, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-634f, global4.x) * vec2<f32>(global4.x, -1764f))), _wgslsmith_mod_vec2_u32(select(vec2<u32>(72538u, 78101u), vec2<u32>(63366u, 0u), vec2<bool>(global3.a.x, global3.a.x)), vec2<u32>(61794u, 20958u)), _wgslsmith_mod_i32(-36401i, -20148i), global3.a.x)), 10227u);
    global2 = _wgslsmith_f_op_f32(floor(838f));
    var var_1 = abs(vec4<u32>(max(1u, _wgslsmith_add_u32(abs(1484u), ~19631u)), countOneBits(1u), 18904u, ~(~(~1u))));
    let var_2 = u_input.a;
    let var_3 = -1007f;
    return Struct_1(global3.a);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -894f, 1673f)), vec3<f32>(global4.x, 981f, -954f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -949f), global4.x)), _wgslsmith_f_op_f32(-843f + -1129f), _wgslsmith_div_f32(439f, _wgslsmith_div_f32(1000f, arg_2.b.x))))));
    var var_1 = ~arg_2.a;
    var_1 = arg_2.a;
    return -7276i;
}

fn func_7(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1604f))))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) * _wgslsmith_f_op_f32(f32(-1f) * -323f)), -209f));
    let var_2 = Struct_2(~firstTrailingBit(arg_1.x), _wgslsmith_f_op_vec2_f32(round(global4.yx)), vec2<u32>(arg_1.x << (_wgslsmith_add_u32(arg_1.x, arg_1.x) % 32u), _wgslsmith_dot_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 5228u), vec4<u32>(75262u, arg_1.x, arg_1.x, arg_1.x)), select(vec4<u32>(33964u, 4294967295u, 0u, 18976u), vec4<u32>(arg_1.x, arg_1.x, 1u, 1u), vec4<bool>(true, global3.a.x, global3.a.x, global3.a.x))), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 1u), vec3<u32>(4294967295u, 19439u, arg_1.x)), 21384u, arg_1.x))), _wgslsmith_sub_i32(arg_3, arg_3), true);
    var var_3 = var_1;
    let var_4 = Struct_2(~arg_1.x, vec2<f32>(arg_2, var_0), vec2<u32>(countOneBits(reverseBits(~35059u)), 0u), -u_input.a, !var_2.e);
    return Struct_1(!(!vec2<bool>(global3.a.x || true, all(vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global1.a);
    global4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-780f, global4.x, -844f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(339f, global4.x, global4.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -1847f, -1000f) * vec3<f32>(-826f, 2781f, global4.x)), false | global3.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1590f, 115f, 853f)))))));
    global1 = func_7(~(-func_6(func_1(), Struct_2(0u, global4.xz, vec2<u32>(1u, 4294967295u), u_input.a, false), Struct_2(4294967295u, global4.yx, vec2<u32>(37620u, 13135u), u_input.a, false))), ~select(vec2<u32>(abs(6204u), 57167u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 10553u), ~vec2<u32>(53233u, 70312u)), global1.a.x & true), global4.x, 34284i);
    var var_0 = ~vec4<i32>(i32(-1i) * -10181i, u_input.a, -(~u_input.a), firstLeadingBit(_wgslsmith_div_i32(-u_input.a, ~u_input.a)));
    global4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(762f, 1810f, global4.x) - vec3<f32>(global4.x, global4.x, global4.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1110f, 376f, 131f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-772f, -2343f, global4.x), vec3<f32>(global4.x, 212f, global4.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -1295f, global4.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2679f, -1000f, 1639f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, 710f)) - vec3<f32>(-1724f, 1008f, _wgslsmith_f_op_f32(ceil(711f)))), vec3<bool>((true != global3.a.x) & !global3.a.x, true, global1.a.x))));
}

