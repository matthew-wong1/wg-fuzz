struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32 = 9229i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    var var_0 = global0.a;
    global1 = 579i;
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_0.a))), ~(~0u), Struct_2(!global0.c.a, true));
    let var_1 = -vec4<i32>(-1854i, -_wgslsmith_mod_i32(u_input.a.x >> (global0.b % 32u), max(14691i, u_input.a.x)), _wgslsmith_mod_i32(-34410i, u_input.a.x), arg_1.x ^ (i32(-1i) * -1i));
    let var_2 = Struct_2(select(select(select(vec4<bool>(global0.c.a.x, global0.c.b, true, arg_0.x), !arg_0, select(global0.c.a, vec4<bool>(global0.c.a.x, false, arg_0.x, true), global0.c.a)), select(arg_0, vec4<bool>(global0.c.b, arg_0.x, false, false), !arg_0), all(global0.c.a)), vec4<bool>(any(vec2<bool>(false, arg_2)), true, _wgslsmith_f_op_f32(-global0.a.a.x) < var_0.a.x, false), global0.c.a), true);
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    var var_0 = firstTrailingBit(u_input.a.x);
    let var_1 = !vec2<bool>(arg_0.a.x, true);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1574f, arg_1, 1000f)) + _wgslsmith_f_op_vec3_f32(ceil(global0.a.a))))), ~_wgslsmith_div_u32(25035u, firstLeadingBit(u_input.b.x)), Struct_2(arg_0.a, arg_0.a.x));
    var var_2 = global0.a;
    var var_3 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(~global0.b, 1u, func_3(vec4<bool>(var_1.x, global0.c.a.x, global0.c.a.x, var_1.x), vec4<i32>(2147483647i, -2147483647i, -30031i, -3941i), arg_0.a.x), max(39566u, 4294967295u)), ~firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u)) ^ abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, global0.b, global0.b, 0u), vec4<u32>(0u, 4294967295u, global0.b, 0u))));
    return Struct_2(arg_0.a, any(global0.c.a.wyy));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    var var_0 = 0i;
    var var_1 = Struct_3(Struct_1(global0.a.a), 27660u, Struct_2(vec4<bool>(arg_1.a.x, any(arg_1.a), false, arg_1.a.x), arg_1.a.x));
    let var_2 = -u_input.a.x > (_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3, u_input.a.x, u_input.a.x, 23362i), vec4<i32>(-1i, 5762i, -2147483647i, arg_3), vec4<i32>(arg_3, u_input.a.x, arg_3, -8297i)), select(vec4<i32>(arg_3, arg_3, -8440i, u_input.a.x), vec4<i32>(-1i, -6462i, arg_3, 1i), !global0.c.a)) << (min(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 35290u, arg_0) >> (u_input.b % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(14347u, global0.b, 4294967295u), u_input.b))) % 32u));
    let var_3 = !var_1.c.a;
    global0 = Struct_3(global0.a, 31040u, func_2(func_2(func_2(arg_2.c, -459f), _wgslsmith_f_op_f32(var_1.a.a.x + 835f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f - arg_2.a.a.x) * arg_2.a.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-722f)) * 644f))));
    return func_2(arg_2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.a.a.x)), -236f));
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<bool>(true, global0.c.a.x, !(!((u_input.b.x <= global0.b) || false)), true);
    var_0 = global0.c.a;
    global1 = ~countOneBits(u_input.a.x);
    var var_1 = func_4(_wgslsmith_mult_u32(firstTrailingBit(max(global0.b ^ u_input.b.x, ~43977u)), select(_wgslsmith_div_u32(1u | global0.b, 4294967295u), 1u, true)), func_2(global0.c, _wgslsmith_div_f32(-193f, -1000f)), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(403f, -583f, 473f) + global0.a.a) * _wgslsmith_div_vec3_f32(global0.a.a, vec3<f32>(global0.a.a.x, global0.a.a.x, -2552f)))), ~u_input.b.x, func_2(global0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.a.x))))), u_input.a.x);
    let var_2 = u_input.a.x;
    return Struct_3(global0.a, 0u, Struct_2(!global0.c.a, !var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = global0.a;
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

