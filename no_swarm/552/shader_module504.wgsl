struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, vec4<u32>(0u, 55034u, 4294967295u, 1u), 534f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global0 = Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, u_input.c, global0.a, global0.a), vec4<i32>(u_input.e, 1i, global0.a, -1i))), -vec4<i32>(4180i, global0.a, -6077i, global0.a))), global0.b, global0.c);
    global0 = Struct_1(firstLeadingBit(1i), ~(~global0.b | ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_f_op_f32(-global0.c));
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(902f + -382f)));
    global0 = Struct_1(-11870i, global0.b, _wgslsmith_f_op_f32(exp2(global0.c)));
    let var_1 = select(true, true, true);
    return max(firstLeadingBit(~global0.a), select(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(global0.a, 35066i, global0.a, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-11825i, -2147483647i, global0.a, global0.a), vec4<i32>(1i, u_input.c, -35396i, global0.a), vec4<i32>(global0.a, u_input.e, global0.a, 43579i))), countOneBits(vec4<i32>(global0.a, u_input.c, 50093i, -3071i))), ((global0.a & u_input.d.x) << (_wgslsmith_clamp_u32(u_input.a.x, 12058u, u_input.a.x) % 32u)) << (global0.b.x % 32u), !(!(global0.c > 1000f))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(u_input.b.x, vec4<u32>(1u, 1u, global0.b.x, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(946f + global0.c)));
    global0 = Struct_1(~func_3(), var_0.b, -986f);
    var var_1 = Struct_2(var_0);
    let var_2 = Struct_1(var_0.a, _wgslsmith_add_vec4_u32(abs(vec4<u32>(~10072u, var_1.a.b.x >> (global0.b.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 27226u), global0.b.zx), var_1.a.b.x & global0.b.x)), var_1.a.b), -1000f);
    var var_3 = true;
    return 1u >> (_wgslsmith_add_u32(1u, abs(_wgslsmith_div_u32(22948u, var_2.b.x))) % 32u);
}

fn func_1() -> Struct_2 {
    let var_0 = firstLeadingBit(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, -136500i, 1i, u_input.e) << (vec4<u32>(u_input.a.x, 13123u, u_input.a.x, 4294967295u) % vec4<u32>(32u)), min(vec4<i32>(2147483647i, u_input.d.x, 1i, -37284i), vec4<i32>(u_input.d.x, 9751i, u_input.c, u_input.b.x)))) >> (vec4<u32>(global0.b.x, 4294967295u, func_2(global0.a, -1093f, Struct_1(24906i, global0.b, global0.c)) & _wgslsmith_add_u32(4294967295u, global0.b.x), select(_wgslsmith_sub_u32(u_input.a.x, 56606u), global0.b.x, select(true, true, false))) % vec4<u32>(32u)));
    var var_1 = any(vec2<bool>(false, all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))))));
    return Struct_2(Struct_1(~(-1i), _wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, ~1u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x), ~vec4<u32>(u_input.a.x, 29335u, 0u, 4294967295u)), _wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_add_i32(~_wgslsmith_clamp_i32(u_input.c, 0i, 8115i), countOneBits(global0.a)) ^ global0.a, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f - global0.c) * global0.c))));
    var var_0 = func_1();
    var_0 = func_1();
    global0 = var_0.a;
    let var_1 = var_0.a;
    var var_2 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, max(reverseBits(4294967295u), func_2(-2147483647i, var_1.c, func_1().a)), select(abs(vec4<i32>(-24187i, global0.a, -14164i, -66i) ^ (vec4<i32>(-1i, var_0.a.a, var_1.a, global0.a) << (var_1.b % vec4<u32>(32u)))), vec4<i32>(36298i, -19904i ^ abs(u_input.d.x), var_0.a.a, var_1.a), 4294967295u > u_input.a.x), -1000f, vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(308f, var_0.a.c)))), var_1.c, -2001f));
}

