struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = u_input.a;
    let var_1 = Struct_4(Struct_1(-842f, _wgslsmith_div_i32(abs(~u_input.b), u_input.b), ~u_input.b, _wgslsmith_add_i32(u_input.b & u_input.b, u_input.b) > u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(27629u, 17u)]) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(44883u, 17u)], -1194f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], 1028f))))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0, arg_0, 113508u, arg_0), firstTrailingBit(vec4<u32>(u_input.a, var_0, 23872u, u_input.a))), vec4<u32>(u_input.a, select(u_input.a << (arg_0 % 32u), firstTrailingBit(0u), true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0, 57318u, 30432u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, 15733u, 4294967295u, u_input.a), vec4<u32>(arg_0, var_0, 36091u, u_input.a))), abs(~u_input.a))), ~abs(abs(min(vec3<u32>(var_0, u_input.a, arg_0), vec3<u32>(26861u, 0u, 4294967295u)))), vec2<u32>(~_wgslsmith_add_u32(abs(arg_0), u_input.a), 1u));
    global0 = array<f32, 17>();
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, reverseBits(select(4294967295u, 4294967295u, true)), var_1.d.x, _wgslsmith_sub_u32(17773u & var_0, 1u)), vec4<u32>(~countOneBits(28809u), ~arg_0, ~_wgslsmith_clamp_u32(0u, var_0, u_input.a), 52829u)) >> (abs(var_1.b) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e.x, 706f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(259f)))) * -1000f)));
    return true;
}

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    return 1904f;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<f32, 17>();
    let var_0 = ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(15049u, u_input.a, 20142u, 24217u) & vec4<u32>(74182u, 60619u, 26980u, u_input.a)) ^ (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, 67846u, 4294967295u, 27829u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 36463u, u_input.a, 61749u), vec4<u32>(u_input.a, 10592u, u_input.a, u_input.a) | vec4<u32>(u_input.a, 0u, u_input.a, 1u)) ^ ~(vec4<u32>(4294967295u, 1u, 32113u, 1u) | vec4<u32>(0u, 13584u, 11288u, u_input.a)));
    global0 = array<f32, 17>();
    let var_1 = select(~abs(reverseBits(vec4<u32>(u_input.a, 39604u, u_input.a, var_0))) | vec4<u32>(~(~9903u), 53275u, 0u, ~47056u), ~reverseBits(vec4<u32>(~0u, ~37575u, var_0, ~10931u)), arg_2);
    let var_2 = u_input.b;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(130f * 941f), global0[_wgslsmith_index_u32(abs(var_0), 17u)], func_1(49488u))) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 0u, var_0), 17u)]))), var_2, ~(-26605i), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(false, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(85897u, 17u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 17u)] - 383f) * _wgslsmith_f_op_f32(arg_1 - arg_1)))));
}

fn func_4(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = !arg_0.c.x;
    return abs(_wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, arg_0.b.a.x), arg_0.b.a.wxx), vec3<u32>(412u, 15553u, 4294967295u) << (arg_0.b.a.xwx % vec3<u32>(32u))), arg_0.b.a.yyy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(func_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 17u)])), vec4<bool>(true, u_input.b < u_input.b, u_input.b >= u_input.b, func_1(u_input.a))), Struct_2(~min(vec4<u32>(47716u, 10730u, u_input.a, 4294967295u), vec4<u32>(16405u, 13134u, u_input.a, 36003u)), Struct_1(_wgslsmith_f_op_f32(abs(1956f)), -u_input.b, -22635i, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-525f, -427f) + vec2<f32>(466f, 813f))), func_2(u_input.b, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 17u)])), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !vec4<bool>(all(vec4<bool>(true, true, false, true)), true, all(vec4<bool>(true, true, false, false)), true)));
    let var_1 = !vec3<bool>(func_2(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1602f)) * global0[_wgslsmith_index_u32(43888u, 17u)]), vec4<bool>(true, true, true, true)).d, (global0[_wgslsmith_index_u32(var_0.x | 62325u, 17u)] >= _wgslsmith_f_op_f32(f32(-1f) * -531f)) && true, true);
    var var_2 = 108340u;
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1270f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1235f, 634f) - vec2<f32>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)]))) + _wgslsmith_div_vec2_f32(vec2<f32>(-830f, global0[_wgslsmith_index_u32(54934u, 17u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-678f, 173f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1027f, global0[_wgslsmith_index_u32(1u, 17u)]), vec2<f32>(-929f, global0[_wgslsmith_index_u32(u_input.a, 17u)])))))));
    var_2 = 14641u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(134f, var_3.x, var_3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 17u)], global0[_wgslsmith_index_u32(var_0.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]) * vec3<f32>(global0[_wgslsmith_index_u32(1u, 17u)], -1194f, global0[_wgslsmith_index_u32(var_0.x, 17u)])), true)))), u_input.b, 422f);
}

