struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(22601i), Struct_4(-45638i), Struct_4(1i), Struct_4(-1i), Struct_4(-1255i));

var<private> global1: array<i32, 11> = array<i32, 11>(-20596i, -50131i, 2147483647i, 2147483647i, 0i, 22314i, 36767i, 8298i, -41849i, 48998i, 1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = vec3<bool>(false, true, !(!(global1[_wgslsmith_index_u32(u_input.a, 11u)] >= 0i)));
    var var_1 = ~reverseBits(select(_wgslsmith_add_vec4_u32(vec4<u32>(82338u, 4294967295u, u_input.a, u_input.a), ~arg_2.a.b), arg_2.a.b, vec4<bool>(arg_2.a.d, all(vec3<bool>(arg_2.a.d, false, arg_2.a.d)), any(var_0), var_0.x)));
    var var_2 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_div_i32(countOneBits(-40188i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a & 6137u, 1u), 11u)]), 1697i));
    global0 = array<Struct_4, 5>();
    var_1 = firstTrailingBit(~(vec4<u32>(_wgslsmith_div_u32(arg_2.a.b.x, u_input.a), u_input.c.x, abs(12857u), _wgslsmith_div_u32(1u, 4294967295u)) << (arg_2.a.b % vec4<u32>(32u))));
    return 0u;
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    global0 = array<Struct_4, 5>();
    global1 = array<i32, 11>();
    global0 = array<Struct_4, 5>();
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~4294967295u, u_input.a), u_input.a) ^ ~1u;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1402f, 2550f, -512f) + vec3<f32>(-1185f, -106f, 934f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1316f, 214f), 240f, _wgslsmith_f_op_f32(f32(-1f) * -270f)))), vec2<bool>(true, true), ~(~vec4<u32>(u_input.a, u_input.a, func_3(Struct_4(u_input.b), vec3<f32>(-1585f, -1115f, 1490f), Struct_2(Struct_1(1i, u_input.c, -172f, false, arg_0), vec2<i32>(-1i, arg_0.x))), firstTrailingBit(6311u))), false, !all(vec3<bool>(true, true, true)));
    return vec2<u32>(_wgslsmith_div_u32(u_input.c.x, ~(var_1.c.x >> (4294967295u % 32u))), u_input.c.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32) -> bool {
    return select(all(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))), ((arg_0.x >= -9183i) != true) && !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = Struct_1(~arg_0.x, _wgslsmith_div_vec4_u32(abs(u_input.c), vec4<u32>(u_input.c.x, ~0u, min(0u << (0u % 32u), u_input.a), _wgslsmith_div_u32(u_input.c.x, 1u) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -1003f), func_4(~(-vec3<i32>(9706i, -40065i, global1[_wgslsmith_index_u32(68616u, 11u)]) & -vec3<i32>(arg_0.x, u_input.b, 24960i)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~82417u, select(u_input.c.x, u_input.c.x, true)), 5u)], ~_wgslsmith_dot_vec2_u32(func_2(vec3<i32>(-2147483647i, 1i, -1i)), firstLeadingBit(u_input.c.ww))), firstTrailingBit(_wgslsmith_div_vec3_i32(abs(vec3<i32>(arg_0.x, u_input.b, u_input.b) & vec3<i32>(13010i, arg_0.x, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], arg_0.x, 2147483647i), vec3<i32>(arg_0.x, arg_0.x, -2147483647i)) ^ ~vec3<i32>(global1[_wgslsmith_index_u32(59259u, 11u)], global1[_wgslsmith_index_u32(29063u, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]))));
    let var_1 = -36676i & _wgslsmith_sub_i32(-1i, -(1i >> (var_0.b.x % 32u)));
    let var_2 = Struct_4(min(~u_input.b, firstLeadingBit(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(~u_input.c.x, 11u)], -1i))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c))))) + var_0.c);
    var var_4 = firstLeadingBit(u_input.c.xxx);
    return select(i32(-1i) * -firstTrailingBit(_wgslsmith_div_i32(var_0.e.x, global1[_wgslsmith_index_u32(4294967295u, 11u)])), -2147483647i, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~vec3<i32>(u_input.b, u_input.b, u_input.b))) >> (firstTrailingBit(~(~_wgslsmith_add_vec3_u32(u_input.c.yzx, u_input.c.zxw))) % vec3<u32>(32u));
    var_0 = vec3<i32>(firstTrailingBit(min(43595i, ~global1[_wgslsmith_index_u32(~u_input.c.x, 11u)])), abs(-select(-2147483647i, -global1[_wgslsmith_index_u32(50328u, 11u)], any(vec3<bool>(false, true, false)))), func_1(vec2<i32>(1i, 0i)));
    let var_1 = Struct_2(Struct_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(0u, 11u)], u_input.b, 14523i), vec4<i32>(var_0.x, 31824i, -32371i, u_input.b)), vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.c.x, 11u)], -16754i, -1i) | vec4<i32>(var_0.x, u_input.b, u_input.b, -1i)), u_input.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-835f)))))), true, _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b, 64150i, -1i), min(vec3<i32>(var_0.x, -26976i, 1i) ^ vec3<i32>(var_0.x, u_input.b, u_input.b), -vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], u_input.b, -1i)), abs(vec3<i32>(-23083i, 23885i, u_input.b)))), var_0.yx);
    let var_2 = -2147483647i;
    var_0 = var_1.a.e;
    var var_3 = ~62364u;
    var_0 = _wgslsmith_add_vec3_i32(-var_1.a.e, ~abs(var_1.a.e));
    var_3 = var_1.a.b.x;
    var var_4 = -798f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-342f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a.c)), var_1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1429f - var_1.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.c - -107f), _wgslsmith_f_op_f32(var_1.a.c + var_1.a.c))))));
}

