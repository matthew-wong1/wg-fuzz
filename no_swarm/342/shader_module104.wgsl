struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<bool>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(-1201f, vec4<i32>(21627i, -67536i, 1i, -1542i)), vec3<f32>(-1773f, 1776f, -571f)), Struct_2(Struct_1(-990f, vec4<i32>(i32(-2147483648), -25771i, -31601i, 2147483647i)), vec3<f32>(193f, -1044f, 556f)), Struct_2(Struct_1(-672f, vec4<i32>(-1i, 2147483647i, -7269i, -39857i)), vec3<f32>(-1000f, 1336f, 1204f)), Struct_2(Struct_1(257f, vec4<i32>(0i, 14429i, 2147483647i, 1i)), vec3<f32>(619f, -2516f, -1160f)), Struct_2(Struct_1(2468f, vec4<i32>(12679i, 812i, -33353i, -22500i)), vec3<f32>(1006f, -1000f, 1718f)), Struct_2(Struct_1(-940f, vec4<i32>(45859i, 1i, -38477i, -1i)), vec3<f32>(-952f, -148f, -562f)));

var<private> global2: array<i32, 24> = array<i32, 24>(-1i, -11793i, -23999i, i32(-2147483648), 1i, i32(-2147483648), 0i, i32(-2147483648), 1i, 2631i, 16306i, -76325i, 11364i, 7955i, 1i, -9816i, 0i, 51446i, i32(-2147483648), -19076i, 2147483647i, 0i, 10144i, -33657i);

var<private> global3: Struct_2 = Struct_2(Struct_1(-2050f, vec4<i32>(-1i, 2147483647i, 35613i, 0i)), vec3<f32>(932f, 2043f, -1091f));

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_4) -> i32 {
    var var_0 = global3.b.xx;
    let var_1 = arg_3.b.b.x;
    let var_2 = abs(vec3<u32>(14037u & arg_1.b.x, ~_wgslsmith_div_u32(global0.b.b.x, ~arg_1.b.x), 1u));
    var var_3 = vec4<i32>(global3.a.b.x, 1i, -1i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.e, ~(-2147483647i), global3.a.b.x ^ arg_0), _wgslsmith_clamp_vec3_i32(u_input.b.zwy, global3.a.b.xyz, global3.a.b.zxy) | -vec3<i32>(-22702i, 1i, arg_1.a.x))));
    var var_4 = arg_3.b;
    return arg_1.a.x;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_4(~global3.a.b.x, Struct_3(~_wgslsmith_mod_vec2_i32(vec2<i32>(global0.a, global2[_wgslsmith_index_u32(1u, 24u)]), u_input.b.zw), firstTrailingBit(global0.b.b), global0.b.c), select(select(!vec2<bool>(global0.c.x, global0.c.x), global0.c, vec2<bool>(global3.a.a <= 1028f, all(vec3<bool>(global0.c.x, true, true)))), vec2<bool>(global0.c.x, true), !global0.c.x), global0.d, -_wgslsmith_clamp_i32(u_input.a, func_3(firstLeadingBit(24344i), Struct_3(vec2<i32>(1i, global2[_wgslsmith_index_u32(1u, 24u)]), vec2<u32>(global0.b.b.x, 26910u), global3.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b.c.a, 2299f))), Struct_4(global2[_wgslsmith_index_u32(global0.d, 24u)], global0.b, vec2<bool>(true, false), 1u, global3.a.b.x)), func_3(-u_input.c, Struct_3(global0.b.a, vec2<u32>(0u, 4294967295u), Struct_1(-1280f, vec4<i32>(global0.a, global2[_wgslsmith_index_u32(global0.b.b.x, 24u)], 0i, -2147483647i))), _wgslsmith_f_op_vec2_f32(step(global3.b.yx, global3.b.zz)), Struct_4(-13993i, global0.b, global0.c, 0u, -7748i))));
    let var_1 = global3.b;
    global0 = var_0;
    var var_2 = Struct_5(~var_0.e, abs(abs(firstLeadingBit(vec4<u32>(global0.b.b.x, global0.d, global0.b.b.x, global0.b.b.x)))) << (~select(vec4<u32>(4294967295u, global0.d, global0.b.b.x, global0.d) << (vec4<u32>(var_0.b.b.x, 1u, global0.b.b.x, global0.d) % vec4<u32>(32u)), ~vec4<u32>(1u, 3127u, var_0.d, 0u), all(vec3<bool>(global0.c.x, false, global0.c.x))) % vec4<u32>(32u)));
    var var_3 = 2147483647i;
    return !select(!vec3<bool>(global0.c.x != global0.c.x, all(var_0.c), !global0.c.x), vec3<bool>(select(var_0.c.x, true, global0.c.x & global0.c.x), true, false), vec3<bool>(false | (global0.b.c.a == 1645f), (global0.c.x | global0.c.x) | !global0.c.x, false));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_4 {
    let var_0 = select(!func_2(), vec3<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-567f)), arg_1)) < -399f, true, select(true, false, arg_0) | true), false);
    var var_1 = _wgslsmith_sub_u32(~(1u << (global0.b.b.x % 32u)) << (_wgslsmith_sub_u32(~global0.d, global0.d) % 32u), global0.b.b.x) | _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~12426u, ~global0.d), global0.b.b.x, ~(~global0.d));
    global3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1683f + 814f), _wgslsmith_f_op_f32(-829f - global0.b.c.a), func_2().x))), -vec4<i32>(_wgslsmith_mult_i32(global0.a, global2[_wgslsmith_index_u32(global0.d, 24u)]), -1i & u_input.b.x, ~19856i, -6137i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1794f, global0.b.c.a, -857f) * _wgslsmith_f_op_vec3_f32(-global3.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.b, global3.b))), !(!var_0)))));
    var var_2 = Struct_1(global3.b.x, vec4<i32>(25033i, _wgslsmith_div_i32(global0.b.c.b.x, 1i ^ ~u_input.b.x), -8536i, _wgslsmith_div_i32(firstLeadingBit(2147483647i ^ u_input.a), global3.a.b.x)));
    let var_3 = max(~countOneBits(~select(vec4<u32>(global0.d, global0.b.b.x, global0.d, global0.b.b.x), vec4<u32>(global0.d, 13195u, global0.d, global0.b.b.x), var_0.x)), countOneBits(abs(vec4<u32>(_wgslsmith_mult_u32(global0.b.b.x, global0.d), ~4294967295u, ~1u, 1u | global0.d))));
    return Struct_4(21783i, global0.b, func_2().xx, 28882u, 0i);
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> Struct_4 {
    let var_0 = global0.b.b.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global0.b.c.a, _wgslsmith_f_op_f32(trunc(-1627f)), global3.a.a))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(-914f, 1210f), _wgslsmith_f_op_f32(round(-1888f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1536f)), _wgslsmith_div_f32(global3.a.a, -1574f)), -583f), vec4<f32>(-1784f, arg_0.b.c.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.c.a + -1872f), arg_0.b.c.a)), _wgslsmith_f_op_f32(-arg_0.b.c.a))))));
    var var_2 = func_1(true, global3.a.a).b.c.a;
    var_2 = -715f;
    let var_3 = var_1.xxz;
    return func_1(!(~_wgslsmith_mod_i32(arg_0.e, -30904i) != _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, global2[_wgslsmith_index_u32(arg_0.d, 24u)]), -2147483647i)), _wgslsmith_f_op_f32(-arg_0.b.c.a));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.c.a - arg_0.b.c.a))), func_1(!arg_2.x, _wgslsmith_div_f32(global3.b.x, global0.b.c.a)).b.c.a, _wgslsmith_f_op_f32(125f + -1113f), _wgslsmith_f_op_f32(global3.a.a + _wgslsmith_f_op_f32(f32(-1f) * -982f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c.a, -235f, global3.a.a, global0.b.c.a)))))), vec4<f32>(_wgslsmith_div_f32(-1988f, arg_0.b.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.c.a + 412f))) - 885f), 552f, global3.b.x));
    var var_1 = 10308u;
    global3 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 1u), 6u)];
    let var_2 = -1032f;
    var var_3 = Struct_5(-(~reverseBits(~(-70157i))), ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, arg_1, 1u), vec4<u32>(arg_1, 4294967295u, arg_1, arg_1)), min(vec4<u32>(arg_0.b.b.x, arg_1, 1u, arg_0.b.b.x), vec4<u32>(arg_0.b.b.x, 1u, global0.b.b.x, 16834u))), _wgslsmith_add_vec4_u32(vec4<u32>(23587u, 164185u, 19550u, 0u), vec4<u32>(20849u, 18708u, arg_1, 0u)) ^ ~vec4<u32>(4294967295u, arg_1, 45904u, 37591u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 24>();
    global3 = Struct_2(Struct_1(global0.b.c.a, _wgslsmith_mult_vec4_i32(countOneBits(u_input.b), _wgslsmith_div_vec4_i32(global3.a.b, firstTrailingBit(global0.b.c.b)))), global3.b);
    var var_0 = Struct_4(countOneBits(global3.a.b.x), global0.b, select(vec2<bool>(all(!vec2<bool>(global0.c.x, global0.c.x)), true), !global0.c, global0.c.x), abs(~53332u), ~global3.a.b.x);
    let var_1 = func_5(func_4(func_1(!global0.c.x, _wgslsmith_f_op_f32(abs(global3.a.a))), _wgslsmith_f_op_f32(step(1455f, -177f))), global0.b.b.x, select(select(vec4<bool>(global0.c.x, false, true, global0.c.x), select(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), vec4<bool>(global0.c.x, true, global0.c.x, var_0.c.x), global0.c.x), true), select(!vec4<bool>(global0.c.x, var_0.c.x, global0.c.x, global0.c.x), select(vec4<bool>(global0.c.x, true, true, global0.c.x), vec4<bool>(global0.c.x, var_0.c.x, global0.c.x, true), false), vec4<bool>(global0.c.x, global0.c.x, false, var_0.c.x)), !global0.c.x), _wgslsmith_div_i32(2147483647i, max(global2[_wgslsmith_index_u32(var_0.b.b.x, 24u)], 7900i))) | (~var_0.d << (~_wgslsmith_add_u32(firstTrailingBit(var_0.d), 60378u) % 32u));
    var var_2 = func_4(func_1(global3.a.b.x >= global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(78052u, ~35677u), 24u)], _wgslsmith_f_op_f32(min(-458f, var_0.b.c.a))), global3.a.a).b.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-19050i, global3.b.zx, global0.b.c.b, 0i);
}

