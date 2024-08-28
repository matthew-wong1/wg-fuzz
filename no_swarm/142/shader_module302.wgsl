struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: vec3<bool>;

var<private> global2: u32 = 0u;

var<private> global3: array<i32, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<bool>) -> i32 {
    global1 = !(!(!(!vec3<bool>(arg_1, arg_1, false))));
    global3 = array<i32, 6>();
    var var_0 = global3[_wgslsmith_index_u32(17490u, 6u)];
    global2 = firstTrailingBit(u_input.a.x);
    global3 = array<i32, 6>();
    return _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-10423i, global3[_wgslsmith_index_u32(u_input.a.x, 6u)] << (u_input.a.x % 32u))), vec2<i32>(1i, arg_0.x) | _wgslsmith_sub_vec2_i32(vec2<i32>(56764i, -59159i), ~vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)]))) | 11261i;
}

fn func_3() -> vec2<i32> {
    global3 = array<i32, 6>();
    var var_0 = select(!(!select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, false, false), global1.x), !vec4<bool>(false, global1.x, global1.x, global1.x), true)), select(vec4<bool>(all(!global1.xx), true, max(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)]) >= _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), global1.x | any(vec2<bool>(true, false))), select(select(!vec4<bool>(true, false, global1.x, false), vec4<bool>(global1.x, false, true, false), vec4<bool>(true, global1.x, global1.x, false)), vec4<bool>(any(vec2<bool>(global1.x, global1.x)), global1.x, !global1.x, all(vec3<bool>(global1.x, global1.x, true))), vec4<bool>(all(vec4<bool>(false, false, false, true)), false, global1.x, false)), global1.x), vec4<bool>(!any(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x))), select(false, global1.x, global1.x), all(vec3<bool>(any(vec3<bool>(global1.x, true, false)), true, any(vec3<bool>(global1.x, false, true)))), global1.x));
    let var_1 = vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x);
    let var_2 = Struct_4(vec4<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, var_1.x), ~var_1.zy) != (_wgslsmith_div_u32(79211u, var_1.x) << ((var_1.x & u_input.a.x) % 32u)), true, any(var_0.yx), all(!vec3<bool>(var_0.x, global1.x, var_0.x))));
    var var_3 = 1u;
    return vec2<i32>(19879i, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, firstTrailingBit(var_1.x) & min(_wgslsmith_clamp_u32(1u, var_1.x, var_1.x), ~53792u)), 6u)]);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: u32) -> vec2<i32> {
    global1 = !vec3<bool>(true, global1.x, true & (!global1.x | !global1.x));
    var var_0 = vec2<bool>(true, true || global1.x);
    let var_1 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(~abs(global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), global3[_wgslsmith_index_u32(arg_0.x, 6u)]), -min(vec2<i32>(max(global3[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(5287u, 6u)]), -global3[_wgslsmith_index_u32(1u, 6u)]), vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], func_2(vec2<i32>(global3[_wgslsmith_index_u32(arg_2, 6u)], 2147483647i), global1.x, global1.yz))), firstLeadingBit(func_3()));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-765f, arg_1.x, -692f), vec3<f32>(1250f, arg_1.x, 1485f), vec3<bool>(false, global1.x, global1.x))))), ~var_1, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-40020i, -22188i, var_1.x), vec3<i32>(-1i, global3[_wgslsmith_index_u32(0u, 6u)], 2147483647i), vec3<bool>(false, true, true)), max(vec3<i32>(var_1.x, var_1.x, global3[_wgslsmith_index_u32(3219u, 6u)]), vec3<i32>(-2147483647i, -45128i, global3[_wgslsmith_index_u32(0u, 6u)]))) >> (1u % 32u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, arg_2), vec3<u32>(1u, u_input.a.x, arg_0.x)) << (~4294967295u % 32u), 6u)], false), vec2<f32>(1000f, _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-386f, arg_1.x))), global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(abs(~arg_0.x) >> (21515u % 32u), 15u)], arg_0.x);
    var var_3 = _wgslsmith_dot_vec4_i32(abs(max(vec4<i32>(-1103i, global3[_wgslsmith_index_u32(var_2.c.c.x, 6u)], -var_2.a.b.x, 0i), _wgslsmith_mod_vec4_i32(min(vec4<i32>(var_1.x, 412i, var_1.x, -30691i), vec4<i32>(1i, global3[_wgslsmith_index_u32(74021u, 6u)], var_1.x, 1i)), firstLeadingBit(vec4<i32>(global3[_wgslsmith_index_u32(arg_2, 6u)], var_1.x, -33606i, var_1.x))))), -_wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -37681i, var_2.d.d.c, var_1.x), vec4<i32>(2147483647i, -23641i, global3[_wgslsmith_index_u32(117552u, 6u)], var_2.c.d.c)), vec4<i32>(var_2.d.d.b.x, -41325i, 0i, var_2.c.d.b.x) >> (arg_0 % vec4<u32>(32u))));
    return _wgslsmith_add_vec2_i32(select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.d.d, -16651i), var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.d.b.x, var_1.x, global3[_wgslsmith_index_u32(arg_2, 6u)], 0i), vec4<i32>(var_1.x, -21886i, -2147483647i, var_1.x))) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(arg_0.x, 6u)]), var_1, vec2<i32>(var_1.x, -7860i)), ~countOneBits(~var_1), any(!global1.xx)), vec2<i32>(-1i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-134f, 1000f, 594f) * vec3<f32>(1000f, 1797f, 879f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(844f, 2393f, 1195f))))), func_1(vec4<u32>(~21912u, u_input.a.x >> (98986u % 32u), ~u_input.a.x, u_input.a.x | u_input.a.x), vec2<f32>(-1000f, _wgslsmith_f_op_f32(852f - 321f)), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_clamp_u32(33230u, u_input.a.x, 0u))), select(_wgslsmith_sub_i32(~global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)] >> (u_input.a.x % 32u)), -(~global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), true), 0i, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))), global0[_wgslsmith_index_u32(~u_input.a.x, 15u)], Struct_2(global1.x, ~(~(~86153u)), reverseBits(vec3<u32>(32449u, 0u, firstLeadingBit(2748u))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -2007f, -437f))), vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, -114i, -10196i), abs(2147483647i)), -2855i, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 48624i), vec2<i32>(1i, -1i)), all(select(vec2<bool>(global1.x, true), global1.xx, false)))), _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec2_u32(countOneBits(u_input.a.wy), ~u_input.a.yz), 84268u));
    var var_1 = select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(var_0.d.a, false, true), true)), vec3<bool>(!var_0.d.d.e, var_0.c.a && global1.x, global1.x), select(!vec3<bool>(var_0.c.d.e, true, true), !select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, var_0.d.d.e, global1.x), var_0.d.d.e), !(!vec3<bool>(false, global1.x, var_0.d.d.e)))), vec3<bool>(global1.x, var_0.c.d.e, -1508f == var_0.b.x), !vec3<bool>(true, any(!vec3<bool>(true, global1.x, var_0.d.a)), false));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -477f), -1754f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.d.d.a)) + var_0.c.d.a), !select(vec3<bool>(true, global1.x, var_0.c.d.e), vec3<bool>(true, true, false), false))), vec2<i32>(global3[_wgslsmith_index_u32(1u, 6u)], max(global3[_wgslsmith_index_u32(~3418u, 6u)], max(2147483647i, var_0.d.d.c))), global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(0u, var_0.e)) ^ max(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 0u, var_0.d.c.x, 2809u)), var_0.e), 6u)], 22620i, all(!select(vec3<bool>(var_0.c.a, global1.x, false), vec3<bool>(var_0.c.a, var_0.a.e, true), var_1.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.d.a.x * var_0.d.d.a.x), -410f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(var_0.b)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1618f, 886f), var_0.a.a.zx))))))), Struct_2(all(!(!vec4<bool>(global1.x, var_1.x, var_1.x, var_0.a.e))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~u_input.a, ~u_input.a), u_input.a), vec3<u32>(_wgslsmith_clamp_u32(14435u, u_input.a.x, u_input.a.x) & u_input.a.x, ~reverseBits(7926u), abs(var_0.c.b)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.c.d.a.x, var_0.a.a.x))), vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(var_0.d.b, 6u)], 14999i), vec3<i32>(var_0.c.d.d, -1597i, -24707i))), -15879i, 1i, !(!var_1.x))), global0[_wgslsmith_index_u32(abs(~(~_wgslsmith_div_u32(1u, 36848u))), 15u)], 38712u);
    global3 = array<i32, 6>();
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, ~var_0.d.b, firstLeadingBit(75080u), _wgslsmith_mod_u32(var_0.d.b, 0u))), _wgslsmith_mod_u32(abs(u_input.a.x), var_0.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(285f, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-41381i, var_0.d.d.c, global3[_wgslsmith_index_u32(56413u, 6u)], -43574i) | _wgslsmith_mult_vec4_i32(vec4<i32>(29540i, 1i, global3[_wgslsmith_index_u32(var_0.c.b, 6u)], 0i), vec4<i32>(-16603i, -1814i, 22890i, -65053i)), -vec4<i32>(var_0.a.b.x, var_0.c.d.d, 28069i, -35841i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-33450i, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], 0i, 0i), vec4<i32>(global3[_wgslsmith_index_u32(var_2.x, 6u)], var_0.a.c, var_0.a.b.x, var_0.c.d.b.x)), var_1.x), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(var_0.a.c, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], var_0.d.d.c, var_0.d.d.c))));
}

