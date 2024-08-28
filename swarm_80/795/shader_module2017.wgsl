struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2>;

var<private> global1: array<i32, 29>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    global0 = array<vec3<f32>, 2>();
    let var_0 = -vec2<i32>(global1[_wgslsmith_index_u32(19139u, 29u)], 0i);
    var var_1 = Struct_1(firstLeadingBit(abs(1i)));
    var var_2 = true;
    let var_3 = any(select(select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, true)))), select(vec4<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, false)), true, 2147483647i > var_0.x), vec4<bool>(false, any(vec2<bool>(true, true)), false, false), vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)) && all(vec2<bool>(false, true))));
    return arg_0.x & arg_0.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: bool) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-635f * _wgslsmith_f_op_f32(-1000f + 1576f)))) * -713f), -758f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 397f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1139f, -194f) - _wgslsmith_f_op_f32(sign(-1339f)))))));
    var_0 = global0[_wgslsmith_index_u32(arg_0.x, 2u)];
    let var_1 = 7834i;
    global1 = array<i32, 29>();
    global1 = array<i32, 29>();
    return !select(!select(vec4<bool>(arg_3, arg_3, arg_3, false), select(vec4<bool>(true, true, arg_3, arg_3), vec4<bool>(arg_3, false, false, arg_3), true), vec4<bool>(arg_3, arg_3, arg_3, false)), !vec4<bool>(arg_3 | arg_3, any(vec4<bool>(arg_3, arg_3, true, arg_3)), true, arg_3 && arg_3), false);
}

fn func_2() -> vec4<bool> {
    global1 = array<i32, 29>();
    global0 = array<vec3<f32>, 2>();
    global0 = array<vec3<f32>, 2>();
    return vec4<bool>(true, true, any(func_4(vec4<u32>(~1u, 1139u << (0u % 32u), func_3(vec4<u32>(1u, 49192u, 0u, 4294967295u), Struct_1(34729i), global1[_wgslsmith_index_u32(51179u, 29u)]), 1u), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 22539u, 4294967295u), vec3<u32>(58311u, 0u, 63440u))), _wgslsmith_clamp_i32(63262i, abs(u_input.a), global1[_wgslsmith_index_u32(~63248u, 29u)]), !any(vec4<bool>(true, false, true, true)))), true);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3;
    let var_1 = any(select(!func_2(), !(!(!vec4<bool>(arg_1, false, arg_1, false))), true));
    return ~firstTrailingBit(firstLeadingBit(16511u));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> StorageBuffer {
    let var_0 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, arg_0.x), 29u)], i32(-1i) * -42132i, 1i, arg_1.a), -abs(vec4<i32>(-11492i, global1[_wgslsmith_index_u32(arg_0.x, 29u)], global1[_wgslsmith_index_u32(arg_0.x, 29u)], -9378i))), -select(vec4<i32>(arg_1.a, 0i, arg_1.a, arg_1.a), vec4<i32>(arg_1.a, arg_1.a, 1i, 1i), true), any(vec4<bool>(true, true, true, true))), _wgslsmith_add_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, global1[_wgslsmith_index_u32(17621u, 29u)], 12528i), -vec4<i32>(16498i, 2147483647i, -301i, global1[_wgslsmith_index_u32(0u, 29u)])), vec4<i32>(u_input.a << (arg_0.x % 32u), global1[_wgslsmith_index_u32(4294967295u, 29u)], -u_input.d.x, ~(-1i))), vec4<i32>(u_input.c.x << (arg_0.x % 32u), reverseBits(0i), u_input.d.x, -arg_1.a) | _wgslsmith_sub_vec4_i32(vec4<i32>(25862i, global1[_wgslsmith_index_u32(7217u, 29u)], 2147483647i, -2147483647i) << (vec4<u32>(4294967295u, 0u, arg_0.x, arg_0.x) % vec4<u32>(32u)), -vec4<i32>(-1i, 0i, 2147483647i, u_input.d.x))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(524f, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(arg_2.x - -919f)))))));
    let var_2 = Struct_2(arg_1);
    global1 = array<i32, 29>();
    var var_3 = all(!func_2().yw);
    return StorageBuffer(arg_2.x, arg_2.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-233f, arg_2.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 842f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.x, arg_2.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(min(~vec2<u32>(23145u, ~0u), vec2<u32>(func_1(Struct_1(71651i), true, Struct_1(u_input.c.x), Struct_2(Struct_1(u_input.a))), 1u)), Struct_1(select(-(~1i), min(1i, i32(-1i) * -2147483647i), true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1f), 380f))));
}

