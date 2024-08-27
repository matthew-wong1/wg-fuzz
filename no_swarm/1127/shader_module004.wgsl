struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global3: Struct_3 = Struct_3(-9776i, Struct_1(vec3<i32>(50841i, i32(-2147483648), 26140i), vec2<u32>(4294967295u, 13401u), false, vec4<u32>(27199u, 3927u, 0u, 34694u), vec2<i32>(i32(-2147483648), 24162i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_div_vec3_i32(~vec3<i32>(-73474i, 0i, 36233i) & arg_0.b.a, -min(global0.b.a, abs(~global0.b.a)));
    global1 = Struct_1(_wgslsmith_mult_vec3_i32(-(arg_0.b.a ^ global1.a), _wgslsmith_div_vec3_i32(-vec3<i32>(arg_0.b.a.x, global0.b.e.x, arg_1.x), arg_0.b.a << (vec3<u32>(4294967295u, 7122u, 0u) % vec3<u32>(32u)))) >> (global3.b.d.zzy % vec3<u32>(32u)), vec2<u32>(max(10854u, ~arg_0.b.b.x) | global1.d.x, 1u), true, vec4<u32>(reverseBits(min(arg_0.b.b.x, 4294967295u)) ^ _wgslsmith_mult_u32(global1.b.x, global3.b.d.x >> (global1.b.x % 32u)), ~1u, global1.b.x, abs(global1.d.x)), vec2<i32>(~firstTrailingBit(var_0.x), _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global0.b.a.x, global1.a.x, 2147483647i, 1i), vec4<i32>(global0.b.a.x, -25800i, -2147483647i, var_0.x)), vec4<i32>(-arg_1.x, _wgslsmith_clamp_i32(-23005i, -56389i, -35625i), global3.b.e.x, 9790i))));
    global0 = Struct_3(select(select(0i, 0i, all(!vec4<bool>(global0.b.c, false, true, false))), global1.a.x, global3.b.c | global0.b.c), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, -2147483647i)), vec3<i32>(arg_0.b.e.x, var_0.x, global3.a)), select(var_0, global3.b.a, vec3<bool>(global3.b.c, false, false)) ^ global0.b.a), global0.b.b, any(select(vec2<bool>(false, global3.b.c), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.d.zxy, vec3<u32>(global1.b.x, arg_0.b.d.x, 137787u)), 25u)], !global2[_wgslsmith_index_u32(global3.b.b.x, 25u)])), abs(vec4<u32>(4294967295u, u_input.c.x, ~global3.b.b.x, min(u_input.b, 67765u))), ~(~min(var_0.zz, vec2<i32>(-5697i, 1606i)))));
    global1 = arg_0.b;
    var var_1 = vec2<u32>(~4294967295u, 4294967295u);
    return var_0.x & ~arg_1.x;
}

fn func_2() -> u32 {
    global3 = Struct_3(func_3(Struct_3(27359i, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.x, 2147483647i, global0.b.e.x), vec3<i32>(-89414i, 2147483647i, global0.a)), u_input.c, true, min(global3.b.d, vec4<u32>(26172u, 49102u, global0.b.b.x, global1.b.x)), min(global1.a.yz, vec2<i32>(global1.a.x, 7973i)))), ~vec2<i32>(firstLeadingBit(0i), ~global0.b.e.x)), global0.b);
    global1 = Struct_1(min(-global0.b.a & (select(vec3<i32>(global0.a, global1.e.x, 47310i), vec3<i32>(u_input.a, global1.a.x, -2147483647i), vec3<bool>(false, false, global1.c)) | _wgslsmith_mult_vec3_i32(global3.b.a, vec3<i32>(global0.b.e.x, -1i, global0.a))), global3.b.a), firstLeadingBit(vec2<u32>(u_input.b, _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(global3.b.d.x, 0u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -427f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1860f - -447f) - _wgslsmith_f_op_f32(ceil(-1137f)))), ~vec4<u32>(global0.b.d.x, 1u, countOneBits(reverseBits(global1.b.x)), firstLeadingBit(u_input.b >> (global0.b.b.x % 32u))), ~vec2<i32>(max(global1.e.x, _wgslsmith_add_i32(-672i, u_input.a)), 2147483647i));
    var var_0 = firstLeadingBit(_wgslsmith_mult_i32(2147483647i, 1i));
    var_0 = global3.b.a.x;
    global3 = Struct_3(0i, global3.b);
    return u_input.b;
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<bool>(all(global2[_wgslsmith_index_u32(countOneBits(func_2()), 25u)]) || global3.b.c, all(vec3<bool>(true, true, global1.c)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1302f, 573f, 122f, -1230f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1009f, -396f, 1811f, -509f) + vec4<f32>(-866f, -375f, 1000f, -172f)))), vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1228f, 149f, 963f))), vec4<f32>(_wgslsmith_div_f32(291f, 211f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1094f)) - _wgslsmith_div_f32(-285f, 784f)), _wgslsmith_f_op_f32(148f * -1250f), _wgslsmith_f_op_f32(sign(-1314f))), !(!vec4<bool>(false, global3.b.c, true, true)))));
    var var_2 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(1419f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -595f), -380f, true)));
    global3 = Struct_3(~1i, global0.b);
    var var_3 = firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(global1.e.x, i32(-1i) * -global1.a.x), global3.a, global0.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(global0.a, global0.a), ~13163i), vec2<i32>(global0.b.a.x, reverseBits(global0.a)))));
    return Struct_2(global0.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    let var_0 = !vec2<bool>(false, !all(vec4<bool>(global1.c, true, false, false)) && true);
    var var_1 = Struct_3(-7304i, arg_1);
    let var_2 = false;
    let var_3 = ~4294967295u;
    let var_4 = !(!(2147483647i >= ~select(0i, -2147483647i, true)));
    return -1629f;
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = reverseBits(firstLeadingBit(vec3<i32>(-47339i, global3.a, u_input.a)));
    let var_2 = Struct_3(var_1.x, global3.b);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1)), -783f)))) + -598f), arg_1, _wgslsmith_f_op_f32(sign(1577f)));
    var var_4 = Struct_4(Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.yy, global0.b.a.xz), 0i, var_1.x), vec2<u32>(66188u, _wgslsmith_mod_u32(var_2.b.b.x, global3.b.d.x)), all(var_0), ~global3.b.d, vec2<i32>(-2147483647i, -2147483647i)));
    return var_2;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = min(select(arg_2.b.d, global1.d, !(arg_0.b.c || true)), abs(vec4<u32>(global0.b.d.x, ~arg_1.a.d.x, global3.b.d.x, ~(~u_input.c.x))));
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(35563u, ~1u), min(arg_2.b.d.x ^ 1u, ~global3.b.b.x), 4294967295u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, global3.b.d.x) | vec2<u32>(global0.b.b.x, u_input.b), vec2<u32>(u_input.c.x, arg_2.b.d.x)))), countOneBits(reverseBits(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.d.x, 34746u, global3.b.d.x, 54046u), arg_2.b.d)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1721f) * 1f)));
    var var_2 = global0.b;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-232f, var_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -451f, -1747f);
    return Struct_3(u_input.a, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -275f;
    global0 = func_6(func_5(vec3<bool>(true, global3.b.c, !(-2107f >= var_0)), _wgslsmith_f_op_f32(func_4(func_1(), global3.b, vec3<bool>(any(vec3<bool>(global0.b.c, global0.b.c, false)), true, global3.b.c), all(select(vec4<bool>(true, global3.b.c, global1.c, global0.b.c), vec4<bool>(false, true, global0.b.c, global3.b.c), global1.c))))), func_1(), func_5(vec3<bool>(func_5(select(vec3<bool>(true, global3.b.c, true), vec3<bool>(global0.b.c, false, true), vec3<bool>(global0.b.c, true, global1.c)), 277f).b.c, global1.c, true), 685f), !(!(!(!vec3<bool>(false, true, global1.c)))));
    var var_1 = ~(vec4<i32>(~_wgslsmith_mult_i32(u_input.a, 0i), global0.b.a.x >> (global0.b.b.x % 32u), 1i, firstTrailingBit(abs(global0.a))) | ~(vec4<i32>(global3.a, -2147483647i, u_input.a, global0.a) >> (global0.b.d % vec4<u32>(32u))));
    let var_2 = func_1();
    var var_3 = -select(vec3<i32>(global3.b.a.x, -21853i, ~(-1i)), vec3<i32>(-var_1.x, max(var_1.x, global1.a.x), select(var_1.x, var_2.a.e.x, global0.b.c)), (11251u ^ global3.b.b.x) != ~u_input.b) | _wgslsmith_mod_vec3_i32(-vec3<i32>(-1863i, 1i >> (0u % 32u), global0.b.a.x), max(abs(var_2.a.a), func_1().a.a));
    var var_4 = _wgslsmith_f_op_f32(-223f * -1427f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(global1.d.x, _wgslsmith_dot_vec2_u32(var_2.a.b, func_6(Struct_3(25979i, Struct_1(global0.b.a, vec2<u32>(var_2.a.d.x, var_2.a.d.x), false, global0.b.d, global3.b.e)), var_2, Struct_3(-1i, Struct_1(var_2.a.a, vec2<u32>(var_2.a.b.x, 4294967295u), false, vec4<u32>(39650u, global0.b.b.x, 0u, global1.b.x), vec2<i32>(2147483647i, var_2.a.a.x))), vec3<bool>(true, true, true)).b.b >> (min(vec2<u32>(global1.d.x, 4294967295u), global0.b.b) % vec2<u32>(32u)))), ~vec3<u32>(64485u, func_6(Struct_3(var_3.x, Struct_1(global3.b.a, global0.b.b, global1.c, global1.d, global0.b.e)), Struct_2(Struct_1(vec3<i32>(-1i, -49613i, u_input.a), global1.b, true, vec4<u32>(u_input.c.x, 19451u, global3.b.d.x, global1.b.x), var_2.a.e)), Struct_3(var_3.x, Struct_1(global0.b.a, global3.b.b, global3.b.c, vec4<u32>(39582u, 0u, u_input.b, global1.d.x), vec2<i32>(-19445i, -50643i))), vec3<bool>(false, var_2.a.c, global0.b.c)).b.d.x, var_2.a.b.x));
}

