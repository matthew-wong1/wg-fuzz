struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<i32, 27> = array<i32, 27>(-1i, -1i, -23982i, 0i, 2147483647i, 2147483647i, i32(-2147483648), 2147483647i, i32(-2147483648), -20665i, 1i, -38518i, -17138i, -2791i, -54002i, 2147483647i, 2147483647i, 1i, 21800i, 0i, -35187i, 0i, -41305i, 61110i, -3207i, -57909i, 3121i);

var<private> global2: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    let var_0 = u_input.b;
    let var_1 = u_input.a.x;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -u_input.b.x, arg_0.c, u_input.b.x, global1[_wgslsmith_index_u32(var_1, 27u)]), vec4<i32>(u_input.b.x, var_0.x, 5512i, var_0.x)) >> (~vec4<u32>(abs(max(u_input.a.x, u_input.a.x)), abs(_wgslsmith_add_u32(4294967295u, u_input.a.x)), 4294967295u, 8246u) % vec4<u32>(32u));
    var var_4 = var_2.e;
    return 24479u;
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~max((~u_input.c >> (max(1u, 52947u) % 32u)) >> (func_3(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(0u, 28u)], -499f, global0[_wgslsmith_index_u32(7395u, 28u)], global0[_wgslsmith_index_u32(32407u, 28u)]), true, u_input.d, 1000f, global0[_wgslsmith_index_u32(u_input.c, 28u)]), -2147483647i == u_input.b.x, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))) % 32u), 25693u), 28u)];
    global0 = array<f32, 28>();
    var var_1 = abs(abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 20377i, 1i), vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.e.x, 27u)], 2147483647i) | vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 27u)], 2147483647i, 0i)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(27507u, u_input.c, u_input.c), vec3<u32>(u_input.c, 72674u, u_input.c)) % 32u)));
    var_1 = global1[_wgslsmith_index_u32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 28u)], 876f, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, global0[_wgslsmith_index_u32(63892u, 28u)], -1508f, global0[_wgslsmith_index_u32(u_input.a.x, 28u)])))), any(vec4<bool>(select(true, false, false), any(vec2<bool>(false, true)), false, all(vec3<bool>(false, true, false)))), ~(-u_input.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(456f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13250u, 28u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~u_input.e.x), 28u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(595f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1250f, 550f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1257f + -1755f), -2989f)), vec2<bool>(all(vec3<bool>(false, false, false)) || select(true, true, false), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))), 27u)];
    var_1 = _wgslsmith_mod_i32(2147483647i, -55238i);
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 28u)] - global0[_wgslsmith_index_u32(u_input.a.x, 28u)]) - 1076f), global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1333f) * _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_f_op_f32(max(-934f, global0[_wgslsmith_index_u32(u_input.e.x, 28u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 1496f, global0[_wgslsmith_index_u32(4294967295u, 28u)], -3684f))))), all(!vec3<bool>(true, false, any(vec4<bool>(false, true, false, true)))), _wgslsmith_div_i32(reverseBits(abs(-u_input.d)), reverseBits(global1[_wgslsmith_index_u32(~u_input.e.x, 27u)])), global0[_wgslsmith_index_u32(~(select(_wgslsmith_mod_u32(54667u, 4294967295u), _wgslsmith_sub_u32(1u, 1u), true) & u_input.a.x), 28u)], -996f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> bool {
    var var_0 = func_2();
    global1 = array<i32, 27>();
    var var_1 = (vec4<u32>(1u, 55163u, firstLeadingBit(14703u), u_input.c) << (max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 57694u, u_input.c) ^ u_input.e, _wgslsmith_add_vec4_u32(u_input.a, u_input.a), vec4<u32>(535u, 43446u, 79073u, 1u)), u_input.e) % vec4<u32>(32u))) | firstTrailingBit(_wgslsmith_mult_vec4_u32(firstLeadingBit(u_input.e >> (u_input.a % vec4<u32>(32u))), countOneBits(vec4<u32>(u_input.c, 1u, u_input.e.x, u_input.c))));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_f_op_f32(arg_1 + arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f - -899f))), arg_0.a.x, 1281f, arg_1), false, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.d, var_0.c, 2147483647i, var_0.c) & vec4<i32>(17434i, -1i, 20922i, u_input.d)), -abs(vec4<i32>(-63335i, var_0.c, 45343i, global1[_wgslsmith_index_u32(u_input.e.x, 27u)]))), vec4<i32>(1i, abs(_wgslsmith_add_i32(0i, 2147483647i)), min(_wgslsmith_mult_i32(u_input.b.x, global1[_wgslsmith_index_u32(70315u, 27u)]), _wgslsmith_mult_i32(u_input.b.x, global1[_wgslsmith_index_u32(60473u, 27u)])), firstLeadingBit(52798i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(173f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(var_0.e + var_0.e)))));
    global0 = array<f32, 28>();
    return true;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> i32 {
    global1 = array<i32, 27>();
    let var_0 = vec2<bool>(!func_4(func_2(), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(18092u, 28u)], global0[_wgslsmith_index_u32(23849u, 28u)]), vec3<bool>(any(vec4<bool>(true, arg_0, arg_0, true)), 230f > global0[_wgslsmith_index_u32(u_input.e.x, 28u)], 4294967295u > u_input.e.x)), true);
    global1 = array<i32, 27>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(976f, 1795f, global0[_wgslsmith_index_u32(20711u, 28u)], -715f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.e.x, 28u)])), _wgslsmith_div_f32(1198f, global0[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 28u)] - -782f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 28u)] + 1000f)))), !var_0.x, arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 28u)], _wgslsmith_f_op_f32(1427f - -1087f));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-561f)))));
    return ~(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(u_input.c, 27u)] == 42674i;
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_mod_vec3_i32(abs(-firstTrailingBit(-vec3<i32>(u_input.d, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 2147483647i))), abs(abs(vec3<i32>(firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(u_input.e.x, 27u)], global1[_wgslsmith_index_u32(38237u, 27u)]), vec3<i32>(0i, var_0, global1[_wgslsmith_index_u32(108774u, 27u)])), func_1(false, vec2<i32>(var_0, u_input.d))))));
    global1 = array<i32, 27>();
    let var_2 = ~vec4<u32>(u_input.c, reverseBits(u_input.e.x), _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_div_u32(u_input.a.x, u_input.c)) >> (0u % 32u), 72270u);
    let var_3 = func_2();
    let var_4 = -28177i;
    let x = u_input.a;
    s_output = StorageBuffer(max((26784i & ~u_input.d) >> ((abs(var_2.x) << (~u_input.e.x % 32u)) % 32u), _wgslsmith_div_i32(var_1.x, _wgslsmith_mult_i32(1i, var_3.c)) & 2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~var_2.xwz, var_2.xzy), 28u)], var_3.a.xz, min(~var_2.xw, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.e.xz, vec2<u32>(0u, 4294967295u)), abs(vec2<u32>(u_input.c, 52306u) >> (var_2.yx % vec2<u32>(32u))))));
}

