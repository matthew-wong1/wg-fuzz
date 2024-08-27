struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = max(26314i, 2147483647i);
    global0 = array<Struct_1, 23>();
    let var_1 = false;
    return u_input.b.x >> (~(~u_input.e) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    var var_0 = !(!arg_1);
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 15486u), _wgslsmith_div_u32(func_3(-2147483647i), ~func_3(u_input.c)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 72559u), select(u_input.d, select(vec2<u32>(21131u, u_input.d.x), vec2<u32>(0u, var_1.x), vec2<bool>(arg_1, false)), vec2<bool>(true, true))), vec2<u32>(_wgslsmith_mult_u32(~(~var_1.x), 1u), arg_2.x)), 23u)];
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(~u_input.d.x)) << (0u % 32u), 23u)];
    var_1 = arg_2.xx;
    return abs(u_input.d.x);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_mod_u32(reverseBits(u_input.a), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, func_2(Struct_1(vec2<i32>(arg_2.b.x, 0i), vec3<i32>(arg_2.a.x, arg_2.a.x, 8330i)), var_0, vec4<u32>(u_input.e, u_input.d.x, 0u, u_input.a))), 1u), ~(~4294967295u)));
    var var_2 = Struct_1(arg_2.b.yy, abs(~select(vec3<i32>(-1i, 41643i, -1i), vec3<i32>(-1i, -34379i, 24409i), vec3<bool>(arg_0, true, true))));
    global0 = array<Struct_1, 23>();
    let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 1u, u_input.a, 0u)), ~countOneBits(countOneBits(vec4<u32>(u_input.d.x, 1u, 61054u, 101046u)))), 26222u);
    return 430f;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> vec2<f32> {
    global0 = array<Struct_1, 23>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.a), 23u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, true, global0[_wgslsmith_index_u32(4294967295u, 23u)]))))));
    let var_2 = select(select(vec3<bool>(false, true, _wgslsmith_f_op_f32(ceil(212f)) <= _wgslsmith_f_op_f32(729f * 1000f)), vec3<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), false), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), false)), select(select(vec3<bool>(true, all(vec3<bool>(true, false, false)), true), vec3<bool>(true, true, arg_1.x < arg_1.x), true), vec3<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true)), (var_0.a.x == arg_0) || false, true), !(!any(vec2<bool>(true, true)))), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), true)));
    var var_3 = Struct_1(var_0.a, vec3<i32>(var_0.b.x, ~_wgslsmith_sub_i32(~arg_0, var_0.b.x), ~(-_wgslsmith_clamp_i32(u_input.c, var_0.a.x, arg_0))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1524f, _wgslsmith_f_op_f32(exp2(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_dot_vec4_i32(max(select(vec4<i32>(20142i, -27314i, 48890i, u_input.c), vec4<i32>(u_input.c, 0i, 40905i, u_input.c), false), -vec4<i32>(18348i, u_input.c, u_input.c, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, -1i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-847f + -198f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(true, false, global0[_wgslsmith_index_u32(u_input.d.x, 23u)])), _wgslsmith_f_op_f32(-466f * 493f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -594f)) * _wgslsmith_f_op_f32(f32(-1f) * -142f))), u_input.d.x ^ ((u_input.b.x & 0u) >> (_wgslsmith_sub_u32(u_input.e, u_input.d.x) % 32u))))));
    var var_1 = ~select(u_input.d, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, ~u_input.d.x), ~(~u_input.d)), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, any(vec4<bool>(true, false, true, false)), global0[_wgslsmith_index_u32(0u, 23u)]))), -1000f));
    var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1311f * 1435f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 646f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-347f, 886f), vec2<f32>(var_0.x, 2618f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-425f, var_0.x)))))));
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(abs(var_1.x ^ 115540u) << (_wgslsmith_mod_u32(~93802u, ~0u) % 32u)) | u_input.a, 23u)];
    var var_3 = Struct_1(vec2<i32>(2147483647i, select(_wgslsmith_sub_i32(-21809i, var_2.a.x), reverseBits(-1i), true)) << (abs(~u_input.b) % vec2<u32>(32u)), vec3<i32>(1i, ~u_input.c, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(var_2.a), vec2<i32>(u_input.c, u_input.c)), 30733i)));
    var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(16617u, u_input.d.x, 4294967295u, var_1.x), vec4<u32>(u_input.b.x, var_1.x, u_input.a, 11819u), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 72075u, 1u), vec4<u32>(48769u, 4294967295u, var_1.x, u_input.d.x), vec4<u32>(4294967295u, u_input.a, 0u, 1u))), vec4<u32>(_wgslsmith_mult_u32(1u, var_1.x), 36898u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, var_1.x, 1u, 4294967295u), vec4<u32>(81128u, var_1.x, u_input.b.x, 72471u)))))), 23u)];
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1315f, var_0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-1000f, var_0.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, var_0.x) * vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), vec2<f32>(201f, 1095f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1565f, firstLeadingBit(vec4<u32>(4294967295u, 1u, ~var_1.x, var_1.x)) & vec4<u32>(98948u, u_input.e, _wgslsmith_add_u32(35030u, countOneBits(59499u)), 4294967295u));
}

