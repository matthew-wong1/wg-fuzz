struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32> = vec3<i32>(-16268i, i32(-2147483648), -29693i);

var<private> global2: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, 39927i), vec2<i32>(0i, 45668i), vec2<i32>(29641i, 44564i), vec2<i32>(1i, 2147483647i), vec2<i32>(35072i, 2147483647i), vec2<i32>(34211i, -1i), vec2<i32>(-48405i, -1i), vec2<i32>(25241i, 0i), vec2<i32>(0i, 50320i), vec2<i32>(47579i, i32(-2147483648)), vec2<i32>(-8845i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, 14906i), vec2<i32>(3590i, 2147483647i), vec2<i32>(6461i, -58942i), vec2<i32>(-76834i, 2147483647i), vec2<i32>(-1i, -9845i), vec2<i32>(i32(-2147483648), 39680i), vec2<i32>(24432i, 0i), vec2<i32>(-30806i, -57844i), vec2<i32>(2147483647i, -72580i), vec2<i32>(-46201i, 2147483647i), vec2<i32>(28009i, -48053i), vec2<i32>(-1i, -5283i), vec2<i32>(-42918i, i32(-2147483648)), vec2<i32>(-61479i, 2147483647i));

var<private> global3: array<Struct_5, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_5) -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_i32(global1.x & global1.x, 2147483647i) <= arg_1.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1590f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f - -245f)))), _wgslsmith_mult_vec4_i32(~max(arg_1.c, arg_1.c) | _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global1.x, -3653i, global1.x), -vec4<i32>(global1.x, -1i, global1.x, -3064i)), ~abs(arg_1.c)));
    var var_1 = arg_1.d.a;
    var var_2 = u_input.a | vec4<u32>(arg_1.d.c, ~1u, arg_1.a.x, var_1.x);
    var var_3 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(var_0.b.x, 2416f)), vec2<f32>(-477f, 768f)))))), var_0.c);
    let var_4 = ~1u;
    return !(!vec4<bool>(arg_1.d.b, true, true, all(vec4<bool>(false, arg_0, true, true)) | true));
}

fn func_2() -> Struct_2 {
    var var_0 = ~(~(~_wgslsmith_dot_vec3_u32(~u_input.a.zxx, vec3<u32>(24338u, u_input.a.x, 38930u))));
    var var_1 = ~_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(max(11291u, 4294967295u), min(u_input.a.x, u_input.a.x)) >> (~(~1u) % 32u));
    var var_2 = !all(!func_3(true, Struct_5(u_input.a.wyx, true, vec4<i32>(global1.x, 57639i, global1.x, -13873i), Struct_4(vec4<u32>(u_input.a.x, u_input.a.x, 70958u, 57606u), true, 4294967295u, u_input.a.xy, u_input.a.x))));
    let var_3 = func_3(true, Struct_5(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 68488u), _wgslsmith_sub_vec3_u32(u_input.a.xwz, u_input.a.wxz)) >> (firstLeadingBit(min(vec3<u32>(30313u, u_input.a.x, u_input.a.x), u_input.a.ywx)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-378f * _wgslsmith_f_op_f32(sign(-443f))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1018f * -1612f))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(global1.x, 40729i, -2147483647i, 1i), abs(vec4<i32>(global1.x, global1.x, global1.x, 0i))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(48314i, 1i, 2147483647i, global1.x), vec4<i32>(global1.x, global1.x, global1.x, 43876i), vec4<i32>(-1i, 48853i, global1.x, -35592i)), ~vec4<i32>(global1.x, global1.x, global1.x, -982i))), Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, 17607u, 1u) | vec4<u32>(4294967295u, 1u, 28888u, u_input.a.x), vec4<u32>(15387u, u_input.a.x, u_input.a.x, u_input.a.x)), all(vec4<bool>(true, true, true, true)), ~u_input.a.x << (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), _wgslsmith_mult_vec2_u32(vec2<u32>(11706u, 48618u), vec2<u32>(u_input.a.x, u_input.a.x)) | vec2<u32>(41637u, u_input.a.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 20001u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 56930u)))))).wx;
    let var_4 = u_input.a.zx;
    return Struct_2(Struct_1(any(!vec2<bool>(var_3.x, var_3.x))), 858f, -1i);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = any(vec4<bool>(true, reverseBits(countOneBits(arg_2.c)) > global1.x, !arg_2.a.a, !(!arg_0.a)));
    var var_1 = func_2();
    global2 = array<vec2<i32>, 29>();
    let var_2 = select(true == (_wgslsmith_dot_vec3_u32(u_input.a.xyw, u_input.a.ywy) > ~u_input.a.x), firstTrailingBit(4294967295u) <= 0u, all(vec4<bool>(arg_2.a.a, arg_0.a, !arg_3.a, !var_1.a.a))) == all(vec3<bool>(!arg_3.a, all(!vec4<bool>(var_1.a.a, var_1.a.a, false, true)), true));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_add_u32(61436u, u_input.a.x)), ~u_input.a.x), 32u)];
    return func_2();
}

fn func_1() -> f32 {
    let var_0 = vec4<u32>(1u, u_input.a.x, _wgslsmith_mod_u32(firstTrailingBit(102510u), ~abs(~64975u)), u_input.a.x);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)), -702f));
    var var_1 = Struct_1(!(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    var var_2 = 1i;
    let var_3 = func_4(Struct_1(true), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1124f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_2(), Struct_1(all(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_1.a, var_1.a), !var_1.a))));
    return 234f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -397f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1014f - -961f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1049f, -218f) + vec2<f32>(1115f, -403f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1302f, 607f), vec2<f32>(-174f, 1523f)))) - vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(246f, 337f)))), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), func_3(false, Struct_5(u_input.a.yyx, true, vec4<i32>(global1.x, global1.x, 49789i, -4920i), Struct_4(vec4<u32>(u_input.a.x, 16060u, u_input.a.x, 59597u), false, 4294967295u, u_input.a.xz, u_input.a.x))).yx, true), func_3(true, Struct_5(vec3<u32>(0u, u_input.a.x, 37946u), false, vec4<i32>(global1.x, 50837i, global1.x, global1.x), Struct_4(u_input.a, false, u_input.a.x, vec2<u32>(1u, 0u), u_input.a.x))).x)));
    let var_1 = Struct_3(Struct_1(false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -233f), vec2<f32>(var_0.x, 1162f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1730f, var_0.x) - vec2<f32>(-253f, var_0.x)))))), -(select(vec4<i32>(-2147483647i, global1.x, 39999i, 1i) & vec4<i32>(10538i, 2147483647i, 1i, global1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 7063i, global1.x, -27016i), vec4<i32>(-2147483647i, -1i, 2147483647i, 13375i)), false) | (vec4<i32>(0i, global1.x, global1.x, 21019i) >> ((u_input.a | vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.a.x, 29u)];
    let var_3 = select(~(~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_1.c.x, var_1.c.x), vec3<i32>(-2147483647i, 1i, 0i)), -vec3<i32>(-48374i, 34785i, -1i), ~vec3<i32>(var_1.c.x, 0i, global1.x))), vec3<i32>(-var_2.x, _wgslsmith_sub_i32(-50974i, _wgslsmith_clamp_i32(-65702i, var_2.x, var_2.x)), select(-var_2.x, var_1.c.x, !var_1.a.a | any(vec2<bool>(var_1.a.a, true)))), true);
    let var_4 = Struct_4(_wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 18023u, u_input.a.x, 7578u) ^ u_input.a, vec4<u32>(u_input.a.x, 41622u, 0u, 0u) >> (u_input.a % vec4<u32>(32u)))), ~(~u_input.a)), var_1.a.a, _wgslsmith_div_u32(59816u, 116717u), ~(vec2<u32>(2913u, u_input.a.x) ^ u_input.a.wy) ^ _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, u_input.a.x) & u_input.a.zw), ~vec2<u32>(u_input.a.x, 0u)), u_input.a.x);
    var var_5 = Struct_1(!var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

