struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 30>;

var<private> global3: bool;

var<private> global4: Struct_3 = Struct_3(Struct_1(vec4<u32>(79721u, 36853u, 1u, 1u), vec3<f32>(-927f, 199f, -1000f)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> f32 {
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x | _wgslsmith_dot_vec4_u32(~arg_1.a.a, arg_1.a.a | vec4<u32>(39850u, 53852u, global1.x, global4.a.a.x)), 1u), 30u)] | true;
    global2 = array<bool, 30>();
    global3 = all(vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a.a.x, 30u)], arg_0.a.x <= arg_0.a.x, false & global2[_wgslsmith_index_u32(global1.x, 30u)])), true, !global2[_wgslsmith_index_u32(countOneBits(arg_1.a.a.x), 30u)], false));
    global1 = global4.a.a;
    global3 = _wgslsmith_f_op_f32(sign(arg_1.a.b.x)) < _wgslsmith_f_op_f32(-252f - global4.a.b.x);
    return 1172f;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> vec4<bool> {
    global4 = Struct_3(global4.a);
    var var_0 = global2[_wgslsmith_index_u32(23711u, 30u)];
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global4.a.b.x, global4.a.b.x, global2[_wgslsmith_index_u32(28551u, 30u)]))))))), _wgslsmith_f_op_f32(-global4.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1700f));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(arg_1, Struct_3(Struct_1(vec4<u32>(global4.a.a.x, 1u, 0u, 70339u) >> (global4.a.a % vec4<u32>(32u)), vec3<f32>(578f, 134f, var_1.x))), _wgslsmith_mod_i32(firstTrailingBit(arg_1.b), u_input.b)))));
    let var_3 = ~(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.a.x >> (global4.a.a.x % 32u), arg_1.a.x, arg_1.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-49691i, arg_0.x, 55505i, -1i), vec4<i32>(-2147483647i, 2147483647i, arg_0.x, -2147483647i)) >> (vec4<u32>(1u, global4.a.a.x, 40381u, 89534u) % vec4<u32>(32u))) | (~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, u_input.b, arg_1.b, arg_0.x), vec4<i32>(0i, 22879i, arg_1.a.x, arg_1.a.x)) | u_input.b));
    return vec4<bool>(any(!vec2<bool>(true, all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(31681u, 30u)])))), !global2[_wgslsmith_index_u32(1u, 30u)], true | (global4.a.b.x > 451f), !global2[_wgslsmith_index_u32(abs(31523u), 30u)]);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> i32 {
    global1 = ~firstTrailingBit(~vec4<u32>(0u | global1.x, ~1u, global1.x | 5943u, _wgslsmith_sub_u32(840u, global4.a.a.x)));
    var var_0 = vec4<bool>(all(!func_2(~vec2<i32>(u_input.b, 40974i), Struct_4(vec2<i32>(u_input.b, 38434i), 2147483647i))), true || any(!select(vec3<bool>(arg_1, false, false), vec3<bool>(false, true, true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(global1.x, 30u)], true))), true, global2[_wgslsmith_index_u32(u_input.d.x, 30u)]);
    global1 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(global4.a.a, vec4<u32>(u_input.a.x, 71601u, 0u, ~(~4294967295u)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global4.a.a.x, global1.x, 4294967295u, 15445u), global4.a.a) << (vec4<u32>(u_input.d.x, global1.x, 46998u, 23926u) % vec4<u32>(32u)), firstTrailingBit(global4.a.a & vec4<u32>(global1.x, 0u, global1.x, 70699u)))));
    global1 = global4.a.a | _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, u_input.c.x) >> (global4.a.a % vec4<u32>(32u)), vec4<u32>(u_input.c.x, global4.a.a.x, global4.a.a.x, abs(1u))), vec4<u32>(max(53879u, 1u), (0u >> (global1.x % 32u)) & _wgslsmith_clamp_u32(global1.x, 67947u, 85227u), ~0u, global1.x));
    let var_1 = global4.a;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = func_1(select(vec2<bool>((global4.a.a.x < 1u) && true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(0u), 0u & u_input.a.x), 30u)]), vec2<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 30u)], false, global2[_wgslsmith_index_u32(38324u, 30u)]))), vec2<bool>(global2[_wgslsmith_index_u32(select(~0u, var_0, !global2[_wgslsmith_index_u32(4294967295u, 30u)]), 30u)], global2[_wgslsmith_index_u32(61115u, 30u)])), _wgslsmith_f_op_f32(f32(-1f) * -132f) >= global4.a.b.x);
    let var_2 = !select(select(!select(vec4<bool>(global2[_wgslsmith_index_u32(global4.a.a.x, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(var_0, 30u)]), vec4<bool>(false, false, false, true), false), !vec4<bool>(false, global2[_wgslsmith_index_u32(var_0, 30u)], true, true), !(global4.a.a.x == 4294967295u)), vec4<bool>(any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 30u)], false, true, false)), any(vec2<bool>(global2[_wgslsmith_index_u32(36946u, 30u)], global2[_wgslsmith_index_u32(global4.a.a.x, 30u)])), func_2(vec2<i32>(-1i, u_input.b), Struct_4(vec2<i32>(-2147483647i, 0i), u_input.b)).x, true), select(select(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(global2[_wgslsmith_index_u32(45983u, 30u)], global2[_wgslsmith_index_u32(global1.x, 30u)], true, false), global2[_wgslsmith_index_u32(1u, 30u)]), select(!vec4<bool>(global2[_wgslsmith_index_u32(53888u, 30u)], false, global2[_wgslsmith_index_u32(global1.x, 30u)], false), !vec4<bool>(false, global2[_wgslsmith_index_u32(var_0, 30u)], false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 30u)], false, global2[_wgslsmith_index_u32(u_input.e, 30u)])), vec4<bool>(!global2[_wgslsmith_index_u32(51030u, 30u)], !global2[_wgslsmith_index_u32(u_input.d.x, 30u)], true, true)));
    let var_3 = Struct_2(global4.a, Struct_1(vec4<u32>(_wgslsmith_mult_u32(abs(4294967295u), 4294967295u >> (u_input.a.x % 32u)), global4.a.a.x, ~var_0, ~(~4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -1783f, -202f))), abs(vec2<i32>(-18265i << (1u % 32u), 1i) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, 25127i))), select(abs(_wgslsmith_add_vec2_u32(vec2<u32>(global4.a.a.x, 36062u), u_input.d.yz) >> ((vec2<u32>(u_input.e, 8919u) ^ vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.c), firstTrailingBit(47341u)), _wgslsmith_div_vec2_u32(~vec2<u32>(9010u, 4294967295u), ~u_input.d.yz)), vec2<bool>(true, any(vec4<bool>(global2[_wgslsmith_index_u32(67544u, 30u)], true, var_2.x, global2[_wgslsmith_index_u32(91529u, 30u)])))));
    var var_4 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(~var_3.a.a.x, var_0 >> (4294967295u % 32u), _wgslsmith_div_u32(global4.a.a.x, 0u), reverseBits(50117u))), global4.a.a);
    global3 = all(var_2.wxx);
    var_4 = vec4<u32>(u_input.a.x, 48601u ^ u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(global1.x, var_3.b.a.x)), var_4.x), vec2<u32>(min(var_4.x, var_3.a.a.x), 1u)), _wgslsmith_dot_vec4_u32(abs(global4.a.a), ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global4.a.a, vec4<u32>(1u, 3168u, global1.x, var_0)), global4.a.a)));
    let var_5 = -vec3<i32>(2624i, var_3.c.x, firstTrailingBit((-1i ^ u_input.b) ^ (u_input.b >> (26472u % 32u))));
    var var_6 = _wgslsmith_f_op_f32(max(global4.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-125f, -1333f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec2<i32>(-37124i, 2147483647i), -20877i), Struct_3(global4.a), firstLeadingBit(var_5.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_5, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.b.x * global4.a.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, max(u_input.c.x, 43476u)), ~(~1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, select(0u, 36520u, global2[_wgslsmith_index_u32(var_0, 30u)])), vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.e, 4294967295u, 1u)))), -1i, var_5);
}

