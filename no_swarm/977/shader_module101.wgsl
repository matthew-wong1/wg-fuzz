struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(1127f, -186f), vec2<f32>(2430f, -747f), vec2<f32>(-1188f, 346f), vec2<f32>(-1000f, -778f), vec2<f32>(1316f, 597f), vec2<f32>(324f, 567f), vec2<f32>(-755f, -657f), vec2<f32>(-854f, -322f), vec2<f32>(-236f, -323f), vec2<f32>(-131f, -953f), vec2<f32>(-528f, -666f), vec2<f32>(-494f, -1000f), vec2<f32>(-240f, 504f), vec2<f32>(705f, 1256f), vec2<f32>(-156f, 1000f), vec2<f32>(406f, 424f), vec2<f32>(771f, 768f), vec2<f32>(935f, 587f), vec2<f32>(-769f, -2721f), vec2<f32>(1907f, -155f), vec2<f32>(-1005f, -236f), vec2<f32>(123f, -1491f), vec2<f32>(-781f, -719f), vec2<f32>(1148f, 589f), vec2<f32>(-725f, 1184f));

var<private> global2: array<vec4<i32>, 22>;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(100f, Struct_1(i32(-2147483648), vec3<bool>(false, false, false), 5632u), -304f, vec4<u32>(4294967295u, 7570u, 0u, 4294967295u), vec2<i32>(0i, 0i)), Struct_2(-1118f, Struct_1(1i, vec3<bool>(true, true, false), 0u), -338f, vec4<u32>(4294967295u, 60702u, 1u, 46224u), vec2<i32>(0i, 0i)), Struct_2(-200f, Struct_1(26360i, vec3<bool>(false, true, false), 33670u), 1749f, vec4<u32>(1u, 2843u, 43721u, 9241u), vec2<i32>(-1i, -16202i)), Struct_2(-176f, Struct_1(34235i, vec3<bool>(true, false, false), 5736u), -355f, vec4<u32>(90151u, 15488u, 49671u, 4294967295u), vec2<i32>(-23818i, -9087i)), Struct_2(115f, Struct_1(19581i, vec3<bool>(false, true, false), 29083u), -301f, vec4<u32>(0u, 76647u, 58668u, 0u), vec2<i32>(1i, 1i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec4<i32> {
    let var_0 = ~u_input.d;
    global2 = array<vec4<i32>, 22>();
    global1 = array<vec2<f32>, 25>();
    var var_1 = global0.x;
    return vec4<i32>(0i, u_input.c >> (var_0 % 32u), u_input.b, -9701i);
}

fn func_3() -> bool {
    let var_0 = Struct_1(-firstLeadingBit(func_1().x & u_input.b), select(global0.zwy, !(!vec3<bool>(global0.x, global0.x, global0.x)), !(global0.x || global0.x) & !(0u >= u_input.d)), u_input.d | u_input.d);
    let var_1 = Struct_4(1u);
    let var_2 = Struct_4(~_wgslsmith_clamp_u32(max(90940u, var_1.a) << (u_input.d % 32u), countOneBits(_wgslsmith_mult_u32(u_input.d, var_1.a)), 1u));
    let var_3 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(43492u, 25u)])))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_1.a), 25u)])), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.a), vec2<u32>(var_2.a, 27312u))), var_2.a), 25u)]), global3[_wgslsmith_index_u32(1u | ~select(~33845u, _wgslsmith_mod_u32(69602u, var_1.a), -2147483647i > u_input.a), 5u)], -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, 6762i), max(vec2<i32>(u_input.a, 0i), vec2<i32>(var_0.a, u_input.c))), select(~vec2<i32>(var_0.a, 1i), countOneBits(vec2<i32>(u_input.a, -1i)), !var_0.b.zz)), Struct_1(-2147483647i, var_0.b, var_1.a));
    var var_4 = global1[_wgslsmith_index_u32(u_input.d, 25u)];
    return countOneBits(var_0.c) == ~u_input.d;
}

fn func_2(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = select(~firstTrailingBit(~vec4<u32>(1u, 1u, 0u, u_input.d) << (vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u))), ~reverseBits(~vec4<u32>(110558u, 4294967295u, u_input.d, u_input.d)) >> (~vec4<u32>(u_input.d, 0u, ~u_input.d, abs(u_input.d)) % vec4<u32>(32u)), vec4<bool>(global0.x, all(vec2<bool>(global0.x & true, all(vec4<bool>(global0.x, true, false, false)))), func_3(), true));
    let var_1 = global0.x;
    global3 = array<Struct_2, 5>();
    global0 = select(!select(!select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), true), select(select(vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, false, global0.x, false), global0.x), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, true, true, global0.x), global0.x), !global0.x), !(!vec4<bool>(true, true, global0.x, true))), !vec4<bool>(false == global0.x, global0.x, false, global0.x || (u_input.c < u_input.a)), select(!vec4<bool>(true, !global0.x, u_input.d > u_input.d, true), vec4<bool>(var_0.x > _wgslsmith_dot_vec3_u32(var_0.yyy, var_0.xxy), !global0.x & true, false, global0.x | true), vec4<bool>(global0.x, arg_0.x != -arg_0.x, true, false || global0.x)));
    var var_2 = select(global0.ww, select(global0.zx, !select(select(vec2<bool>(global0.x, global0.x), global0.wx, global0.x), select(vec2<bool>(global0.x, global0.x), global0.xw, global0.x), true), all(!select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, false, global0.x, global0.x), false))), true);
    return ~(-vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(25605i, 0i, 70560i) << (_wgslsmith_dot_vec2_u32(var_0.wz, var_0.xz) % 32u), 12890i, (i32(-1i) * -34796i) << (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_mult_vec4_i32(abs(max(abs(global2[_wgslsmith_index_u32(u_input.d, 22u)]), global2[_wgslsmith_index_u32(103203u, 22u)]) ^ min(func_1(), global2[_wgslsmith_index_u32(max(u_input.d, 0u), 22u)])), func_2(_wgslsmith_add_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(54462i, u_input.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(-2147483647i, u_input.b)))));
    let var_2 = ~select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.d), min(vec3<u32>(1u, 94587u, u_input.d), vec3<u32>(u_input.d, 0u, 0u))), 51107u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(12803u, 30968u, u_input.d)), 15914u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, 10188u), ~vec4<u32>(u_input.d, 37988u, 35321u, u_input.d)) ^ countOneBits(~vec4<u32>(u_input.d, u_input.d, u_input.d, 17717u)), false);
    var var_3 = global3[_wgslsmith_index_u32(var_2.x, 5u)];
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1097f, -406f, -117f) + vec3<f32>(435f, -1000f, var_3.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_3.c, -339f)), vec3<f32>(var_3.a, -1886f, -563f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1470f, -1413f, -806f) + vec3<f32>(var_3.a, var_3.c, var_3.a)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1193f, var_3.c, var_3.a), vec3<f32>(var_3.c, -805f, -515f))) + vec3<f32>(var_3.c, var_3.a, -1000f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-757f, -629f, var_3.a)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, var_3.c, var_3.c) + vec3<f32>(253f, var_3.c, 940f)))))));
    let var_5 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, 2347f, 509f, var_4.x) - vec4<f32>(-1398f, -904f, -157f, 894f))))))));
    let var_6 = var_3.d.xzx;
    var var_7 = u_input.b >> (19753u % 32u);
    var var_8 = var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1233f))) - -673f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_5.x)), -984f), _wgslsmith_f_op_f32(trunc(698f)), -833f)), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_3.e.x, 71058i), var_1.yzw) << (~(~u_input.d) % 32u), ~reverseBits(-54246i) ^ ~var_3.b.a, -26602i), _wgslsmith_mult_u32(27394u, abs(firstTrailingBit(1u))));
}

