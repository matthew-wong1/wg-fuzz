struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(20917i, 0i);

var<private> global1: array<f32, 14> = array<f32, 14>(-547f, 2198f, -890f, -2266f, -1587f, -1194f, 1000f, -198f, -912f, 128f, 145f, -826f, -479f, -1000f);

var<private> global2: vec4<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = select(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0.c.c, u_input.b), ~arg_1.c), u_input.c, -arg_0.a.c), ~(-vec4<i32>(-1i, u_input.c, -36040i, 23978i) ^ -(vec4<i32>(global0.x, 42922i, arg_1.c, 14028i) & vec4<i32>(1i, u_input.c, arg_1.c, -1i))), true);
    global1 = array<f32, 14>();
    let var_1 = 1u;
    var var_2 = vec2<u32>(u_input.d.x, 24232u);
    var_0 = abs(_wgslsmith_clamp_vec4_i32(abs(abs(vec4<i32>(global0.x, arg_1.c, -7356i, var_0.x) ^ vec4<i32>(arg_0.d.c.c, u_input.b, -1i, u_input.a.x))), ~abs(-vec4<i32>(1i, global0.x, -54795i, -4859i)), -vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.a.x), -7042i, _wgslsmith_mod_i32(-1i, -26512i), abs(arg_1.c))));
    return u_input.a.zz << (global2.yz % vec2<u32>(32u));
}

fn func_2(arg_0: bool) -> bool {
    global0 = -(func_3(Struct_3(Struct_1(false, global1[_wgslsmith_index_u32(global2.x, 14u)], global0.x), false, Struct_1(true, global1[_wgslsmith_index_u32(global2.x, 14u)], u_input.b), Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(u_input.d.x, 14u)], global0.x), Struct_1(false, global1[_wgslsmith_index_u32(10825u, 14u)], u_input.c), Struct_1(true, 455f, global0.x), Struct_1(arg_0, global1[_wgslsmith_index_u32(u_input.d.x, 14u)], -2147483647i))), Struct_1(true, 1086f, global0.x)) << (global2.zx % vec2<u32>(32u)));
    var var_0 = _wgslsmith_mod_vec2_u32(global2.zw, vec2<u32>(4294967295u, abs(max(0u, global2.x)) ^ _wgslsmith_div_u32(min(106682u, global2.x), u_input.d.x)));
    global1 = array<f32, 14>();
    var_0 = firstTrailingBit(vec2<u32>(~abs(16501u) << (~select(global2.x, global2.x, true) % 32u), _wgslsmith_sub_u32(var_0.x, u_input.d.x)));
    return (~(~var_0.x) != _wgslsmith_sub_u32(12319u, _wgslsmith_mod_u32(_wgslsmith_add_u32(10655u, 41575u), var_0.x))) && any(vec2<bool>(true, false));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> bool {
    var var_0 = Struct_3(arg_1.c, all(vec3<bool>(true, (arg_1.c.c <= global0.x) && arg_1.a.a, func_2(arg_1.b || arg_1.b))), arg_1.d.c, arg_1.d);
    global2 = vec4<u32>(_wgslsmith_dot_vec2_u32(global2.zx, select(countOneBits(vec2<u32>(u_input.d.x, 7489u)), vec2<u32>(76462u, 12260u), vec2<bool>(arg_1.b, false)) | abs(vec2<u32>(global2.x, 4294967295u))), min(22991u, 4294967295u << (~(~arg_0.x) % 32u)), 0u, firstTrailingBit(arg_0.x));
    var var_1 = arg_1.c;
    let var_2 = var_0.c;
    let var_3 = vec3<bool>(true, any(!select(select(vec2<bool>(true, var_1.a), vec2<bool>(arg_1.b, var_1.a), vec2<bool>(var_1.a, var_2.a)), vec2<bool>(true, true), arg_1.c.a)), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -106f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1.c.b)), global1[_wgslsmith_index_u32(min(52473u, global2.x), 14u)]))))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, arg_1.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 14>();
    let var_0 = vec4<u32>((global2.x & abs(~32341u)) << (global2.x % 32u), reverseBits(~global2.x), _wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_div_vec4_u32(~abs(u_input.d), u_input.d)), max(~u_input.d.x, ~0u));
    global2 = vec4<u32>(~(~1u), ~29050u, ~(~var_0.x & 23695u), reverseBits(var_0.x) << (var_0.x % 32u));
    global2 = ~(~u_input.d);
    let var_1 = all(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true)), vec4<bool>(false, all(vec4<bool>(false, true, true, true)), func_1(vec2<u32>(1128u, u_input.d.x), Struct_3(Struct_1(true, global1[_wgslsmith_index_u32(var_0.x, 14u)], 0i), false, Struct_1(false, -149f, u_input.a.x), Struct_2(Struct_1(false, 725f, u_input.a.x), Struct_1(false, 673f, global0.x), Struct_1(true, -1599f, 2147483647i), Struct_1(true, global1[_wgslsmith_index_u32(0u, 14u)], 3394i)))), global0.x <= 0i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))));
    let var_2 = _wgslsmith_sub_vec3_u32(~firstTrailingBit(max(~var_0.wxx, _wgslsmith_mod_vec3_u32(global2.wxz, u_input.d.wwy))), u_input.d.zyw);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(743f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~global2.x), 14u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1336f + _wgslsmith_div_f32(-552f, 257f)) + global1[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.x, 14u)] + global1[_wgslsmith_index_u32(global2.x, 14u)]) - _wgslsmith_f_op_f32(f32(-1f) * -776f))))));
    global1 = array<f32, 14>();
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_3.x, global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(var_0.x, 31912u, var_0.x))), 14u)]));
}

