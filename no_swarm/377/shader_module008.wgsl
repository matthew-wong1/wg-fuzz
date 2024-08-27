struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: vec3<i32>;

var<private> global2: i32;

var<private> global3: array<bool, 6> = array<bool, 6>(true, true, true, true, false, true);

var<private> global4: array<Struct_3, 28>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(868f)) + 1004f))))));
}

fn func_2() -> u32 {
    let var_0 = firstLeadingBit(u_input.e);
    global3 = array<bool, 6>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1591f - -2059f) - _wgslsmith_f_op_f32(min(539f, -1000f)))), _wgslsmith_f_op_f32(step(507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c.x)) * _wgslsmith_f_op_f32(select(421f, 473f, false))))))));
    global4 = array<Struct_3, 28>();
    var var_2 = ~min(_wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), max(u_input.d, u_input.d))), select(u_input.c.x, u_input.a, all(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(1377u, 6u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], false), vec2<bool>(global3[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(855u, 6u)])))));
    return ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, _wgslsmith_clamp_u32(u_input.c.x, 94998u, u_input.a)), reverseBits(u_input.c.x), _wgslsmith_sub_u32(0u, u_input.a) ^ ~u_input.c.x) | abs(firstLeadingBit(1u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<f32> {
    let var_0 = u_input.a;
    var var_1 = ~func_2();
    global2 = -(global1.x << (abs(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 57549u, 0u, var_0), vec4<u32>(52659u, u_input.d.x, var_0, 4294967295u)) % 32u)) % 32u));
    var var_2 = u_input.a;
    global1 = max(vec3<i32>(_wgslsmith_sub_i32(-global1.x, _wgslsmith_div_i32(0i, u_input.e)), _wgslsmith_sub_i32(~(-29331i), 2147483647i), 33232i), _wgslsmith_mult_vec3_i32(~select(vec3<i32>(global1.x, u_input.e, u_input.b), vec3<i32>(u_input.b, global1.x, 1i), vec3<bool>(arg_1.x, arg_1.x, global3[_wgslsmith_index_u32(4294967295u, 6u)])), vec3<i32>(firstLeadingBit(40339i), 70512i, u_input.b))) ^ -(~max(-vec3<i32>(u_input.b, -37843i, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -53589i, global1.x), vec3<i32>(-1i, 42263i, global1.x))));
    return vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-523f))) * 292f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, false))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-487f + 1879f) * _wgslsmith_f_op_f32(f32(-1f) * -259f))), 273f))));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(213f, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(174f, 980f)) + var_0))), -1722f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -2430f, var_0))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(1867f), vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 6u)], true))) + vec3<f32>(var_0, var_0, var_0))))));
    global1 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(_wgslsmith_div_i32(u_input.e, ~global1.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, global1.x, 39721i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -10910i), vec4<i32>(u_input.e, u_input.e, u_input.e, 1i))), -1i), -vec3<i32>(2147483647i, 0i, -global1.x)), -firstLeadingBit(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, -34974i, 0i), vec3<i32>(0i, u_input.b, 83477i)))));
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, ~(~(u_input.d | ~vec3<u32>(u_input.c.x, 0u, 4294967295u)))), 28u)];
    let var_4 = global4[_wgslsmith_index_u32(~46181u, 28u)];
    var var_5 = _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, min(~41265u, 18223u), ~20501u, 1u), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(67570u, u_input.a, 0u, 0u)), vec4<u32>(~var_4.a.a, ~u_input.d.x, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_4.a.a, var_3.a.a), vec4<u32>(var_3.a.a, 0u, 4294967295u, 4294967295u)))), firstLeadingBit(countOneBits(vec4<u32>(var_4.a.a, 11643u, 17570u, 4883u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(-1808i, u_input.b, _wgslsmith_div_i32(u_input.b ^ -6007i, 0i << (1u % 32u))), vec3<i32>(-(global1.x | 64708i), _wgslsmith_clamp_i32(u_input.e, select(24368i, u_input.b, global3[_wgslsmith_index_u32(var_4.a.a, 6u)]), firstTrailingBit(global1.x)), u_input.e)), ~21448i);
}

