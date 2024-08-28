struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<bool>(false, false, true, true), Struct_3(vec4<bool>(true, false, true, true), 70912u, vec3<i32>(i32(-2147483648), 1i, -42552i), vec4<f32>(539f, 390f, 1671f, 1889f)));

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec4<bool>(true, false, true, true), Struct_3(vec4<bool>(true, true, false, true), 9551u, vec3<i32>(53649i, 30102i, -29560i), vec4<f32>(-1520f, 1051f, -1000f, 535f))), Struct_4(vec4<bool>(true, false, false, true), Struct_3(vec4<bool>(true, false, true, false), 0u, vec3<i32>(0i, 15383i, 29986i), vec4<f32>(741f, 1151f, -1952f, -648f))), Struct_4(vec4<bool>(true, true, false, false), Struct_3(vec4<bool>(false, true, false, true), 1u, vec3<i32>(50176i, 0i, 27848i), vec4<f32>(-384f, -624f, -1364f, -812f))), Struct_4(vec4<bool>(false, false, false, true), Struct_3(vec4<bool>(true, true, false, true), 27663u, vec3<i32>(2147483647i, -31250i, -31396i), vec4<f32>(141f, 453f, -410f, -912f))), Struct_4(vec4<bool>(true, true, false, false), Struct_3(vec4<bool>(true, true, true, false), 47808u, vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec4<f32>(-619f, 980f, 202f, -119f))), Struct_4(vec4<bool>(false, true, true, false), Struct_3(vec4<bool>(true, true, false, true), 4294967295u, vec3<i32>(-6233i, 3837i, -45301i), vec4<f32>(-588f, 110f, -1665f, 816f))), Struct_4(vec4<bool>(false, false, true, false), Struct_3(vec4<bool>(false, false, true, false), 0u, vec3<i32>(i32(-2147483648), 0i, 20720i), vec4<f32>(-139f, 397f, 575f, -1398f))), Struct_4(vec4<bool>(false, false, false, true), Struct_3(vec4<bool>(true, false, false, false), 0u, vec3<i32>(23683i, -25172i, -54607i), vec4<f32>(-537f, 1246f, -1490f, -328f))), Struct_4(vec4<bool>(false, true, false, true), Struct_3(vec4<bool>(true, false, true, false), 4294967295u, vec3<i32>(-4623i, 0i, i32(-2147483648)), vec4<f32>(-443f, 693f, 961f, -1000f))), Struct_4(vec4<bool>(true, true, true, false), Struct_3(vec4<bool>(true, true, false, false), 1u, vec3<i32>(-23280i, 62000i, 45062i), vec4<f32>(695f, 1000f, -1199f, 124f))), Struct_4(vec4<bool>(false, true, true, false), Struct_3(vec4<bool>(false, false, false, true), 0u, vec3<i32>(-21890i, 4114i, -1i), vec4<f32>(-983f, 521f, 564f, -1129f))), Struct_4(vec4<bool>(true, false, true, false), Struct_3(vec4<bool>(false, true, false, false), 24152u, vec3<i32>(-7833i, 16729i, 48831i), vec4<f32>(1000f, -555f, 1228f, 1931f))), Struct_4(vec4<bool>(false, true, false, true), Struct_3(vec4<bool>(true, false, false, false), 1u, vec3<i32>(i32(-2147483648), 43439i, -43016i), vec4<f32>(809f, -237f, 100f, 338f))), Struct_4(vec4<bool>(false, true, false, false), Struct_3(vec4<bool>(true, false, true, true), 0u, vec3<i32>(i32(-2147483648), 23007i, 0i), vec4<f32>(762f, -1302f, 1000f, 509f))), Struct_4(vec4<bool>(false, true, true, true), Struct_3(vec4<bool>(false, true, false, true), 17893u, vec3<i32>(1i, 2147483647i, 14831i), vec4<f32>(-1068f, 1000f, 2472f, 1070f))), Struct_4(vec4<bool>(true, false, true, true), Struct_3(vec4<bool>(true, false, true, false), 1u, vec3<i32>(2147483647i, i32(-2147483648), 37907i), vec4<f32>(800f, -497f, -2394f, -732f))), Struct_4(vec4<bool>(false, false, true, false), Struct_3(vec4<bool>(false, false, false, true), 4294967295u, vec3<i32>(-35326i, 34168i, 0i), vec4<f32>(247f, 2168f, 287f, -774f))), Struct_4(vec4<bool>(false, false, false, true), Struct_3(vec4<bool>(false, false, true, true), 0u, vec3<i32>(15059i, 5705i, 2147483647i), vec4<f32>(-229f, 332f, 1489f, -764f))), Struct_4(vec4<bool>(true, false, false, false), Struct_3(vec4<bool>(false, true, false, false), 44358u, vec3<i32>(0i, 2147483647i, 1i), vec4<f32>(871f, 101f, -2756f, 1000f))), Struct_4(vec4<bool>(false, true, false, true), Struct_3(vec4<bool>(true, false, false, true), 0u, vec3<i32>(0i, -7807i, 66824i), vec4<f32>(2275f, 1483f, 2619f, 1383f))), Struct_4(vec4<bool>(true, false, true, false), Struct_3(vec4<bool>(false, true, false, true), 4645u, vec3<i32>(3504i, 1i, -1i), vec4<f32>(-2293f, 322f, 537f, -279f))));

var<private> global2: Struct_5 = Struct_5(-56i, Struct_3(vec4<bool>(false, false, false, true), 8483u, vec3<i32>(0i, 26198i, 1i), vec4<f32>(1222f, 556f, -587f, 317f)));

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec4<f32>(264f, 625f, -1254f, 1525f)), Struct_2(vec4<f32>(-1383f, -670f, 920f, 665f)), Struct_2(vec4<f32>(2857f, -528f, -1133f, -1000f)), Struct_2(vec4<f32>(-2343f, -897f, -510f, 835f)), Struct_2(vec4<f32>(1204f, 361f, 484f, -248f)), Struct_2(vec4<f32>(235f, -1526f, 1162f, 464f)));

var<private> global4: array<vec2<bool>, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(global2.b.b, 6u)];
    let var_1 = ~(~global0.b.b);
    var var_2 = global2.b;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-global0.b.d));
    global0 = global1[_wgslsmith_index_u32(global0.b.b, 21u)];
    return -34212i;
}

fn func_2(arg_0: i32) -> Struct_5 {
    let var_0 = global2.a ^ _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-(vec4<i32>(1i, global0.b.c.x, u_input.a, 17405i) | vec4<i32>(global2.a, 2147483647i, global0.b.c.x, global2.a)), vec4<i32>(_wgslsmith_clamp_i32(global0.b.c.x, -12852i, 2147483647i), global2.b.c.x, func_3(global0.b.d.x), 9212i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~arg_0, arg_0, -2147483647i, _wgslsmith_mult_i32(global2.a, -7531i)), vec4<i32>(abs(-46923i), _wgslsmith_mult_i32(global2.b.c.x, -5565i), select(-26053i, -2147483647i, false), 2147483647i), -(vec4<i32>(arg_0, global2.a, u_input.a, u_input.a) << (vec4<u32>(1u, u_input.b.x, global0.b.b, global2.b.b) % vec4<u32>(32u)))));
    let var_1 = any(select(select(select(vec4<bool>(true, true, true, global2.b.a.x), select(vec4<bool>(global2.b.a.x, true, global2.b.a.x, global0.a.x), global0.b.a, vec4<bool>(true, global2.b.a.x, true, global0.a.x)), global2.b.a), vec4<bool>(!global2.b.a.x, global2.b.a.x | global0.a.x, select(true, global0.b.a.x, global2.b.a.x), -1i < global2.a), _wgslsmith_mult_i32(-41316i, -1i) == var_0), global2.b.a, global2.b.a.x));
    let var_2 = global3[_wgslsmith_index_u32(global0.b.b, 6u)];
    let var_3 = u_input.b.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.b.d.yx, _wgslsmith_div_vec2_f32(vec2<f32>(1f, global0.b.d.x), global2.b.d.yz))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.d.xx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1235f, global2.b.d.x), global2.b.d.ww))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.b.d.x)), global0.b.d.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.d.wz - global2.b.d.yx)))));
    return Struct_5(u_input.a | global0.b.c.x, global0.b);
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = func_2(global0.b.c.x);
    let var_1 = func_2(func_2(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(firstTrailingBit(u_input.a), -1i), ~2147483647i)).a);
    var var_2 = 17382u;
    var_2 = select(1u, var_1.b.b, var_1.b.a.x);
    global2 = var_0;
    return ~_wgslsmith_sub_i32(~1i, ~global0.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.c.x, func_1(125f), 0i, _wgslsmith_clamp_i32(-15643i, _wgslsmith_div_i32(global2.b.c.x, u_input.a), -17117i)), -(_wgslsmith_div_vec4_i32(vec4<i32>(-31021i, u_input.a, global0.b.c.x, 2147483647i), vec4<i32>(global2.a, 2147483647i, global2.a, 16795i)) << (_wgslsmith_div_vec4_u32(vec4<u32>(49578u, u_input.b.x, global2.b.b, 24404u), vec4<u32>(36498u, 0u, 4294967295u, 0u)) % vec4<u32>(32u)))), Struct_3(global0.b.a, ~(~28353u), global0.b.c, vec4<f32>(1612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.d.x + 643f) - -1000f), _wgslsmith_f_op_f32(-global2.b.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.d.x * -1398f), _wgslsmith_div_f32(global2.b.d.x, global0.b.d.x))))));
    var var_0 = min(~global0.b.b, min(~min(~u_input.b.x, min(0u, global0.b.b)), min(0u, global2.b.b)));
    let var_1 = func_2(-(global0.b.c.x | select(30446i, global2.b.c.x, true)) & _wgslsmith_mod_i32(~(u_input.a | global0.b.c.x), _wgslsmith_mod_i32(global0.b.c.x << (global2.b.b % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, -33542i, 5821i, 22413i), vec4<i32>(u_input.a, u_input.a, global0.b.c.x, global2.b.c.x))))).b.a.x;
    global0 = global1[_wgslsmith_index_u32(abs(1u), 21u)];
    global3 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b | select(~vec3<u32>(4294967295u, u_input.b.x, 19450u), vec3<u32>(global2.b.b, 21335u, 1u), u_input.b.x < 0u)), global0.b.d, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, u_input.a)), global0.b.c.zz)));
}

