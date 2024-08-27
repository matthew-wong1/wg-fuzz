struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-567f, 428f, 1152f), 0u, 2147483647i);

var<private> global1: array<vec4<i32>, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(global0.a)), 4294967295u, arg_0.a.a.x);
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(global0.a)), firstLeadingBit(1u), 2147483647i);
    global1 = array<vec4<i32>, 22>();
    var var_1 = arg_0.a;
    var var_2 = arg_0;
    return vec4<u32>(~18091u, ~abs(1u), _wgslsmith_div_u32(max(_wgslsmith_div_u32(arg_0.b.x, arg_0.b.x), 25225u) & (min(var_0.b, var_2.b.x) & arg_0.b.x), 1u), 0u | (max(var_0.b, firstTrailingBit(var_0.b)) << (global0.b % 32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_2(arg_1, ~(arg_2 << (arg_2 % vec2<u32>(32u))), firstLeadingBit(global0.c | -arg_0.x) < -select(2147483647i, global0.c ^ arg_0.x, true));
    var_0 = Struct_2(var_0.a, ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.b, 4294967295u), vec2<u32>(global0.b, var_0.b.x)) >> (_wgslsmith_div_vec2_u32(var_0.b, firstLeadingBit(_wgslsmith_div_vec2_u32(var_0.b, vec2<u32>(global0.b, 103391u)))) % vec2<u32>(32u)), !(!var_0.c));
    let var_1 = _wgslsmith_sub_u32(var_0.b.x, global0.b);
    var_0 = Struct_2(var_0.a, vec2<u32>(1u, _wgslsmith_dot_vec4_u32(func_3(Struct_2(arg_1, vec2<u32>(global0.b, 83821u), false)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b, 0u, 63713u, var_0.b.x) & vec4<u32>(global0.b, var_1, var_0.b.x, var_1), vec4<u32>(var_1, arg_2.x, 7664u, var_0.b.x)))), false);
    var_0 = Struct_2(Struct_1(_wgslsmith_add_vec4_i32(-(~vec4<i32>(global0.c, u_input.a, u_input.a, 1i)), ~(var_0.a.a ^ global1[_wgslsmith_index_u32(arg_2.x, 22u)]))), vec2<u32>(countOneBits(~var_1 >> (var_0.b.x % 32u)), var_1), all(vec3<bool>(var_0.c, all(!vec4<bool>(var_0.c, true, var_0.c, false)), var_0.c)));
    return -899f;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-1148f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(firstLeadingBit(vec3<i32>(-12915i, u_input.a, -1i)) >> ((vec3<u32>(16832u, 1u, 4294967295u) | vec3<u32>(global0.b, global0.b, global0.b)) % vec3<u32>(32u)), Struct_1(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(global0.b, 22u)], vec4<i32>(global0.c, 4140i, 2147483647i, u_input.a))), vec2<u32>(reverseBits(global0.b), _wgslsmith_mod_u32(arg_0, arg_0)), -vec3<i32>(u_input.a, global0.c, 1i))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-252f * global0.a.x), _wgslsmith_f_op_f32(345f + global0.a.x), true))))));
    let var_1 = -vec3<i32>(max(global0.c, u_input.a) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, u_input.a), select(vec2<i32>(-1i, -24592i), vec2<i32>(global0.c, -30151i), vec2<bool>(false, true))), abs(abs(u_input.a ^ u_input.a)), u_input.a);
    global1 = array<vec4<i32>, 22>();
    global0 = Struct_3(global0.a, _wgslsmith_mult_u32(arg_0, countOneBits(~(global0.b | 0u))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, abs(0i)), _wgslsmith_clamp_i32(reverseBits(var_1.x), u_input.a, -1i)));
    global1 = array<vec4<i32>, 22>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f - -743f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(min(63302u, global0.b), vec3<f32>(_wgslsmith_f_op_f32(func_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 4294967295u, 0u, 11316u), vec4<u32>(0u, global0.b, global0.b, 1u)))), global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)), vec3<u32>(~0u << (0u % 32u), global0.b | firstTrailingBit(1u), _wgslsmith_mod_u32(58328u, global0.b)), _wgslsmith_f_op_f32(func_2(vec3<i32>(firstLeadingBit(0i & u_input.a), abs(global0.c), _wgslsmith_mult_i32(-u_input.a, 75461i)), Struct_1(vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), reverseBits(global0.c), 11762i, 2147483647i)), reverseBits(vec2<u32>(global0.b ^ 6336u, global0.b)), abs(~_wgslsmith_mod_vec3_i32(vec3<i32>(69684i, 1i, global0.c), vec3<i32>(global0.c, -21697i, -4188i))))));
}

