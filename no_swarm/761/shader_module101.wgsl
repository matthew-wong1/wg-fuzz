struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-275f, -521f, 100f, -193f), vec4<f32>(-438f, 963f, -1926f, -595f), vec4<f32>(-846f, -753f, -1549f, 542f), vec4<f32>(1000f, -1000f, -1030f, -994f), vec4<f32>(-199f, -1000f, 578f, 940f), vec4<f32>(917f, -1062f, 680f, 1919f), vec4<f32>(1513f, -426f, -780f, 960f), vec4<f32>(-283f, 853f, -1000f, 780f), vec4<f32>(1282f, -519f, 840f, -569f), vec4<f32>(-360f, 631f, 1408f, 597f), vec4<f32>(571f, 2142f, -1238f, -428f), vec4<f32>(1000f, -700f, 1219f, 1686f), vec4<f32>(562f, -1152f, 1220f, -232f), vec4<f32>(969f, -591f, 1894f, -631f), vec4<f32>(-1210f, 321f, -1945f, -393f), vec4<f32>(924f, 1425f, -1653f, -228f), vec4<f32>(-578f, 1125f, 184f, -504f), vec4<f32>(566f, 431f, 753f, 296f), vec4<f32>(523f, -1584f, -1100f, -1202f));

var<private> global1: i32;

var<private> global2: u32;

var<private> global3: array<vec4<f32>, 24>;

var<private> global4: u32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = -_wgslsmith_clamp_vec3_i32(firstLeadingBit(-(~u_input.d.wyz)), u_input.d.zww, ~vec3<i32>(13454i, max(u_input.d.x, -65233i), max(u_input.d.x, 2147483647i)));
    let var_2 = arg_1.a.yx;
    global4 = ~u_input.e;
    let var_3 = var_1.zz ^ vec2<i32>(u_input.b, ~(-41072i));
    return Struct_1(select(vec4<bool>(true, true, true, !arg_1.a.x), select(vec4<bool>(true, all(arg_3.a.zx), var_2.x & arg_2, 1u < u_input.a.x), select(vec4<bool>(arg_2, var_2.x, arg_2, arg_1.a.x), select(vec4<bool>(false, true, arg_2, arg_1.a.x), vec4<bool>(false, arg_3.a.x, var_2.x, var_2.x), true), select(arg_3.a, arg_1.a, vec4<bool>(arg_1.a.x, var_2.x, true, true))), true), !var_2.x));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec4<bool>(all(vec3<bool>(true, false, func_2(221f, Struct_1(vec4<bool>(false, true, false, true)), true, Struct_1(vec4<bool>(true, false, true, true))).a.x)), all(vec3<bool>(true, true, false)), !any(vec4<bool>(true, true, true, true)), true));
    let var_1 = ~(vec2<i32>(-1i) * -(~u_input.d.zx));
    var var_2 = !all(vec4<bool>(var_0.a.x, any(vec2<bool>(true, true)), select(var_0.a.x, var_0.a.x, false) || any(vec2<bool>(true, true)), -var_1.x > 27130i));
    global3 = array<vec4<f32>, 24>();
    let var_3 = var_1;
    return _wgslsmith_mod_u32(4294967295u, ~countOneBits(~97021u & _wgslsmith_clamp_u32(u_input.a.x, 34618u, u_input.e)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = reverseBits(vec2<i32>(1i, 69799i & u_input.d.x));
    let var_1 = select(vec4<i32>(u_input.b, ~(var_0.x & 2147483647i) ^ u_input.b, -var_0.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -43710i, -1i, -1i), u_input.d), 25139i), ~_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.d.x, abs(var_0.x), ~u_input.d.x, -1i | u_input.d.x), min(countOneBits(vec4<i32>(u_input.b, -2841i, -2147483647i, var_0.x)), vec4<i32>(-2147483647i, u_input.c, -25275i, var_0.x))), arg_0.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1, arg_1)), arg_1, arg_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -423f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-251f))))) - vec3<f32>(124f, 1f, arg_1));
    global4 = arg_2 >> ((func_3() & ~u_input.a.x) % 32u);
    let var_3 = func_2(_wgslsmith_f_op_f32(923f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.x, var_2.x))))), Struct_1(select(func_2(_wgslsmith_f_op_f32(trunc(407f)), func_2(554f, Struct_1(arg_0.a), arg_0.a.x, Struct_1(vec4<bool>(false, arg_0.a.x, false, arg_0.a.x))), 0u >= arg_2, func_2(var_2.x, arg_0, true, Struct_1(arg_0.a))).a, func_2(-1385f, arg_0, arg_0.a.x, Struct_1(arg_0.a)).a, arg_0.a.x)), arg_0.a.x, arg_0);
    return _wgslsmith_div_f32(-117f, _wgslsmith_f_op_f32(var_2.x * -2499f));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_1(func_2(_wgslsmith_f_op_f32(-258f * 1107f), func_2(arg_0.x, func_2(_wgslsmith_div_f32(172f, arg_1.x), func_2(1251f, Struct_1(vec4<bool>(false, false, true, true)), true, Struct_1(vec4<bool>(false, false, true, true))), true, func_2(113f, Struct_1(vec4<bool>(true, true, true, false)), false, Struct_1(vec4<bool>(true, true, false, false)))), all(vec3<bool>(true, true, true)), func_2(453f, func_2(665f, Struct_1(vec4<bool>(false, true, true, true)), true, Struct_1(vec4<bool>(true, false, true, true))), true, Struct_1(vec4<bool>(false, false, false, true)))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(select(vec4<bool>(true, true, true, true), func_2(arg_0.x, Struct_1(vec4<bool>(false, true, true, true)), true, Struct_1(vec4<bool>(false, false, true, true))).a, all(vec2<bool>(true, true))))).a);
    global3 = array<vec4<f32>, 24>();
    global3 = array<vec4<f32>, 24>();
    let var_1 = any(vec2<bool>(!(var_0.a.x || true), -388f >= arg_0.x));
    let var_2 = -vec4<i32>(~u_input.c, 2147483647i, 1i, 0i);
    return u_input.e;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    global4 = _wgslsmith_mod_u32(func_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1465f, 1051f, -1000f, -696f), global3[_wgslsmith_index_u32(u_input.e, 24u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(987f, 551f, -1169f, -738f) + global3[_wgslsmith_index_u32(29634u, 24u)]), u_input.c < u_input.b)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(27402u, 52938u) & arg_1.x, 24u)])), vec3<f32>(_wgslsmith_f_op_f32(func_4(func_2(-1221f, Struct_1(vec4<bool>(false, true, true, true)), true, Struct_1(vec4<bool>(false, true, false, true))), _wgslsmith_div_f32(-1924f, 505f), func_3())), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -156f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) + 1000f))), (u_input.e & u_input.e) >> (28220u % 32u));
    let var_0 = func_2(-1918f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-132f)) + _wgslsmith_f_op_f32(f32(-1f) * -820f))), Struct_1(func_2(_wgslsmith_f_op_f32(min(-2123f, -530f)), func_2(1000f, Struct_1(vec4<bool>(false, false, true, false)), true, Struct_1(vec4<bool>(false, false, false, true))), true, Struct_1(vec4<bool>(false, false, false, true))).a), 1u == ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(442f + -563f), -299f), Struct_1(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, false, false)), Struct_1(vec4<bool>(false, true, true, true)))), all(vec2<bool>(false, true)) != true, Struct_1(!func_2(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<bool>(true, true, false, false)), -1039f, u_input.e)), func_2(710f, Struct_1(vec4<bool>(true, true, false, false)), false, Struct_1(vec4<bool>(false, false, false, false))), any(vec3<bool>(false, false, false)), func_2(973f, Struct_1(vec4<bool>(false, false, true, false)), true, Struct_1(vec4<bool>(true, false, false, true)))).a));
    let var_1 = true;
    let var_2 = any(var_0.a);
    let var_3 = func_2(-391f, var_0, !all(!vec4<bool>(false, var_2, true, var_0.a.x)), var_0);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1375f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -169f), vec2<f32>(_wgslsmith_f_op_f32(step(-200f, _wgslsmith_f_op_f32(max(1207f, 134f)))), -1397f), 2147483647i >= u_input.b)));
    var var_1 = ~4294967295u;
    var var_2 = func_1(2147483647i, (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, u_input.e, 90929u), vec4<u32>(u_input.e, 49968u, u_input.a.x, 60320u)) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.e), vec4<u32>(18982u, u_input.e, u_input.e, 24206u))) << (vec4<u32>(u_input.e, max(u_input.e, 4294967295u), u_input.a.x, u_input.e) % vec4<u32>(32u)));
    var_2 = func_2(-251f, Struct_1(func_1(u_input.d.x, _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.e, 6570u, u_input.e), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 110251u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)), max(vec4<u32>(0u, u_input.e, u_input.e, u_input.e), vec4<u32>(0u, u_input.e, 4294967295u, u_input.a.x)))).a), !all(func_2(426f, Struct_1(var_2.a), var_2.a.x & false, func_2(-2633f, Struct_1(var_2.a), true, Struct_1(var_2.a))).a.xz), func_1(24490i, ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.e, 0u) & vec4<u32>(u_input.a.x, u_input.e, 35813u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(58687u, 27333u, u_input.e, 1u), vec4<u32>(u_input.a.x, 1u, u_input.e, 35227u)))));
    global0 = array<vec4<f32>, 19>();
    let var_3 = true;
    global1 = _wgslsmith_dot_vec3_i32(u_input.d.zyw, min(firstTrailingBit(select(~vec3<i32>(46492i, 3027i, -40716i), -vec3<i32>(u_input.b, 2147483647i, -24430i), true)), -_wgslsmith_clamp_vec3_i32(max(u_input.d.wzw, vec3<i32>(u_input.b, u_input.c, u_input.c)), countOneBits(u_input.d.wzz), vec3<i32>(-1i, u_input.b, 18222i))));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(~(-vec3<i32>(0i, 23586i, -9997i)))), _wgslsmith_add_i32(2147483647i, ~countOneBits(-2147483647i)), firstTrailingBit(vec3<u32>(reverseBits(u_input.e), ~4294967295u, 46344u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.e, u_input.a.x), ~vec3<u32>(0u, 0u, 21082u), vec3<u32>(1u, 1u, u_input.e) >> (vec3<u32>(45898u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), max(u_input.a >> (u_input.a % vec2<u32>(32u)), u_input.a));
}

