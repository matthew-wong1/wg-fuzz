struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16>;

var<private> global1: array<i32, 12>;

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: bool, arg_3: vec3<u32>) -> bool {
    return arg_2;
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1866f) * _wgslsmith_f_op_f32(f32(-1f) * -1240f)));
    global0 = array<vec4<u32>, 16>();
    var var_1 = var_0;
    global0 = array<vec4<u32>, 16>();
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1887f * -952f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(f32(-1f) * -1680f))))));
    return Struct_5(!vec4<bool>(!(global4.x && false), any(vec3<bool>(global4.x, global4.x, true)), func_3(Struct_5(vec4<bool>(true, true, true, global4.x), vec3<f32>(var_0, 1996f, -283f), vec3<i32>(u_input.b, 2147483647i, -1i), var_0), Struct_3(Struct_2(vec2<f32>(var_0, var_0)), u_input.c, vec4<f32>(1000f, var_0, var_0, 687f), vec3<bool>(global4.x, global4.x, true), u_input.c), true, select(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.a, global4.x)), true), vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(round(var_0))), ~_wgslsmith_add_vec3_i32(-max(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b, global3.a), vec3<i32>(-2147483647i, -15766i, global3.a)), -(vec3<i32>(global3.a, global3.a, global1[_wgslsmith_index_u32(0u, 12u)]) << (vec3<u32>(u_input.c, 7125u, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-1000f - 2502f));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = u_input.c;
    var var_2 = 64292u;
    global2 = any(!vec2<bool>(true || (arg_1.a.x == global4.x), global4.x || var_0.d.x));
    return arg_3.a;
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: Struct_4) -> u32 {
    let var_0 = func_4(_wgslsmith_clamp_vec4_u32(~global0[_wgslsmith_index_u32(firstLeadingBit(reverseBits(u_input.c)), 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], vec4<u32>(_wgslsmith_sub_u32(0u, select(u_input.c, u_input.c, global4.x)), ~(~u_input.a.x), ~(~5717u), ~1u)), func_2(), arg_3, Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.x, arg_3.a.x) * arg_1.a.yz)), ~(3081u ^ u_input.a.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.a.x, -916f, -1215f, -584f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(220f, 129f, arg_3.a.x, arg_3.a.x), vec4<f32>(-388f, arg_1.a.x, 1000f, arg_1.a.x)))))), !vec3<bool>(arg_3.b, !global4.x, arg_3.b), ~(~u_input.c) | 0u));
    var var_1 = Struct_4(arg_1.a, func_3(Struct_5(arg_2, arg_3.a, -_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 12u)], -1i, 0i), vec3<i32>(u_input.b, 1i, 0i)), -1390f), Struct_3(var_0, _wgslsmith_clamp_u32(19342u, _wgslsmith_sub_u32(u_input.a.x, 1u), _wgslsmith_clamp_u32(u_input.a.x, 10691u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(270f, 612f, arg_3.a.x, var_0.a.x) + vec4<f32>(-1170f, 362f, 471f, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, -239f, 759f)))), !func_2().a.yxz, firstLeadingBit(8417u)), true, vec3<u32>(firstLeadingBit(78311u), 2712u, ~u_input.c ^ u_input.a.x)));
    global2 = arg_3.b;
    let var_2 = select(select(arg_2.wz, !vec2<bool>(!arg_3.b, arg_2.x), !select(arg_2.xx, global4.wz, arg_3.b)), vec2<bool>(!arg_1.b, select(_wgslsmith_add_i32(13960i, u_input.b) < 2147483647i, !arg_2.x, any(func_2().a))), arg_2.x);
    global3 = Struct_1(-17637i);
    return 1u;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_5(select(select(!(!vec4<bool>(global4.x, global4.x, true, false)), vec4<bool>(false, all(vec4<bool>(true, true, false, global4.x)), any(global4.xx), arg_2.x >= arg_0), !(u_input.b >= 10691i)), select(!vec4<bool>(true, global4.x, true, true), select(!vec4<bool>(global4.x, true, true, true), vec4<bool>(false, false, true, global4.x), global4.x), !func_2().a), !(global4.x && true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1429f, 1787f, 1415f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(321f, 548f, -690f), vec3<f32>(1001f, 1701f, -1049f), global4.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-730f, 2600f, -995f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1547f, -1666f, -1665f)))))), -min(~(-vec3<i32>(arg_1, 2147483647i, arg_1)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 12u)], -18817i), vec2<i32>(1043i, 52459i)), _wgslsmith_div_i32(-2401i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1, -1i, -4316i), vec4<i32>(global3.a, u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1341f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(770f + -468f) - -1303f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-284f)))))));
    var_0 = func_2();
    var var_1 = global3.a;
    global3 = Struct_1(39686i >> (u_input.a.x % 32u));
    var var_2 = !global4.zxy;
    return Struct_1(0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~u_input.a.x, ~firstTrailingBit(~22715u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u << (u_input.c % 32u), ~8025u), abs(vec2<u32>(19697u, 309u))), ~14541u), _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(u_input.a, u_input.a << (u_input.a % vec3<u32>(32u)))));
    global3 = func_5(1u, -43954i, vec2<u32>(~(~19383u), min(func_1(u_input.b, Struct_4(vec3<f32>(-250f, 520f, -2506f), true), vec4<bool>(true, false, global4.x, global4.x), Struct_4(vec3<f32>(378f, -543f, -221f), false)), _wgslsmith_mod_u32(u_input.c, u_input.a.x)) << (countOneBits(_wgslsmith_clamp_u32(u_input.c, u_input.a.x, u_input.c)) % 32u)));
    var var_1 = u_input.a;
    var var_2 = func_4(firstLeadingBit(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(~u_input.c, 16u)], min(global0[_wgslsmith_index_u32(4294967295u, 16u)], vec4<u32>(var_0.x, 104607u, 36484u, var_1.x))))), Struct_5(!select(func_2().a, vec4<bool>(global4.x, true, true, true), select(vec4<bool>(true, true, global4.x, true), vec4<bool>(global4.x, false, global4.x, false), vec4<bool>(global4.x, false, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(-1750f - 2218f), 885f)), firstTrailingBit(vec3<i32>(-77222i, -41597i, 0i) | vec3<i32>(-1i, global1[_wgslsmith_index_u32(17127u, 12u)], u_input.b)) >> (vec3<u32>(var_1.x << (1u % 32u), 25899u & u_input.a.x, abs(1038u)) % vec3<u32>(32u)), -1049f), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1490f, 189f, -615f), vec3<f32>(309f, 1362f, -619f)))), all(!global4.wwx)), Struct_3(Struct_2(vec2<f32>(706f, _wgslsmith_f_op_f32(min(170f, -1000f)))), u_input.a.x, vec4<f32>(_wgslsmith_div_f32(-689f, -1214f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f)), func_2().d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1583f)))), !select(vec3<bool>(global4.x, global4.x, true), !global4.zxw, !global4.xxy), _wgslsmith_div_u32(firstLeadingBit(~0u), 1u)));
    global1 = array<i32, 12>();
    global0 = array<vec4<u32>, 16>();
    var var_3 = !vec2<bool>(any(!vec3<bool>(false, global4.x, false)) && true, global4.x);
    var_0 = ~_wgslsmith_sub_vec4_u32(~(~(global0[_wgslsmith_index_u32(0u, 16u)] & vec4<u32>(4294967295u, var_0.x, var_0.x, 0u))), vec4<u32>(~0u, ~var_1.x >> ((var_1.x & u_input.a.x) % 32u), 0u, abs(_wgslsmith_mod_u32(0u, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~21292i, var_2.a);
}

