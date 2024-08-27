struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(8277u, -458f, Struct_2(Struct_1(vec3<f32>(-784f, 619f, -230f), 154f, 27191u), vec2<f32>(-1439f, 971f), Struct_1(vec3<f32>(766f, 426f, -1894f), 1001f, 0u), -23427i, Struct_1(vec3<f32>(1000f, -388f, 1000f), 1655f, 1u)), vec4<i32>(2147483647i, 10894i, 2147483647i, 2147483647i));

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: bool) -> vec4<bool> {
    let var_0 = 1607i;
    var var_1 = 0u;
    let var_2 = Struct_3(~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-952f, _wgslsmith_div_f32(138f, arg_0.e.b)), -694f)), global0.c, -firstLeadingBit(global0.d));
    let var_3 = u_input.a.x;
    let var_4 = Struct_2(var_2.c.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-444f, var_2.c.c.b), global0.c.e.a.xy)))), var_2.c.e, var_0, arg_0.a);
    return select(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(9708u, 31045u, 1u), vec3<u32>(var_2.c.c.c, u_input.a.x, 47196u)), select(vec3<u32>(29167u, var_4.c.c, 4294967295u), vec3<u32>(4294967295u, 0u, u_input.a.x), true)) | u_input.a.x, 12u)], select(select(!vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(arg_2, arg_2, false, arg_3), global1[_wgslsmith_index_u32(~var_4.e.c, 12u)]), select(global1[_wgslsmith_index_u32(arg_0.c.c, 12u)], !global1[_wgslsmith_index_u32(arg_0.a.c, 12u)], global1[_wgslsmith_index_u32(arg_0.e.c, 12u)]), select(select(vec4<bool>(true, arg_3, true, false), vec4<bool>(true, false, false, arg_3), arg_3), global1[_wgslsmith_index_u32(~4294967295u, 12u)], global1[_wgslsmith_index_u32(var_2.a, 12u)])), global1[_wgslsmith_index_u32(54351u, 12u)]), vec4<bool>(all(global1[_wgslsmith_index_u32(~(~var_3), 12u)]), !(_wgslsmith_f_op_f32(-arg_0.a.b) <= 243f), arg_3, arg_2), vec4<bool>(any(select(!vec2<bool>(arg_2, false), !vec2<bool>(arg_3, false), vec2<bool>(true, arg_3))), false, !(max(2147483647i, u_input.b.x) >= ~1i), true));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b.x, _wgslsmith_f_op_f32(max(arg_1.b, global0.b)), _wgslsmith_f_op_f32(sign(-123f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b))), arg_1.c), vec2<f32>(-1117f, arg_1.b), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.c.a - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, global0.b, global0.c.e.b), vec3<f32>(global0.c.e.b, arg_1.b, 947f)))), 227f, _wgslsmith_div_u32(arg_1.c, u_input.a.x)), -57935i, global0.c.e);
    global1 = array<vec4<bool>, 12>();
    global0 = Struct_3(_wgslsmith_mod_u32(124u, _wgslsmith_sub_u32(64761u, ~_wgslsmith_add_u32(var_0.e.c, 4294967295u))), var_0.e.b, var_0, (~_wgslsmith_add_vec4_i32(global0.d, u_input.b) << (~(~vec4<u32>(0u, arg_1.c, u_input.a.x, 81548u)) % vec4<u32>(32u))) ^ (_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(9966i, 1i, var_0.d, global0.d.x)), u_input.b) | u_input.b));
    var var_1 = _wgslsmith_mult_i32(i32(-1i) * -11207i, var_0.d) > 56699i;
    var var_2 = ~var_0.a.c;
    return _wgslsmith_mod_u32(u_input.a.x, 62446u);
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    var var_0 = Struct_3(0u, global0.c.a.b, global0.c, select(-_wgslsmith_mult_vec4_i32(abs(global0.d), -vec4<i32>(0i, -2147483647i, 39453i, global0.d.x)), vec4<i32>(~(-56156i), _wgslsmith_mod_i32(~(-1i), u_input.b.x), -1i >> (global0.a % 32u), global0.c.d), !func_2(Struct_2(Struct_1(global0.c.c.a, global0.b, global0.a), global0.c.a.a.zz, Struct_1(vec3<f32>(global0.b, 435f, 1321f), global0.b, 83869u), 13050i, global0.c.a), i32(-1i) * -2147483647i, select(arg_0.x, false, arg_0.x), true)));
    let var_1 = all(arg_0.xy);
    var var_2 = global0.c;
    var_0 = Struct_3(_wgslsmith_mult_u32(~func_3(true, var_2.e), 52276u << (~(~global0.a) % 32u)), -244f, Struct_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(-1000f, 1000f), _wgslsmith_f_op_f32(var_2.e.a.x + var_0.c.e.a.x), _wgslsmith_f_op_f32(min(global0.b, global0.c.e.b))), var_0.b, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 15665u)), abs(vec4<u32>(var_0.c.a.c, 0u, 4294967295u, var_2.e.c)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-291f, var_0.c.a.a.x) - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(step(-139f, 1601f)))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c.c.a), _wgslsmith_f_op_vec3_f32(var_2.e.a * vec3<f32>(-1047f, global0.c.b.x, -2190f)), arg_0)), global0.c.a.a.x, u_input.a.x), -2147483647i, global0.c.c), ~var_0.d);
    return StorageBuffer(1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.a.x - global0.c.b.x))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1295f, var_2.a.b), _wgslsmith_f_op_f32(var_0.c.a.a.x * global0.c.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.c.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(492f, global0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_div_i32(2147483647i, global0.c.d));
    global1 = array<vec4<bool>, 12>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a.a.x - -703f));
    var var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(19523u, ~(~global0.a), 35058u, select(_wgslsmith_mult_u32(21416u, u_input.a.x), global0.c.e.c, any(global1[_wgslsmith_index_u32(0u, 12u)]))), vec4<u32>(u_input.a.x, 4294967295u, global0.c.e.c, _wgslsmith_div_u32(~(u_input.a.x & global0.c.a.c), u_input.a.x)), countOneBits(firstLeadingBit(abs(~vec4<u32>(u_input.a.x, 22658u, u_input.a.x, 1u)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c.b)), -1000f));
    var var_3 = _wgslsmith_mod_i32(27734i, global0.c.d);
    let x = u_input.a;
    s_output = func_1(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), true), vec3<bool>(!any(global1[_wgslsmith_index_u32(var_2.x, 12u)]), true, true), vec3<bool>(all(vec2<bool>(false, true)) & true, any(global1[_wgslsmith_index_u32(max(1u, var_2.x), 12u)]), any(vec2<bool>(false, false)) | true)));
}

