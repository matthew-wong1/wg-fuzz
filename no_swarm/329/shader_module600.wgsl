struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(false), Struct_2(true), Struct_2(false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(~(reverseBits(~u_input.a.x) << ((1u & min(arg_0.x, 0u)) % 32u)));
    let var_1 = firstTrailingBit(vec4<u32>(64587u, ~(~firstLeadingBit(1u)), 1u, abs(~1u)));
    var var_2 = Struct_3(vec4<u32>(_wgslsmith_mult_u32(~var_0.a, _wgslsmith_mod_u32(0u & var_0.a, ~u_input.a.x)), ~u_input.a.x, firstLeadingBit(29804u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(4294967295u, 86483u, 0u)), ~arg_0.zyz), select(var_1.ywy, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 16351u), arg_0.zyy), vec3<bool>(false, global0.a, global0.a)))));
    global1 = firstLeadingBit(1u);
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(17362u, _wgslsmith_dot_vec4_u32(abs(var_2.a), vec4<u32>(var_0.a, var_1.x, 0u, var_1.x)), ~(~var_0.a), _wgslsmith_sub_u32(u_input.a.x, 4294967295u ^ var_0.a)), ~vec4<u32>(arg_0.x, 12978u, ~1u, ~var_0.a)));
    return -1089f;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = Struct_2(false);
    let var_1 = var_0.a;
    let var_2 = Struct_3(_wgslsmith_div_vec4_u32(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 5508u, 82363u, u_input.a.x)) ^ ~vec4<u32>(4294967295u, 66601u, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 25932u, reverseBits(76609u), 49780u), vec4<u32>(u_input.a.x, 45492u, u_input.a.x, 47911u) & _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 8328u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 36278u, u_input.a.x)))));
    global2 = array<Struct_2, 3>();
    var var_3 = ~((vec2<i32>(max(u_input.b, -4454i), _wgslsmith_add_i32(u_input.b, 2147483647i)) << (vec2<u32>(~0u, ~4294967295u) % vec2<u32>(32u))) >> (~var_2.a.zw % vec2<u32>(32u)));
    return vec2<f32>(_wgslsmith_f_op_f32(func_3(abs(select(vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(0u, 25277u, 60168u, u_input.a.x), vec4<bool>(var_0.a, global0.a, arg_3.a, var_0.a)) & (vec4<u32>(0u, 14015u, var_2.a.x, 0u) & var_2.a)))), -875f);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-571f, -446f), _wgslsmith_f_op_vec2_f32(func_2(-498f, 2147483647i, u_input.b, Struct_2(global0.a)))) - vec2<f32>(_wgslsmith_f_op_f32(592f + 160f), 1180f)))), vec2<f32>(-264f, _wgslsmith_f_op_f32(552f - _wgslsmith_f_op_f32(max(1546f, -2040f)))), !vec2<bool>(false, global0.a)));
    var var_1 = reverseBits(select(vec3<i32>(-2147483647i >> (u_input.a.x % 32u), max(u_input.b, u_input.b), u_input.b), vec3<i32>(firstTrailingBit(-2147483647i), u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b)), select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, false, global0.a), global0.a)) ^ vec3<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b ^ u_input.b), -31852i << (firstTrailingBit(u_input.a.x) % 32u), -u_input.b));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = Struct_3(~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, 11585u, u_input.a.x), vec4<u32>(42563u, u_input.a.x, 91840u, 106543u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), select(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(50344u, u_input.a.x, u_input.a.x, u_input.a.x), global0.a)), ~u_input.a.x, ~(~1u), ~73170u));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -445f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_2(var_0.x, -2147483647i, _wgslsmith_mult_i32(2147483647i << (var_3.a.x % 32u), u_input.b >> (135653u % 32u)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(22498u, u_input.a.x, var_3.a.x)), 3u)])).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f + _wgslsmith_f_op_f32(-var_0.x))), true)) + -191f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 3>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1087f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-847f - 272f)))) + _wgslsmith_f_op_f32(f32(-1f) * -537f)));
    global2 = array<Struct_2, 3>();
    var var_1 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-768f))) + var_0));
    global1 = ~u_input.a.x;
    var var_2 = Struct_3(~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~51179u, select(0u, u_input.a.x, global0.a), 93078u), ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, 16255u, u_input.a.x, 1u)));
    global0 = global2[_wgslsmith_index_u32(countOneBits(u_input.a.x), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~select(25851u, _wgslsmith_dot_vec4_u32(var_2.a, var_2.a), global0.a), 57872u), u_input.b, _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, firstTrailingBit(0i), u_input.b >> (var_2.a.x % 32u), 2147483647i & u_input.b), ~vec4<i32>(~0i, 4215i, 56766i, _wgslsmith_div_i32(u_input.b, -863i))));
}

