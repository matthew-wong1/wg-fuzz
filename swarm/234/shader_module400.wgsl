struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(i32(-2147483648), 29197i), vec2<i32>(-38403i, -37838i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 1i));

var<private> global1: array<f32, 7> = array<f32, 7>(-892f, 809f, -822f, -1216f, 301f, 1000f, -192f);

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = vec4<u32>(0u, 4294967295u, u_input.e, ~max(u_input.a, firstTrailingBit(39244u)));
    var var_1 = -1i;
    let var_2 = vec4<i32>(25163i, -21539i, u_input.d & -select(_wgslsmith_mult_i32(1i, 30179i), _wgslsmith_mod_i32(-1i, -14124i), true), max(firstLeadingBit(-1i), u_input.d));
    var var_3 = Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), vec3<u32>(min(~4294967295u, 1u | var_0.x), min(var_0.x, u_input.a) >> (_wgslsmith_mod_u32(1u, var_0.x) % 32u), 4294967295u) | ~u_input.c);
    let var_4 = var_3.b;
    return 1i;
}

fn func_2(arg_0: f32) -> i32 {
    return _wgslsmith_add_i32(reverseBits(-(_wgslsmith_div_i32(u_input.d, -2147483647i) >> (40696u % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1026f, 806f) + vec2<f32>(-525f, 565f))), -2147483647i, ~_wgslsmith_clamp_i32(0i, 25840i, 11564i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(38303i, 13523i, u_input.d, 2860i), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), _wgslsmith_sub_i32(-2147483647i, u_input.d))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1i, -6422i) ^ vec4<i32>(u_input.d, 25334i, 0i, -1i), firstLeadingBit(vec4<i32>(-37395i, u_input.d, u_input.d, 0i)))));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = vec4<i32>((i32(-1i) * -_wgslsmith_mult_i32(-2147483647i, u_input.d)) ^ _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.d ^ 1i, _wgslsmith_mod_i32(-11013i, 25555i)), u_input.d), 0i, u_input.d, min(firstLeadingBit(u_input.d), min(u_input.d, max(func_2(393f), u_input.d))));
    return !all(!vec3<bool>(false, all(vec4<bool>(false, true, true, true)), any(vec3<bool>(false, true, false))));
}

fn func_4(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 7u)]), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 7u)])), global1[_wgslsmith_index_u32(1u, 7u)]) + vec4<f32>(global1[_wgslsmith_index_u32(1u, 7u)], -769f, _wgslsmith_div_f32(557f, global1[_wgslsmith_index_u32(0u, 7u)]), global1[_wgslsmith_index_u32(~u_input.a, 7u)]))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 7u)] * _wgslsmith_f_op_f32(f32(-1f) * -1077f)), -1615f, global1[_wgslsmith_index_u32(~u_input.e ^ abs(u_input.c.x), 7u)]), vec4<f32>(_wgslsmith_f_op_f32(trunc(-498f)), 1005f, 2264f, global1[_wgslsmith_index_u32(~15323u & u_input.b, 7u)]), select(vec4<bool>(true, true, true, arg_1 || true), !(!vec4<bool>(true, arg_1, arg_1, arg_1)), true))));
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_sub_u32(min(u_input.b, 11660u) << (select(64627u, u_input.b, arg_1) % 32u), ~_wgslsmith_add_u32(u_input.c.x, u_input.b)), ~1u << (u_input.c.x % 32u))), 4u)];
    var var_2 = select(select(select(select(!vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, false, arg_1), arg_1 || true), !vec3<bool>(arg_1, arg_1, true), countOneBits(4294967295u) > firstTrailingBit(63856u)), vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(arg_1, true)), arg_1, true)), vec3<bool>(all(!select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1)), false, arg_1), select(select(!select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, false, true), vec3<bool>(true, true, arg_1)), select(!vec3<bool>(true, true, arg_1), !vec3<bool>(arg_1, arg_1, arg_1), all(vec2<bool>(true, arg_1))), !select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, false))), vec3<bool>(arg_1, func_1(_wgslsmith_f_op_vec3_f32(-var_0.xyx)), select(true, arg_1 || false, all(vec4<bool>(false, false, true, arg_1)))), 3987i <= (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, var_1.x, var_1.x), vec4<i32>(var_1.x, -1i, -2147483647i, -3881i)) << (~94009u % 32u))));
    global2 = array<Struct_1, 20>();
    return 22180u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = -1175f;
    let var_2 = global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c.x, 4294967295u), func_4(0i, func_1(vec3<f32>(var_1, 1000f, global1[_wgslsmith_index_u32(u_input.c.x, 7u)])))), _wgslsmith_mult_u32(~u_input.b, 43165u)), 20u)];
    var var_3 = Struct_1(vec3<bool>(var_2.a.x, false, u_input.d != u_input.d), vec3<u32>(abs(~1u), 1u, var_2.b.x << (~abs(67166u) % 32u)));
    var var_4 = !var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 11217u), vec3<u32>(1u, 50184u, var_3.b.x)), _wgslsmith_div_u32(236u, 39672u), ~1041u)), vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(u_input.d), 0i >> (u_input.e % 32u), min(29453i, 17451i)));
}

