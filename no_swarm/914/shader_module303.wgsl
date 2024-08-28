struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec3<u32>(54827u, 21756u, 0u), Struct_1(-691f, vec2<i32>(17984i, -23119i), vec3<i32>(8123i, -44065i, 20477i), vec2<f32>(-208f, -1714f), 602f), vec4<bool>(true, false, true, false)), Struct_2(vec3<u32>(0u, 26114u, 1u), Struct_1(-2631f, vec2<i32>(3044i, -7077i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec2<f32>(1000f, 2564f), 747f), vec4<bool>(false, true, true, true)), Struct_2(vec3<u32>(37081u, 0u, 0u), Struct_1(-874f, vec2<i32>(-1i, -1i), vec3<i32>(20837i, 2147483647i, 0i), vec2<f32>(-423f, 1372f), -388f), vec4<bool>(true, false, true, false)), Struct_2(vec3<u32>(4294967295u, 0u, 69741u), Struct_1(860f, vec2<i32>(-15896i, 3437i), vec3<i32>(1i, -41919i, -8564i), vec2<f32>(-194f, -1000f), -139f), vec4<bool>(false, false, false, true)), Struct_2(vec3<u32>(1u, 1u, 16106u), Struct_1(192f, vec2<i32>(i32(-2147483648), 13110i), vec3<i32>(49791i, 2147483647i, 0i), vec2<f32>(-157f, -686f), -1074f), vec4<bool>(false, true, false, true)), Struct_2(vec3<u32>(4294967295u, 1u, 0u), Struct_1(-431f, vec2<i32>(-1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -2953i, 0i), vec2<f32>(-732f, 566f), 252f), vec4<bool>(false, true, false, true)), Struct_2(vec3<u32>(17028u, 32547u, 1u), Struct_1(441f, vec2<i32>(-17776i, -29131i), vec3<i32>(42011i, -2260i, 2147483647i), vec2<f32>(119f, 1260f), 254f), vec4<bool>(true, true, true, false)), Struct_2(vec3<u32>(5325u, 49390u, 72826u), Struct_1(812f, vec2<i32>(0i, 0i), vec3<i32>(0i, 23609i, 1i), vec2<f32>(373f, -760f), 1410f), vec4<bool>(false, true, false, false)), Struct_2(vec3<u32>(14734u, 0u, 5470u), Struct_1(-159f, vec2<i32>(52556i, i32(-2147483648)), vec3<i32>(-47198i, 28889i, 0i), vec2<f32>(-1046f, 269f), -233f), vec4<bool>(true, true, true, false)), Struct_2(vec3<u32>(0u, 4294967295u, 35260u), Struct_1(-666f, vec2<i32>(39164i, -24155i), vec3<i32>(-21033i, -14591i, 2147483647i), vec2<f32>(-439f, -978f), 250f), vec4<bool>(false, true, false, true)), Struct_2(vec3<u32>(62060u, 4294967295u, 4474u), Struct_1(-500f, vec2<i32>(-42350i, 0i), vec3<i32>(45157i, 20324i, -1i), vec2<f32>(-910f, -1099f), 469f), vec4<bool>(false, false, false, true)), Struct_2(vec3<u32>(82397u, 1u, 64567u), Struct_1(-1621f, vec2<i32>(5356i, -11060i), vec3<i32>(291i, 0i, 1i), vec2<f32>(-1000f, -1541f), -491f), vec4<bool>(true, false, false, false)), Struct_2(vec3<u32>(1u, 0u, 4294967295u), Struct_1(527f, vec2<i32>(17675i, 1i), vec3<i32>(47662i, 2147483647i, 2147483647i), vec2<f32>(1795f, -850f), -1118f), vec4<bool>(false, false, false, false)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(1739f, vec2<i32>(-45449i, -22202i), vec3<i32>(2147483647i, -62224i, -21231i), vec2<f32>(645f, -622f), -1029f), vec4<bool>(true, false, true, false)), Struct_2(vec3<u32>(0u, 41018u, 72487u), Struct_1(-125f, vec2<i32>(0i, 2147483647i), vec3<i32>(-8431i, 1i, 0i), vec2<f32>(-1000f, -1718f), 238f), vec4<bool>(false, true, true, true)), Struct_2(vec3<u32>(6495u, 0u, 0u), Struct_1(-2717f, vec2<i32>(-71742i, 30190i), vec3<i32>(8802i, 14406i, 6921i), vec2<f32>(-813f, 134f), -2031f), vec4<bool>(true, false, true, false)), Struct_2(vec3<u32>(4875u, 22056u, 74455u), Struct_1(2369f, vec2<i32>(35130i, -16246i), vec3<i32>(1028i, -33830i, -17347i), vec2<f32>(403f, -639f), -275f), vec4<bool>(false, true, true, false)), Struct_2(vec3<u32>(4294967295u, 1u, 20645u), Struct_1(-973f, vec2<i32>(i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), 29647i, -65979i), vec2<f32>(-402f, -277f), -1000f), vec4<bool>(true, true, true, false)), Struct_2(vec3<u32>(13996u, 75241u, 5752u), Struct_1(-956f, vec2<i32>(1i, 4269i), vec3<i32>(24979i, 36607i, 2147483647i), vec2<f32>(2915f, 1366f), -199f), vec4<bool>(false, false, false, false)), Struct_2(vec3<u32>(0u, 72507u, 1u), Struct_1(-979f, vec2<i32>(-18848i, 3204i), vec3<i32>(i32(-2147483648), -19208i, -1i), vec2<f32>(-274f, 315f), -1693f), vec4<bool>(true, true, true, false)), Struct_2(vec3<u32>(34512u, 33074u, 19270u), Struct_1(-1000f, vec2<i32>(33790i, 0i), vec3<i32>(15332i, -3634i, 11903i), vec2<f32>(528f, -1871f), 780f), vec4<bool>(false, true, true, true)), Struct_2(vec3<u32>(65928u, 0u, 4294967295u), Struct_1(-336f, vec2<i32>(-17917i, 19012i), vec3<i32>(21972i, 24267i, -1i), vec2<f32>(-282f, 465f), 2538f), vec4<bool>(true, true, false, false)), Struct_2(vec3<u32>(24838u, 5922u, 92782u), Struct_1(1253f, vec2<i32>(0i, -24310i), vec3<i32>(74799i, i32(-2147483648), -13869i), vec2<f32>(974f, -506f), 225f), vec4<bool>(true, true, false, true)));

var<private> global3: Struct_1 = Struct_1(1095f, vec2<i32>(6337i, 2147483647i), vec3<i32>(4792i, 4563i, i32(-2147483648)), vec2<f32>(723f, -718f), 2428f);

var<private> global4: array<f32, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<i32> {
    global2 = array<Struct_2, 23>();
    global0 = _wgslsmith_mod_i32(global3.c.x, 0i);
    global0 = ~(-_wgslsmith_add_i32(firstLeadingBit(u_input.a), -u_input.a) >> (0u % 32u));
    return vec3<i32>(3652i, global3.b.x >> (_wgslsmith_div_u32(abs(global1.a.x) ^ 1u, global1.a.x) % 32u), countOneBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global3.c.x, global3.c.x), 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(global1.b.c.x, 36914i)) & -global1.b.b.x)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: u32) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, ~_wgslsmith_clamp_u32(arg_2, 0u, countOneBits(countOneBits(65480u)))), 23u)];
    let var_1 = global2[_wgslsmith_index_u32(0u, 23u)];
    global1 = Struct_2(~(~_wgslsmith_mult_vec3_u32(firstTrailingBit(var_0.a), vec3<u32>(arg_2, global1.a.x, arg_2) ^ vec3<u32>(19426u, 0u, arg_2))), var_1.b, !vec4<bool>(all(select(vec2<bool>(true, var_0.c.x), var_0.c.yz, vec2<bool>(var_1.c.x, var_1.c.x))), !global1.c.x, true, !(!var_1.c.x)));
    let var_2 = !(!select(select(!global1.c, var_1.c, !var_0.c.x), vec4<bool>(!global1.c.x, false && global1.c.x, var_1.c.x, all(vec2<bool>(false, var_0.c.x))), false));
    var var_3 = var_0.b;
    return Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_mult_u32(64718u, 1u), firstLeadingBit(0u), u_input.b.x, ~74741u)), ~arg_2, ~4294967295u), Struct_1(_wgslsmith_f_op_f32(abs(259f)), global1.b.b, _wgslsmith_add_vec3_i32(~var_3.c, min(func_3(), vec3<i32>(1i, -8526i, 0i))), vec2<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(34684u, 16u)]), global1.b.a), -1514f), vec4<bool>(false, any(global1.c.yw), any(vec4<bool>(any(vec2<bool>(true, false)), var_0.c.x, true, true)), !var_1.c.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec2<u32>) -> u32 {
    var var_0 = ~arg_2.x | 1u;
    var var_1 = func_2(_wgslsmith_sub_u32(~arg_2.x << (~u_input.b.x % 32u), 1u >> (select(~arg_2.x, 101371u, !arg_0.x) % 32u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global1.b.e)), global3.a, global4[_wgslsmith_index_u32(1u, 16u)])))), global1.a.x);
    global1 = Struct_2(vec3<u32>(func_2(arg_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, global3.d.x, global4[_wgslsmith_index_u32(44463u, 16u)]))), var_1.a.x << (global1.a.x % 32u)).a.x, firstTrailingBit(arg_2.x) & func_2(~0u, vec3<f32>(global1.b.e, 1138f, var_1.b.d.x), arg_2.x).a.x, 0u), Struct_1(_wgslsmith_f_op_f32(global1.b.d.x * _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(var_1.a.x, 16u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 0u), 16u)], !arg_0.x))), var_1.b.b, ~(~(var_1.b.c | arg_1)), global3.d, -1803f), select(vec4<bool>(!global1.c.x, !global1.c.x, global1.c.x, var_1.c.x), select(select(var_1.c, global1.c, any(var_1.c.yww)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, var_1.c.x), global1.c, global1.c), func_2(40144u, vec3<f32>(global3.a, global4[_wgslsmith_index_u32(arg_2.x, 16u)], global3.d.x), 1u).c.x), var_1.c), !(!func_2(arg_2.x, vec3<f32>(global1.b.e, global1.b.d.x, 636f), var_1.a.x).c.x)));
    global0 = arg_1.x >> (((_wgslsmith_add_u32(_wgslsmith_add_u32(var_1.a.x, 0u), ~u_input.b.x) ^ (_wgslsmith_clamp_u32(1u, 1u, global1.a.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 71763u), global1.a.yz))) << (arg_2.x % 32u)) % 32u);
    global0 = min(_wgslsmith_mult_i32(countOneBits(u_input.a) ^ u_input.a, ~(func_2(0u, vec3<f32>(-1470f, var_1.b.a, global1.b.a), var_1.a.x).b.b.x >> (~41933u % 32u))), (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, var_1.b.b.x), firstTrailingBit(arg_1)) & global1.b.b.x) >> (4294967295u % 32u));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(global1.a.zx, abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x), u_input.b.yx))) ^ global1.a.yy;
    let var_1 = global3.b;
    var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.xw, u_input.b.zz), ~(~vec2<u32>(var_0.x, 4294967295u | var_0.x)));
    var var_2 = 2147483647i;
    var var_3 = _wgslsmith_f_op_vec2_f32(global3.d + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b.x, 16u)]) + global4[_wgslsmith_index_u32(func_1(global1.c.wxw, global3.c, vec2<u32>(4294967295u, global1.a.x)), 16u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1617f, global4[_wgslsmith_index_u32(global1.a.x, 16u)]) - _wgslsmith_f_op_vec2_f32(global1.b.d * vec2<f32>(global4[_wgslsmith_index_u32(0u, 16u)], global3.d.x))))));
    global3 = func_2(~(abs(global1.a.x) & 68126u) >> (_wgslsmith_sub_u32(global1.a.x, _wgslsmith_div_u32(func_1(global1.c.zyz, global1.b.c, global1.a.yy), _wgslsmith_clamp_u32(var_0.x, 24772u, global1.a.x))) % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f - -373f) - -822f), -298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))), max(global1.a.x, u_input.b.x)).b;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1202f - global1.b.d.x))));
    global3 = func_2(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_3.x, -1000f), _wgslsmith_f_op_f32(sign(global1.b.e)), -867f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, 570f, global4[_wgslsmith_index_u32(global1.a.x, 16u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 16u)], global1.b.d.x, var_4))))), 0u).b;
    var_2 = ~select(global3.b.x, ~23129i & (_wgslsmith_clamp_i32(global3.b.x, 1i, -1i) >> (_wgslsmith_mod_u32(45654u, 46317u) % 32u)), global1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(step(911f, var_4)));
}

