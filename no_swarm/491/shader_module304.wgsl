struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: i32 = -32135i;

var<private> global2: array<i32, 20>;

var<private> global3: f32 = -474f;

var<private> global4: array<bool, 23> = array<bool, 23>(true, false, false, true, false, true, false, true, true, true, true, false, true, false, true, true, false, true, true, false, false, false, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> i32 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f));
    global3 = 1208f;
    let var_0 = _wgslsmith_f_op_f32(arg_0.x + 1436f);
    let var_1 = ~(_wgslsmith_div_u32(0u, u_input.a.x) & countOneBits(u_input.a.x));
    let var_2 = Struct_2(reverseBits(-(~(-vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(var_1, 20u)], 12878i, u_input.b)))));
    return ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.x, ~55885i, global2[_wgslsmith_index_u32(~var_1, 20u)], -var_2.a.x), vec4<i32>(-global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -u_input.b, var_2.a.x >> (112006u % 32u), 17927i), var_2.a), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(var_2.a ^ var_2.a, ~var_2.a), var_2.a));
}

fn func_3(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = global4[_wgslsmith_index_u32(4294967295u, 23u)] && !any(!select(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 23u)], true), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 23u)], false), global4[_wgslsmith_index_u32(1u, 23u)]));
    let var_1 = ~vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, 4294967295u), u_input.a, vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 23u)])), u_input.a) | _wgslsmith_add_u32(u_input.a.x, abs(u_input.a.x)), ~0u, _wgslsmith_mod_u32(u_input.a.x, 27324u) << (~_wgslsmith_sub_u32(u_input.a.x, 1u) % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1031f - -181f) + 1541f), 1f, _wgslsmith_f_op_f32(2459f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1289f * 1000f) + _wgslsmith_f_op_f32(round(-950f))))));
    var var_3 = Struct_3(27915i, _wgslsmith_add_vec3_i32(select(-countOneBits(vec3<i32>(0i, 40061i, u_input.b)), vec3<i32>(u_input.b, arg_0.x, ~6559i), false), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, global2[_wgslsmith_index_u32(0u, 20u)], ~arg_0.x), _wgslsmith_add_vec3_i32(vec3<i32>(-34425i, global2[_wgslsmith_index_u32(93666u, 20u)], u_input.b), vec3<i32>(arg_0.x, u_input.b, arg_0.x)))), ~abs(u_input.a));
    var var_4 = 0i;
    return Struct_2(vec4<i32>(-1i, 1i, global2[_wgslsmith_index_u32(var_3.c.x, 20u)], 1i));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    let var_0 = func_3(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(firstLeadingBit(vec2<i32>(-7088i, global2[_wgslsmith_index_u32(0u, 20u)]))), -(~vec2<i32>(21148i, 1i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, -2147483647i)))), vec2<i32>(func_2(vec4<f32>(-1331f, -1000f, -603f, -1536f), true), ~2147483647i) << (min(vec2<u32>(0u, u_input.a.x), ~vec2<u32>(u_input.a.x, 65214u)) % vec2<u32>(32u))));
    var var_1 = ~_wgslsmith_clamp_u32(~116119u, ~67876u, u_input.a.x);
    var var_2 = !vec2<bool>(arg_0, true);
    var var_3 = Struct_1(!(!(!vec2<bool>(true, global4[_wgslsmith_index_u32(11162u, 23u)]))), vec2<f32>(_wgslsmith_div_f32(-1081f, _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(372f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(315f, 230f) - 167f))), _wgslsmith_add_i32(u_input.b, -u_input.b), max(-54103i, 1i), -132f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-466f, -424f)) + _wgslsmith_f_op_f32(1000f - -339f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(729f, 883f)), any(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 23u)], true)))));
    var var_4 = firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(16332u, u_input.a.x), _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x))));
    return select(select(vec3<bool>(_wgslsmith_f_op_f32(abs(797f)) >= _wgslsmith_f_op_f32(var_3.b.x - var_3.b.x), !arg_0, all(var_3.a) == global4[_wgslsmith_index_u32(4294967295u, 23u)]), select(select(select(vec3<bool>(false, var_3.a.x, arg_0), vec3<bool>(true, true, true), vec3<bool>(true, false, var_2.x)), vec3<bool>(arg_0, var_2.x, var_2.x), !vec3<bool>(false, var_3.a.x, true)), select(vec3<bool>(var_2.x, var_2.x, false), !vec3<bool>(true, var_3.e, false), select(vec3<bool>(true, arg_0, true), vec3<bool>(var_3.a.x, true, true), true)), !var_3.e != (var_3.a.x || var_3.a.x)), !select(select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 23u)], true, arg_0), vec3<bool>(false, true, false), vec3<bool>(arg_0, false, global4[_wgslsmith_index_u32(u_input.a.x, 23u)])), vec3<bool>(global4[_wgslsmith_index_u32(83078u, 23u)], true, false), select(false, true, arg_0))), vec3<bool>(true, true, false | var_3.e), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(vec3<bool>(all(vec3<bool>(true, true, false)), 7771u < u_input.a.x, !global4[_wgslsmith_index_u32(u_input.a.x, 23u)]), select(select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 23u)], true, false), vec3<bool>(global4[_wgslsmith_index_u32(8788u, 23u)], false, true), vec3<bool>(global4[_wgslsmith_index_u32(36347u, 23u)], true, global4[_wgslsmith_index_u32(u_input.a.x, 23u)])), vec3<bool>(true, true, global4[_wgslsmith_index_u32(4294967295u, 23u)]), select(vec3<bool>(false, false, global4[_wgslsmith_index_u32(20961u, 23u)]), vec3<bool>(false, false, false), global4[_wgslsmith_index_u32(0u, 23u)])), (global4[_wgslsmith_index_u32(24012u, 23u)] & global4[_wgslsmith_index_u32(u_input.a.x, 23u)]) | global4[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 23u)]), select(select(select(vec3<bool>(global4[_wgslsmith_index_u32(18568u, 23u)], true, true), vec3<bool>(global4[_wgslsmith_index_u32(0u, 23u)], false, false), false), vec3<bool>(false, global4[_wgslsmith_index_u32(9652u, 23u)], false), true), select(vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(63260u, 23u)]), !vec3<bool>(global4[_wgslsmith_index_u32(86947u, 23u)], false, global4[_wgslsmith_index_u32(5896u, 23u)]), true), select(func_1(global4[_wgslsmith_index_u32(u_input.a.x, 23u)]), select(vec3<bool>(false, false, global4[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<bool>(false, false, false), vec3<bool>(true, global4[_wgslsmith_index_u32(77070u, 23u)], true)), func_1(true))), vec3<bool>(global4[_wgslsmith_index_u32(~u_input.a.x, 23u)], global4[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x), 23u)], any(vec4<bool>(global4[_wgslsmith_index_u32(0u, 23u)], global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(1u, 23u)], false)))));
    var var_1 = 25031u != ((u_input.a.x & u_input.a.x) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4504u), vec4<u32>(1u, 2304u, 20552u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 33220u, u_input.a.x)), min(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)))));
    let var_2 = Struct_1(!func_1(!(global4[_wgslsmith_index_u32(18300u, 23u)] && global4[_wgslsmith_index_u32(u_input.a.x, 23u)])).zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1409f, 673f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(327f, -143f))) - vec2<f32>(1f, 1f))), ~(u_input.b | -_wgslsmith_div_i32(u_input.b, 5584i)), -16484i, !any(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 23u)], global4[_wgslsmith_index_u32(u_input.a.x, 23u)])));
    var_0 = true;
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.yz, var_3.b.xz);
}

