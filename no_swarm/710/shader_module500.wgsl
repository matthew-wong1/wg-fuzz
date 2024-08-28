struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(1u, 22550u, 30079u), vec3<u32>(1u, 74170u, 3289u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 30630u, 0u), vec3<u32>(1u, 4290u, 8591u), vec3<u32>(1u, 37005u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(62345u, 32006u, 23448u), vec3<u32>(0u, 69845u, 0u), vec3<u32>(50629u, 14947u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(7848u, 9729u, 91485u), vec3<u32>(0u, 85903u, 8314u), vec3<u32>(41177u, 1u, 6433u), vec3<u32>(15800u, 0u, 0u), vec3<u32>(0u, 107289u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 19304u), vec3<u32>(46466u, 0u, 14133u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 13212u, 1u), vec3<u32>(1u, 50418u, 1u), vec3<u32>(9605u, 4294967295u, 35351u), vec3<u32>(4294967295u, 26396u, 59141u), vec3<u32>(4864u, 4294967295u, 182u), vec3<u32>(0u, 4294967295u, 96196u), vec3<u32>(24522u, 2035u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 30041u), vec3<u32>(30524u, 1u, 13780u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 74633u, 881u));

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<i32>(1i, i32(-2147483648), 535i, -9529i), 0u, 4294967295u, Struct_1(vec3<bool>(true, true, true), 11476u), 38817i), vec2<f32>(939f, -1986f), Struct_1(vec3<bool>(true, false, true), 1u));

var<private> global2: Struct_2 = Struct_2(vec4<i32>(1i, -1i, 41957i, 0i), 1u, 48130u, Struct_1(vec3<bool>(true, true, true), 1u), -13996i);

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = (global2.d.a.x || !(~10792u != _wgslsmith_mult_u32(global1.a.b, 0u))) | true;
    var_0 = global2.d.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b, _wgslsmith_f_op_vec2_f32(-global1.b)) - global1.b);
    global1 = Struct_3(Struct_2(global1.a.a, 1u, 1u, Struct_1(global2.d.a, u_input.a.x), global2.a.x), vec2<f32>(_wgslsmith_div_f32(-1391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - -1848f))), global1.b.x), global2.d);
    return vec4<i32>(select(-31637i, global2.a.x, false), abs(_wgslsmith_add_i32(select(global2.a.x, reverseBits(global2.a.x), false || var_1), ~reverseBits(30232i))), ~countOneBits(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global1.a.a.x, 1i), 1i, global1.a.a.x)), countOneBits(-global2.e));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.a.zy;
    let var_1 = Struct_2(func_3(true), 4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, 11564u), vec3<u32>(arg_0.c, 4294967295u, 13677u))), var_0.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, select(vec2<u32>(1u, arg_0.c), u_input.a.yy, vec2<bool>(arg_0.d.a.x, global1.a.d.a.x))), arg_1)), arg_0.d, _wgslsmith_mod_i32(global1.a.e, -(-global2.e >> (~24315u % 32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, 669f, global1.b.x, -1257f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(ceil(-1499f)), global1.b.x, _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(min(-547f, 242f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(805f, 1863f, global1.b.x, -1232f), vec4<f32>(982f, global1.b.x, -347f, global1.b.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-939f, 211f, 979f, global1.b.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b.x, 1013f, global1.b.x, -136f))), select(vec4<bool>(true, true, false, var_1.d.a.x), vec4<bool>(global1.c.a.x, true, true, true), false))))), vec4<bool>(false, true, all(vec3<bool>(true, true, false)), true)));
    let var_3 = Struct_2(~global1.a.a | ((vec4<i32>(-1i) * -vec4<i32>(arg_0.e, 1i, 38550i, var_1.a.x)) & global2.a), ~(abs(_wgslsmith_sub_u32(73436u, 28569u)) & var_1.b), arg_1, arg_0.d, _wgslsmith_clamp_i32(i32(-1i) * -40039i, countOneBits(global2.a.x), ~select(-48828i, -var_1.a.x, true)));
    let var_4 = !var_3.d.a.yz;
    return Struct_1(select(select(global1.c.a, global2.d.a, select(vec3<bool>(global2.d.a.x, true, false), !arg_0.d.a, select(var_1.d.a, arg_0.d.a, var_3.d.a.x))), vec3<bool>(true, all(!arg_0.d.a), var_4.x), global2.d.a), var_3.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    let var_0 = -_wgslsmith_sub_i32(-13958i, _wgslsmith_clamp_i32(1i, i32(-1i) * -27630i, global2.e));
    global0 = array<vec3<u32>, 32>();
    global3 = array<Struct_1, 28>();
    global2 = Struct_2(max(_wgslsmith_sub_vec4_i32(-reverseBits(global1.a.a), global1.a.a << (~vec4<u32>(u_input.a.x, global1.c.b, 1u, 64799u) % vec4<u32>(32u))), vec4<i32>(-42406i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global1.a.a.wy, global2.a.wz), _wgslsmith_clamp_vec2_i32(vec2<i32>(-26619i, -4478i), vec2<i32>(global2.a.x, global2.e), global1.a.a.yw)), -35090i, 2147483647i)), _wgslsmith_div_u32(global1.c.b, global1.c.b), 4294967295u, Struct_1(vec3<bool>(all(!arg_1.a.xx), !(!arg_1.a.x), arg_0.x & !global2.d.a.x), arg_2.x), global1.a.e);
    var var_1 = !vec4<bool>(!any(vec4<bool>(arg_0.x, true, true, arg_0.x)), true, arg_0.x, any(!(!vec2<bool>(global1.c.a.x, global2.d.a.x))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global1.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, global1.b.x)) * _wgslsmith_f_op_f32(192f - -717f))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: i32) -> vec3<f32> {
    let var_0 = global1.c.a;
    global3 = array<Struct_1, 28>();
    let var_1 = global2.d.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global2.d.a, func_2(global1.a, 8247u), ~vec3<u32>(global1.c.b, 25023u, 50918u))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.x)))), global1.b.x, -1470f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, -992f, global1.b.x) - vec3<f32>(-674f, -2135f, global1.b.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, 1056f) + vec3<f32>(global1.b.x, -1378f, 1545f)) * vec3<f32>(global1.b.x, global1.b.x, -1321f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -384f, -850f), vec3<f32>(901f, -451f, -443f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b.x, global1.b.x, -1156f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.b.x, -470f, global1.b.x), vec3<f32>(-664f, -334f, -291f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(73713u, global2.d.b, u_input.a.x)), u_input.a, (global1.a.a.x >> (global1.a.b % 32u)) ^ _wgslsmith_add_i32(1i, -2147483647i)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 1294f), _wgslsmith_f_op_f32(func_4(vec3<bool>(global2.d.a.x, global1.a.d.a.x, false), Struct_1(global2.d.a, 4294967295u), global0[_wgslsmith_index_u32(0u, 32u)]))) * 1419f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1494f))) - var_0.x);
    let var_2 = false;
    var var_3 = Struct_2(-(-(~global1.a.a) ^ abs(~global1.a.a)), _wgslsmith_mod_u32(15880u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(19636u, 18041u, 0u, 1u), ~vec4<u32>(4294967295u, 55630u, global1.c.b, 1u))), ~(~global1.c.b), global3[_wgslsmith_index_u32(~4332u, 28u)], global1.a.e);
    var_3 = Struct_2(select((vec4<i32>(global1.a.a.x, -6027i, global1.a.e, 0i) << ((vec4<u32>(1u, 42195u, global2.c, global2.d.b) ^ vec4<u32>(global2.b, var_3.c, u_input.b, global2.b)) % vec4<u32>(32u))) & reverseBits(global1.a.a), vec4<i32>(-_wgslsmith_mult_i32(global1.a.e, global1.a.e), global2.e, var_3.e ^ -var_3.a.x, global2.a.x), vec4<bool>(true, any(vec3<bool>(true, true, true)), !func_2(Struct_2(vec4<i32>(-13261i, -12399i, global1.a.e, -8615i), 4294967295u, global1.c.b, Struct_1(vec3<bool>(true, true, false), global1.a.d.b), global1.a.e), 63256u).a.x, global2.d.a.x)), 0u, 1u, func_2(global1.a, 86000u), 181i);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(532f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -1000f)) - var_0.x))), var_0.x, 1000f);
    var var_5 = vec2<i32>(reverseBits(global1.a.e), ~func_3(!var_2).x);
    let var_6 = Struct_2(global2.a >> ((max(abs(vec4<u32>(1u, global1.c.b, var_3.c, global1.a.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.b, 4294967295u, global1.a.c, var_3.c), vec4<u32>(global1.c.b, 19279u, global2.c, var_3.c))) >> (max(abs(vec4<u32>(global1.c.b, 60124u, u_input.c, global1.c.b)), ~vec4<u32>(0u, 63689u, 4294967295u, 25080u)) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(0u), _wgslsmith_add_u32(global1.c.b, u_input.c), Struct_1(vec3<bool>(any(vec2<bool>(global2.d.a.x, global1.c.a.x)) & (var_3.b < global2.d.b), !global2.d.a.x, !global1.c.a.x), ~(7902u >> (~4294967295u % 32u))), global1.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(min(-(~vec3<i32>(var_3.e, -17507i, var_6.e)), -global1.a.a.zyy), ~firstTrailingBit(var_6.a.wxy | var_6.a.xyw)), _wgslsmith_dot_vec3_u32(min(~(~vec3<u32>(var_6.b, 59984u, 0u)), vec3<u32>(global1.a.c, var_3.d.b, 47663u) >> (reverseBits(vec3<u32>(11861u, 1u, 14252u)) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(1u, 32u)], vec3<u32>(1u, global2.d.b, 7411u)) << (vec3<u32>(_wgslsmith_add_u32(117u, u_input.c), ~var_6.b, 0u) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_4.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.x))), -767f), vec2<f32>(global1.b.x, var_4.x), vec2<f32>(global1.b.x, var_4.x));
}

