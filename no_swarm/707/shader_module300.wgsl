struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2292f;

var<private> global1: Struct_5;

var<private> global2: Struct_4;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec3<bool> {
    global1 = Struct_5(global2.a);
    global2 = Struct_4(global2.a, global1.a.b, vec4<bool>(arg_1.x, !all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), true, any(!vec2<bool>(false, arg_1.x))));
    global2 = Struct_4(global1.a, firstLeadingBit(~global1.a.c), vec4<bool>(true, !arg_1.x, !all(global2.c.yx), arg_1.x | (!arg_1.x & arg_1.x)));
    var var_0 = ~global1.a.b;
    global2 = Struct_4(global2.a, firstLeadingBit(u_input.a), !vec4<bool>(true, arg_1.x && true, global2.c.x, all(select(arg_1, arg_1, false))));
    return vec3<bool>(any(select(vec4<bool>(any(vec3<bool>(arg_1.x, false, arg_1.x)), arg_1.x, arg_1.x, global1.a.b <= 34521i), !(!global2.c), select(vec4<bool>(true, global2.c.x, global2.c.x, arg_1.x), global2.c, !global2.c.x))), _wgslsmith_add_i32(2147483647i, _wgslsmith_mod_i32(-1904i, global1.a.c)) > -19458i, !arg_1.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = Struct_3(!select(global2.c.x, global2.c.x, true) || false, !global2.c);
    var var_1 = func_3(arg_3.xz, !select(!(!var_0.b.wzx), vec3<bool>(global2.c.x, any(global2.c), global2.c.x), global2.c.x));
    var var_2 = Struct_5(Struct_1(global1.a.a, reverseBits(-17173i), -min(_wgslsmith_div_i32(arg_0.c, global1.a.b), ~1i)));
    let var_3 = arg_0;
    global2 = Struct_4(var_2.a, 10900i, vec4<bool>(false, var_1.x, func_3(arg_3.wx, func_3(arg_3.zz, vec3<bool>(global2.c.x, global2.c.x, global2.c.x))).x, global2.c.x));
    return Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, 482f, arg_1.x, global2.a.a.x)), _wgslsmith_f_op_vec4_f32(-var_3.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a.a.x, var_2.a.a.x, var_2.a.a.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-760f, 1257f, var_2.a.a.x, 1000f)))))), _wgslsmith_sub_i32(0i, 52251i), arg_2), -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a, -837i), -global2.b, ~1i, ~(-23202i)), -(vec4<i32>(1i, 3944i, 0i, 0i) & vec4<i32>(u_input.a, var_3.c, 33881i, 39566i))), global2.c);
}

fn func_1() -> vec3<bool> {
    global2 = func_2(Struct_1(global1.a.a, -max(-global2.a.b, ~global1.a.b), -global2.b), _wgslsmith_f_op_vec4_f32(global1.a.a + global2.a.a), -4906i, ~(~(vec4<u32>(59995u, u_input.b, 6692u, 1u) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u)))));
    let var_0 = vec3<bool>(global2.c.x, false, true | ((false && global2.c.x) | global2.c.x));
    let var_1 = -vec2<i32>(_wgslsmith_mod_i32(-(81683i | global2.a.b), 37618i), -_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -global1.a.b));
    let var_2 = var_0.x;
    global0 = _wgslsmith_f_op_f32(step(func_2(func_2(func_2(func_2(global2.a, global1.a.a, u_input.a, vec4<u32>(25361u, 10738u, u_input.b, 4294967295u)).a, vec4<f32>(-536f, 821f, 493f, global2.a.a.x), 2147483647i, ~vec4<u32>(33426u, 4294967295u, u_input.b, u_input.b)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(252f, global2.a.a.x, -597f, global2.a.a.x), global1.a.a)), global1.a.b, ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(680f, global2.a.a.x, _wgslsmith_f_op_f32(round(global2.a.a.x)), -1656f) + vec4<f32>(-449f, _wgslsmith_f_op_f32(abs(global1.a.a.x)), _wgslsmith_f_op_f32(1396f - 1000f), _wgslsmith_f_op_f32(-global2.a.a.x))), 2147483647i, ~(~(~vec4<u32>(0u, u_input.b, u_input.b, 128370u)))).a.a.x, global1.a.a.x));
    return !func_2(global2.a, global2.a.a, _wgslsmith_div_i32(-35783i, 5839i), vec4<u32>(_wgslsmith_mult_u32(~14947u, u_input.b), ~u_input.b, firstLeadingBit(u_input.b), u_input.b)).c.xzz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 28509u), vec4<u32>(u_input.b, u_input.b, 73708u, u_input.b)) & abs(36853u), ~(0u ^ u_input.b)));
    let var_1 = global2.b;
    var var_2 = !global2.c.x;
    let var_3 = global2.a.a.x;
    global2 = Struct_4(global1.a, 2147483647i, !vec4<bool>(false == global2.c.x, global2.c.x, global2.c.x, true));
    let var_4 = firstTrailingBit(_wgslsmith_mod_vec4_u32((vec4<u32>(1u, 4294967295u, var_0.x, 0u) << (vec4<u32>(29236u, 68414u, var_0.x, var_0.x) % vec4<u32>(32u))) | (vec4<u32>(4294967295u, u_input.b, var_0.x, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, 1u, 61636u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, 4294967295u, 1u), ~vec4<u32>(30993u, u_input.b, var_0.x, 12514u))) >> (vec4<u32>(reverseBits(_wgslsmith_add_u32(0u, var_0.x)), u_input.b & ~u_input.b, ~var_0.x, u_input.b) % vec4<u32>(32u)));
    var_2 = !all(select(!global2.c.xyx, select(select(global2.c.yzy, vec3<bool>(global2.c.x, false, global2.c.x), false), vec3<bool>(true, global2.c.x, global2.c.x), global2.c.wwx), select(select(global2.c.wzw, global2.c.yyx, false), func_1(), !global2.c.yyy)));
    global1 = Struct_5(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.a.x, global1.a.a.x, global1.a.a.x, global1.a.a.x), global1.a.a)), max(_wgslsmith_add_i32(-15225i, 37917i), select(59153i, -4615i, global2.c.x)), -max(58747i, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(878f, global1.a.a.x, global2.a.a.x, global2.a.a.x) * global2.a.a))), global1.a.c, ~select(firstLeadingBit(var_4), var_4, global2.c.x)).a);
    global0 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~select(vec3<u32>(4294967295u, 0u, 11495u), vec3<u32>(44953u, var_4.x, 1u), global2.c.ywz)), vec3<u32>(u_input.b, var_0.x, var_0.x), global2.a.a.x);
}

