struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_4;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = arg_3.b;
    let var_1 = _wgslsmith_mult_i32(global1.b.b.c.c, -(-1i ^ ((-53990i << (arg_3.b.c.d % 32u)) ^ 6846i)));
    var var_2 = ~arg_2;
    global1 = Struct_4(global1.b.b.c, Struct_3(-arg_3.a, arg_3.b, -642f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(907f, global1.a.b)), _wgslsmith_f_op_f32(502f + 1008f))) - global1.b.c), global1.b.b, select(global1.e, vec4<bool>(false, arg_0.e.x, !(!var_0.c.a), all(select(vec3<bool>(arg_3.b.b.x, global1.e.x, true), arg_0.b.b.b, false))), !(!vec4<bool>(global1.a.a, var_0.b.x, global1.a.a, arg_0.b.b.b.x))));
    var_2 = ~reverseBits(arg_2);
    return ~(-(~_wgslsmith_div_i32(var_1, arg_3.a.x))) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 32141u), u_input.a) << (~vec2<u32>(arg_3.b.e.x, 1u) % vec2<u32>(32u)), ~countOneBits(var_0.e)), 11647u) % 32u);
}

fn func_2() -> Struct_4 {
    let var_0 = !all(global1.b.b.b);
    let var_1 = global1.d.c;
    global1 = Struct_4(Struct_1(all(global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-335f, _wgslsmith_f_op_f32(select(339f, global1.a.b, false))))), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.c.c, _wgslsmith_add_i32(13052i, 15601i), select(u_input.b, 1i, var_1.a), -2147483647i), select(vec4<i32>(-82071i, var_1.c, -45883i, global1.d.c.c), vec4<i32>(var_1.c, var_1.c, global1.b.b.c.c, 0i), vec4<bool>(false, var_1.a, true, false))), 4294967295u), Struct_3(~global1.b.a, Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -281f))), !(!vec3<bool>(var_1.a, true, false)), global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d.a, var_1.b, var_1.b, var_1.b), global1.d.d, var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 294f, -685f, global1.d.d.x))), u_input.a), _wgslsmith_f_op_f32(var_1.b - var_1.b)), _wgslsmith_f_op_f32(sign(-518f)), Struct_2(_wgslsmith_f_op_f32(trunc(global1.b.c)), global1.d.b, Struct_1(true, 812f, func_3(Struct_4(global1.b.b.c, Struct_3(vec3<i32>(u_input.b, 6723i, -37483i), Struct_2(-702f, vec3<bool>(false, global1.d.c.a, var_0), global1.b.b.c, global1.d.d, global1.d.e), -1094f), 1443f, global1.b.b, global1.e), _wgslsmith_f_op_f32(max(-818f, -1192f)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, 43473u), vec3<u32>(u_input.a.x, var_1.d, global1.d.c.d)), Struct_3(global1.b.a, Struct_2(-1857f, global1.b.b.b, global1.a, vec4<f32>(248f, var_1.b, 410f, global1.a.b), vec2<u32>(0u, u_input.a.x)), var_1.b)), global1.d.e.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d.d)), global1.d.d), min(min(vec2<u32>(var_1.d, 47461u), vec2<u32>(4294967295u, var_1.d)), ~u_input.a) << (~u_input.a % vec2<u32>(32u))), !(!global1.e));
    return Struct_4(Struct_1(true, -613f, func_3(Struct_4(Struct_1(var_1.a, var_1.b, -2147483647i, 8549u), global1.b, 480f, global1.d, vec4<bool>(var_0, var_0, var_0, var_1.a)), var_1.b, ~select(vec3<u32>(2468u, u_input.a.x, global1.b.b.c.d), vec3<u32>(44036u, 0u, 0u), global1.b.b.b), global1.b), abs(1u)), global1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-global1.b.b.d.x)), -261f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(-global1.d.d.x), !global1.d.b.x)) - 654f)), global1.d, vec4<bool>(true | any(select(vec3<bool>(global1.d.b.x, var_1.a, true), global1.b.b.b, var_1.a)), any(global1.b.b.b.xx), true, !(!any(global1.d.b))));
}

fn func_1() -> Struct_5 {
    global1 = func_2();
    global1 = func_2();
    global0 = _wgslsmith_dot_vec4_i32(reverseBits(~(~vec4<i32>(global1.a.c, -15609i, -12559i, 295i))), _wgslsmith_add_vec4_i32(~vec4<i32>(18394i, -13950i, 25511i, global1.d.c.c), ~vec4<i32>(global1.d.c.c, 0i, 16671i, -2147483647i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global1.d.c.d, global1.b.b.e.x, global1.d.c.d, u_input.a.x) << (vec4<u32>(global1.a.d, 4294967295u, u_input.a.x, global1.d.c.d) % vec4<u32>(32u)), ~vec4<u32>(global1.d.c.d, u_input.a.x, u_input.a.x, global1.a.d)) % vec4<u32>(32u))) & u_input.b;
    var var_0 = global1.b.b.c;
    global1 = Struct_4(global1.a, Struct_3(vec3<i32>(abs(47944i), reverseBits(~1i), 40961i), func_2().d, var_0.b), var_0.b, global1.d, select(!select(select(global1.e, vec4<bool>(var_0.a, false, var_0.a, var_0.a), true), global1.e, vec4<bool>(global1.e.x, global1.e.x, var_0.a, false)), global1.e, vec4<bool>(!any(vec2<bool>(var_0.a, true)), var_0.a, true, var_0.a)));
    return Struct_5(vec4<bool>(all(select(vec2<bool>(var_0.a, global1.a.a), vec2<bool>(global1.d.b.x, var_0.a), false)) && false, !select(true, all(vec3<bool>(global1.e.x, global1.a.a, var_0.a)), true), global1.e.x, !any(!vec2<bool>(true, var_0.a))), global1.d.c.c, 1f == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b.b.d.x + -1068f))), max(_wgslsmith_add_i32(var_0.c, _wgslsmith_mult_i32(52142i, -22860i)), _wgslsmith_sub_i32(64596i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, var_0.c, -28170i), max(vec4<i32>(var_0.c, -1i, var_0.c, 2147483647i), vec4<i32>(global1.a.c, -2147483647i, u_input.b, 0i))))));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: Struct_5) -> StorageBuffer {
    var var_0 = arg_2.a.x;
    let var_1 = func_1();
    var var_2 = global1.b.a;
    global1 = func_2();
    let var_3 = global1.d;
    return StorageBuffer(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.d, global1.b.b.e.x, var_3.e.x, global1.d.e.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 58375u, 17913u, global1.a.d), vec4<u32>(global1.a.d, 27632u, var_3.c.d, 4294967295u))) | (~vec4<u32>(85745u, var_3.e.x, 24274u, 18775u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global1.d.c.d, 0u, global1.d.c.d, 33825u), vec4<u32>(var_3.e.x, var_3.e.x, 52774u, 61234u)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~vec4<u32>(global1.b.b.e.x, u_input.a.x, 60917u, 4294967295u) >> ((vec4<u32>(63960u, 0u, 4294967295u, 4294967295u) ^ vec4<u32>(0u, global1.d.c.d, 4294967295u, 30447u)) % vec4<u32>(32u)), ~vec4<u32>(67686u, var_3.c.d, 0u, 13961u)), !func_2().a.a != any(arg_2.a.xxz)), var_3.e.x, ~(~_wgslsmith_sub_u32(0u, ~u_input.a.x)), -(~func_2().b.a.zy));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1347f), Struct_5(global1.e, ~(~422i), !global1.b.b.c.a, -_wgslsmith_add_i32(1i, reverseBits(u_input.b))));
}

