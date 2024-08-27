struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(14813i, vec3<i32>(84499i, 12926i, -9730i), vec3<u32>(0u, 64137u, 4294967295u), -953f), Struct_1(20195i, vec3<i32>(1i, 39305i, 84930i), vec3<u32>(0u, 0u, 0u), -1172f), Struct_1(i32(-2147483648), vec3<i32>(i32(-2147483648), -31979i, -1i), vec3<u32>(1u, 1u, 1u), 242f), Struct_1(0i, vec3<i32>(3939i, -69868i, -28546i), vec3<u32>(12030u, 4294967295u, 62651u), -1000f), Struct_1(2147483647i, vec3<i32>(-31799i, 2147483647i, 3321i), vec3<u32>(39569u, 4294967295u, 71181u), 670f), Struct_1(39856i, vec3<i32>(1322i, 22586i, -1i), vec3<u32>(67133u, 10340u, 55070u), -192f), Struct_1(-20537i, vec3<i32>(0i, 0i, 13330i), vec3<u32>(0u, 88730u, 9580u), -1000f), Struct_1(-2727i, vec3<i32>(i32(-2147483648), 35738i, 16717i), vec3<u32>(4294967295u, 33768u, 70480u), 125f), Struct_1(2147483647i, vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<u32>(45463u, 4294967295u, 70997u), -1054f), Struct_1(2147483647i, vec3<i32>(1i, -1293i, 1i), vec3<u32>(4294967295u, 37211u, 3553u), -1318f));

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(i32(-2147483648), vec3<i32>(19889i, 2147483647i, 23682i), vec3<u32>(4294967295u, 1u, 35602u), 846f), Struct_1(i32(-2147483648), vec3<i32>(-41519i, 1i, 2147483647i), vec3<u32>(76683u, 4294967295u, 1723u), 1576f), Struct_1(2147483647i, vec3<i32>(0i, 2147483647i, -18558i), vec3<u32>(28748u, 91792u, 24678u), 995f), Struct_1(0i, vec3<i32>(86i, 8180i, 9753i), vec3<u32>(0u, 65963u, 4294967295u), 859f), Struct_1(-7379i, vec3<i32>(-47916i, 40409i, -1i), vec3<u32>(2344u, 50353u, 4294967295u), 548f), Struct_1(i32(-2147483648), vec3<i32>(i32(-2147483648), -50141i, -1i), vec3<u32>(11061u, 1u, 1u), -1124f), Struct_1(-10353i, vec3<i32>(-24239i, -1541i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 34108u), 1000f), Struct_1(47372i, vec3<i32>(-12190i, 54766i, i32(-2147483648)), vec3<u32>(26910u, 23718u, 1u), 871f), Struct_1(1i, vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<u32>(0u, 54646u, 4294967295u), 307f), Struct_1(i32(-2147483648), vec3<i32>(2147483647i, 15196i, -4021i), vec3<u32>(37552u, 35102u, 36159u), -813f), Struct_1(2147483647i, vec3<i32>(0i, -42113i, i32(-2147483648)), vec3<u32>(4294967295u, 4294967295u, 4294967295u), 234f), Struct_1(7059i, vec3<i32>(-2040i, 0i, i32(-2147483648)), vec3<u32>(0u, 1187u, 66913u), -2221f), Struct_1(2147483647i, vec3<i32>(-12845i, 32827i, 1i), vec3<u32>(71991u, 28542u, 52996u), -781f), Struct_1(-1i, vec3<i32>(-1i, i32(-2147483648), 0i), vec3<u32>(42233u, 1u, 4294967295u), -646f), Struct_1(2147483647i, vec3<i32>(11905i, 20516i, 2796i), vec3<u32>(4294967295u, 24489u, 55607u), 2014f), Struct_1(2147483647i, vec3<i32>(-1i, 2147483647i, -39191i), vec3<u32>(0u, 1u, 0u), -373f), Struct_1(-22352i, vec3<i32>(0i, 22589i, i32(-2147483648)), vec3<u32>(4294967295u, 117833u, 41139u), 459f), Struct_1(36433i, vec3<i32>(6611i, 1i, 0i), vec3<u32>(65610u, 79251u, 0u), 1737f), Struct_1(2147483647i, vec3<i32>(-37683i, -23321i, 2147483647i), vec3<u32>(1u, 1u, 20346u), -1140f), Struct_1(-8007i, vec3<i32>(42272i, 1i, 7895i), vec3<u32>(82152u, 4294967295u, 1u), 280f), Struct_1(i32(-2147483648), vec3<i32>(-46425i, 1i, -23152i), vec3<u32>(11255u, 27436u, 82726u), -710f), Struct_1(-1i, vec3<i32>(0i, -4410i, 747i), vec3<u32>(0u, 1u, 4294967295u), -375f), Struct_1(-1i, vec3<i32>(34222i, -59659i, 0i), vec3<u32>(4294967295u, 88392u, 0u), 2218f), Struct_1(i32(-2147483648), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<u32>(4294967295u, 15803u, 34613u), 111f), Struct_1(26775i, vec3<i32>(i32(-2147483648), 1i, 0i), vec3<u32>(0u, 72376u, 1u), -1952f), Struct_1(22721i, vec3<i32>(23142i, 14139i, 26834i), vec3<u32>(1u, 42939u, 1u), 1000f), Struct_1(-1i, vec3<i32>(-1i, i32(-2147483648), -23369i), vec3<u32>(4294967295u, 50153u, 58440u), 199f), Struct_1(-4945i, vec3<i32>(41628i, -79141i, -3872i), vec3<u32>(24987u, 24028u, 1u), 284f), Struct_1(-42068i, vec3<i32>(-1618i, 30802i, 6714i), vec3<u32>(0u, 4294967295u, 4294967295u), -1464f), Struct_1(-3951i, vec3<i32>(15660i, -10796i, 39321i), vec3<u32>(4294967295u, 79039u, 1u), 1000f));

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), vec3<i32>(-7556i, -28184i, -1i), vec3<u32>(0u, 47355u, 17202u), -1260f);

var<private> global4: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = vec2<bool>(!(all(select(vec4<bool>(global4.x, true, global4.x, global4.x), vec4<bool>(false, global4.x, false, global4.x), vec4<bool>(true, false, true, false))) || global4.x), false);
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~global3.c.x, ~(1u | global3.c.x)), firstTrailingBit(4294967295u)), abs(0u), ~44193u), 30u)];
    var var_1 = Struct_1(-19981i, _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(global0.a), 1i, -global3.b.x >> (global3.c.x % 32u)), ~vec3<i32>(~global0.b.x, 2147483647i, global3.a >> (global3.c.x % 32u))), _wgslsmith_mult_vec3_u32(global0.c, global0.c), _wgslsmith_f_op_f32(min(1913f, _wgslsmith_f_op_f32(sign(global0.d)))));
    let var_2 = abs(vec4<i32>(global3.b.x, global0.a, -firstTrailingBit(max(global3.a, 2147483647i)), _wgslsmith_div_i32(global0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-48550i, global0.a, 1i, -1i) ^ vec4<i32>(2147483647i, global3.b.x, global3.a, -2147483647i), vec4<i32>(2147483647i, -2147483647i, 319i, global0.b.x)))));
    var var_3 = var_0.x;
    return abs(var_1.c);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = min(global3.a & 28276i, _wgslsmith_div_i32(countOneBits(1i), i32(-1i) * -6501i));
    global3 = Struct_1(-15785i, firstTrailingBit(vec3<i32>(1i, 0i, _wgslsmith_mult_i32(-5987i, -72681i))) << (func_3() % vec3<u32>(32u)), arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1546f));
    let var_1 = Struct_1(-14807i, -_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_0, global3.a, global0.a), -vec3<i32>(4607i, 10102i, arg_0.a)), global0.c, _wgslsmith_f_op_f32(-1503f - _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1380f, global3.d)))));
    global3 = Struct_1(firstLeadingBit(1i), ~(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b.x, -54815i, 16197i), arg_1.b)), vec3<u32>(21851u, ~(global3.c.x >> (select(arg_0.c.x, 52792u, true) % 32u)), countOneBits(countOneBits(u_input.b))), -477f);
    global4 = !select(!select(vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(global4.x, false, global4.x, true), !vec4<bool>(global4.x, global4.x, false, false)), select(vec4<bool>(global4.x, !global4.x, all(global4.wz), !global4.x), vec4<bool>(global4.x, true && global4.x, true, any(vec4<bool>(false, false, global4.x, global4.x))), global4.x), select(vec4<bool>(true, false, arg_1.d <= global0.d, true), select(!vec4<bool>(global4.x, global4.x, global4.x, true), vec4<bool>(true, true, true, false), !vec4<bool>(true, true, global4.x, global4.x)), !(!vec4<bool>(true, global4.x, false, global4.x))));
    return true & global4.x;
}

fn func_1() -> f32 {
    let var_0 = ~0u;
    let var_1 = global4.wz;
    var var_2 = select(vec3<bool>(!func_2(Struct_1(1i, global3.b, vec3<u32>(4294967295u, u_input.b, u_input.b), global0.d), global1[_wgslsmith_index_u32(~var_0, 10u)], _wgslsmith_mod_u32(global3.c.x, u_input.b)), all(vec2<bool>(true, global4.x)), var_1.x), global4.zyz, reverseBits(firstTrailingBit(u_input.c.x)) != 1u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d, 1272f, 2031f, _wgslsmith_f_op_f32(global3.d * global0.d)) + vec4<f32>(_wgslsmith_f_op_f32(2468f * global0.d), global3.d, _wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(max(global3.d, global3.d))))));
    global3 = global1[_wgslsmith_index_u32(var_0, 10u)];
    return -1085f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * global0.d) - global0.d);
    global4 = vec4<bool>(true, !any(global4.wz) || true, ~global3.a < 0i, u_input.b == (_wgslsmith_add_u32(u_input.b & global0.c.x, ~u_input.b) ^ _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.c.x, u_input.b, 4294967295u)), abs(vec4<u32>(27540u, 10152u, u_input.a, 1u)))));
    var var_1 = !global4.yw;
    global2 = array<Struct_1, 30>();
    var var_2 = 44616u;
    global1 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -115f), _wgslsmith_f_op_f32(ceil(-474f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, 1005f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 508f))))))), 985f);
}

