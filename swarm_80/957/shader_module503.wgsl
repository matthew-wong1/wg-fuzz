struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(1000f, -1000f, -1151f), vec3<f32>(-1421f, 969f, 608f), vec3<f32>(401f, -293f, -902f), vec3<f32>(-369f, -2828f, 312f), vec3<f32>(1299f, -1816f, -1225f), vec3<f32>(376f, -677f, -691f), vec3<f32>(2719f, -475f, 392f), vec3<f32>(-871f, 551f, -471f), vec3<f32>(-1000f, 791f, -1000f), vec3<f32>(-133f, -1399f, 822f), vec3<f32>(-826f, -1223f, -856f));

var<private> global2: array<i32, 19>;

var<private> global3: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> vec3<i32> {
    global2 = array<i32, 19>();
    var var_0 = Struct_2(Struct_1(u_input.a.zwy, ~(~u_input.b) << (u_input.b % vec4<u32>(32u)), _wgslsmith_div_u32(_wgslsmith_add_u32(16215u >> (u_input.b.x % 32u), 0u), ~(~3133u))), true, Struct_1(u_input.a.wzx ^ vec3<i32>(11144i, _wgslsmith_div_i32(global3.x, 1i), countOneBits(global2[_wgslsmith_index_u32(u_input.d.x, 19u)])), ~(~select(u_input.b, vec4<u32>(0u, 5028u, 50651u, u_input.b.x), true)), ~_wgslsmith_add_u32(u_input.d.x, u_input.b.x)));
    var var_1 = ~(~var_0.a.b.x);
    var_1 = var_0.a.b.x & 4294967295u;
    return vec3<i32>(1i, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(~global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 1i), ~var_0.c.a.x), -8712i);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: f32) -> vec3<i32> {
    global3 = _wgslsmith_div_vec3_i32(-firstTrailingBit(u_input.e.wzw), u_input.c.wwz) & ~u_input.e.zzy;
    global0 = array<vec3<bool>, 17>();
    global1 = array<vec3<f32>, 11>();
    let var_0 = Struct_1(-(~u_input.e.yxw), u_input.b, max(reverseBits(~4294967295u), u_input.b.x));
    global1 = array<vec3<f32>, 11>();
    return u_input.e.xyw;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_2 {
    global3 = vec3<i32>(34296i, _wgslsmith_mod_i32(-1i, global2[_wgslsmith_index_u32(4294967295u, 19u)]), firstTrailingBit(global3.x));
    global3 = ~(vec3<i32>(_wgslsmith_dot_vec3_i32(func_2(), vec3<i32>(global3.x, global3.x, -1i) ^ vec3<i32>(global3.x, 1i, -1i)), _wgslsmith_mult_i32(countOneBits(u_input.c.x), 71035i), global3.x) ^ max(u_input.c.zzx | func_3(arg_2.x, u_input.b.x, u_input.a.x, -1976f), -vec3<i32>(2147483647i, 2992i, global3.x)));
    var var_0 = Struct_2(Struct_1(vec3<i32>(u_input.e.x, _wgslsmith_add_i32(2147483647i, -1i), func_2().x), vec4<u32>(~u_input.d.x, countOneBits(u_input.b.x), ~(u_input.d.x | 579u), ~_wgslsmith_sub_u32(u_input.d.x, 0u)), 31477u), !(!(!arg_2.x)), Struct_1(vec3<i32>(-47444i ^ min(2147483647i, global2[_wgslsmith_index_u32(34805u, 19u)]), -2147483647i, 0i), ~u_input.b, ~0u));
    var var_1 = Struct_2(var_0.a, any(vec4<bool>(all(vec2<bool>(false, false)), any(select(vec2<bool>(true, arg_2.x), vec2<bool>(false, true), vec2<bool>(false, true))), arg_2.x, false)), Struct_1(func_3((var_0.b & false) && (arg_2.x && arg_2.x), ~min(u_input.b.x, var_0.a.c), -23293i, 440f), vec4<u32>(min(_wgslsmith_sub_u32(var_0.a.c, u_input.b.x), abs(0u)), _wgslsmith_add_u32(select(u_input.d.x, var_0.a.c, false), u_input.b.x), 19100u, ~35111u), 48840u));
    var_0 = Struct_2(var_0.a, all(select(vec3<bool>(-5660i != global3.x, false, var_1.b), !vec3<bool>(var_0.b, arg_2.x, true), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(63633u, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_0.c.c, var_0.a.c, 4294967295u))), 17u)])), Struct_1(var_0.a.a, vec4<u32>(47738u, _wgslsmith_div_u32(var_1.a.c ^ var_0.c.c, 1u), select(0u ^ u_input.d.x, 38215u, var_1.b), firstLeadingBit(90358u) << ((4294967295u << (u_input.b.x % 32u)) % 32u)), ~50572u ^ max(u_input.b.x, u_input.d.x ^ 60753u)));
    return Struct_2(Struct_1(_wgslsmith_div_vec3_i32(-(var_0.c.a ^ var_0.a.a), u_input.c.zyw), vec4<u32>(_wgslsmith_div_u32(2566u ^ var_1.c.b.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 1949u, u_input.d.x))), 1u, ~35020u, var_0.a.c), _wgslsmith_add_u32(1u, 87553u)), true, Struct_1(max(u_input.a.yyz, -var_1.c.a), reverseBits(vec4<u32>(~0u, 0u, ~9468u, _wgslsmith_dot_vec3_u32(vec3<u32>(7199u, var_1.a.b.x, 48873u), u_input.b.yww))), var_0.a.b.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1238f) + _wgslsmith_f_op_f32(f32(-1f) * -634f))));
    global3 = u_input.e.yww;
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-422f, _wgslsmith_f_op_f32(-var_0), 520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 1253f) * 1858f)))));
    return Struct_1(~vec3<i32>(_wgslsmith_mult_i32(-46539i, min(-27520i, global2[_wgslsmith_index_u32(60350u, 19u)])), _wgslsmith_div_i32(-2147483647i, arg_1.a.a.x), -2147483647i), u_input.b, _wgslsmith_mult_u32(1u << (~u_input.d.x % 32u), 1u));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = true;
    global2 = array<i32, 19>();
    var var_1 = vec4<bool>(arg_1, !(!(!any(vec2<bool>(false, arg_1)))), arg_1, !arg_1);
    var var_2 = select(vec4<bool>(func_1(vec2<f32>(1f, 1f), 1f, !vec2<bool>(var_1.x, false)).b, true, true, var_1.x), !(!(!(!vec4<bool>(arg_1, true, true, false)))), select(vec4<bool>(!var_1.x | var_1.x, arg_1, true, true), vec4<bool>(true, any(var_1.ww), var_1.x, false), !select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(arg_1, true, var_1.x, arg_1), arg_1), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, arg_1, true), vec4<bool>(true, false, false, var_1.x)), arg_1)));
    var_0 = false;
    return func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-607f - 451f), 1358f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1353f, -1424f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(718f - -207f) + 432f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(792f - 1136f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1042f, 377f), _wgslsmith_f_op_f32(step(467f, -341f)))), true)))), select(select(!select(vec2<bool>(true, true), vec2<bool>(var_2.x, true), var_1.x), vec2<bool>(true, true), var_1.xx), vec2<bool>(arg_1, false), var_1.x));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.a;
    var var_1 = vec2<bool>(all(!select(!vec4<bool>(arg_1.b, true, true, arg_1.b), select(vec4<bool>(arg_1.b, true, arg_1.b, false), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), false), select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true), vec4<bool>(arg_1.b, false, true, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b)))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-185f - -1083f), _wgslsmith_f_op_f32(f32(-1f) * -1712f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 829f) * vec2<f32>(-276f, -186f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-276f, 271f), vec2<f32>(253f, 478f), vec2<bool>(arg_1.b, false))))), -174f, select(select(vec2<bool>(arg_1.b, arg_1.b), !vec2<bool>(arg_1.b, arg_1.b), false), vec2<bool>(func_5(Struct_1(u_input.a.zyw, vec4<u32>(u_input.d.x, arg_1.a.b.x, 1u, 37840u), var_0.b.x), arg_1.b, Struct_1(u_input.c.wwz, var_0.b, u_input.d.x), 3146u).b, arg_1.b), all(vec2<bool>(arg_1.b, true)))).b);
    var_1 = vec2<bool>(!arg_1.b, !(_wgslsmith_f_op_f32(min(255f, _wgslsmith_f_op_f32(1000f * -725f))) < _wgslsmith_f_op_f32(floor(-1631f))));
    let var_2 = !(!(-_wgslsmith_mod_i32(u_input.e.x, 39204i) < ~(~(-1i))));
    var var_3 = ~_wgslsmith_clamp_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(global3.x, arg_0), ~global3.yx), var_0.a.zx, vec2<i32>(-u_input.e.x, -global3.x) >> (~_wgslsmith_mod_vec2_u32(arg_1.c.b.yz, var_0.b.wx) % vec2<u32>(32u)));
    return func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-411f, -938f), vec2<f32>(-1622f, -205f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-397f, 109f) * vec2<f32>(993f, 1198f)), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(true, var_2))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1261f, 1705f))), -496f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1931f + 562f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), !(!vec2<bool>(true, !var_1.x))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_6(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.e.x, 2147483647i), ~vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 2147483647i)), func_5(Struct_1(min(vec3<i32>(1i, u_input.e.x, 0i), vec3<i32>(global3.x, global3.x, -38841i)), ~vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, 25479u), 66100u), !any(vec2<bool>(true, false)), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(2129f, -888f) + vec2<f32>(-1571f, 737f)), func_1(vec2<f32>(-625f, 936f), -978f, vec2<bool>(false, true)), min(vec2<i32>(-2147483647i, u_input.c.x), u_input.a.wy)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.d.x, u_input.b.x, 87126u, u_input.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1665f))) > _wgslsmith_f_op_f32(floor(-1004f)), Struct_1(u_input.a.wxw, ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, 55582u, 4294967295u, 18288u), ~vec4<u32>(u_input.d.x, 61898u, u_input.d.x, 4294967295u)), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, 0u), u_input.d.x & 84685u))));
    global0 = array<vec3<bool>, 17>();
    let var_1 = var_0.a.b;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(888f, 487f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(498f, 767f), vec2<f32>(-1171f, 120f))))));
    let var_4 = Struct_1(_wgslsmith_sub_vec3_i32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, 1325f), vec2<f32>(var_3.x, -721f), vec2<bool>(var_2.b, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1641f, var_3.x))), var_3.x, select(select(vec2<bool>(var_2.b, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, true))).a.a, _wgslsmith_div_vec3_i32(vec3<i32>(-global3.x, ~(-30520i), -31527i), _wgslsmith_clamp_vec3_i32(vec3<i32>(13199i, 26980i, global3.x), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(var_2.c.b.x, 19u)], u_input.e.x)) & -var_0.a.a)), var_2.a.b, ~(~func_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2363f, 242f))), _wgslsmith_f_op_f32(select(-580f, var_3.x, true)), select(vec2<bool>(true, false), vec2<bool>(true, var_2.b), vec2<bool>(var_0.b, true))).a.b.x));
    var var_5 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, var_3.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-324f, var_3.x))), vec2<bool>(true, true)))), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, -13685i), func_1(vec2<f32>(-2277f, var_3.x), var_3.x, vec2<bool>(false, var_0.b)).c.b, _wgslsmith_add_u32(var_4.b.x, 0u)), func_5(Struct_1(var_0.c.a, vec4<u32>(var_1.x, u_input.b.x, var_2.c.b.x, var_0.c.b.x), var_4.c), var_2.b && var_0.b, Struct_1(var_4.a, var_2.a.b, 4294967295u), var_0.a.c).b, Struct_1(vec3<i32>(var_4.a.x, global2[_wgslsmith_index_u32(var_0.a.c, 19u)], 2147483647i) >> (vec3<u32>(1u, u_input.d.x, 1u) % vec3<u32>(32u)), var_2.a.b, ~var_0.a.b.x)), ~countOneBits(global3.xy << (var_0.a.b.zy % vec2<u32>(32u)))), !(!(!var_0.b)), var_2.a);
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(575f, 1927f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(371f, 1967f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_3.x, var_3.x)), _wgslsmith_f_op_f32(ceil(var_3.x)))), vec2<f32>(-244f, -319f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1106f)) - var_3.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, var_3.x), vec2<f32>(-370f, 343f))))) * vec2<f32>(var_3.x, -1092f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_3.x)), _wgslsmith_f_op_f32(exp2(var_3.x)), var_3.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-778f)))));
}

