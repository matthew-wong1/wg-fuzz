struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false));

var<private> global1: f32 = -1060f;

var<private> global2: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(Struct_4(Struct_2(Struct_1(1u, vec3<bool>(false, true, true), vec3<i32>(61576i, -12710i, 2147483647i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(1u, vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), 38209i, 72031i)), vec3<bool>(true, false, true))), Struct_1(4294967295u, vec3<bool>(false, true, true), vec3<i32>(-2144i, 2147483647i, i32(-2147483648))), vec4<i32>(11126i, 43366i, -1i, 1i), vec4<bool>(false, false, false, true), vec4<f32>(-1552f, -2013f, 560f, 615f)), Struct_5(Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(true, false, true), vec3<i32>(0i, 1i, -7456i)), vec3<bool>(false, true, true)), Struct_2(Struct_1(1u, vec3<bool>(true, false, false), vec3<i32>(-1i, 0i, 1i)), vec3<bool>(false, false, false))), Struct_1(31516u, vec3<bool>(false, true, false), vec3<i32>(-27837i, 1173i, -1i)), vec4<i32>(53873i, -40855i, 53225i, -44189i), vec4<bool>(false, false, false, true), vec4<f32>(-791f, 1465f, 1499f, 516f)), Struct_5(Struct_4(Struct_2(Struct_1(0u, vec3<bool>(true, true, true), vec3<i32>(0i, -1i, -1i)), vec3<bool>(true, true, false)), Struct_2(Struct_1(21205u, vec3<bool>(true, true, false), vec3<i32>(1i, i32(-2147483648), 13742i)), vec3<bool>(true, false, false))), Struct_1(4294967295u, vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 2147483647i, -61459i)), vec4<i32>(i32(-2147483648), -21526i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, false, true), vec4<f32>(-1231f, 2647f, 2105f, -288f)), Struct_5(Struct_4(Struct_2(Struct_1(1u, vec3<bool>(false, true, true), vec3<i32>(0i, 2147483647i, 32987i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(1u, vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), -26703i, -15266i)), vec3<bool>(false, false, true))), Struct_1(1u, vec3<bool>(false, true, true), vec3<i32>(18382i, -1i, 17213i)), vec4<i32>(2147483647i, 0i, 0i, i32(-2147483648)), vec4<bool>(false, true, true, false), vec4<f32>(-766f, 599f, -577f, 748f)), Struct_5(Struct_4(Struct_2(Struct_1(5567u, vec3<bool>(false, true, true), vec3<i32>(1i, -1782i, 45489i)), vec3<bool>(false, true, true)), Struct_2(Struct_1(4294967295u, vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), -78499i, i32(-2147483648))), vec3<bool>(false, true, true))), Struct_1(6517u, vec3<bool>(false, true, false), vec3<i32>(2240i, i32(-2147483648), i32(-2147483648))), vec4<i32>(68111i, -42725i, 0i, 1i), vec4<bool>(true, true, true, true), vec4<f32>(661f, 527f, -1754f, -260f)), Struct_5(Struct_4(Struct_2(Struct_1(0u, vec3<bool>(true, false, true), vec3<i32>(-8161i, 24848i, -5649i)), vec3<bool>(false, true, true)), Struct_2(Struct_1(1u, vec3<bool>(false, false, false), vec3<i32>(2147483647i, 0i, i32(-2147483648))), vec3<bool>(true, false, false))), Struct_1(4294967295u, vec3<bool>(true, false, false), vec3<i32>(-18708i, 0i, 2147483647i)), vec4<i32>(46824i, 0i, 2147483647i, 2672i), vec4<bool>(false, true, true, false), vec4<f32>(-278f, 1000f, 751f, -1054f)), Struct_5(Struct_4(Struct_2(Struct_1(102207u, vec3<bool>(true, false, false), vec3<i32>(-40534i, i32(-2147483648), -68761i)), vec3<bool>(true, true, true)), Struct_2(Struct_1(41057u, vec3<bool>(true, false, false), vec3<i32>(-19770i, -62020i, 2147483647i)), vec3<bool>(false, true, false))), Struct_1(4294967295u, vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648))), vec4<i32>(15474i, i32(-2147483648), 1i, 1i), vec4<bool>(false, false, false, false), vec4<f32>(-814f, -790f, 324f, 751f)), Struct_5(Struct_4(Struct_2(Struct_1(15228u, vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 0i, 37152i)), vec3<bool>(true, false, false)), Struct_2(Struct_1(2638u, vec3<bool>(true, false, false), vec3<i32>(2147483647i, i32(-2147483648), -1i)), vec3<bool>(true, false, true))), Struct_1(0u, vec3<bool>(false, false, false), vec3<i32>(-1i, 0i, 0i)), vec4<i32>(-1i, 34369i, -5350i, 11698i), vec4<bool>(true, true, false, false), vec4<f32>(1215f, 323f, 757f, -312f)), Struct_5(Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(false, false, true), vec3<i32>(52961i, 2147483647i, 1i)), vec3<bool>(false, true, true)), Struct_2(Struct_1(9654u, vec3<bool>(false, false, true), vec3<i32>(-1i, 2147483647i, 26915i)), vec3<bool>(true, true, false))), Struct_1(39254u, vec3<bool>(true, true, true), vec3<i32>(-46386i, 1i, 2147483647i)), vec4<i32>(0i, 0i, 0i, 43528i), vec4<bool>(false, true, true, true), vec4<f32>(635f, 1153f, 1000f, 1696f)), Struct_5(Struct_4(Struct_2(Struct_1(0u, vec3<bool>(true, false, true), vec3<i32>(30658i, 1i, -16666i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(4294967295u, vec3<bool>(true, true, true), vec3<i32>(25224i, -22538i, 1i)), vec3<bool>(false, false, false))), Struct_1(0u, vec3<bool>(false, false, true), vec3<i32>(17829i, 0i, 25622i)), vec4<i32>(0i, i32(-2147483648), 15449i, -4112i), vec4<bool>(false, true, false, false), vec4<f32>(1601f, 1081f, -844f, 1717f)), Struct_5(Struct_4(Struct_2(Struct_1(1u, vec3<bool>(true, false, false), vec3<i32>(2147483647i, 33408i, 1i)), vec3<bool>(true, true, false)), Struct_2(Struct_1(1u, vec3<bool>(false, false, false), vec3<i32>(-7151i, 0i, 0i)), vec3<bool>(false, false, false))), Struct_1(26437u, vec3<bool>(false, true, true), vec3<i32>(22508i, 29882i, -1i)), vec4<i32>(-18067i, -18185i, -998i, i32(-2147483648)), vec4<bool>(false, true, false, false), vec4<f32>(1636f, 498f, 136f, -897f)), Struct_5(Struct_4(Struct_2(Struct_1(66951u, vec3<bool>(true, false, false), vec3<i32>(-35359i, 1i, 0i)), vec3<bool>(true, true, true)), Struct_2(Struct_1(1840u, vec3<bool>(false, false, true), vec3<i32>(-1i, -64242i, 1i)), vec3<bool>(false, true, true))), Struct_1(0u, vec3<bool>(false, true, false), vec3<i32>(-1i, 2147483647i, -1i)), vec4<i32>(0i, 2147483647i, i32(-2147483648), -17956i), vec4<bool>(true, false, false, false), vec4<f32>(-636f, 1054f, 553f, 564f)), Struct_5(Struct_4(Struct_2(Struct_1(4294967295u, vec3<bool>(true, false, false), vec3<i32>(0i, -27201i, -8820i)), vec3<bool>(true, true, false)), Struct_2(Struct_1(81730u, vec3<bool>(true, true, false), vec3<i32>(-2576i, -1i, i32(-2147483648))), vec3<bool>(true, true, true))), Struct_1(52368u, vec3<bool>(false, false, true), vec3<i32>(-48374i, -9538i, 0i)), vec4<i32>(1i, 2147483647i, -17142i, 4691i), vec4<bool>(true, false, false, false), vec4<f32>(-1000f, -1423f, -1194f, 1162f)), Struct_5(Struct_4(Struct_2(Struct_1(0u, vec3<bool>(false, true, true), vec3<i32>(0i, 845i, 19578i)), vec3<bool>(true, false, false)), Struct_2(Struct_1(40909u, vec3<bool>(true, false, true), vec3<i32>(32531i, 0i, 20331i)), vec3<bool>(true, true, true))), Struct_1(110081u, vec3<bool>(false, true, true), vec3<i32>(-48388i, 0i, -11570i)), vec4<i32>(1i, -65742i, 2147483647i, i32(-2147483648)), vec4<bool>(true, true, false, false), vec4<f32>(1593f, 1821f, -1004f, 1168f)), Struct_5(Struct_4(Struct_2(Struct_1(34725u, vec3<bool>(true, true, false), vec3<i32>(-1i, 40528i, 26504i)), vec3<bool>(true, false, false)), Struct_2(Struct_1(39234u, vec3<bool>(false, false, true), vec3<i32>(0i, 28994i, -49338i)), vec3<bool>(false, false, true))), Struct_1(1u, vec3<bool>(false, false, true), vec3<i32>(-1i, 0i, -57250i)), vec4<i32>(-1i, -24759i, 0i, 2147483647i), vec4<bool>(true, true, false, true), vec4<f32>(-1000f, -615f, -1000f, 2035f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = array<vec4<bool>, 19>();
    let var_0 = select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), true), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), all(global0[_wgslsmith_index_u32(u_input.c.x, 19u)]))), true);
    let var_1 = firstLeadingBit(abs(~(~1i)));
    global2 = array<Struct_5, 15>();
    let var_2 = all(!vec3<bool>(false, var_0.x, var_0.x));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(238f, -2046f, var_0.x)), _wgslsmith_f_op_f32(-1379f - 1637f)))))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    global2 = array<Struct_5, 15>();
    var var_0 = arg_2.a.c.x;
    var var_1 = Struct_3(~arg_2.a.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - arg_1), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + arg_1)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) + -1737f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(320f, 1216f))), 825f)));
    let var_2 = any(select(!select(!arg_2.b, arg_2.b, vec3<bool>(true, arg_2.b.x, false)), vec3<bool>(false, !all(vec2<bool>(true, arg_2.b.x)), !all(arg_2.b)), select(arg_2.b, arg_2.a.b, select(!arg_2.b, vec3<bool>(false, true, true), arg_2.a.c.x == 25751i))));
    global1 = -1227f;
    return Struct_2(arg_2.a, select(arg_2.b, vec3<bool>(true, arg_2.a.b.x, !(32372i < var_1.a)), false));
}

fn func_1(arg_0: Struct_5) -> i32 {
    var var_0 = arg_0.e.zx;
    var var_1 = func_2(_wgslsmith_mod_i32(~(-1i) | (2147483647i & arg_0.b.c.x), ~_wgslsmith_mult_i32(47202i, 20359i)) << (64117u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1108f))), arg_0.a.b);
    let var_2 = var_1.a.c.zy;
    var var_3 = !(4294967295u == _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a, var_1.a.a, max(4294967295u, 1u), _wgslsmith_div_u32(var_1.a.a, 0u)), vec4<u32>(4294967295u, u_input.a.x >> (1u % 32u), arg_0.a.b.a.a, var_1.a.a ^ 1824u)));
    var_0 = vec2<f32>(arg_0.e.x, arg_0.e.x);
    return arg_0.b.c.x;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_2 {
    var var_0 = -abs(select(vec2<i32>(-1i, ~arg_1), countOneBits(-vec2<i32>(1i, -2147483647i)), arg_2));
    global0 = array<vec4<bool>, 19>();
    let var_1 = _wgslsmith_mult_vec4_i32(max(_wgslsmith_mod_vec4_i32(~countOneBits(vec4<i32>(35637i, arg_1, var_0.x, 1i)), firstTrailingBit(abs(vec4<i32>(-20305i, u_input.b, -1i, arg_1)))), vec4<i32>(-21576i, func_1(global2[_wgslsmith_index_u32(4294967295u, 15u)]), -1i, _wgslsmith_mod_i32(-26311i, u_input.b)) | ~(~vec4<i32>(0i, u_input.b, 1i, -2147483647i))), vec4<i32>(1i, u_input.b, var_0.x, _wgslsmith_add_i32(1i, _wgslsmith_div_i32(u_input.b, arg_1))));
    return func_2(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(~(-6444i), 2147483647i), arg_1), 2147483647i), -325f, func_2(2346i >> (countOneBits(arg_3 << (arg_3 % 32u)) % 32u), 193f, func_2(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(-116f - -799f)), Struct_2(Struct_1(49149u, vec3<bool>(false, arg_0, arg_0), vec3<i32>(64679i, 1i, var_0.x)), vec3<bool>(arg_0, arg_2, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(false, _wgslsmith_add_i32(33045i, i32(-1i) * -31688i), ~func_1(global2[_wgslsmith_index_u32(u_input.c.x, 15u)]) != 2356i, ~(~1u));
    let var_1 = !func_2(16576i, -1000f, var_0).b;
    var var_2 = func_4(all(select(var_1.yy, var_0.b.yy, true)) & true, ~(-9702i), false, ~((1u | func_2(u_input.b, 1700f, Struct_2(Struct_1(u_input.a.x, vec3<bool>(var_0.b.x, var_0.b.x, var_1.x), vec3<i32>(86409i, u_input.b, 1i)), var_1)).a.a) & 4294967295u));
    var var_3 = var_2.a.a;
    var_3 = 37836u;
    var var_4 = var_0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a ^ ~(firstLeadingBit(var_0.a.a) >> (var_0.a.a % 32u)), vec4<u32>(reverseBits(_wgslsmith_mod_u32(30912u, 1u)), ~u_input.c.x, var_0.a.a, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, 13231u, 1u), vec4<u32>(66750u, 0u, 38085u, var_2.a.a), u_input.c), vec4<u32>(_wgslsmith_div_u32(40165u, var_2.a.a), _wgslsmith_clamp_u32(18362u, 0u, var_2.a.a), var_0.a.a ^ u_input.c.x, ~u_input.a.x))), ~var_2.a.c | -abs(_wgslsmith_div_vec3_i32(vec3<i32>(15989i, var_2.a.c.x, var_0.a.c.x), var_0.a.c)));
}

