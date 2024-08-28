struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

var<private> global1: array<f32, 30> = array<f32, 30>(169f, 1201f, -1416f, 1000f, 630f, -690f, 1000f, -2379f, -927f, 149f, 583f, -1000f, -795f, 2180f, 1000f, -1270f, -1000f, -1037f, 144f, -1034f, 1636f, 551f, -911f, -128f, 521f, -173f, -171f, -1175f, 2026f, 2548f);

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<f32>(-1395f, -493f), vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(20524i, 2147483647i), 10036u), vec3<i32>(-1i, 2147483647i, -1i), vec2<u32>(20869u, 8821u), vec4<u32>(6266u, 1u, 0u, 4294967295u), vec4<f32>(1000f, -205f, -213f, -1000f));

var<private> global3: vec4<i32>;

var<private> global4: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(vec2<f32>(-723f, 1419f), vec3<u32>(46409u, 1u, 8503u), vec2<i32>(1i, 4868i), 4294967295u), vec3<i32>(-6106i, i32(-2147483648), -40865i), vec2<u32>(22827u, 4294967295u), vec4<u32>(4294967295u, 0u, 37343u, 4294967295u), vec4<f32>(280f, 1387f, 1619f, 1161f)), Struct_3(Struct_1(vec2<f32>(-1717f, -418f), vec3<u32>(4294967295u, 0u, 39396u), vec2<i32>(0i, i32(-2147483648)), 23928u), vec3<i32>(-19346i, 32852i, 1i), vec2<u32>(604u, 1450u), vec4<u32>(9118u, 8566u, 1u, 0u), vec4<f32>(-1360f, -315f, -281f, -350f)), Struct_3(Struct_1(vec2<f32>(-1280f, -523f), vec3<u32>(18780u, 1u, 1u), vec2<i32>(-3313i, -1i), 18190u), vec3<i32>(0i, -1216i, 2147483647i), vec2<u32>(34820u, 45961u), vec4<u32>(35416u, 25709u, 0u, 1u), vec4<f32>(-985f, 1013f, -1114f, -1609f)), Struct_3(Struct_1(vec2<f32>(-1345f, 1512f), vec3<u32>(1u, 4294967295u, 0u), vec2<i32>(46335i, 2147483647i), 19715u), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec2<u32>(0u, 1u), vec4<u32>(1u, 94375u, 2967u, 25245u), vec4<f32>(835f, 1402f, -1232f, -310f)), Struct_3(Struct_1(vec2<f32>(-844f, -1000f), vec3<u32>(1u, 28041u, 7853u), vec2<i32>(2147483647i, -77614i), 43623u), vec3<i32>(0i, -1i, 21706i), vec2<u32>(1u, 23782u), vec4<u32>(0u, 26869u, 4294967295u, 13928u), vec4<f32>(-907f, 263f, 1055f, 306f)), Struct_3(Struct_1(vec2<f32>(1283f, 1000f), vec3<u32>(1u, 0u, 1u), vec2<i32>(31929i, 5527i), 6406u), vec3<i32>(-24017i, 2147483647i, -38662i), vec2<u32>(16634u, 8891u), vec4<u32>(4294967295u, 0u, 37384u, 46324u), vec4<f32>(-1100f, -335f, -248f, -1100f)), Struct_3(Struct_1(vec2<f32>(1582f, -429f), vec3<u32>(44172u, 0u, 59553u), vec2<i32>(0i, -1i), 7027u), vec3<i32>(17023i, 49037i, 24448i), vec2<u32>(64735u, 1u), vec4<u32>(0u, 0u, 41204u, 282u), vec4<f32>(710f, -1000f, -236f, 1121f)), Struct_3(Struct_1(vec2<f32>(878f, 468f), vec3<u32>(207216u, 0u, 4294967295u), vec2<i32>(66607i, i32(-2147483648)), 44101u), vec3<i32>(-13394i, 21825i, 1i), vec2<u32>(4294967295u, 52580u), vec4<u32>(23674u, 4294967295u, 62994u, 12469u), vec4<f32>(-1460f, -198f, -991f, 147f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> i32 {
    let var_0 = arg_0.b.c.x;
    var var_1 = min(arg_1.x, min(-45566i, 46066i) & _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global2.a.c.x, 0i)), vec2<i32>(-55212i, 44110i))) >> (global2.c.x % 32u);
    global4 = array<Struct_3, 8>();
    let var_2 = ~arg_0.b.b.x;
    var var_3 = global2.a.d;
    return 29338i;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> vec4<bool> {
    global1 = array<f32, 30>();
    return !vec4<bool>(_wgslsmith_dot_vec2_u32(~global2.d.wx, reverseBits(arg_0.c)) < (abs(global2.c.x) | abs(24157u)), (true && all(vec2<bool>(true, true))) || (_wgslsmith_sub_u32(1u, global2.a.d) >= ~55123u), any(vec2<bool>(true, true)), false | (all(vec3<bool>(true, false, false)) && true));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec4<bool> {
    global2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1011f, 1000f)) - _wgslsmith_f_op_vec2_f32(-global2.e.zx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a.a)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-506f, -1011f))))), _wgslsmith_add_vec3_u32(~min(vec3<u32>(global2.d.x, 33384u, 1u), arg_1.b), arg_1.b & ~global2.d.wyy), -min(vec2<i32>(-10409i, arg_3.d.c.x), select(arg_1.c, arg_1.c, vec2<bool>(arg_3.c.x, true))), 1903u), global2.b, vec2<u32>(~(~0u), 12983u), global2.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(663f, _wgslsmith_f_op_f32(min(1056f, 1431f)), _wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1131f, -896f) * 100f)) - _wgslsmith_f_op_vec4_f32(ceil(global2.e))));
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    var var_0 = arg_3;
    var var_1 = u_input.a.yy;
    return select(func_3(Struct_3(arg_1, _wgslsmith_div_vec3_i32(arg_0.b, _wgslsmith_clamp_vec3_i32(arg_0.b, global2.b, global2.b)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, arg_0.d.x), global0[_wgslsmith_index_u32(4294967295u, 31u)]), arg_1.b.zz), arg_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.e))), global4[_wgslsmith_index_u32(global2.c.x, 8u)], global4[_wgslsmith_index_u32(arg_3.d.d, 8u)]), select(vec4<bool>(!(arg_3.c.x && arg_3.e.x), _wgslsmith_sub_u32(1u, global2.a.d) != (global2.c.x << (global2.d.x % 32u)), false, true), vec4<bool>(arg_3.e.x, false, !var_0.c.x, _wgslsmith_sub_i32(var_0.b.c.x, 0i) == (arg_1.c.x & arg_0.a.c.x)), func_3(global4[_wgslsmith_index_u32(88055u, 8u)], Struct_3(arg_0.a, vec3<i32>(0i, 17301i, arg_1.c.x), arg_1.b.yz, ~vec4<u32>(arg_0.a.b.x, 13380u, 0u, var_0.b.b.x), _wgslsmith_div_vec4_f32(global2.e, vec4<f32>(-1113f, -1114f, arg_1.a.x, arg_0.e.x))), global4[_wgslsmith_index_u32(22499u, 8u)])), vec4<bool>(arg_0.e.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1322f, -304f)))), arg_3.e.x, _wgslsmith_add_u32(u_input.a.x, global2.d.x) != _wgslsmith_dot_vec2_u32(firstLeadingBit(arg_1.b.yy), select(arg_3.d.b.xx, arg_3.b.b.xy, var_0.c.x)), any(select(!vec3<bool>(var_0.c.x, var_0.e.x, true), arg_3.e, !var_0.e))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool) -> StorageBuffer {
    global1 = array<f32, 30>();
    global0 = array<vec2<u32>, 31>();
    let var_0 = -countOneBits(vec2<i32>(_wgslsmith_clamp_i32(1i, func_1(Struct_2(vec2<f32>(-1778f, arg_0.a.x), global2.a, vec2<bool>(false, true), Struct_1(arg_0.a, arg_0.d.b, vec2<i32>(2147483647i, arg_0.d.c.x), 20032u), arg_0.e), vec4<i32>(arg_0.b.c.x, arg_0.d.c.x, -1i, -43110i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(arg_0.b.c.x, -28630i))), -1i));
    global1 = array<f32, 30>();
    var var_1 = arg_0;
    return StorageBuffer(-8493i, _wgslsmith_sub_i32(global3.x, -1813i), var_1.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(-vec3<i32>(1i, global3.x, func_1(Struct_2(global2.a.a, Struct_1(vec2<f32>(global2.a.a.x, -241f), vec3<u32>(global2.c.x, 42327u, 0u), global3.zx, u_input.a.x), vec2<bool>(false, true), global2.a, vec3<bool>(false, false, true)), vec4<i32>(global3.x, global2.b.x, global3.x, 2147483647i))), select(global2.b, global3.yzx, select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true));
    var var_1 = !(!vec2<bool>(!all(vec4<bool>(false, false, false, false)), true));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(788f)), 665f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(51948u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], var_1.x))), var_1.x)))), _wgslsmith_f_op_f32(floor(-285f)), _wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(364f + _wgslsmith_f_op_f32(493f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x)))));
    let x = u_input.a;
    s_output = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(step(global2.e.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(1029f, 1000f) * _wgslsmith_f_op_vec2_f32(floor(global2.a.a))))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global2.e.zz, global2.e.xx))), ~(vec3<u32>(global2.c.x, 1u, 111517u) ^ vec3<u32>(29105u, 38409u, global2.d.x)), vec2<i32>(global3.x ^ global3.x, global3.x), 1u), select(vec2<bool>(var_1.x, true != var_1.x), !(!vec2<bool>(var_1.x, true)), all(!vec4<bool>(true, true, false, var_1.x))), global2.a, select(vec3<bool>(!var_1.x, var_1.x, any(vec4<bool>(true, var_1.x, true, true))), vec3<bool>(true, var_1.x && false, true), true)), !(!(!func_2(global4[_wgslsmith_index_u32(26373u, 8u)], global2.a, u_input.a.x, Struct_2(var_2.ww, Struct_1(var_2.xw, vec3<u32>(47020u, 25459u, global2.c.x), global2.a.c, 5081u), vec2<bool>(false, true), Struct_1(vec2<f32>(1199f, global2.a.a.x), u_input.a, global2.b.yy, 57137u), vec3<bool>(false, false, true))))), all(vec3<bool>(false, var_1.x, true)));
}

