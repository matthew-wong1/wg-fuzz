struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(855f, -1736f, 1111f, -2216f, -302f, 630f, 1256f, 1000f, -267f, 850f, -477f, -887f, -144f, 797f, 1323f, -343f, -1925f, -255f, -944f, 568f, 1070f, -867f);

var<private> global1: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(i32(-2147483648), -62555i, 3497i, 19319i), vec4<i32>(1i, -1i, 1i, 0i), vec4<i32>(5281i, 24173i, 1i, 59326i), vec4<i32>(-14575i, 2147483647i, -1i, 2147483647i), vec4<i32>(17795i, -1i, -1i, -1i), vec4<i32>(-4169i, 0i, 46040i, 67957i), vec4<i32>(37577i, 15546i, 14194i, -4476i), vec4<i32>(-44890i, i32(-2147483648), 1i, -23148i), vec4<i32>(-1i, 45319i, i32(-2147483648), 9401i), vec4<i32>(0i, -20024i, 12617i, 60992i), vec4<i32>(2147483647i, 567i, -23067i, 0i), vec4<i32>(2147483647i, -1i, -1i, -1i), vec4<i32>(i32(-2147483648), 2458i, 1i, i32(-2147483648)), vec4<i32>(0i, 1i, -1i, -3020i), vec4<i32>(-1i, i32(-2147483648), 1i, 4651i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(26144i, 23756i, 1i, -1i), vec4<i32>(-1i, 36692i, -1i, -34297i), vec4<i32>(-8173i, -45064i, 0i, -2124i), vec4<i32>(2147483647i, 2147483647i, -4022i, 1i), vec4<i32>(7489i, 62127i, 0i, 0i), vec4<i32>(16817i, -1i, -1i, -1i), vec4<i32>(-1i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(19445i, 11247i, 1i, 2147483647i), vec4<i32>(-1i, 22288i, 0i, -20718i), vec4<i32>(10099i, -29656i, 0i, -2055i), vec4<i32>(-4737i, 2147483647i, 15453i, -1i), vec4<i32>(40913i, 9687i, 32514i, 73162i), vec4<i32>(i32(-2147483648), 0i, 504i, i32(-2147483648)), vec4<i32>(-2013i, i32(-2147483648), 1i, 0i));

var<private> global2: array<f32, 9> = array<f32, 9>(408f, -173f, -2064f, -726f, -1317f, 1122f, -777f, 185f, -568f);

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec3<f32>(-1303f, -1000f, 897f), 0i, vec2<bool>(true, true), 15125u));

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec3<u32> {
    var var_0 = !(!all(arg_1.a.d));
    let var_1 = select(select(arg_1.a.e, vec3<bool>(!(!arg_1.a.d.x), false, !arg_1.a.d.x), arg_1.a.d.wzz), select(vec3<bool>(false, any(select(arg_1.a.d.zxy, arg_1.a.d.zxw, vec3<bool>(true, arg_1.a.d.x, arg_0))), arg_1.a.e.x), !(!(!arg_1.a.d.yww)), vec3<bool>(any(select(arg_1.a.d.zw, vec2<bool>(true, false), arg_0)), any(!arg_1.a.d), -global4.x < 1i)), true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_4 = vec3<u32>(countOneBits(_wgslsmith_mod_u32(58131u, 1u)), ~(~arg_1.a.a.x), _wgslsmith_mult_u32(u_input.c.x, ~1u));
    return abs(vec3<u32>(reverseBits(0u), _wgslsmith_dot_vec3_u32(~arg_1.a.a >> ((u_input.c.zwz & vec3<u32>(arg_1.a.a.x, 0u, u_input.c.x)) % vec3<u32>(32u)), u_input.c.zyz), ~(~26168u) << (select(10289u, _wgslsmith_mult_u32(u_input.a, arg_1.a.a.x), any(arg_1.a.d)) % 32u)));
}

fn func_2() -> bool {
    let var_0 = ~_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b.x & global4.x, _wgslsmith_div_i32(global4.x, 2147483647i), abs(-6665i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global4.x, -2147483647i, global4.x), _wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global1[_wgslsmith_index_u32(20709u, 30u)])), 1i, global4.x));
    var var_1 = Struct_4(Struct_1(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 31444u), select(u_input.c.www, u_input.c.wwy, vec3<bool>(true, true, false))), ~func_3(true, Struct_4(Struct_1(u_input.c.yzw, -556f, true, vec4<bool>(false, true, false, false), vec3<bool>(false, true, false)), u_input.b.xwy, vec2<f32>(-425f, -176f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a, 9u)]))))), true, select(vec4<bool>(all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, false, false)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, u_input.a <= 1u, false)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), true)), u_input.b.yyy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(1u, 22u)], 1102f))), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), -597f))));
    var var_2 = var_1.a;
    let var_3 = var_1.a;
    let var_4 = var_1.a.c;
    return !any(var_2.d.ww);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    global1 = array<vec4<i32>, 30>();
    let var_0 = _wgslsmith_add_u32(arg_0.d, arg_0.d ^ u_input.a);
    var var_1 = arg_0.a.x;
    var var_2 = Struct_4(Struct_1(min(~arg_3.c.wyz, arg_3.c.zyz), -1218f, true, vec4<bool>(all(select(vec4<bool>(arg_3.d.c.x, arg_2.x, arg_3.d.c.x, arg_0.c.x), vec4<bool>(arg_3.d.c.x, arg_3.d.c.x, arg_2.x, false), false)), any(arg_2.yz), false, func_2()), vec3<bool>(u_input.a < (arg_0.d >> (27179u % 32u)), arg_3.d.c.x, true)), vec3<i32>(reverseBits(1i) ^ ~(~u_input.b.x), arg_3.a.x, ~(-35174i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.d.a.xy))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 9u)]), _wgslsmith_f_op_f32(ceil(-1000f)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(var_2.a.a.x), 38468u), 22u)], _wgslsmith_f_op_f32(step(321f, _wgslsmith_f_op_f32(abs(var_2.a.b))))));
    return _wgslsmith_mult_u32(~var_2.a.a.x, _wgslsmith_div_u32(~countOneBits(~var_2.a.a.x), ~(_wgslsmith_sub_u32(u_input.a, arg_3.d.d) | (u_input.c.x << (arg_0.d % 32u)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> vec4<bool> {
    global1 = array<vec4<i32>, 30>();
    return select(arg_1.a.d, arg_1.a.d, select(arg_1.a.d, !select(vec4<bool>(true, true, false, arg_1.a.e.x), vec4<bool>(arg_1.a.e.x, false, false, true), arg_1.a.e.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], -1421f), vec3<f32>(global2[_wgslsmith_index_u32(68711u, 9u)], -1262f, -837f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1359f, 416f, global2[_wgslsmith_index_u32(u_input.a, 9u)])))))));
    var var_1 = Struct_3(u_input.b.zz, _wgslsmith_dot_vec2_u32(u_input.c.yz, abs(_wgslsmith_div_vec2_u32(~u_input.c.xy, ~vec2<u32>(u_input.a, u_input.c.x)))), u_input.c, global3[_wgslsmith_index_u32(0u, 1u)]);
    var var_2 = _wgslsmith_dot_vec2_i32(var_1.a, var_1.a);
    let var_3 = vec3<bool>(false, false, all(vec4<bool>(true, true, true, true)));
    let var_4 = select(select(func_4(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.d.d, 9u)] * 483f), -1238f, global0[_wgslsmith_index_u32(func_1(Struct_2(var_0, var_1.d.b, var_1.d.c, 2811u), global2[_wgslsmith_index_u32(var_1.d.d, 9u)], vec4<bool>(false, true, var_1.d.c.x, var_3.x), Struct_3(u_input.b.zw, var_1.d.d, vec4<u32>(var_1.d.d, var_1.c.x, u_input.c.x, u_input.a), var_1.d)), 22u)]), Struct_4(Struct_1(u_input.c.zwz, global0[_wgslsmith_index_u32(u_input.a, 22u)], var_3.x, vec4<bool>(false, true, true, false), var_3), vec3<i32>(2147483647i, -1i, global4.x), _wgslsmith_f_op_vec2_f32(var_0.zz - vec2<f32>(var_0.x, 822f)))), func_4(vec3<f32>(var_1.d.a.x, 685f, global0[_wgslsmith_index_u32(u_input.a, 22u)]), Struct_4(Struct_1(vec3<u32>(24171u, u_input.c.x, u_input.c.x), 360f, true, vec4<bool>(true, var_1.d.c.x, false, false), var_3), vec3<i32>(2147483647i, global4.x, 1i), var_1.d.a.yx)), any(!select(var_3, vec3<bool>(true, var_1.d.c.x, false), var_3.x))), !select(vec4<bool>(var_1.d.c.x & false, !var_1.d.c.x, true, true), vec4<bool>(!var_1.d.c.x, var_1.d.c.x, var_1.d.a.x >= var_1.d.a.x, true), _wgslsmith_f_op_f32(var_0.x + -509f) <= global2[_wgslsmith_index_u32(0u | u_input.c.x, 9u)]), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_1.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(589f, 1000f)))))), _wgslsmith_f_op_f32(step(1269f, var_1.d.a.x)), u_input.b.yxz);
}

