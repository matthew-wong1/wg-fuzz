struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(465f, -656f, -539f, -1091f);

var<private> global1: vec2<f32> = vec2<f32>(-1447f, -1253f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    global0 = vec4<f32>(1309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f * arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, arg_0)) + -333f)) + _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(min(-652f, arg_1.c.c))))), _wgslsmith_f_op_f32(abs(-668f)));
    var var_0 = Struct_2(arg_1.a, ~min(u_input.c, _wgslsmith_div_u32(1u, arg_1.b)), Struct_1(true, _wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(arg_1.a.yx, vec2<u32>(1u, 1u))), ~(arg_1.a.zw & vec2<u32>(1u, arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 * global0.x)))), 0i, (u_input.a >> (_wgslsmith_div_vec4_u32(vec4<u32>(31817u, arg_1.b, arg_1.a.x, u_input.b), arg_1.a) % vec4<u32>(32u))) ^ reverseBits(vec4<i32>(arg_1.c.d, -1657i, arg_1.c.e.x, 24269i))), true, _wgslsmith_f_op_f32(-883f + arg_0));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-176f + global0.x), arg_1.e), arg_1.c.c, _wgslsmith_f_op_f32(-global1.x), arg_1.e))));
    var_0 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(select(arg_1.c.b.x, 337u, arg_2), 45667u << (arg_1.c.b.x % 32u), reverseBits(1u), _wgslsmith_mult_u32(var_0.c.b.x, var_0.b)) >> (var_0.a % vec4<u32>(32u)), arg_1.a, _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, arg_1.c.b.x, u_input.b, 4294967295u) << (arg_1.a % vec4<u32>(32u)), vec4<u32>(~76305u, 0u, ~arg_1.a.x, arg_1.c.b.x), vec4<u32>(u_input.c, 29774u, ~51421u, 0u << (u_input.c % 32u)))), 13886u, Struct_1(all(select(vec3<bool>(arg_2, arg_1.d, true), select(vec3<bool>(false, var_0.d, arg_1.c.a), vec3<bool>(false, false, true), arg_2), select(vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(false, arg_1.d, var_0.d), false))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.a.wz, vec2<u32>(var_0.b, 14154u)), 0u), -304f, abs(firstLeadingBit(_wgslsmith_div_i32(0i, -510i))), u_input.a), true || (4294967295u <= ~abs(arg_1.b)), -2535f);
    let var_1 = global0.yy;
    return select(!(!vec2<bool>(all(vec2<bool>(false, var_0.c.a)), true)), !vec2<bool>(arg_1.c.a, true), vec2<bool>(false, true));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = -u_input.a;
    global0 = vec4<f32>(-652f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-353f, _wgslsmith_div_f32(global1.x, global0.x))) * 713f)), arg_2.c, arg_2.c);
    global1 = _wgslsmith_f_op_vec2_f32(select(global0.xx, _wgslsmith_f_op_vec2_f32(ceil(global0.yx)), select(!arg_1.yy, select(func_3(_wgslsmith_f_op_f32(min(arg_0, arg_2.c)), Struct_2(vec4<u32>(arg_2.b.x, arg_2.b.x, u_input.c, u_input.b), arg_2.b.x, arg_2, false, global0.x), any(vec2<bool>(true, true))), arg_1.zx, !(!vec2<bool>(false, arg_1.x))), vec2<bool>(_wgslsmith_dot_vec4_i32(arg_2.e, var_0) >= var_0.x, arg_1.x))));
    var var_1 = global0.yz;
    var var_2 = global0.yxy;
    return min(u_input.b, 4294967295u);
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = ~_wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 0u, 53526u), vec3<u32>(1u, u_input.b, 49440u), vec3<u32>(0u, arg_0.b.x, arg_0.b.x)), vec3<u32>(u_input.c, arg_0.b.x, u_input.b) >> (vec3<u32>(arg_0.b.x, 41215u, u_input.c) % vec3<u32>(32u)))), countOneBits(vec3<u32>(abs(arg_0.b.x), 4294967295u, func_2(global0.x, vec3<bool>(arg_0.a, arg_0.a, arg_0.a), Struct_1(true, vec2<u32>(u_input.b, u_input.c), global1.x, -25540i, vec4<i32>(arg_0.d, u_input.a.x, arg_0.d, 1i)), 18073i))));
    let var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = vec3<i32>(arg_0.d, var_2.e.x, ~(-firstLeadingBit(-1i) & (~(-46621i) & _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(8268i, 2147483647i, arg_0.d, var_1.e.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1031f, -841f, 943f, _wgslsmith_f_op_f32(max(1715f, var_1.c)))));
    return !(!vec2<bool>(true, all(select(vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, var_1.a), var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec2<bool>(false, false), func_1(Struct_1(true, vec2<u32>(1u, u_input.c), global0.x, u_input.a.x, vec4<i32>(u_input.a.x, 0i, 3297i, u_input.a.x))), true), !func_3(global0.x, Struct_2(vec4<u32>(4294967295u, u_input.c, u_input.b, 27248u), u_input.c, Struct_1(false, vec2<u32>(u_input.b, u_input.b), global0.x, u_input.a.x, vec4<i32>(u_input.a.x, 45074i, -8393i, u_input.a.x)), false, 582f), false), all(func_1(Struct_1(true, vec2<u32>(u_input.b, 4294967295u), global0.x, u_input.a.x, u_input.a)))), !(!vec2<bool>(true, any(vec2<bool>(true, true)))), vec2<bool>(true, true));
    var var_1 = -840f;
    var var_2 = Struct_1(var_0.x, ~(~(vec2<u32>(u_input.b, 78558u) << (vec2<u32>(u_input.b, u_input.c) % vec2<u32>(32u))) | ~vec2<u32>(u_input.b, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -949f)), 46046i, vec4<i32>(max(u_input.a.x, ~53576i), 43i, ~u_input.a.x, _wgslsmith_add_i32(firstLeadingBit(abs(-5596i)), -_wgslsmith_sub_i32(-2147483647i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(u_input.b, ~abs(var_2.b.x)), 1u);
}

