struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: f32 = -738f;

var<private> global2: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(20384i, -23059i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 11947i), vec3<i32>(-1i, i32(-2147483648), 81116i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -6772i), vec3<i32>(-1i, 54512i, -68226i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(-6927i, -600i, 0i), vec3<i32>(0i, -5618i, 16436i), vec3<i32>(-5396i, 6475i, 0i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(1i, 8235i, -104254i), vec3<i32>(37253i, -1i, -1i), vec3<i32>(47649i, 71324i, 1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<f32> {
    global2 = array<vec3<i32>, 14>();
    global2 = array<vec3<i32>, 14>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(668f, 552f));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-3007f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1028f, -2184f) + -1637f)), _wgslsmith_f_op_f32(-2696f - -1027f)) + vec2<f32>(1f, 1f));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec4<i32> {
    var var_0 = Struct_1(countOneBits(reverseBits(u_input.c.x)), vec2<i32>(firstLeadingBit(abs(min(-2147483647i, u_input.a.x))), ~u_input.a.x), u_input.a.x >= (~firstTrailingBit(u_input.a.x) << (u_input.b % 32u)), ~0u, select(!select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], false), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 27u)]), true), vec2<bool>(false & arg_1, firstTrailingBit(u_input.c.x) < _wgslsmith_dot_vec3_u32(u_input.c.wwz, u_input.c.wzw)), true));
    var var_1 = -select(u_input.a, ~(-u_input.a) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, 1u), vec4<u32>(1u, var_0.d, 0u, u_input.b)) % vec4<u32>(32u)), true);
    return vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, ~_wgslsmith_mod_i32(var_1.x, 2147483647i)), ~_wgslsmith_mod_i32(-86422i, max(-28202i, u_input.a.x))), min(reverseBits(2147483647i), min(u_input.a.x, ~(-2147483647i))) << (_wgslsmith_add_u32(var_0.d, 1u) % 32u), u_input.a.x, -_wgslsmith_mod_i32(2147483647i, -26687i));
}

fn func_2() -> f32 {
    global0 = array<bool, 27>();
    var var_0 = Struct_3(max(u_input.a.x, 1i) >> (1u % 32u), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], all(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 27u)], false)))));
    global2 = array<vec3<i32>, 14>();
    let var_1 = Struct_2(select(!vec2<bool>(true, any(vec3<bool>(true, global0[_wgslsmith_index_u32(42675u, 27u)], false))), !var_0.b.a, var_0.b.a));
    let var_2 = func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, 899f, -707f, -643f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-886f, 587f, 220f, 702f))))), any(select(!vec3<bool>(var_0.b.a.x, global0[_wgslsmith_index_u32(0u, 27u)], var_1.a.x), vec3<bool>(false, false, false), vec3<bool>(var_1.a.x, var_0.b.a.x, false)))) & u_input.a;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 14>();
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -645f);
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(!vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 14430u), 27u)], global0[_wgslsmith_index_u32(select(u_input.b, 12273u, false), 27u)]), max(u_input.a.wx, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yw), vec2<i32>(-1i, u_input.a.x))), Struct_1(0u, -(~vec2<i32>(u_input.a.x, u_input.a.x)), (global0[_wgslsmith_index_u32(u_input.b, 27u)] & false) & true, u_input.b, !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], true))), u_input.a.yy | vec2<i32>(55015i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(116f - 1470f)))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, select(-30348i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 27u)]) != (i32(-1i) * -1i)), ~u_input.a.xw, Struct_1(4294967295u, u_input.a.wz, true, u_input.b, !select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 27u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]), false)), u_input.a.wx)).x));
    var var_2 = -_wgslsmith_dot_vec2_i32(u_input.a.zy, abs(u_input.a.xz));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1))))))), _wgslsmith_f_op_vec2_f32(func_1(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], true), any(vec3<bool>(false, global0[_wgslsmith_index_u32(31544u, 27u)], false))), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(27439u, 27u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], false), select(vec2<bool>(false, true), vec2<bool>(false, true), global0[_wgslsmith_index_u32(44456u, 27u)])), !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)]))), min(_wgslsmith_mod_vec2_i32(vec2<i32>(26780i, u_input.a.x), max(u_input.a.xx, vec2<i32>(u_input.a.x, u_input.a.x))), vec2<i32>(countOneBits(u_input.a.x), 1i)), Struct_1(4294967295u, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wy, vec2<i32>(u_input.a.x, 1i)), _wgslsmith_clamp_vec2_i32(u_input.a.ww, u_input.a.yz, vec2<i32>(u_input.a.x, u_input.a.x))), true, u_input.b, select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)]), vec2<bool>(false, false), true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 27u)]))), -vec2<i32>(_wgslsmith_div_i32(u_input.a.x, 0i), 1i))).x, _wgslsmith_f_op_f32(max(var_0.x, -1108f)));
    let var_4 = Struct_2(select(vec2<bool>(true, global0[_wgslsmith_index_u32(~(~4294967295u), 27u)]), select(select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(2723u, 27u)], true), global0[_wgslsmith_index_u32(0u << (u_input.b % 32u), 27u)]), vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)]), true), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(13759u, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_1, var_1, 724f) * vec4<f32>(var_0.x, var_1, var_1, -516f))), vec4<f32>(-992f, _wgslsmith_f_op_f32(-1000f * -547f), _wgslsmith_f_op_f32(-var_0.x), 1945f), !(!vec4<bool>(true, true, var_4.a.x, true))))), -19913i, 2147483647i, vec4<f32>(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -658f))), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_1)) + var_1)));
}

