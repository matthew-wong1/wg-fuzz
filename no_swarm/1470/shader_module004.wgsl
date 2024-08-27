struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    return 2147483647i;
}

fn func_2(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = firstLeadingBit(-abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -64527i)), -1i, 47688i, 2147483647i)));
    var_0 = vec4<i32>(var_0.x, _wgslsmith_sub_i32(firstLeadingBit(u_input.b), u_input.b), func_3(), ~var_0.x);
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    var_0 = -select(firstTrailingBit(select(vec4<i32>(var_0.x, u_input.c.x, 0i, u_input.c.x), vec4<i32>(-27364i, u_input.c.x, -7814i, 50970i), arg_0.x)) ^ select(_wgslsmith_add_vec4_i32(vec4<i32>(-22353i, u_input.b, 1342i, u_input.b), vec4<i32>(u_input.b, u_input.c.x, -19636i, var_0.x)), ~vec4<i32>(var_0.x, -1i, -26259i, var_0.x), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, var_0.x, 38291i), vec4<i32>(var_0.x, u_input.b, 1i, u_input.b) ^ vec4<i32>(0i, u_input.b, 0i, u_input.c.x)) ^ ((vec4<i32>(var_0.x, u_input.c.x, 2147483647i, 60281i) ^ vec4<i32>(-1i, 11930i, 11464i, u_input.c.x)) << ((vec4<u32>(22162u, u_input.d, 24197u, u_input.d) ^ vec4<u32>(54935u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 4u)], 4u)], 0u)) % vec4<u32>(32u))), arg_0.x);
    return vec2<u32>(max(abs(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 4u)], 18109u), u_input.a.zx))), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(65756u, 41405u) >> (u_input.a.xx % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 0u)), 4u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(min(firstTrailingBit(u_input.a.x), 204u), _wgslsmith_add_u32(reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), 4294967295u), global0[_wgslsmith_index_u32(42070u, 4u)] ^ u_input.d), vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a), select(u_input.a, u_input.a, false)), countOneBits(1u), global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(4294967295u, 4u)] << (44679u % 32u)), 4u)])));
}

fn func_1(arg_0: vec2<bool>) -> Struct_5 {
    var var_0 = any(select(!(!select(vec2<bool>(arg_0.x, arg_0.x), arg_0, arg_0)), vec2<bool>(all(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), true), arg_0.x | false));
    var_0 = arg_0.x;
    global0 = array<u32, 4>();
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 1u, u_input.d), vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(0u, 4u)], 1u, u_input.a.x)))), abs(~vec2<u32>(global0[_wgslsmith_index_u32(29920u, 4u)], u_input.d))), ~(~func_2(vec4<bool>(false, arg_0.x, true, arg_0.x))));
    global0 = array<u32, 4>();
    return Struct_5(~((min(vec4<u32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(var_1.x, 4u)], var_1.x), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 4u)], 1u, global0[_wgslsmith_index_u32(u_input.a.x, 4u)])) & ~vec4<u32>(78958u, var_1.x, 1u, global0[_wgslsmith_index_u32(27292u, 4u)])) & ~vec4<u32>(global0[_wgslsmith_index_u32(var_1.x, 4u)], u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20193u, 4u)], 4u)], 0u)), ~5857i);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: f32) -> Struct_5 {
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let var_0 = any(vec4<bool>(arg_1.c, arg_1.c, true & (all(vec4<bool>(arg_1.c, true, true, arg_1.c)) || (false || arg_1.c)), false));
    return Struct_5(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, _wgslsmith_mod_u32(abs(min(global0[_wgslsmith_index_u32(u_input.d, 4u)], arg_0.a.x)), countOneBits(global0[_wgslsmith_index_u32(1u, 4u)]))), -arg_0.b & reverseBits(3954i));
}

fn func_5(arg_0: Struct_5, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = array<u32, 4>();
    let var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 4u)], u_input.d, abs(1u))), vec3<u32>(firstTrailingBit(~func_2(vec4<bool>(false, arg_2.c, arg_2.c, arg_2.c)).x), _wgslsmith_add_u32(4294967295u, arg_0.a.x), ~select(u_input.d, arg_0.a.x ^ 81893u, true)));
    global0 = array<u32, 4>();
    var var_1 = -u_input.b;
    var_1 = _wgslsmith_sub_i32(arg_0.b, ~_wgslsmith_add_i32(1i, ~_wgslsmith_div_i32(arg_0.b, arg_2.a.x)));
    return any(select(select(vec3<bool>(true, all(vec3<bool>(arg_2.c, true, true)), !arg_1), vec3<bool>(true, arg_2.c, true), arg_2.c), select(!select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, true, true), arg_1), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, arg_2.c), vec3<bool>(true, true, arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(func_5(func_4(func_1(vec2<bool>(false, false)), Struct_1(vec4<i32>(0i, u_input.b, -8187i, 37028i), vec4<i32>(u_input.b, u_input.c.x, 2147483647i, 2147483647i), true), -578f), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false)), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(21169i, -18726i, 875i, u_input.c.x), vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b)), -vec4<i32>(u_input.b, 10516i, 22041i, u_input.c.x), true)), select(true, true && all(vec4<bool>(true, false, true, true)), all(vec2<bool>(true, true))), true, any(vec2<bool>(true, true)));
    var var_1 = firstTrailingBit(reverseBits(reverseBits(u_input.c)));
    var var_2 = !vec4<bool>(!(!(!var_0.x)), all(vec4<bool>(!var_0.x, all(var_0.xx), 2147483647i == var_1.x, select(true, var_0.x, true))), _wgslsmith_sub_u32(44209u, _wgslsmith_dot_vec4_u32(vec4<u32>(74525u, 74883u, u_input.a.x, u_input.d), vec4<u32>(4294967295u, 33720u, u_input.d, 61615u))) != ~u_input.d, all(!vec4<bool>(true, var_0.x, true, false)));
    var var_3 = 0u;
    var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(60695i, ~(max(vec2<u32>(global0[_wgslsmith_index_u32(73943u, 4u)], 52365u) | u_input.a.yy, func_1(vec2<bool>(var_2.x, var_0.x)).a.yz) << (u_input.a.xy % vec2<u32>(32u))), countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(var_1.x, -1i), u_input.c)), _wgslsmith_mod_i32(min(var_1.x, 2147483647i), var_1.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(530f, -1069f), vec2<f32>(-572f, -171f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -343f), -675f)), vec2<f32>(_wgslsmith_f_op_f32(-443f * _wgslsmith_f_op_f32(max(-864f, 2345f))), -331f), vec2<bool>(var_2.x, var_2.x))));
}

