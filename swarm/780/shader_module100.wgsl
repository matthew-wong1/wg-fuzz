struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(1206f, 420f), vec2<f32>(-434f, 805f), vec2<f32>(-142f, -1051f), vec2<f32>(-1420f, -980f), vec2<f32>(-2217f, -202f), vec2<f32>(-1000f, -1000f), vec2<f32>(1051f, 1000f), vec2<f32>(-1017f, 407f), vec2<f32>(1299f, 1452f), vec2<f32>(-569f, -540f), vec2<f32>(-364f, 734f), vec2<f32>(1247f, -1000f), vec2<f32>(1274f, -346f), vec2<f32>(1164f, -673f), vec2<f32>(1305f, 2215f), vec2<f32>(-334f, 2185f), vec2<f32>(450f, -1827f), vec2<f32>(381f, 384f), vec2<f32>(212f, -1607f), vec2<f32>(-750f, -1341f), vec2<f32>(2025f, -1420f), vec2<f32>(858f, -314f));

var<private> global1: Struct_4;

var<private> global2: array<f32, 4>;

var<private> global3: array<i32, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a.x, ~u_input.a.x, abs(u_input.a.x), ~4294967295u), u_input.a), u_input.a | _wgslsmith_mult_vec4_u32(u_input.a, ~u_input.a)), vec4<u32>(abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x ^ 1u)), 0u & _wgslsmith_clamp_u32(u_input.a.x & u_input.a.x, ~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 26944u)), _wgslsmith_dot_vec4_u32(abs(u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 10734u)) | u_input.a), 111764u));
    global1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-908f * global1.d.d.x) + 1880f), _wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(sign(2249f)), _wgslsmith_f_op_f32(f32(-1f) * -1148f)), global1.b, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 18487u), 4u)])), global1.d);
    return _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~var_0.xwx, vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_add_u32(~14631u, u_input.a.x), ~(~u_input.a.x))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(~var_0.x, 13408u), ~(114192u & var_0.x)), countOneBits(u_input.a.x), firstLeadingBit(abs(0u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = Struct_2(select(_wgslsmith_mod_i32(max(firstLeadingBit(global1.d.c.x), ~arg_1.c.x), ~global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), arg_1.c.x, 1u <= ~arg_0.x), ~(-13465i), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(arg_1.c, ~(-global1.d.c)), max(global1.d.c, arg_1.c & vec4<i32>(global1.d.b, 16252i, 0i, 40784i)), ~(~(arg_1.c >> (vec4<u32>(arg_0.x, arg_0.x, 32439u, 4294967295u) % vec4<u32>(32u))))), vec4<f32>(global2[_wgslsmith_index_u32(func_3(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), true).x, 4u)], -1284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1621f)), -1000f));
    return _wgslsmith_f_op_vec4_f32(trunc(global1.b.c));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    let var_0 = -vec3<i32>(~12590i, -_wgslsmith_add_i32(24687i >> (u_input.a.x % 32u), -arg_0), 1i);
    global3 = array<i32, 14>();
    let var_1 = _wgslsmith_div_vec2_i32(var_0.xy, _wgslsmith_div_vec2_i32(var_0.yz, _wgslsmith_sub_vec2_i32(global1.d.c.zy >> (u_input.a.yw % vec2<u32>(32u)), select(vec2<i32>(arg_0, var_0.x), vec2<i32>(global1.b.a, global3[_wgslsmith_index_u32(0u, 14u)]), true)) << (~vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))));
    var var_2 = 79826u;
    var var_3 = !vec4<bool>(!(~var_0.x <= -global3[_wgslsmith_index_u32(0u, 14u)]), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), true, true);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 4u)]), 747f, 1f, 1052f) * vec4<f32>(_wgslsmith_f_op_f32(global1.d.d.x + global2[_wgslsmith_index_u32(4294967295u, 4u)]), global1.a.x, _wgslsmith_f_op_f32(872f - -2072f), -1430f)) - _wgslsmith_f_op_vec4_f32(func_4(func_3(var_3.zz, !var_3.www, var_3.x && var_3.x), global1.d)))));
}

fn func_1() -> Struct_4 {
    var var_0 = ~select(firstLeadingBit(firstLeadingBit(u_input.a.xz)) ^ ~min(vec2<u32>(20803u, u_input.a.x), u_input.a.wx), select(_wgslsmith_div_vec2_u32(select(u_input.a.yz, u_input.a.zz, vec2<bool>(false, true)), vec2<u32>(57851u, u_input.a.x)), (vec2<u32>(u_input.a.x, 0u) << (vec2<u32>(u_input.a.x, 64062u) % vec2<u32>(32u))) & u_input.a.yy, vec2<bool>(true, true)), true);
    return Struct_4(_wgslsmith_f_op_vec4_f32(func_2(u_input.b)), global1.b, _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(276f)) * _wgslsmith_f_op_f32(1028f - global2[_wgslsmith_index_u32(0u, 4u)])), global2[_wgslsmith_index_u32(u_input.a.x, 4u)]))), Struct_2(global1.d.c.x >> (0u % 32u), ~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~25082u, _wgslsmith_mod_u32(var_0.x, 0u)), 14u)], ~vec4<i32>(-2948i, ~global1.d.a, ~u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(max(global1.a, _wgslsmith_f_op_vec4_f32(global1.d.d * vec4<f32>(-242f, -678f, -110f, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec3<bool>(any(vec3<bool>(false, false, false)) != any(vec3<bool>(true, false, false)), true, false));
    var var_1 = func_1();
    var var_2 = 0i;
    let var_3 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)] - global1.b.b)) < global2[_wgslsmith_index_u32(abs(~74712u), 4u)], false, var_0, _wgslsmith_f_op_f32(f32(-1f) * -1206f) >= _wgslsmith_f_op_f32(floor(1000f))), !(!vec4<bool>(var_0, false, all(vec3<bool>(true, true, false)), !var_0)), !(!select(vec4<bool>(var_0, var_0, true, var_0), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, var_0, var_0, true)), true)));
    var var_4 = global2[_wgslsmith_index_u32(abs(abs(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, 35164u), ~u_input.a.x)))), 4u)];
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(225f, global1.c)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -105f) * _wgslsmith_f_op_f32(f32(-1f) * -372f)), _wgslsmith_f_op_f32(-global1.a.x)))), global1.a.x, global1.c);
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_clamp_vec2_u32(u_input.a.yw, firstLeadingBit(u_input.a.xx), vec2<u32>(0u, u_input.a.x)), ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, 44068u), u_input.a.xw)), vec3<u32>(_wgslsmith_mod_u32(52306u, 4294967295u), _wgslsmith_mult_u32(abs(~28876u), ~(u_input.a.x & u_input.a.x)), 47619u), global1.d.c.www);
}

