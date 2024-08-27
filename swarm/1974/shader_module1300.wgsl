struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<f32>(-511f, 213f, -781f, -252f), -11132i, vec4<bool>(true, true, true, true), true, 1u));

var<private> global1: i32 = 0i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec4<u32>(~arg_1.b.e, arg_2.e, arg_3.e, _wgslsmith_dot_vec2_u32(vec2<u32>(select(1086u, select(arg_2.e, global0.a.e, false), true), 1u), vec2<u32>(min(~global0.a.e, ~arg_3.e), u_input.b)));
    let var_1 = arg_3.c.wwx;
    global1 = global0.a.b;
    global0 = arg_0;
    var var_2 = var_0.x;
    return select(arg_3.c, arg_3.c, true);
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, global0.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -519f), -440f)), _wgslsmith_f_op_f32(global0.a.a.x - 1f))), countOneBits(2147483647i), select(func_3(Struct_3(global0.a), Struct_2(Struct_1(vec4<f32>(global0.a.a.x, -1073f, -412f, global0.a.a.x), 57164i, vec4<bool>(true, true, global0.a.d, global0.a.d), global0.a.d, global0.a.e), Struct_1(global0.a.a, u_input.a.x, global0.a.c, true, 140566u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, global0.a.a.x))), 1u), global0.a, Struct_1(vec4<f32>(-3178f, 628f, 318f, -1148f), ~u_input.a.x, vec4<bool>(true, global0.a.d, global0.a.d, false), false, 63542u)), vec4<bool>(global0.a.c.x, true || global0.a.d, (arg_0.x | 79957u) >= 1159u, true), all(global0.a.c.ywy) | true), select(true, false, false), firstLeadingBit(24413u));
    let var_1 = Struct_4(global0.a.c.yyw);
    let var_2 = var_0.c;
    global0 = Struct_3(global0.a);
    let var_3 = Struct_3(global0.a);
    return ~(~var_3.a.b) | -2147483647i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = Struct_2(global0.a, global0.a, vec4<f32>(-1853f, 1000f, _wgslsmith_f_op_f32(-global0.a.a.x), global0.a.a.x), u_input.d ^ _wgslsmith_add_u32(global0.a.e, 31905u));
    var var_1 = Struct_4(func_3(Struct_3(global0.a), Struct_2(global0.a, var_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(global0.a.a, var_0.b.a, var_0.a.c)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.a.x, 1000f, -1172f, var_0.c.x))), true)), u_input.d), var_0.b, global0.a).zxw);
    var var_2 = arg_0.x;
    let var_3 = firstLeadingBit(~(~(_wgslsmith_clamp_u32(global0.a.e, 0u, 4294967295u) & firstLeadingBit(54219u))));
    global1 = reverseBits(reverseBits(-arg_1.x)) | _wgslsmith_clamp_i32(-1i, global0.a.b, arg_1.x);
    return Struct_4(vec3<bool>(!(!var_0.b.c.x) | (_wgslsmith_f_op_f32(-var_0.c.x) > _wgslsmith_f_op_f32(global0.a.a.x + var_0.b.a.x)), var_1.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.e, var_3), vec2<u32>(u_input.d, 95610u), vec2<u32>(u_input.b, 0u)), vec2<u32>(var_3, var_0.b.e)) != _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_3, 0u), 17201u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = func_4(-vec4<i32>(-78218i, 1i, 32984i, func_2(vec4<u32>(4294967295u, global0.a.e, arg_2, arg_2)) ^ u_input.a.x), ~vec4<i32>(countOneBits(global0.a.b), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(6254i, global0.a.b), u_input.c.xz | vec2<i32>(21141i, global0.a.b)), -6961i));
    global0 = Struct_3(Struct_1(_wgslsmith_div_vec4_f32(global0.a.a, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1925f, global0.a.a.x, global0.a.a.x, 256f), global0.a.a), vec4<f32>(858f, arg_1, -1179f, global0.a.a.x))), -12676i, func_3(Struct_3(global0.a), Struct_2(global0.a, Struct_1(global0.a.a, -14943i, global0.a.c, global0.a.c.x, 4294967295u), vec4<f32>(arg_1, arg_1, arg_1, arg_1), _wgslsmith_mod_u32(15433u, u_input.d)), global0.a, global0.a), _wgslsmith_mult_u32(19332u, global0.a.e) >= 1u, _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b, 4294967295u) ^ vec2<u32>(arg_2, u_input.b)), ~vec2<u32>(arg_2, arg_2))));
    var var_1 = global0.a.b;
    global0 = Struct_3(global0.a);
    global0 = Struct_3(Struct_1(global0.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.b, global0.a.b) << (_wgslsmith_mult_vec2_u32(vec2<u32>(40654u, u_input.b), vec2<u32>(u_input.d, global0.a.e)) % vec2<u32>(32u)), u_input.a.yx), !(!arg_0), !any(vec4<bool>(true, false, arg_3.x, global0.a.d)), arg_2));
    return ~vec4<u32>(~arg_2, countOneBits(1u), reverseBits(_wgslsmith_mod_u32(global0.a.e, 37003u)), _wgslsmith_clamp_u32(18373u, arg_2, abs(arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_div_f32(525f, global0.a.a.x);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x));
    let var_2 = func_1(vec4<bool>(true, var_0, all(global0.a.c.zww), !(2290f <= global0.a.a.x) || true), 2631f, global0.a.e, select(global0.a.c.wzx, select(select(vec3<bool>(true, var_0, global0.a.d), vec3<bool>(false, false, true), vec3<bool>(global0.a.d, true, true)), global0.a.c.wwy, true), vec3<bool>(4294967295u != (global0.a.e | u_input.d), false, false & (u_input.c.x != u_input.a.x))));
    global0 = Struct_3(Struct_1(global0.a.a, -(~_wgslsmith_div_i32(global0.a.b, 1i)), select(!global0.a.c, !vec4<bool>(false, var_0, var_0, false), any(func_3(Struct_3(Struct_1(global0.a.a, -83187i, global0.a.c, var_0, 1u)), Struct_2(Struct_1(vec4<f32>(global0.a.a.x, 142f, 877f, 338f), global0.a.b, vec4<bool>(true, true, var_0, true), var_0, global0.a.e), Struct_1(global0.a.a, global0.a.b, global0.a.c, true, var_2.x), global0.a.a, 53827u), Struct_1(global0.a.a, global0.a.b, vec4<bool>(var_0, var_0, true, var_0), false, global0.a.e), Struct_1(global0.a.a, 21788i, vec4<bool>(var_0, true, var_0, global0.a.d), var_0, 2742u)).zwx)), all(vec4<bool>(!global0.a.d, any(global0.a.c.zw), true, true)), 78720u));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, -2486f) - _wgslsmith_f_op_vec4_f32(-global0.a.a))), min(2147483647i, u_input.c.x << (max(26229u, u_input.b) % 32u)), vec4<bool>(!all(global0.a.c), all(vec2<bool>(true, false)) & any(vec3<bool>(var_0, global0.a.d, var_0)), !(u_input.c.x == 29443i), _wgslsmith_f_op_f32(abs(global0.a.a.x)) != _wgslsmith_f_op_f32(-1314f - 1000f)), global0.a.d, _wgslsmith_clamp_u32(global0.a.e, _wgslsmith_div_u32(~1u, firstLeadingBit(u_input.d)), global0.a.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(min(select(~vec2<u32>(var_2.x, 4294967295u), ~var_2.wx, global0.a.c.yy), vec2<u32>(0u, 1u)), var_2.yz), _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(-(u_input.c ^ vec3<i32>(-2147483647i, 0i, u_input.c.x)), _wgslsmith_sub_vec3_i32(countOneBits(u_input.a), _wgslsmith_mult_vec3_i32(u_input.a, u_input.c)))));
}

