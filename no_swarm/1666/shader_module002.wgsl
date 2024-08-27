struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4294967295u, 4294967295u, 32406u, 71323u, 48133u, 50125u, 0u, 1u, 15959u, 1u, 4723u, 1u, 4294967295u, 18995u, 20650u, 10255u, 1u, 0u, 0u, 13836u, 4294967295u, 1u, 80954u, 1u, 103219u, 0u, 0u);

var<private> global1: Struct_1 = Struct_1(-1i, 4294967295u, vec4<f32>(-1271f, 1000f, 1567f, -641f), vec3<i32>(3956i, 2147483647i, -27640i), true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = 135633u;
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let var_1 = global1.a;
    global1 = Struct_1(-global1.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(0u << (u_input.d % 32u)), _wgslsmith_sub_u32(~(u_input.d & 4294967295u), 37473u)), 27u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1.c, global1.c))), vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mod_i32(global1.d.x, global1.a)), global1.d.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0), vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 27u)], 55872u)) % 32u)), global1.d.x, _wgslsmith_dot_vec2_i32(global1.d.xy, -vec2<i32>(u_input.e.x, global1.d.x) | select(vec2<i32>(12285i, global1.d.x), vec2<i32>(u_input.a.x, -2147483647i), true))), global1.e && true);
    return _wgslsmith_f_op_f32(-global1.c.x) < -2068f;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> bool {
    global0 = array<u32, 27>();
    let var_0 = ~0u;
    let var_1 = arg_0.c.x;
    var var_2 = !(global1.a < ~(~(~1i)));
    var var_3 = arg_2;
    return global1.e;
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = array<u32, 27>();
    let var_0 = Struct_1(_wgslsmith_add_i32(-global1.d.x, u_input.e.x), global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(503f)), _wgslsmith_f_op_f32(max(1784f, arg_0.c.x)), _wgslsmith_f_op_f32(ceil(global1.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x)) + vec4<f32>(-2006f, _wgslsmith_f_op_f32(-global1.c.x), arg_0.c.x, -163f)) * global1.c), ~(((vec3<i32>(arg_0.d.x, arg_0.a, 1i) & vec3<i32>(arg_0.d.x, -31526i, u_input.a.x)) | vec3<i32>(2147483647i, u_input.b.x, 0i)) ^ vec3<i32>(global1.a, global1.d.x, countOneBits(arg_0.a))), true);
    let var_1 = _wgslsmith_div_i32(2147483647i, 16206i);
    let var_2 = vec4<bool>(all(select(select(!vec2<bool>(var_0.e, true), vec2<bool>(arg_0.e, var_0.e), !vec2<bool>(arg_0.e, true)), select(vec2<bool>(true, global1.e), vec2<bool>(true, true), !arg_0.e), vec2<bool>(true, true))), arg_0.e, !(!(!var_0.e)), true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global1.c.x, arg_0.c.x))))));
    return func_4(Struct_1(12634i, _wgslsmith_add_u32(~(~global1.b), var_0.b), vec4<f32>(-578f, _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * 2081f)), 1553f), -(var_0.d & min(vec3<i32>(var_0.d.x, var_1, 48708i), u_input.b)), func_3()), ~reverseBits(0u), Struct_1(max(global1.a, u_input.e.x | u_input.e.x) | 24732i, 12608u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, 803f, arg_0.c.x) - arg_0.c)), vec3<i32>(-36049i, reverseBits(3023i), -11801i ^ -var_0.d.x), true | var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global1 = arg_0;
    let var_0 = _wgslsmith_clamp_i32(u_input.b.x, -_wgslsmith_div_i32(0i, arg_0.a), arg_0.a) ^ ~select(_wgslsmith_dot_vec4_i32(u_input.e, ~vec4<i32>(1i, -2147483647i, 17802i, arg_0.a)), -max(2147483647i, arg_0.a), arg_0.e);
    let var_1 = arg_0;
    var var_2 = arg_0.e;
    var var_3 = arg_0;
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> bool {
    var var_0 = func_5(Struct_1(~0i, 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + global1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * arg_0.x) + _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(abs(global1.c.x)), 1112f), ~select(_wgslsmith_mult_vec3_i32(global1.d, global1.d), min(global1.d, vec3<i32>(46936i, u_input.a.x, 1i)), !vec3<bool>(false, global1.e, global1.e)), func_2(Struct_1(global1.d.x & 1i, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_1.x), vec2<u32>(global1.b, 36006u)), vec4<f32>(509f, -220f, 1418f, global1.c.x), ~global1.d, false && global1.e))), ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(9137u, 27u)], 27u)]);
    global1 = Struct_1(abs(_wgslsmith_sub_i32(min(global1.d.x, -global1.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.d.x, global1.a, global1.d.x, u_input.b.x), u_input.e), vec4<i32>(global1.a, var_0.a, u_input.b.x, -36393i) | vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.b.x)))), select(_wgslsmith_dot_vec2_u32(min(~arg_1.xz, select(arg_1.xy, arg_1.zx, vec2<bool>(true, true))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.yz, arg_1.zy), ~vec2<u32>(u_input.c, 0u))), 10548u, !any(select(vec3<bool>(var_0.e, true, false), vec3<bool>(false, true, true), vec3<bool>(global1.e, var_0.e, true)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(func_5(Struct_1(-88591i, global0[_wgslsmith_index_u32(10932u, 27u)], vec4<f32>(var_0.c.x, 630f, arg_0.x, var_0.c.x), u_input.a, var_0.e), global0[_wgslsmith_index_u32(u_input.d, 27u)]).c.x, _wgslsmith_f_op_f32(step(var_0.c.x, 1441f)), -562f, 394f))))), firstLeadingBit(_wgslsmith_div_vec3_i32(-(global1.d >> (vec3<u32>(global0[_wgslsmith_index_u32(25142u, 27u)], var_0.b, 25038u) % vec3<u32>(32u))), -select(var_0.d, u_input.a, false))), !func_3());
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.d.x, u_input.e.x), min(9293i, 72748i));
    var var_2 = _wgslsmith_add_vec4_u32(~(~abs(min(vec4<u32>(var_0.b, 0u, 0u, 17086u), vec4<u32>(0u, global1.b, global1.b, var_0.b)))), ~vec4<u32>(26059u, 14867u, firstTrailingBit(global0[_wgslsmith_index_u32(global1.b, 27u)]) << (_wgslsmith_sub_u32(var_0.b, arg_1.x) % 32u), arg_1.x));
    global1 = Struct_1(global1.d.x, 1u, arg_0, global1.d, any(vec3<bool>(all(vec4<bool>(true, var_0.e, true, global1.e)), var_0.e, all(select(vec3<bool>(var_0.e, global1.e, var_0.e), vec3<bool>(false, false, false), vec3<bool>(global1.e, true, false))))));
    return any(!(!vec3<bool>(!var_0.e, u_input.e.x <= 0i, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>((global1.b ^ 4294967295u) < 50581u, func_1(vec4<f32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), vec3<u32>(global1.b, global1.b, 33268u)) & false)) & global1.e;
    var var_1 = global1.b >> (4294967295u % 32u);
    global0 = array<u32, 27>();
    var_1 = 8891u;
    var_1 = 0u;
    var_0 = !global1.e;
    global0 = array<u32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

