struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: i32;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<f32>) -> i32 {
    let var_0 = all(!(!global2.c)) & all(global2.c);
    global1 = ~_wgslsmith_div_i32(global2.a.x, -max(firstLeadingBit(u_input.c.x), u_input.b.x));
    let var_1 = u_input.d.x;
    let var_2 = ~select(vec3<u32>(~0u << (var_1 % 32u), 7199u, (40362u | u_input.d.x) << (reverseBits(global2.d) % 32u)), _wgslsmith_add_vec3_u32(global2.b, min(vec3<u32>(4294967295u, 30512u, 73680u), countOneBits(vec3<u32>(u_input.d.x, arg_0.a.a, var_1)))), select(select(!global2.c, global2.c, vec3<bool>(false, global2.c.x, global2.c.x)), global2.c, -12238i != ~u_input.a));
    global1 = _wgslsmith_clamp_i32(~0i, 1i, 1i);
    return ~global2.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    global0 = ~(~51563u & arg_0.d);
    let var_0 = Struct_3(~(23810u & ~u_input.d.x));
    global1 = func_3(Struct_4(var_0), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -266f, -776f, -265f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1617f, -622f)))))));
    let var_1 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * 1010f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-750f)) - _wgslsmith_f_op_f32(min(493f, 535f))) + 1f));
    global2 = Struct_1(arg_1, firstTrailingBit(~vec3<u32>(0u, u_input.d.x << (0u % 32u), _wgslsmith_mod_u32(26725u, global2.b.x))), global2.c, 38546u);
    return arg_0.b.x;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    global0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u ^ u_input.d.x, 1u, _wgslsmith_dot_vec2_u32(global2.b.zz, global2.b.xz), ~u_input.d.x) ^ _wgslsmith_add_vec4_u32(vec4<u32>(89585u, 29235u, 32217u, u_input.d.x) ^ vec4<u32>(global2.b.x, global2.d, u_input.d.x, u_input.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_1.a, 83657u, u_input.d.x), vec4<u32>(global2.b.x, 31057u, u_input.d.x, global2.b.x))), vec4<u32>(46951u, func_2(Struct_1(vec2<i32>(u_input.a, 0i), vec3<u32>(arg_1.a, 4294967295u, u_input.d.x), global2.c, u_input.d.x), max(global2.a, u_input.b.xx)), _wgslsmith_mod_u32(~0u, min(u_input.d.x, arg_1.a)), max(76482u, 0u)));
    var var_0 = arg_1.a;
    var var_1 = Struct_1(vec2<i32>(0i, reverseBits(0i)), ~global2.b, select(!global2.c, !(!select(vec3<bool>(false, global2.c.x, arg_0), global2.c, vec3<bool>(global2.c.x, global2.c.x, false))), true), min(u_input.d.x, ~1u) & ~117524u);
    global0 = arg_1.a;
    var var_2 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a, var_1.b.x, countOneBits(~u_input.d.x), 1u), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, global2.b.x, global2.b.x), var_1.b), abs(26357u)), _wgslsmith_sub_u32(u_input.d.x, 38574u) | countOneBits(1u), var_1.d >> (var_1.b.x % 32u), ~_wgslsmith_mult_u32(u_input.d.x, 1u)), ~abs(~vec4<u32>(arg_1.a, 1u, arg_1.a, u_input.d.x)));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    global0 = 41120u;
    var var_0 = u_input.b;
    var var_1 = ~global2.d;
    var var_2 = global2.b;
    let var_3 = Struct_4(arg_1);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-global2.a, ~(~abs(select(global2.b, global2.b, vec3<bool>(global2.c.x, global2.c.x, global2.c.x)))), vec3<bool>(global2.c.x, true, true), u_input.d.x);
    global0 = func_4(Struct_2(Struct_1(-u_input.b.wx, vec3<u32>(0u, 1u, 16732u) << (global2.b % vec3<u32>(32u)), global2.c, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.x, global2.b.x), vec2<u32>(global2.b.x, 4419u)), ~global2.d, 1u), Struct_1(vec2<i32>(-2147483647i, 0i), ~vec3<u32>(global2.b.x, 15754u, u_input.d.x), select(vec3<bool>(global2.c.x, global2.c.x, global2.c.x), global2.c, global2.c), _wgslsmith_div_u32(13201u, global2.d))), func_1(true, Struct_3(33895u))) & _wgslsmith_mult_u32(~global2.d, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~58979u, func_2(Struct_1(vec2<i32>(-2147483647i, u_input.c.x), vec3<u32>(4294967295u, 58163u, u_input.d.x), global2.c, 41358u), vec2<i32>(global2.a.x, 2147483647i))), global2.b.x));
    global1 = ~select(26760i, 0i, true);
    let var_0 = !vec4<bool>(all(global2.c), any(select(!vec4<bool>(true, global2.c.x, global2.c.x, global2.c.x), vec4<bool>(global2.c.x, global2.c.x, false, global2.c.x), vec4<bool>(true, global2.c.x, global2.c.x, false))), any(select(!global2.c, !global2.c, !global2.c.x)), select(true, global2.c.x, true));
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(7074u, 44899i, min(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, global2.b.x, u_input.d.x, 40515u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, global2.b.x, u_input.d.x, 15901u), vec4<u32>(global2.d, 0u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u)), select(select(vec4<u32>(1u, 37376u, 30891u, u_input.d.x), vec4<u32>(global2.d, 0u, 4294967295u, u_input.d.x), var_0.x), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, global2.b.x), !var_0)), ~max(select(vec4<u32>(62438u, u_input.d.x, global2.d, u_input.d.x), vec4<u32>(1u, global2.b.x, 4294967295u, global2.d), true), vec4<u32>(0u, global2.d, 9078u, 26685u) & vec4<u32>(u_input.d.x, 0u, u_input.d.x, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-595f, 1376f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1368f, -1164f)), select(vec2<bool>(global2.c.x, var_0.x), vec2<bool>(global2.c.x, global2.c.x), vec2<bool>(var_0.x, var_0.x)))))));
}

