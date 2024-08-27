struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = arg_1.x;
    var_1 = _wgslsmith_f_op_f32(trunc(-1824f));
    var_1 = 641f;
    let var_2 = select(vec2<bool>(all(vec3<bool>(arg_0.b, any(vec2<bool>(true, arg_0.b)), false)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(all(vec3<bool>(false, arg_0.b, arg_0.b)), true), vec2<bool>(arg_0.b, !arg_0.b)), !(-1300f <= arg_1.x)), select(select(!vec2<bool>(true, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b), _wgslsmith_mod_u32(arg_0.a.a, var_0.a) > ~arg_0.c.x), !vec2<bool>(select(true, arg_0.b, arg_0.b), -1314f >= arg_1.x), any(select(vec4<bool>(true, true, false, arg_0.b), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), !vec4<bool>(false, true, false, arg_0.b)))));
    return arg_0.c.x | (firstTrailingBit(~var_0.a) << (4294967295u % 32u));
}

fn func_2() -> vec2<f32> {
    global0 = array<u32, 27>();
    var var_0 = Struct_3(Struct_1(abs(_wgslsmith_sub_u32(u_input.a, global0[_wgslsmith_index_u32(35166u, 27u)] & global0[_wgslsmith_index_u32(0u, 27u)]))), true, vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 17544u, 88652u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 45101u, global0[_wgslsmith_index_u32(71362u, 27u)])), u_input.a), func_3(Struct_3(Struct_1(u_input.a), false, vec3<u32>(u_input.a, 1u, u_input.a), vec4<u32>(15761u, 0u, u_input.a, global0[_wgslsmith_index_u32(47550u, 27u)])), _wgslsmith_div_vec2_f32(vec2<f32>(-846f, -1013f), vec2<f32>(-808f, -486f)))), 27u)], 27u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, 12917u), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)), ~vec4<u32>(0u, 44279u, 23129u, global0[_wgslsmith_index_u32(43727u, 27u)])), vec4<u32>(func_3(Struct_3(Struct_1(global0[_wgslsmith_index_u32(21556u, 27u)]), true, vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], u_input.a), vec4<u32>(0u, u_input.a, 0u, 4294967295u)), vec2<f32>(-1329f, 296f)), abs(u_input.a), 4294967295u, u_input.a)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f))), _wgslsmith_f_op_f32(abs(-1000f)));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(func_2()), abs(~(~firstLeadingBit(0i))), -7011i, 0i >> (u_input.a % 32u), _wgslsmith_mult_vec4_u32(min(reverseBits(arg_0.d | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1987u, 27u)], 27u)], u_input.a, 19274u, 3319u)), ~(arg_0.d | arg_0.d)), arg_0.d));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))))), max(_wgslsmith_clamp_i32(abs(-27995i), arg_1, arg_1), (-5691i & var_0.c) | 2147483647i) >> ((~(~arg_0.c.x) >> (1u % 32u)) % 32u), ((28012i << (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]) % 32u)) | -(-52226i << (global0[_wgslsmith_index_u32(var_0.e.x, 27u)] % 32u))) << (~global0[_wgslsmith_index_u32(arg_0.c.x, 27u)] % 32u), -57349i, max(vec4<u32>(~1u ^ _wgslsmith_sub_u32(arg_0.a.a, 1998u), 1u, arg_0.d.x, var_0.e.x >> (4294967295u % 32u)), arg_0.d));
    var_0 = Struct_2(vec2<f32>(var_1.a.x, var_1.a.x), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(2147483647i, -2147483647i, 1i)), min(vec3<i32>(var_1.b, 11670i, reverseBits(2147483647i)), vec3<i32>(2147483647i & var_0.c, arg_1, var_0.c))), arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d & _wgslsmith_dot_vec4_i32(vec4<i32>(26934i, var_1.d, var_1.c, var_0.b), vec4<i32>(2147483647i, arg_1, var_0.d, var_1.c)), _wgslsmith_clamp_i32(arg_1, var_1.b, var_0.d | 6403i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, -1794i, var_0.b, var_0.b), abs(vec4<i32>(var_0.c, 1i, 2147483647i, arg_1))), select(arg_1 << (u_input.a % 32u), 1i, all(vec2<bool>(true, arg_0.b)))), firstTrailingBit(abs(vec4<i32>(-28224i, var_1.c, arg_1, var_1.d)) ^ reverseBits(vec4<i32>(arg_1, 72034i, arg_1, var_0.d)))), _wgslsmith_add_vec4_u32(vec4<u32>(min(33847u, var_1.e.x) << (~global0[_wgslsmith_index_u32(u_input.a, 27u)] % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.e, vec4<u32>(1343u, u_input.a, 72546u, u_input.a)), ~vec4<u32>(1u, var_1.e.x, 79657u, 4294967295u)), var_0.e.x, _wgslsmith_mod_u32(48060u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 49474u), 27u)])), ~arg_0.d));
    var var_2 = arg_0.c;
    let var_3 = -2147483647i;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(reverseBits(~abs(68674u))), true, vec3<u32>(_wgslsmith_mod_u32(max(u_input.a, _wgslsmith_clamp_u32(2089u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 27u)])), ~global0[_wgslsmith_index_u32(reverseBits(u_input.a), 27u)]), 18518u, u_input.a), func_1(Struct_3(Struct_1(u_input.a), false, vec3<u32>(0u, 4294967295u | u_input.a, u_input.a ^ 110591u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 27u)] ^ global0[_wgslsmith_index_u32(35600u, 27u)], 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 27u)], 0u, 0u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 27u)], 0u, u_input.a)), 4294967295u)), 0i));
    global0 = array<u32, 27>();
    var_0 = Struct_3(var_0.a, var_0.b, var_0.c, var_0.d);
    let var_1 = -2147483647i;
    var var_2 = !var_0.b;
    let var_3 = Struct_3(var_0.a, var_0.b, vec3<u32>(_wgslsmith_add_u32(reverseBits(var_0.d.x), 4294967295u), ~global0[_wgslsmith_index_u32(u_input.a, 27u)], ~(~(~var_0.c.x))), max(var_0.d, reverseBits(~(~var_0.d))));
    var var_4 = 469f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-_wgslsmith_mod_i32(var_1, -var_1)), 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1285f + 358f)))), 575f));
}

