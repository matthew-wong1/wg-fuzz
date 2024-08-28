struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-941f, 812f, -1062f, 1200f, 408f, 351f, -1272f, 569f, 1000f, -1078f, 1056f, 304f, 319f, 709f, -989f, 569f, -1929f, -1364f, -371f, 118f, 829f, -229f, 267f, -683f, -1569f);

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    global1 = array<vec3<i32>, 21>();
    let var_0 = vec2<f32>(1f, _wgslsmith_div_f32(795f, _wgslsmith_f_op_f32(f32(-1f) * -310f)));
    global2 = vec4<i32>(_wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 13138i), global2.zw) | -global2.x, 4807i, global2.x)), max(global2.x, u_input.b), 1i, _wgslsmith_sub_i32(-2147483647i, abs(countOneBits(firstTrailingBit(-15447i)))));
    let var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    return ~u_input.b;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global0 = array<f32, 25>();
    let var_0 = arg_1.d;
    let var_1 = arg_1.d;
    var var_2 = func_3(arg_1.c.a) & _wgslsmith_sub_i32(-2147483647i, u_input.b);
    let var_3 = global2.x;
    return arg_1.c;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = u_input.b;
    let var_1 = countOneBits(vec2<u32>(u_input.d, u_input.a.x));
    global1 = array<vec3<i32>, 21>();
    var var_2 = false;
    var var_3 = ~_wgslsmith_add_i32(-2747i, func_3(!(!vec4<bool>(false, true, true, arg_0.a.x))));
    return _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~firstTrailingBit(63024u | u_input.d) ^ _wgslsmith_div_u32(0u, ~var_1.x ^ countOneBits(var_1.x)), 25u)]));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(361f, -326f, false))) - -514f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(arg_1.a), u_input.b)) * _wgslsmith_f_op_f32(1613f - global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(841f, -814f))))), func_2(true, Struct_3(~vec4<i32>(global2.x, global2.x, -2147483647i, u_input.b), u_input.b == u_input.b, arg_1, arg_2, firstTrailingBit(vec2<u32>(u_input.d, 4294967295u))), Struct_2(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true)), func_2(any(vec2<bool>(arg_1.a.x, arg_1.a.x)), Struct_3(vec4<i32>(1i, global2.x, 16535i, u_input.b), arg_1.a.x, arg_1, arg_2, u_input.a.yx), func_2(false, Struct_3(vec4<i32>(15596i, 47422i, u_input.b, -3450i), false, arg_1, arg_2, vec2<u32>(12449u, 5476u)), arg_1, Struct_2(vec4<bool>(arg_1.a.x, arg_1.a.x, false, false))), Struct_2(vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x)))).a.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.c, 25u)])) - _wgslsmith_f_op_f32(step(1000f, 564f))), _wgslsmith_f_op_f32(f32(-1f) * -847f)) + arg_0) - _wgslsmith_f_op_f32(func_4(Struct_2(!(!vec4<bool>(arg_1.a.x, false, false, false))), _wgslsmith_mod_i32(global2.x, _wgslsmith_add_i32(~(-1i), u_input.b)))));
    var var_2 = Struct_1(-1402f);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(u_input.c) ^ u_input.c, 25u)]), -1434f)), arg_0);
    let var_3 = 1u;
    return arg_2;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    var var_0 = func_5(_wgslsmith_f_op_f32(489f * _wgslsmith_f_op_f32(min(-1319f, _wgslsmith_f_op_f32(func_4(func_2(true, Struct_3(vec4<i32>(-2835i, u_input.b, global2.x, u_input.b), true, Struct_2(vec4<bool>(true, true, true, true)), Struct_1(-1143f), arg_0), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, true, true, false))), 15433i))))), func_2(!any(func_2(true, Struct_3(arg_1, true, Struct_2(vec4<bool>(false, false, true, true)), Struct_1(-1000f), vec2<u32>(22838u, arg_2)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, false, true, true))).a.xz), Struct_3(-arg_1, true, Struct_2(vec4<bool>(false, true, true, false)), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), 25u)]), arg_0), Struct_2(func_2(true, Struct_3(arg_1, false, Struct_2(vec4<bool>(false, false, false, true)), Struct_1(-231f), vec2<u32>(50010u, arg_0.x)), Struct_2(vec4<bool>(false, true, false, false)), func_2(false, Struct_3(vec4<i32>(2723i, -2147483647i, -2418i, global2.x), true, Struct_2(vec4<bool>(false, true, false, true)), Struct_1(global0[_wgslsmith_index_u32(880u, 25u)]), u_input.a.zz), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, true, true)))).a), func_2(true, Struct_3(arg_1 | vec4<i32>(-25697i, -2147483647i, 33011i, arg_1.x), true, Struct_2(vec4<bool>(true, true, true, true)), Struct_1(-213f), u_input.a.zx), func_2(true, Struct_3(vec4<i32>(arg_1.x, -2147483647i, arg_1.x, u_input.b), false, Struct_2(vec4<bool>(false, false, true, false)), Struct_1(-328f), arg_0), func_2(true, Struct_3(arg_1, false, Struct_2(vec4<bool>(true, true, false, true)), Struct_1(-518f), arg_0), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, true, true))), func_2(true, Struct_3(vec4<i32>(arg_1.x, 1i, arg_1.x, 12060i), true, Struct_2(vec4<bool>(false, true, false, false)), Struct_1(767f), arg_0), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, false, false)))), Struct_2(func_2(true, Struct_3(vec4<i32>(19326i, global2.x, arg_1.x, global2.x), true, Struct_2(vec4<bool>(true, true, true, true)), Struct_1(global0[_wgslsmith_index_u32(0u, 25u)]), vec2<u32>(u_input.a.x, arg_2)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(false, false, false, false))).a))), Struct_1(global0[_wgslsmith_index_u32(abs(0u), 25u)]));
    var_0 = Struct_1(_wgslsmith_f_op_f32(389f - 2320f));
    var var_1 = global2.x;
    let var_2 = false;
    let var_3 = ~vec2<i32>(u_input.b, -2147483647i);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), vec2<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(true, false, false))), false), vec2<bool>(global2.x > 8727i, true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    let var_1 = vec4<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(max(~vec4<u32>(1u, u_input.d, 28884u, u_input.d), select(vec4<u32>(17522u, u_input.a.x, 24616u, 4294967295u), vec4<u32>(u_input.c, u_input.a.x, 0u, u_input.a.x), vec4<bool>(true, false, true, false))), vec4<u32>(~5853u, u_input.c & 1u, 1u, select(18786u, 1u, true))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, func_1(vec2<u32>(u_input.a.x, u_input.d), vec4<i32>(global2.x, -12593i, global2.x, global2.x), u_input.d), 1u), u_input.a)), _wgslsmith_mod_u32(~(~(~5144u)), 1u), u_input.d);
    var var_2 = func_2(false, Struct_3(vec4<i32>(firstLeadingBit(func_3(vec4<bool>(false, true, false, var_0))), _wgslsmith_div_i32(global2.x & global2.x, -u_input.b), min(firstLeadingBit(u_input.b), -global2.x), global2.x), u_input.b <= func_3(vec4<bool>(var_0, var_0, false, var_0)), Struct_2(!(!vec4<bool>(false, false, false, var_0))), func_5(-134f, Struct_2(!vec4<bool>(false, var_0, true, false)), Struct_1(1f)), ~_wgslsmith_mult_vec2_u32(select(var_1.xx, vec2<u32>(var_1.x, var_1.x), true), min(var_1.zz, u_input.a.xz))), func_2(!(~1064u > ~u_input.d), Struct_3(~vec4<i32>(u_input.b, 2147483647i, -23454i, u_input.b), !(!var_0), Struct_2(select(vec4<bool>(true, true, var_0, true), vec4<bool>(false, false, var_0, var_0), var_0)), Struct_1(global0[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 25u)]), ~var_1.yz << (firstLeadingBit(var_1.yw) % vec2<u32>(32u))), func_2(all(vec4<bool>(true, false, var_0, var_0)), Struct_3(~vec4<i32>(global2.x, 10944i, -27918i, 0i), false, func_2(var_0, Struct_3(vec4<i32>(-6122i, 2147483647i, global2.x, -38628i), true, Struct_2(vec4<bool>(var_0, true, var_0, false)), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), var_1.yz), Struct_2(vec4<bool>(false, var_0, true, true)), Struct_2(vec4<bool>(true, var_0, var_0, var_0))), func_5(279f, Struct_2(vec4<bool>(var_0, false, true, var_0)), Struct_1(-1630f)), var_1.xy), func_2(true, Struct_3(vec4<i32>(8085i, -1i, global2.x, 12390i), false, Struct_2(vec4<bool>(true, var_0, var_0, false)), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 25u)]), u_input.a.wy), func_2(var_0, Struct_3(vec4<i32>(u_input.b, global2.x, 0i, u_input.b), var_0, Struct_2(vec4<bool>(false, var_0, false, var_0)), Struct_1(2083f), vec2<u32>(40898u, var_1.x)), Struct_2(vec4<bool>(false, false, var_0, var_0)), Struct_2(vec4<bool>(var_0, var_0, true, false))), Struct_2(vec4<bool>(false, true, var_0, false))), Struct_2(!vec4<bool>(true, var_0, false, var_0))), Struct_2(select(vec4<bool>(false, var_0, var_0, false), !vec4<bool>(true, var_0, false, var_0), var_0))), func_2(!var_0, Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, u_input.b, global2.x, u_input.b), select(vec4<i32>(1i, global2.x, global2.x, 14408i), vec4<i32>(0i, -1i, -3776i, 8117i), false)), var_0, func_2(false, Struct_3(vec4<i32>(-22240i, 0i, -1i, -30299i), false, Struct_2(vec4<bool>(true, var_0, var_0, var_0)), Struct_1(837f), vec2<u32>(29003u, var_1.x)), func_2(var_0, Struct_3(vec4<i32>(global2.x, global2.x, global2.x, -2147483647i), false, Struct_2(vec4<bool>(true, var_0, true, var_0)), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 25u)]), u_input.a.wx), Struct_2(vec4<bool>(true, var_0, false, var_0)), Struct_2(vec4<bool>(var_0, var_0, var_0, false))), func_2(true, Struct_3(vec4<i32>(-9389i, u_input.b, global2.x, -1i), true, Struct_2(vec4<bool>(var_0, var_0, var_0, false)), Struct_1(global0[_wgslsmith_index_u32(var_1.x, 25u)]), vec2<u32>(var_1.x, var_1.x)), Struct_2(vec4<bool>(true, false, var_0, var_0)), Struct_2(vec4<bool>(var_0, var_0, false, true)))), func_5(_wgslsmith_div_f32(306f, global0[_wgslsmith_index_u32(var_1.x, 25u)]), Struct_2(vec4<bool>(var_0, var_0, false, true)), func_5(-724f, Struct_2(vec4<bool>(true, var_0, var_0, true)), Struct_1(global0[_wgslsmith_index_u32(5020u, 25u)]))), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(var_1.x, var_1.x)), vec2<u32>(var_1.x, var_1.x))), func_2(!func_2(var_0, Struct_3(vec4<i32>(global2.x, 0i, 0i, u_input.b), true, Struct_2(vec4<bool>(false, var_0, true, false)), Struct_1(1673f), var_1.xz), Struct_2(vec4<bool>(var_0, var_0, var_0, var_0)), Struct_2(vec4<bool>(var_0, false, false, true))).a.x, Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, -26623i, -1i), vec4<i32>(u_input.b, u_input.b, u_input.b, global2.x)), var_0, func_2(var_0, Struct_3(vec4<i32>(global2.x, 54510i, global2.x, u_input.b), true, Struct_2(vec4<bool>(true, false, var_0, var_0)), Struct_1(global0[_wgslsmith_index_u32(72855u, 25u)]), vec2<u32>(0u, 23628u)), Struct_2(vec4<bool>(var_0, var_0, var_0, var_0)), Struct_2(vec4<bool>(false, var_0, true, var_0))), Struct_1(-1000f), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 23868u), u_input.a.ww)), Struct_2(vec4<bool>(false, var_0, var_0, var_0)), Struct_2(vec4<bool>(true, var_0, true, true))), Struct_2(select(vec4<bool>(var_0, true, false, false), vec4<bool>(var_0, var_0, var_0, var_0), !vec4<bool>(var_0, var_0, var_0, true)))));
    let var_3 = func_2(var_2.a.x, Struct_3(select(vec4<i32>(i32(-1i) * -46478i, 1i, 1i, countOneBits(-2147483647i)), max(-vec4<i32>(u_input.b, 30090i, u_input.b, -59412i), vec4<i32>(-9767i, global2.x, global2.x, global2.x)), var_2.a.x), false, Struct_2(vec4<bool>(true && var_0, true, var_2.a.x, any(vec3<bool>(false, var_2.a.x, var_2.a.x)))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 25u)])), Struct_2(select(var_2.a, vec4<bool>(var_2.a.x, var_0, false, var_0), vec4<bool>(var_2.a.x, var_0, var_0, var_0))), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x | 68051u, 25u)])), u_input.a.xw), func_2(var_0, Struct_3(abs(~vec4<i32>(-14913i, global2.x, -2147483647i, -1i)), var_2.a.x, func_2(all(var_2.a.ww), Struct_3(vec4<i32>(-15666i, 53432i, u_input.b, 1i), var_0, Struct_2(var_2.a), Struct_1(global0[_wgslsmith_index_u32(var_1.x, 25u)]), u_input.a.wx), Struct_2(var_2.a), Struct_2(var_2.a)), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_clamp_vec2_u32(var_1.yx, vec2<u32>(var_1.x, var_1.x), ~var_1.zz)), Struct_2(!var_2.a), Struct_2(vec4<bool>(false, all(vec4<bool>(true, var_0, var_2.a.x, var_0)), true, !var_0))), func_2(!var_0, Struct_3(abs(vec4<i32>(-1i, u_input.b, -1i, u_input.b)), false, func_2(4294967295u >= u_input.d, Struct_3(vec4<i32>(u_input.b, u_input.b, -11248i, -17744i), true, Struct_2(var_2.a), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 25u)]), vec2<u32>(52985u, 4294967295u)), Struct_2(vec4<bool>(true, var_0, true, var_2.a.x)), Struct_2(var_2.a)), func_5(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.x, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]), func_2(var_0, Struct_3(vec4<i32>(u_input.b, 8875i, global2.x, global2.x), true, Struct_2(vec4<bool>(var_2.a.x, false, true, var_2.a.x)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<u32>(var_1.x, 1u)), Struct_2(vec4<bool>(true, var_2.a.x, var_0, false)), Struct_2(var_2.a)), func_5(global0[_wgslsmith_index_u32(17590u, 25u)], Struct_2(var_2.a), Struct_1(193f))), abs(vec2<u32>(43344u, 77195u))), func_2(var_2.a.x | !var_0, Struct_3(vec4<i32>(-88647i, -2147483647i, 1i, global2.x) | vec4<i32>(-385i, global2.x, u_input.b, -2147483647i), var_0, Struct_2(var_2.a), Struct_1(global0[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 1u), u_input.a.wz, u_input.a.zz)), Struct_2(func_2(var_0, Struct_3(vec4<i32>(global2.x, u_input.b, -36304i, global2.x), true, Struct_2(vec4<bool>(true, var_0, false, var_0)), Struct_1(global0[_wgslsmith_index_u32(var_1.x, 25u)]), vec2<u32>(19649u, u_input.c)), Struct_2(var_2.a), Struct_2(var_2.a)).a), func_2(true, Struct_3(vec4<i32>(-14024i, 39523i, -1i, global2.x), var_0, Struct_2(vec4<bool>(var_0, true, true, var_2.a.x)), Struct_1(global0[_wgslsmith_index_u32(16560u, 25u)]), vec2<u32>(u_input.a.x, var_1.x)), func_2(var_2.a.x, Struct_3(vec4<i32>(global2.x, global2.x, global2.x, -22371i), true, Struct_2(var_2.a), Struct_1(661f), vec2<u32>(20280u, 7047u)), Struct_2(var_2.a), Struct_2(vec4<bool>(false, var_2.a.x, false, var_0))), func_2(true, Struct_3(vec4<i32>(u_input.b, 24294i, global2.x, u_input.b), var_2.a.x, Struct_2(vec4<bool>(false, true, true, true)), Struct_1(1000f), vec2<u32>(73683u, 60149u)), Struct_2(var_2.a), Struct_2(vec4<bool>(false, false, false, false))))), func_2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 25u)] * 494f) <= global0[_wgslsmith_index_u32(51420u, 25u)], Struct_3(-vec4<i32>(u_input.b, -28480i, 2862i, -1i), true, func_2(var_2.a.x, Struct_3(vec4<i32>(-1i, 1i, global2.x, -27307i), true, Struct_2(vec4<bool>(var_2.a.x, false, var_0, var_0)), Struct_1(-938f), vec2<u32>(1u, 4294967295u)), Struct_2(var_2.a), Struct_2(var_2.a)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<u32>(29300u, u_input.d)), func_2(true, Struct_3(vec4<i32>(3405i, u_input.b, -59812i, -2147483647i), false, Struct_2(vec4<bool>(true, true, var_0, var_2.a.x)), Struct_1(475f), vec2<u32>(var_1.x, 0u)), Struct_2(var_2.a), func_2(true, Struct_3(vec4<i32>(14971i, global2.x, 5479i, global2.x), true, Struct_2(vec4<bool>(false, var_2.a.x, var_0, var_0)), Struct_1(global0[_wgslsmith_index_u32(var_1.x, 25u)]), var_1.xx), Struct_2(var_2.a), Struct_2(vec4<bool>(true, var_0, true, var_2.a.x)))), Struct_2(var_2.a)))).a.x;
    var var_4 = !select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(51627u, 25u)]) * -287f) != _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.d, 25u)])), !var_2.a.x, !var_2.a.x);
    let var_5 = Struct_2(vec4<bool>(any(vec3<bool>(var_0, global0[_wgslsmith_index_u32(1u, 25u)] != global0[_wgslsmith_index_u32(73534u, 25u)], true)), all(vec3<bool>(true, false, true)) && true, var_3, all(!var_2.a.zw)));
    let var_6 = var_1;
    let var_7 = Struct_2(vec4<bool>(select(any(vec4<bool>(var_0, true, var_3, var_5.a.x)), all(!vec4<bool>(false, var_3, true, true)), !(u_input.d == 3897u)), false, var_3, var_5.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-906f, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(17096u, var_6.x), vec2<u32>(0u, 0u)), vec2<u32>(var_6.x, 4294967295u)), vec2<u32>(4294967295u, var_1.x)), _wgslsmith_f_op_f32(floor(-252f)), ~vec3<u32>(_wgslsmith_clamp_u32(var_1.x, 23989u, 1u), 0u, ~45364u));
}

