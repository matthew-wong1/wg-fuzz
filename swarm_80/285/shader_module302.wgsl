struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 57479i;

var<private> global1: array<f32, 1>;

var<private> global2: array<Struct_4, 19>;

var<private> global3: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<i32> {
    var var_0 = !select(!select(!vec4<bool>(true, false, arg_1, arg_1), select(vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_0, arg_0, false, arg_1), vec4<bool>(arg_0, true, false, arg_1)), vec4<bool>(false, arg_0, arg_0, arg_0)), !(!select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(false, arg_1, true, true), arg_1)), vec4<bool>(all(select(vec4<bool>(arg_0, arg_1, true, true), vec4<bool>(arg_1, true, false, arg_0), vec4<bool>(false, arg_0, false, false))), true, true, true));
    var var_1 = u_input.a;
    var var_2 = global2[_wgslsmith_index_u32(u_input.b, 19u)];
    var var_3 = global2[_wgslsmith_index_u32(0u, 19u)];
    var_3 = global2[_wgslsmith_index_u32(u_input.b, 19u)];
    return _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i, var_1.x, u_input.a.x, var_1.x) | vec4<i32>(-2147483647i, var_1.x, 1i, -17913i)), vec4<i32>(select(u_input.a.x, 13229i, true), abs(u_input.a.x), 1i, ~0i)), firstTrailingBit(~select(select(vec4<i32>(u_input.a.x, var_1.x, var_1.x, u_input.a.x), vec4<i32>(u_input.a.x, 1i, var_1.x, 0i), vec4<bool>(var_0.x, false, var_0.x, false)), vec4<i32>(var_1.x, 1i, 68486i, var_1.x), vec4<bool>(false, arg_1, false, arg_1))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(3771i | (25613i >> (u_input.b % 32u)), -u_input.a.x), -28598i), -u_input.a ^ arg_0.yz);
    global2 = array<Struct_4, 19>();
    global4 = arg_1.b;
    global0 = abs(-u_input.a.x);
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(abs(-vec4<i32>(-15676i, 12105i, -13763i, var_0.x)), func_3(false, true)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, arg_0.x, 2147483647i, -1i)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(31532i, u_input.a.x, 2147483647i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 0i, 1i, -58666i), vec4<i32>(arg_0.x, var_0.x, 2147483647i, -30740i))), vec4<i32>(-u_input.a.x, arg_0.x, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(0i, var_0.x)))) | max(firstLeadingBit(~vec4<i32>(u_input.a.x, -9962i, 4221i, arg_0.x)), vec4<i32>(1i, _wgslsmith_clamp_i32(-1i, -35041i, arg_0.x), -u_input.a.x, _wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x))));
    return reverseBits(64100u);
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(1u, 19u)];
    let var_1 = 36561i;
    var var_2 = _wgslsmith_add_i32(_wgslsmith_add_i32(var_1, select(var_1, var_1, true) >> (_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(0u, u_input.b)) % 32u)), ~var_1);
    var_2 = ~(-1617i);
    let var_3 = var_0.a.a.x;
    return Struct_3(~(~(~var_0.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a.b, vec4<f32>(global4.a, global4.a, arg_0.a.b.x, global1[_wgslsmith_index_u32(26216u, 1u)])) + _wgslsmith_f_op_vec4_f32(arg_0.a.b * vec4<f32>(1152f, -943f, 958f, 1488f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.a, -1526f, global1[_wgslsmith_index_u32(arg_0.a.a.x, 1u)], -1109f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1426f, var_0.a.b.x, -239f, var_0.a.b.x))), var_0.a.b, vec4<bool>(true, true, all(global3[_wgslsmith_index_u32(arg_0.a.a.x, 11u)]), true)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~1u, func_2(vec3<i32>(u_input.a.x, -1i, u_input.a.x) & vec3<i32>(16759i, 1i, -7334i), Struct_5(1u, Struct_1(global4.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a, -1534f, global1[_wgslsmith_index_u32(13371u, 1u)]) * vec3<f32>(498f, -585f, global1[_wgslsmith_index_u32(u_input.b, 1u)]))), u_input.b), firstLeadingBit(countOneBits(~vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b)))), 19u)]);
    let var_1 = ~(-1i);
    global0 = ~(-1i);
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(var_1, func_3(true, true).x), _wgslsmith_add_vec2_i32(u_input.a, select(max(vec2<i32>(var_1, u_input.a.x), vec2<i32>(var_1, var_1)), vec2<i32>(-55952i, var_1), select(vec2<bool>(true, true), vec2<bool>(false, true), false)))) ^ -abs(~u_input.a ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a, vec2<i32>(var_1, u_input.a.x)));
    global1 = array<f32, 1>();
    return Struct_1(_wgslsmith_f_op_f32(round(-1506f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 19>();
    var var_0 = u_input.a.x;
    var var_1 = Struct_5(u_input.b, func_1());
    global4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)) * _wgslsmith_f_op_f32(global4.a * var_1.b.a)), -1244f));
    var_1 = Struct_5(_wgslsmith_sub_u32(u_input.b, u_input.b | 0u), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, global1[_wgslsmith_index_u32(var_1.a, 1u)], -629f, var_1.b.a)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.b.a)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 1u)] - var_1.b.a), global4.a, _wgslsmith_f_op_f32(floor(var_1.b.a)))))), 597f, 0u, ~62803u);
}

