struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = arg_0.d;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - arg_0.c) - arg_0.d) - _wgslsmith_f_op_f32(exp2(arg_0.c)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1340f, -567f));
    let var_2 = arg_0.a.a;
    let var_3 = u_input.b.wzy;
    return select(vec4<bool>(true, var_3.x <= _wgslsmith_sub_u32(var_3.x, var_3.x), false, arg_0.b.x), vec4<bool>(arg_0.b.x, any(!select(vec4<bool>(true, true, arg_0.b.x, false), vec4<bool>(arg_0.b.x, true, true, arg_0.b.x), arg_0.b.x)), false, arg_0.b.x), false);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<vec2<u32>, 16>();
    global0 = array<vec2<u32>, 16>();
    let var_0 = Struct_4(~arg_0.b.yzz, ~(-1i));
    let var_1 = Struct_3(u_input.a.xzw << (u_input.c.zzw % vec3<u32>(32u)), select(select(!func_3(Struct_2(Struct_1(arg_0.b.x, vec4<i32>(arg_1.b.x, var_0.a.x, 1i, 0i)), vec2<bool>(false, true), -279f, 1426f)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -244f) < _wgslsmith_f_op_f32(step(1000f, -1443f)), select(u_input.a.x < -19990i, true, all(vec3<bool>(false, true, false))), select(true, true, true)), vec4<bool>(true, true & all(vec3<bool>(true, false, true)), true || select(true, false, true), select(true, any(vec2<bool>(true, false)), true))));
    var var_2 = Struct_3(var_1.a & ~_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.b.wxz, vec3<i32>(var_0.a.x, arg_0.a, 2658i), var_0.a), firstTrailingBit(vec3<i32>(-2147483647i, 31962i, var_0.a.x))), vec4<bool>(all(vec2<bool>(any(var_1.b.wyw), var_1.b.x)), !func_3(Struct_2(arg_0, vec2<bool>(false, var_1.b.x), -430f, 3027f)).x, true, all(var_1.b)));
    return arg_1;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = arg_3.yzw;
    var var_1 = Struct_1(-arg_1.a, ~vec4<i32>(~(i32(-1i) * -2147483647i), arg_1.a, _wgslsmith_dot_vec3_i32(u_input.a.wwy, vec3<i32>(0i, -1i, -2147483647i)) & u_input.a.x, abs(-arg_1.a)));
    global0 = array<vec2<u32>, 16>();
    let var_2 = func_2(Struct_1(~(arg_1.a & -19303i) ^ (max(32254i, arg_0.a.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u), arg_3) % 32u)), -vec4<i32>(arg_0.a.x, -1i, -1i, -1i)), Struct_1(-3726i, _wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, -28397i, -16104i, u_input.a.x) << (~vec4<u32>(arg_3.x, var_0.x, 0u, 99518u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x & arg_1.a, firstLeadingBit(arg_1.a), 1i, arg_0.a.x))), _wgslsmith_sub_u32(18387u, ~min(84445u, _wgslsmith_dot_vec4_u32(arg_3, u_input.c))));
    let var_3 = func_3(Struct_2(Struct_1(arg_0.a.x, var_2.b), vec2<bool>(_wgslsmith_f_op_f32(trunc(1145f)) == -737f, true & (arg_0.b.x == arg_2)), 1115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1694f + -1996f)))).wz;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 16>();
    var var_0 = _wgslsmith_add_u32(u_input.b.x ^ select(_wgslsmith_clamp_u32(~u_input.c.x, u_input.b.x | u_input.b.x, u_input.c.x & u_input.c.x), 19369u, true), u_input.b.x);
    var var_1 = !vec2<bool>(false, !any(vec2<bool>(true, true)));
    var var_2 = Struct_1(-u_input.a.x, -countOneBits(_wgslsmith_mod_vec4_i32(func_1(Struct_3(vec3<i32>(-12796i, 14001i, u_input.a.x), vec4<bool>(false, false, var_1.x, var_1.x)), Struct_5(-2147483647i), var_1.x, vec4<u32>(u_input.c.x, u_input.c.x, 7632u, 97665u)), _wgslsmith_div_vec4_i32(u_input.a, u_input.a))));
    let var_3 = Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, firstTrailingBit(u_input.a.x)) ^ min(vec3<i32>(-1i, -1576i, 14766i), vec3<i32>(-12385i, 0i, 39644i)), min(vec3<i32>(-2147483647i, 1i, 11028i), firstTrailingBit(u_input.a.yxz)) | countOneBits(var_2.b.yxx)), select(var_2.b.x, var_2.a, var_1.x));
    let var_4 = Struct_5(-21951i);
    var_0 = 1u;
    let var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(37334u, _wgslsmith_div_u32(u_input.b.x, ~u_input.b.x), ~u_input.c);
}

