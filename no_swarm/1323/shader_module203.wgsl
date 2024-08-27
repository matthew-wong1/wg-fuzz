struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
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

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(true, vec3<u32>(1u, 11599u, 8746u), true, vec3<u32>(1u, 87433u, 362u), vec2<f32>(-1000f, 491f)), Struct_1(true, vec3<u32>(4294u, 1u, 73250u), true, vec3<u32>(2698u, 70657u, 62082u), vec2<f32>(246f, 493f)), Struct_1(false, vec3<u32>(1u, 4294967295u, 39610u), true, vec3<u32>(157u, 0u, 1u), vec2<f32>(-315f, 719f)), Struct_1(true, vec3<u32>(60319u, 2061u, 1u), false, vec3<u32>(29497u, 1u, 1u), vec2<f32>(1374f, -3136f)), Struct_1(true, vec3<u32>(45477u, 0u, 4294967295u), true, vec3<u32>(52585u, 7952u, 0u), vec2<f32>(-169f, -397f)), Struct_1(true, vec3<u32>(0u, 39559u, 1u), true, vec3<u32>(0u, 0u, 1u), vec2<f32>(-1042f, -1073f)), Struct_1(true, vec3<u32>(49670u, 1u, 5334u), true, vec3<u32>(10778u, 0u, 0u), vec2<f32>(1308f, -1948f)), Struct_1(true, vec3<u32>(356u, 18799u, 1u), true, vec3<u32>(112463u, 0u, 36736u), vec2<f32>(-1544f, -1386f)), Struct_1(false, vec3<u32>(0u, 0u, 39001u), false, vec3<u32>(37269u, 6252u, 1u), vec2<f32>(1234f, -171f)), Struct_1(true, vec3<u32>(0u, 6141u, 1u), true, vec3<u32>(119u, 36311u, 0u), vec2<f32>(-1632f, -1000f)), Struct_1(true, vec3<u32>(1u, 0u, 60645u), true, vec3<u32>(7610u, 0u, 35853u), vec2<f32>(-1099f, 1723f)), Struct_1(true, vec3<u32>(1u, 1u, 74953u), false, vec3<u32>(9575u, 0u, 0u), vec2<f32>(-412f, -606f)), Struct_1(false, vec3<u32>(0u, 50303u, 48730u), true, vec3<u32>(53214u, 4294967295u, 4648u), vec2<f32>(1000f, -1235f)), Struct_1(false, vec3<u32>(1u, 1u, 31289u), false, vec3<u32>(1u, 4294967295u, 34716u), vec2<f32>(877f, 390f)), Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 4294967295u), true, vec3<u32>(55266u, 23395u, 4294967295u), vec2<f32>(145f, 127f)), Struct_1(false, vec3<u32>(4294967295u, 0u, 0u), true, vec3<u32>(4294967295u, 22953u, 4294967295u), vec2<f32>(-933f, 1031f)), Struct_1(true, vec3<u32>(1904u, 49808u, 557u), false, vec3<u32>(1u, 4294967295u, 0u), vec2<f32>(-789f, 236f)), Struct_1(false, vec3<u32>(0u, 64050u, 0u), true, vec3<u32>(28554u, 0u, 4294967295u), vec2<f32>(-1456f, -220f)), Struct_1(false, vec3<u32>(81083u, 1u, 70698u), false, vec3<u32>(16440u, 32067u, 5387u), vec2<f32>(1130f, 1152f)), Struct_1(false, vec3<u32>(68895u, 79746u, 39045u), true, vec3<u32>(36481u, 39290u, 74224u), vec2<f32>(919f, -1089f)), Struct_1(true, vec3<u32>(4294967295u, 13486u, 4294967295u), true, vec3<u32>(4294967295u, 49617u, 48724u), vec2<f32>(-314f, 513f)), Struct_1(true, vec3<u32>(53013u, 47017u, 0u), false, vec3<u32>(4294967295u, 4294967295u, 4785u), vec2<f32>(-653f, 971f)), Struct_1(true, vec3<u32>(1032u, 4294967295u, 105104u), true, vec3<u32>(26793u, 41981u, 28950u), vec2<f32>(1234f, 176f)), Struct_1(true, vec3<u32>(0u, 0u, 58525u), false, vec3<u32>(4294967295u, 1u, 20987u), vec2<f32>(-1000f, -1054f)), Struct_1(false, vec3<u32>(4294967295u, 5861u, 0u), true, vec3<u32>(7103u, 0u, 32822u), vec2<f32>(663f, -2219f)), Struct_1(true, vec3<u32>(6475u, 21715u, 1365u), true, vec3<u32>(7828u, 0u, 4294967295u), vec2<f32>(-324f, -299f)));

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(4294967295u, 78539u), vec2<u32>(59524u, 1u), vec2<u32>(1u, 1u), vec2<u32>(12197u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(74759u, 12133u), vec2<u32>(25178u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(15516u, 11995u), vec2<u32>(36550u, 0u), vec2<u32>(0u, 88590u), vec2<u32>(1u, 25135u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(21425u, 26286u), vec2<u32>(97424u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(59746u, 0u), vec2<u32>(39913u, 63005u), vec2<u32>(0u, 47239u), vec2<u32>(43510u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(38231u, 1u), vec2<u32>(48068u, 17083u));

var<private> global4: vec4<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = min(u_input.a, vec4<u32>((4294967295u << (~arg_1.a.d.x % 32u)) << (u_input.a.x % 32u), select(u_input.b.x, _wgslsmith_sub_u32(80586u | arg_1.a.b.x, ~arg_1.a.d.x), true), u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), u_input.c), ~u_input.a.wwy)));
    var var_1 = ~reverseBits(38048u);
    global0 = array<Struct_2, 24>();
    global1 = array<Struct_1, 26>();
    global0 = array<Struct_2, 24>();
    return arg_1.e.b.x;
}

fn func_2() -> vec2<u32> {
    global0 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_mod_vec3_i32(~abs(vec3<i32>(func_3(global4.yw, Struct_3(global1[_wgslsmith_index_u32(21462u, 26u)], u_input.c.x, vec2<i32>(2147483647i, -2147483647i), global1[_wgslsmith_index_u32(26673u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), ~(-46509i), -2147483647i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-58249i, -498i, ~8471i), vec3<i32>(1i, 1i, 1i)));
    let var_1 = -341f;
    global4 = !(!select(!vec4<bool>(false, global4.x, true, false), select(!vec4<bool>(global4.x, global4.x, true, false), vec4<bool>(false, true, false, global4.x), vec4<bool>(global4.x, false, global4.x, global4.x)), vec4<bool>(global4.x, any(global4.zxw), true, select(true, true, global4.x))));
    var var_2 = global1[_wgslsmith_index_u32(~9859u, 26u)];
    return _wgslsmith_clamp_vec2_u32(max(global3[_wgslsmith_index_u32(0u, 24u)], _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(var_2.d.xy, ~global3[_wgslsmith_index_u32(0u, 24u)]), ~min(vec2<u32>(1u, var_2.b.x), vec2<u32>(8901u, u_input.c.x)))), ~(~(~(vec2<u32>(var_2.b.x, 66676u) & vec2<u32>(u_input.a.x, 4294967295u)))), ~vec2<u32>(var_2.b.x, 10736u));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-972f, -133f, 745f, 2255f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, -545f, 293f, -286f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, 1000f, -215f, -360f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, 376f, 756f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, 835f, 148f, -1119f))))))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.xy)), _wgslsmith_f_op_vec2_f32(step(var_1.wz, var_1.wz)));
    let var_3 = global1[_wgslsmith_index_u32(~12216u ^ firstLeadingBit(arg_0.x), 26u)];
    var var_4 = arg_3;
    return Struct_1(true, ~u_input.c, true, ~vec3<u32>(func_2().x, 33038u, _wgslsmith_mod_u32(5455u, arg_3) >> (~67575u % 32u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(var_3.e)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.e.x, var_1.x)), _wgslsmith_f_op_vec2_f32(var_3.e - vec2<f32>(var_3.e.x, 276f))))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = func_4(func_2() ^ (vec2<u32>(1u, _wgslsmith_add_u32(arg_1.x, arg_0.d.d.x)) >> (arg_1 % vec2<u32>(32u))), select(!vec4<bool>(!global4.x, true, true, false), !select(select(vec4<bool>(false, global4.x, false, arg_0.d.c), vec4<bool>(global4.x, global4.x, arg_0.a.c, false), vec4<bool>(global4.x, true, arg_0.a.a, true)), !vec4<bool>(arg_0.d.a, true, arg_0.d.c, arg_0.e.c.c), !global4.x), !vec4<bool>(true, false, !arg_0.a.a, global4.x)), !select(global4.wxw, global4.zxw, select(select(global4.zzw, global4.xyx, true), global4.zwy, !global4.x)), 11196u);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(abs(min(_wgslsmith_sub_vec2_u32(u_input.a.zy, vec2<u32>(var_0.d.x, 0u)), arg_0.e.c.d.yx)), !select(vec4<bool>(true, global4.x, arg_0.d.c, false), select(vec4<bool>(arg_0.e.c.a, true, global4.x, true), vec4<bool>(false, false, var_0.c, false), vec4<bool>(var_0.a, false, false, true)), !vec4<bool>(global4.x, true, var_0.a, true)), global4.wzx, 57674u).e - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.e - arg_2.xw), vec2<f32>(_wgslsmith_f_op_f32(floor(2468f)), _wgslsmith_f_op_f32(sign(arg_0.e.c.e.x))), true))));
    var_1 = _wgslsmith_f_op_vec2_f32(func_4(~(arg_0.d.d.zx | vec2<u32>(4294967295u, u_input.c.x)), select(select(select(vec4<bool>(false, global4.x, false, true), vec4<bool>(arg_0.d.c, arg_0.e.c.c, true, false), false), select(vec4<bool>(false, true, arg_0.e.c.a, true), vec4<bool>(arg_0.d.c, false, false, var_0.a), var_0.a), select(vec4<bool>(global4.x, arg_0.d.a, var_0.c, arg_0.e.c.c), vec4<bool>(var_0.a, true, false, false), false)), vec4<bool>(var_0.a, true, var_0.a, true), _wgslsmith_mult_i32(0i, 2147483647i) <= reverseBits(arg_0.e.b.x)), global4.zwx, _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(u_input.c.x, 29374u))).e * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a.e, _wgslsmith_f_op_vec2_f32(-var_0.e), global4.yy)))));
    var var_2 = any(select(vec4<bool>(global4.x, true & (var_0.e.x != var_1.x), true, var_0.a), select(!select(vec4<bool>(var_0.a, var_0.c, false, arg_0.d.c), vec4<bool>(true, true, arg_0.a.c, var_0.a), vec4<bool>(global4.x, true, false, global4.x)), select(vec4<bool>(var_0.a, global4.x, arg_0.e.c.c, global4.x), !vec4<bool>(global4.x, false, var_0.c, false), !global4.x), true), !(!select(vec4<bool>(false, var_0.a, true, arg_0.a.a), vec4<bool>(global4.x, arg_0.a.c, true, true), true))));
    var var_3 = countOneBits(~4294967295u);
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4, arg_3: bool) -> i32 {
    var var_0 = select(select(select(!global4.yz, global4.xx, arg_2.a.x), global4.zy, select(arg_2.a.yy, global4.wx, all(!arg_2.a))), vec2<bool>(true, all(vec4<bool>(true, true, any(global4.yzz), true))), arg_2.a.wy);
    let var_1 = Struct_2(arg_1.e.a, arg_1.e.b, func_1(Struct_3(Struct_1(!global4.x, vec3<u32>(arg_2.b, u_input.c.x, 17174u), all(global4.xz), select(vec3<u32>(arg_2.b, arg_1.b, 30534u), u_input.c, vec3<bool>(arg_3, arg_3, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1447f, arg_1.a.e.x))), max(~34110u, 0u), firstLeadingBit(firstTrailingBit(arg_1.e.b.zz)), arg_1.e.c, arg_1.e), _wgslsmith_div_vec2_u32(func_2(), vec2<u32>(~u_input.c.x, func_4(vec2<u32>(0u, u_input.a.x), arg_2.a, arg_2.a.zxz, arg_2.b).b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.d.e.x, arg_1.e.d, 1750f, arg_1.d.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-260f, 187f, -1000f, arg_1.d.e.x) + vec4<f32>(arg_1.e.c.e.x, arg_1.a.e.x, -525f, 237f)))))).a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1.a.e.x)))));
    let var_2 = var_1.c.d;
    var_0 = global4.zx;
    global1 = array<Struct_1, 26>();
    return 16144i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3599f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1059f * -453f))), 533f)), global4.x | !(!global4.x), any(vec3<bool>(select(all(global4.xzx), global4.x | global4.x, all(vec4<bool>(global4.x, global4.x, global4.x, global4.x))), global4.x, true)), 2147483647i <= select(-22715i, func_5(false, func_1(Struct_3(Struct_1(false, u_input.c, true, vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x), vec2<f32>(553f, -185f)), u_input.c.x, vec2<i32>(1i, -22103i), global1[_wgslsmith_index_u32(u_input.a.x, 26u)], Struct_2(40191u, vec3<i32>(-1i, -8210i, 3810i), Struct_1(global4.x, vec3<u32>(u_input.c.x, u_input.b.x, 15236u), false, u_input.c, vec2<f32>(1026f, -1190f)), 687f)), vec2<u32>(4294967295u, 55579u), vec4<f32>(-160f, -986f, -1000f, 397f)), Struct_4(vec4<bool>(global4.x, false, true, false), 65888u), any(vec4<bool>(global4.x, true, true, global4.x))), !global4.x));
    var var_1 = !var_0.x;
    var var_2 = Struct_4(vec4<bool>(any(!vec4<bool>(false, global4.x, true, var_0.x)), true, !(true | global4.x), any(vec3<bool>(true, global4.x, global4.x)) == var_0.x), abs(_wgslsmith_dot_vec4_u32(~u_input.a, ~u_input.a)));
    var_0 = select(vec4<bool>(!(!var_0.x), global4.x, abs(u_input.a.x) < 4294967295u, global4.x), select(!vec4<bool>(true, var_0.x, false, !var_0.x), select(!(!vec4<bool>(false, false, true, var_2.a.x)), var_2.a, global4.x), vec4<bool>(all(select(var_0.xw, vec2<bool>(false, var_2.a.x), var_0.zz)), func_4(u_input.a.zx & global3[_wgslsmith_index_u32(u_input.c.x, 24u)], vec4<bool>(global4.x, var_0.x, true, var_2.a.x), select(vec3<bool>(false, true, true), vec3<bool>(var_2.a.x, false, var_2.a.x), vec3<bool>(global4.x, var_2.a.x, true)), 1u).a, var_2.a.x, var_2.a.x)), !any(vec2<bool>(true, var_0.x)));
    var var_3 = Struct_1(true, ~(~u_input.a.wzy), all(vec2<bool>(!var_0.x, !select(true, global4.x, global4.x))), u_input.a.zxz, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-915f, 706f) + vec2<f32>(-184f, 1338f)), func_1(Struct_3(global1[_wgslsmith_index_u32(44774u, 26u)], 1u, vec2<i32>(-1i, -13561i), global1[_wgslsmith_index_u32(var_2.b, 26u)], global0[_wgslsmith_index_u32(var_2.b, 24u)]), func_4(vec2<u32>(40738u, u_input.a.x), var_2.a, var_0.xzz, 12055u).b.yx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1238f, 1748f, 1008f, -923f))).e.c.e))));
    let var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.x);
}

