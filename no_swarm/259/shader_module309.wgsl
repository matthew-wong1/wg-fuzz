struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-56734i, 2147483647i, 10010i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 0i), vec4<i32>(0i, 1i, 61861i, 3576i), vec4<i32>(0i, -83929i, -18240i, 1i), vec4<i32>(6861i, -12545i, 40608i, 6792i), vec4<i32>(2147483647i, 2147483647i, -4739i, -46668i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, i32(-2147483648)), vec4<i32>(-1i, 1i, 0i, 0i));

var<private> global1: bool;

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<bool>, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = select(any(!(!arg_0.a.b.zwx)), arg_0.a.b.x, true);
    var var_1 = Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-335f - -1000f), _wgslsmith_f_op_f32(468f * 1499f))), 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(select(1f, 1769f, arg_0.a.b.x)))), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a.a.x, u_input.a.x), ~vec4<u32>(arg_0.a.a.x, 35257u, 2952u, u_input.c))), select(vec3<bool>(true, true, arg_0.a.b.x & !arg_0.a.b.x), vec3<bool>(true, arg_0.a.b.x, !all(vec4<bool>(false, arg_0.a.b.x, arg_0.a.b.x, true))), true));
    var_1 = Struct_3(global3[_wgslsmith_index_u32(~(~arg_0.a.a.x), 3u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.c.x)), -973f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.c.x)) - _wgslsmith_f_op_vec2_f32(var_1.c - vec2<f32>(var_1.c.x, var_1.c.x))))), var_1.c, var_1.e.x && true)), arg_0.a.a.x, select(!(!(!vec3<bool>(arg_0.a.b.x, var_1.a.x, arg_0.a.b.x))), vec3<bool>(false, !(!var_1.a.x), true), arg_0.a.b.x));
    var var_2 = u_input.e.x;
    let var_3 = 1030f;
    return select(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.a.x, var_1.d, 4294967295u), u_input.a) << (~_wgslsmith_mod_vec3_u32(arg_0.a.a, vec3<u32>(0u, 23001u, u_input.c)) % vec3<u32>(32u))), arg_0.a.a, select(select(select(vec3<bool>(false, var_1.e.x, false), arg_0.a.b.yxz, all(vec2<bool>(false, var_1.a.x))), !select(vec3<bool>(true, false, true), var_1.e, vec3<bool>(arg_0.a.b.x, true, true)), false), vec3<bool>(var_1.a.x, true, arg_0.a.b.x), arg_0.a.b.x & (all(arg_0.a.b) && all(vec2<bool>(false, arg_0.a.b.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> i32 {
    global0 = array<vec4<i32>, 8>();
    let var_0 = arg_3;
    global1 = any(!global3[_wgslsmith_index_u32(u_input.d, 3u)]) || (2147483647i <= abs(select(firstLeadingBit(u_input.e.x), global2.x, arg_2)));
    global2 = vec2<i32>(u_input.e.x, i32(-1i) * -10705i);
    global1 = !arg_1.b.x && !arg_2;
    return u_input.e.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> bool {
    global2 = vec2<i32>(-1i, func_4(Struct_2(Struct_1(func_3(Struct_2(Struct_1(vec3<u32>(u_input.c, u_input.a.x, 93986u), vec4<bool>(true, false, true, arg_1)))), select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(false, true, arg_1, arg_1)))), Struct_1(~abs(u_input.a), vec4<bool>(all(vec3<bool>(arg_1, arg_1, false)), true, arg_1, true && arg_1)), true, 22923u));
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-557f + 568f))) - 807f), _wgslsmith_f_op_f32(f32(-1f) * -513f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1104f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), arg_0.x)), _wgslsmith_f_op_f32(-1646f * -167f)), u_input.d, vec3<bool>(true, true, all(!vec3<bool>(arg_1, arg_1, arg_1))));
    var var_1 = true;
    global0 = array<vec4<i32>, 8>();
    global3 = array<vec2<bool>, 3>();
    return true;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = -reverseBits(select(2147483647i, ~_wgslsmith_add_i32(-31191i, -6590i), func_2(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), true)));
    global3 = array<vec2<bool>, 3>();
    var_0 = 0i;
    let var_1 = arg_2;
    global2 = max(max(vec2<i32>(u_input.e.x, 1i), _wgslsmith_mod_vec2_i32(u_input.e.yz & firstTrailingBit(u_input.e.zz), ~vec2<i32>(global2.x, -1i))), u_input.e.xx);
    return Struct_1(max(vec3<u32>(~(~5746u), 1u, ~max(119991u, 1u)), u_input.a), vec4<bool>(arg_0, all(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~31574u), 3u)]), false, arg_0));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> vec2<bool> {
    let var_0 = select(select(vec4<bool>(false, arg_2.c.x >= -1072f, any(arg_2.e.xz) == true, arg_0.b.x), arg_0.b, arg_0.b), arg_0.b, (arg_2.b > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_2.c.x)), arg_2.b, arg_3))) | !(arg_0.a.x >= arg_0.a.x));
    global3 = array<vec2<bool>, 3>();
    var var_1 = Struct_3(vec2<bool>(arg_2.e.x, true), arg_2.b, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_2.b)), _wgslsmith_f_op_f32(-923f * _wgslsmith_f_op_f32(-317f + arg_2.b))))), ~0u, var_0.xzy);
    var_1 = arg_2;
    global0 = array<vec4<i32>, 8>();
    return vec2<bool>(true, func_1(arg_2.b < var_1.c.x, reverseBits(-9539i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x), vec4<f32>(-1191f, arg_2.c.x, 516f, arg_2.b), vec4<bool>(false, arg_1, true, var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, arg_2.c.x, var_1.c.x, -475f) - vec4<f32>(861f, -238f, var_1.c.x, arg_2.c.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1339f, -1417f, 331f, -531f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1501f, 979f, -1169f, arg_2.b) - vec4<f32>(-1729f, var_1.b, arg_2.b, var_1.c.x))))).b.x);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    global3 = array<vec2<bool>, 3>();
    global0 = array<vec4<i32>, 8>();
    global3 = array<vec2<bool>, 3>();
    let var_0 = abs(vec4<i32>(0i, ~u_input.e.x >> (abs(arg_1.a.x) % 32u), abs(1i), max(u_input.e.x, 19222i)) << (abs(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 58453u, 4294967295u, 1u)), ~vec4<u32>(u_input.d, u_input.c, arg_0.d, arg_1.a.x), vec4<u32>(4294967295u, 4294967295u, u_input.d, 64442u))) % vec4<u32>(32u)));
    let var_1 = vec3<bool>(arg_0.a.x, !(!(!arg_0.e.x)), ((arg_1.a.x == firstLeadingBit(arg_1.a.x)) != true) && arg_1.b.x);
    return Struct_2(func_1(any(select(select(var_1, vec3<bool>(var_1.x, arg_1.b.x, arg_0.a.x), false), !vec3<bool>(false, var_1.x, false), vec3<bool>(true, true, true))), min(var_0.x, min(1i, _wgslsmith_mult_i32(global2.x, 12736i))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.b, arg_0.b, 305f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.b, 1347f, arg_0.c.x) + vec4<f32>(545f, arg_0.c.x, -662f, arg_0.c.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(select(vec2<bool>(false, 173i <= global2.x), func_5(func_1(false, 1i, vec4<f32>(199f, -1370f, 965f, 231f)), true, Struct_3(vec2<bool>(false, false), 1000f, vec2<f32>(-811f, -1368f), u_input.d, vec3<bool>(false, false, false)), true), global3[_wgslsmith_index_u32(max(~u_input.c, ~4294967295u), 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(max(-134f, 941f)))), vec2<f32>(518f, _wgslsmith_f_op_f32(-377f - _wgslsmith_f_op_f32(f32(-1f) * -559f))), u_input.a.x, !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1935u), u_input.a), vec3<u32>(0u, 40446u, u_input.c), func_1(true, global2.x, vec4<f32>(814f, -537f, 1000f, 854f)).a) | ~(~vec3<u32>(101661u, 4294967295u, 5140u)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), all(global3[_wgslsmith_index_u32(u_input.d, 3u)])), vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true))));
    let var_1 = func_6(Struct_3(func_5(var_0.a, true | (var_0.a.b.x & var_0.a.b.x), Struct_3(!var_0.a.b.wz, _wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, 504f)), func_1(var_0.a.b.x, -28533i, vec4<f32>(-1000f, 1625f, -159f, -706f)).a.x, func_1(false, global2.x, vec4<f32>(454f, -1335f, 475f, 532f)).b.xzw), var_0.a.b.x || true), 1f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-403f, 347f) * vec2<f32>(-1931f, 595f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1428f, 410f)))))), var_0.a.a.x, var_0.a.b.xzy), func_6(Struct_3(!select(vec2<bool>(var_0.a.b.x, var_0.a.b.x), var_0.a.b.yw, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f + -997f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-533f, 647f))), u_input.d, var_0.a.b.yww), Struct_1(var_0.a.a, var_0.a.b)).a).a;
    let var_2 = !select(select(vec4<bool>(var_1.b.x, true && var_0.a.b.x, var_0.a.a.x == 0u, var_0.a.b.x), var_1.b, var_0.a.a.x == _wgslsmith_div_u32(11932u, 4294967295u)), !var_0.a.b, all(func_6(Struct_3(vec2<bool>(true, var_0.a.b.x), 1383f, vec2<f32>(-1865f, -1271f), 4409u, var_0.a.b.wzw), Struct_1(u_input.a, vec4<bool>(true, true, var_0.a.b.x, false))).a.b));
    var var_3 = !vec3<bool>(true, true || func_2(vec3<f32>(1f, 1f, 1f), var_1.b.x), true);
    var_0 = Struct_2(Struct_1(reverseBits(var_0.a.a), !(!func_1(false, 0i, vec4<f32>(-2801f, 376f, 245f, -454f)).b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1125f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(212f)))))));
}

