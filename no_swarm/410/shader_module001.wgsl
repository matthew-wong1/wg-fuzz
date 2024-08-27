struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = !vec2<bool>(_wgslsmith_mult_u32(0u, 24470u ^ arg_1.d.x) > 13744u, true);
    var var_1 = arg_1;
    global0 = Struct_1(arg_3.a, u_input.e.x, !select(vec2<bool>(arg_0.c.x, select(arg_0.c.x, true, arg_1.c.x)), vec2<bool>(1i != u_input.a.x, !arg_0.c.x), arg_0.c.x), vec2<u32>(~(~(u_input.d.x << (arg_3.d.x % 32u))), ~arg_1.d.x), 1410f);
    var var_2 = 81446u;
    var_0 = arg_0.c;
    return u_input.e;
}

fn func_2() -> vec4<i32> {
    let var_0 = global0.c.x;
    var var_1 = Struct_1(u_input.e.x, _wgslsmith_dot_vec3_i32(func_3(Struct_1(_wgslsmith_add_i32(u_input.e.x, -18042i), global0.b, vec2<bool>(global0.c.x, false), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), u_input.c), _wgslsmith_f_op_f32(floor(709f))), Struct_1(2240i, _wgslsmith_sub_i32(-7941i, u_input.e.x), global0.c, ~vec2<u32>(4294967295u, u_input.d.x), 1114f), global0.e, Struct_1(u_input.e.x, -2147483647i, global0.c, select(vec2<u32>(u_input.d.x, 1u), u_input.c, true), global0.e)), u_input.a), vec2<bool>(all(select(vec2<bool>(global0.c.x, true), !global0.c, false)), false), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(max(u_input.c << (u_input.c % vec2<u32>(32u)), min(vec2<u32>(7981u, 1906u), vec2<u32>(4294967295u, u_input.d.x))), vec2<u32>(global0.d.x, ~29455u)), countOneBits(global0.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(501f, -1077f)) + global0.e), -855f)), _wgslsmith_f_op_f32(-global0.e))));
    global0 = Struct_1(1i, u_input.a.x, global0.c, ~global0.d, 1406f);
    global0 = Struct_1(global0.a, -59808i, vec2<bool>(true, false), vec2<u32>(~abs(global0.d.x), 54032u >> ((u_input.c.x & 0u) % 32u)), -850f);
    var_1 = Struct_1(global0.a, 0i, select(!select(global0.c, !global0.c, var_1.a == u_input.a.x), global0.c, global0.c), ~(~(~abs(vec2<u32>(37653u, var_1.d.x)))), var_1.e);
    return ~max(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-30195i, 81849i, 1i, -1i), vec4<i32>(global0.b, 23741i, global0.a, var_1.b)), ~46764i, firstLeadingBit(0i), 1i), _wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, global0.b, u_input.a.x, -1i), reverseBits(vec4<i32>(global0.b, u_input.a.x, u_input.e.x, -2147483647i)))) | abs(countOneBits(-vec4<i32>(26889i, global0.a, 12131i, global0.b)) & vec4<i32>(~(-982i), 2147483647i, global0.b, -global0.a));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: i32) -> i32 {
    let var_0 = Struct_1(countOneBits(~_wgslsmith_dot_vec4_i32(func_2(), countOneBits(vec4<i32>(-7111i, global0.a, u_input.a.x, u_input.e.x)))), -(reverseBits(firstTrailingBit(-3899i)) ^ -6542i), select(select(!select(vec2<bool>(global0.c.x, global0.c.x), global0.c, global0.c.x), !(!global0.c), global0.c), global0.c, select(global0.c, select(global0.c, vec2<bool>(global0.c.x, global0.c.x), global0.c), vec2<bool>(global0.c.x || global0.c.x, global0.c.x))), ~countOneBits(u_input.b.xy), -509f);
    var var_1 = var_0.b;
    var_1 = ~0i;
    global0 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, var_0.e) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, 1000f), arg_1.yw, var_0.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, 926f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.e, var_0.e))), global0.c)) - arg_1.wy))));
    return (i32(-1i) * -489i) | arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(global0.a | -33795i);
    let var_1 = global0.c;
    let var_2 = Struct_1(max(_wgslsmith_mod_i32(select(global0.b & 1i, countOneBits(0i), any(global0.c)), -_wgslsmith_mult_i32(var_0, var_0)), _wgslsmith_mult_i32(func_1(_wgslsmith_f_op_f32(-global0.e), vec4<f32>(-1000f, -563f, global0.e, global0.e), vec2<i32>(-976i, global0.a), global0.b), ~var_0 << (~0u % 32u))), _wgslsmith_dot_vec3_i32(func_2().xxz, func_2().wyz >> (vec3<u32>(_wgslsmith_add_u32(global0.d.x, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(44484u, 31699u, 1u, 4294967295u), u_input.d), 52361u) % vec3<u32>(32u))), !select(!global0.c, select(!global0.c, vec2<bool>(var_1.x, false), select(vec2<bool>(true, var_1.x), global0.c, global0.c)), false), u_input.c, 1428f);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e, var_2.e))))));
    global0 = Struct_1(-35180i, -38785i, !select(select(!vec2<bool>(var_2.c.x, false), !vec2<bool>(var_2.c.x, global0.c.x), var_2.c.x), !vec2<bool>(var_1.x, false), !select(global0.c, var_2.c, global0.c.x)), ~select(select(vec2<u32>(0u, var_2.d.x), ~vec2<u32>(global0.d.x, var_2.d.x), !var_1.x), vec2<u32>(~u_input.d.x, 1u), vec2<bool>(any(vec3<bool>(true, true, var_1.x)), true)), _wgslsmith_f_op_f32(var_2.e + global0.e));
    var var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(abs(u_input.b.x), 0u, ~global0.d.x), _wgslsmith_mult_vec3_u32(select(~vec3<u32>(global0.d.x, u_input.b.x, u_input.b.x), ~u_input.d.xxw, select(vec3<bool>(global0.c.x, global0.c.x, false), vec3<bool>(false, var_1.x, var_2.c.x), false)), u_input.d.zyx)) ^ u_input.b;
    var_3 = global0.e;
    var_3 = _wgslsmith_f_op_f32(sign(995f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(17338u, global0.d.x), u_input.e, -177f);
}

