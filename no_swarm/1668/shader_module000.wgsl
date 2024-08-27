struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(0u, vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(10568u, vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(1629u, vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_1(10163u, vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(56077u, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(12780u, vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_1(1u, vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_1(52695u, vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_1(71432u, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(39713u, vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_1(4294967295u, vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(9639u, vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_1(208u, vec2<bool>(true, false), vec3<bool>(false, true, false)), Struct_1(51273u, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(4294967295u, vec2<bool>(true, true), vec3<bool>(false, true, true)), Struct_1(17171u, vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_1(0u, vec2<bool>(false, false), vec3<bool>(false, true, false)), Struct_1(30658u, vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(51121u, vec2<bool>(true, true), vec3<bool>(true, false, false)), Struct_1(1u, vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(15089u, vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(1u, vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(0u, vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_1(44441u, vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_1(61959u, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_1(70025u, vec2<bool>(true, false), vec3<bool>(false, false, true)), Struct_1(21798u, vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_1(1u, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_1(1u, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(19876u, vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_1(18033u, vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(27514u, vec2<bool>(false, false), vec3<bool>(true, false, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(1190f));
    return -896i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = Struct_3(true, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, 1i, 0i, -1i), _wgslsmith_mod_vec4_i32(u_input.d, u_input.d)), 54016i), 0i), any(!(!arg_1.c)), ~(global0.c.a ^ 1u), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x >> (37997u % 32u), u_input.b.x), vec3<i32>(1i, _wgslsmith_clamp_i32(2147483647i, u_input.d.x, -17415i), 2147483647i) & u_input.d.wyy, select(-min(u_input.d.yyx, vec3<i32>(u_input.d.x, u_input.b.x, u_input.b.x)), u_input.d.xyz, true != any(vec4<bool>(arg_1.c.x, false, arg_1.b.x, arg_0.b.x)))));
    let var_1 = reverseBits(~(~func_3(select(vec4<bool>(false, arg_0.b.x, arg_0.c.x, global0.b), vec4<bool>(var_0.c, true, false, false), global0.d.c.x), Struct_2(global0.a, arg_1.b.x, Struct_1(global0.c.a, vec2<bool>(arg_1.c.x, true), vec3<bool>(false, global0.a.x, arg_1.c.x)), arg_1))));
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    let var_2 = Struct_4(false, _wgslsmith_f_op_f32(416f * -240f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-277f, 308f, 377f) + vec3<f32>(-844f, 251f, -302f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1307f, -763f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1255f, 524f, -1938f)))))));
    return u_input.b.x > -2147483647i;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_3 {
    global0 = Struct_2(global0.c.c, false, global0.d, global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, 3234u), global0.c.a)), 32u)]);
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    let var_0 = ~max(abs(~_wgslsmith_mult_u32(global0.d.a, 64302u)), ~91741u);
    global1 = array<Struct_1, 32>();
    return Struct_3(arg_1.x, _wgslsmith_div_i32(max(-u_input.d.x, i32(-1i) * -28224i), func_3(arg_1, Struct_2(vec3<bool>(true, global0.b, true), true, global0.d, global0.d))), global0.b, 1u, vec3<i32>(u_input.b.x, ~_wgslsmith_mod_i32(~(-695i), _wgslsmith_sub_i32(-85939i, u_input.d.x)), -19231i));
}

fn func_1() -> Struct_5 {
    let var_0 = func_4(~(~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(0u, global0.c.a, global0.d.a)), select(u_input.a, u_input.a, vec3<bool>(true, global0.d.c.x, global0.b)))), !select(select(vec4<bool>(false, true, true, global0.a.x), select(vec4<bool>(false, true, global0.a.x, global0.d.b.x), vec4<bool>(true, false, global0.d.b.x, global0.a.x), global0.d.c.x), !vec4<bool>(true, global0.d.b.x, global0.c.b.x, global0.d.c.x)), select(select(vec4<bool>(global0.b, global0.c.b.x, true, true), vec4<bool>(false, true, false, global0.c.b.x), true), !vec4<bool>(global0.c.c.x, true, global0.c.b.x, true), func_2(global1[_wgslsmith_index_u32(0u, 32u)], Struct_1(1u, global0.a.zz, global0.c.c), 40764u)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(473f, 293f, -1032f, -1648f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(860f, -232f, 1283f, -388f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1062f, _wgslsmith_f_op_f32(-127f + -259f), -1000f, _wgslsmith_f_op_f32(-183f + 966f)))));
    global1 = array<Struct_1, 32>();
    global0 = Struct_2(vec3<bool>(all(!vec3<bool>(var_0.a, false, false)), !global0.a.x, false), -1387f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-262f)))), Struct_1(max(6320u, abs(38077u)), select(!vec2<bool>(global0.d.b.x, global0.c.c.x), select(select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, true), false), global0.a.xx, !var_0.a), func_4(vec3<u32>(var_0.d, 0u, global0.c.a), vec4<bool>(true, true, global0.a.x, true), vec4<f32>(-636f, 147f, 685f, 452f)).b <= ~u_input.b.x), !vec3<bool>(all(global0.c.c), all(global0.c.c), true)), Struct_1(7639u, global0.d.c.xx, select(!(!global0.d.c), vec3<bool>(true, false, true), select(global0.a, !vec3<bool>(var_0.a, true, global0.b), global0.d.c))));
    let var_1 = Struct_4(false, -894f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 160f, -504f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(467f, -932f, 1178f) - vec3<f32>(844f, 2326f, 114f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, 1205f, -1468f))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.b);
    return Struct_5(firstTrailingBit(4294967295u) ^ ~((global0.d.a << (11877u % 32u)) | _wgslsmith_sub_u32(4294967295u, u_input.a.x)), _wgslsmith_clamp_u32(~0u, 4294967295u, _wgslsmith_sub_u32(~35377u, 11225u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_1.c.x)))), select(global0.c.c, vec3<bool>(_wgslsmith_f_op_f32(sign(var_1.b)) >= _wgslsmith_f_op_f32(max(-1193f, 624f)), true, global0.c.c.x), !select(global0.c.c, vec3<bool>(global0.d.c.x, global0.a.x, global0.a.x), any(vec4<bool>(global0.c.b.x, global0.d.c.x, false, var_0.c)))), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d.zy ^ -vec2<i32>(~_wgslsmith_div_i32(1359i, u_input.b.x), 2147483647i);
    var_0 = u_input.b;
    let var_1 = _wgslsmith_sub_i32(u_input.b.x, -var_0.x);
    var var_2 = func_1();
    let var_3 = Struct_2(vec3<bool>(false, var_2.d.x, global0.a.x & func_4(~u_input.a, vec4<bool>(var_2.d.x, var_2.d.x, global0.d.b.x, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, 3130f, var_2.c))).c), true, global0.d, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(var_2.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(3342u, 1u, 4294967295u, 3810u)), 18128u << (0u % 32u)))), 32u)]);
    var var_4 = func_4(~(~(vec3<u32>(var_3.c.a, 4294967295u, global0.c.a) | (vec3<u32>(var_3.c.a, u_input.c, var_2.a) << (vec3<u32>(0u, 73906u, var_2.b) % vec3<u32>(32u))))), !vec4<bool>(!var_3.d.b.x, true, _wgslsmith_f_op_f32(select(474f, -357f, true)) == 592f, all(!vec4<bool>(false, var_3.b, global0.b, var_3.c.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-537f, 228f, var_2.c, var_2.c), vec4<f32>(var_2.c, -415f, -685f, -810f), vec4<bool>(true, true, var_3.b, false))), vec4<f32>(var_2.c, var_2.c, var_2.c, -331f), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.c, var_2.c, 383f) * vec4<f32>(var_2.c, var_2.c, 1797f, -415f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1157f, -840f, var_2.c, var_2.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1393f, 420f, -1000f, var_2.c))))));
    var_2 = func_1();
    let var_5 = Struct_1(~func_1().a, !vec2<bool>(!var_2.d.x, any(select(vec2<bool>(var_2.d.x, false), global0.d.b, var_4.a))), vec3<bool>(false, false, false));
    var var_6 = Struct_5(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.c.a, global0.c.a), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.e.x, global0.d.a), vec2<u32>(u_input.e.x, 0u))), countOneBits(_wgslsmith_add_vec2_u32(~u_input.e, vec2<u32>(var_3.d.a, global0.c.a)))), 69683u, var_2.c, !(!vec3<bool>(var_2.c < var_2.c, true, true == var_4.c)), vec3<u32>(1u, 50878u, _wgslsmith_add_u32(var_3.c.a, ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(37561i, -73644i, _wgslsmith_dot_vec3_i32(firstTrailingBit(~select(u_input.d.xxy, vec3<i32>(var_1, var_4.b, u_input.b.x), var_6.d)), countOneBits(select(-var_4.e, vec3<i32>(-1i, var_4.b, -1i), !global0.d.c))));
}

