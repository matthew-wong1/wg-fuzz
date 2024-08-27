struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true));

var<private> global1: array<u32, 23>;

var<private> global2: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(1i, -1i, -1i, -44001i), vec4<i32>(-49871i, -33237i, -1i, -1i), vec4<i32>(-37971i, 0i, 2147483647i, -14006i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -1i), vec4<i32>(1i, 2147483647i, 7433i, 0i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -1i), vec4<i32>(28941i, 23899i, 49748i, 1i), vec4<i32>(2147483647i, -31449i, 1i, 1i), vec4<i32>(-13823i, 0i, 1i, -1i), vec4<i32>(32888i, 19007i, -46996i, 2147483647i), vec4<i32>(-1i, -1i, 101357i, 2147483647i), vec4<i32>(1i, 3548i, -33609i, 1i), vec4<i32>(i32(-2147483648), 0i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -28595i, 1i, 2147483647i), vec4<i32>(8370i, 57627i, 2147483647i, 3250i), vec4<i32>(-21141i, 1i, -1i, -15935i), vec4<i32>(0i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 1i, -8935i, -2854i), vec4<i32>(2147483647i, -17398i, -34705i, -1i), vec4<i32>(-35867i, -1i, 9544i, i32(-2147483648)), vec4<i32>(-1518i, 13808i, -1i, 15034i), vec4<i32>(-4911i, -31520i, 6465i, i32(-2147483648)), vec4<i32>(-19747i, 1i, i32(-2147483648), 2147483647i), vec4<i32>(17326i, -16621i, 0i, -2860i), vec4<i32>(27171i, 42066i, -1i, -24971i), vec4<i32>(1435i, -20106i, 2147483647i, -13350i), vec4<i32>(-38175i, -1i, 2147483647i, 0i), vec4<i32>(0i, 387i, 11921i, i32(-2147483648)), vec4<i32>(-31186i, 1674i, 2147483647i, 23413i), vec4<i32>(i32(-2147483648), -245i, -60244i, 32817i));

var<private> global3: array<vec2<f32>, 1>;

var<private> global4: array<vec4<i32>, 24>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: Struct_3) -> vec3<u32> {
    return arg_3.c << (vec3<u32>(((u_input.a.x >> (100333u % 32u)) << (reverseBits(u_input.a.x) % 32u)) << (firstTrailingBit(12510u) % 32u), reverseBits(arg_3.c.x), select(12289u, 88061u, arg_1.x & false)) % vec3<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, arg_2.a), vec3<f32>(-1000f, -682f, 710f)))))), vec3<f32>(_wgslsmith_f_op_f32(-1130f - _wgslsmith_f_op_f32(floor(arg_2.a))), _wgslsmith_f_op_f32(-1000f - 949f), _wgslsmith_f_op_f32(-1f)))), Struct_2(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 2304i, u_input.b, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -26691i, u_input.b, -1i), vec4<i32>(u_input.b, 29116i, u_input.b, u_input.b))), Struct_1(arg_2.a), _wgslsmith_mult_vec2_u32(u_input.a, ~(~vec2<u32>(2668u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10767u, 23u)], 23u)], 23u)])))), min(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 23u)], 24998u, 8450u), vec3<u32>(arg_1.x, u_input.a.x, global1[_wgslsmith_index_u32(5875u, 23u)])) & arg_1, arg_1), func_3(all(vec2<bool>(arg_0, arg_0)) && !arg_0, !select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0, arg_0), arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(0u, 1u)] + vec2<f32>(arg_2.a, arg_2.a))), Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(-127f, -354f, arg_2.a), vec3<f32>(-1327f, 1095f, -114f)), Struct_2(global2[_wgslsmith_index_u32(1u, 30u)], arg_2, vec2<u32>(1u, 82507u)), arg_1 << (arg_1 % vec3<u32>(32u))))));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~20161u, ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43395u, 23u)], 23u)] | 21377u)), _wgslsmith_add_u32(~4294967295u, 1u), _wgslsmith_div_u32(var_0.b.c.x, u_input.a.x >> (_wgslsmith_clamp_u32(arg_1.x, 56301u, arg_1.x) % 32u))), arg_1 >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u | u_input.a.x, abs(4294967295u)), ~vec3<u32>(global1[_wgslsmith_index_u32(16844u, 23u)], global1[_wgslsmith_index_u32(arg_1.x, 23u)], 4294967295u)) % vec3<u32>(32u)));
    global4 = array<vec4<i32>, 24>();
    var var_2 = -max(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-23089i, u_input.b), vec2<i32>(2147483647i, 50123i))), 2147483647i) >> (abs(_wgslsmith_mult_u32(u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(27233u, 16107u, var_1)))) % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1114f + 305f), _wgslsmith_f_op_f32(floor(arg_2.a)), var_0.b.b.a, var_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(181f, -1000f, -588f, -798f), vec4<f32>(489f, arg_2.a, 1260f, arg_2.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, arg_2.a, -618f, 2360f))))))));
    return var_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_3 {
    var var_0 = !vec2<bool>(any(select(!vec3<bool>(true, arg_1.a, arg_1.a), !vec3<bool>(true, true, arg_1.a), all(vec2<bool>(arg_1.a, arg_1.a)))), arg_1.a);
    var var_1 = ~func_3(arg_1.a, vec3<bool>(!(!var_0.x), true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(round(arg_0.a.x)))), arg_0);
    global3 = array<vec2<f32>, 1>();
    var var_2 = -1404f;
    var var_3 = vec3<bool>(arg_1.a, all(vec4<bool>(var_0.x, all(vec4<bool>(arg_1.a, var_0.x, arg_1.a, arg_1.a)), min(-33927i, arg_0.b.a.x) >= arg_0.b.a.x, false)), arg_1.a);
    return Struct_3(_wgslsmith_f_op_vec3_f32(abs(arg_0.a)), func_2(all(vec3<bool>(true, true, true)), vec3<u32>(16130u, 4294967295u, (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 23u)], 23u)] << (u_input.a.x % 32u)) << ((4294967295u >> (var_1.x % 32u)) % 32u)), arg_0.b.b), ~arg_0.c << (_wgslsmith_div_vec3_u32(~arg_0.c, arg_0.c) % vec3<u32>(32u)));
}

fn func_1() -> Struct_3 {
    global2 = array<vec4<i32>, 30>();
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-172f, -1209f, 742f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(358f, 1000f, -557f), vec3<f32>(-175f, -705f, 382f)))), func_2(true, ~(vec3<u32>(u_input.a.x, 7032u, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]) ^ vec3<u32>(80477u, 17343u, 4294967295u)), Struct_1(_wgslsmith_f_op_f32(min(-644f, -1782f)))), max(func_3(false, vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_3(vec3<f32>(-664f, -1000f, 1670f), Struct_2(vec4<i32>(0i, 2147483647i, u_input.b, u_input.b), Struct_1(1402f), vec2<u32>(global1[_wgslsmith_index_u32(1u, 23u)], 1u)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 1u, u_input.a.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(18143u, global1[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a.x), vec3<u32>(4294967295u, 14115u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)]))) & _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a.x), ~vec3<u32>(u_input.a.x, 30090u, global1[_wgslsmith_index_u32(0u, 23u)]))), Struct_4(u_input.b != -_wgslsmith_clamp_i32(u_input.b, -1i, u_input.b)));
    global4 = array<vec4<i32>, 24>();
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, var_0.b.c.x & 0u), var_0.b.c.x), 4091u), 43888u & (global1[_wgslsmith_index_u32(var_0.c.x, 23u)] | 77456u), ~_wgslsmith_mod_u32(u_input.a.x >> (_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68699u, 23u)], 23u)], 23u)], 1u) % 32u), 0u));
    global4 = array<vec4<i32>, 24>();
    return Struct_3(var_0.a, Struct_2(-global2[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), 30u)], Struct_1(_wgslsmith_f_op_f32(abs(var_0.b.b.a))), u_input.a), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-177f);
    global4 = array<vec4<i32>, 24>();
    global3 = array<vec2<f32>, 1>();
    var var_1 = func_1();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-920f * -894f) * func_2(true, vec3<u32>(80882u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b.c.x, 23u)], 23u)]), Struct_1(555f)).b.a) + _wgslsmith_f_op_f32(sign(var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 23u)], ~global1[_wgslsmith_index_u32(74589u, 23u)], 46349u), ~func_3(false, vec3<bool>(true, true, false), vec2<f32>(var_0.a, var_0.a), Struct_3(var_1.a, var_1.b, var_1.c))), vec2<f32>(_wgslsmith_f_op_f32(var_1.b.b.a + 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.a))), var_1.a.xx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(var_1.b.b.a + var_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1541f - var_0.a))), countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 23u)]) >= reverseBits(30710u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_1.b.b.a)))))));
}

