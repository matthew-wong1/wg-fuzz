struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    var var_0 = select(vec2<bool>(_wgslsmith_mod_u32(0u, ~global0.e.x) > u_input.a.x, !global0.c.a), vec2<bool>(global0.c.a, arg_0.x != _wgslsmith_f_op_f32(-arg_0.x)), !select(vec2<bool>(false, any(vec3<bool>(global0.c.a, true, false))), !vec2<bool>(global0.c.a, true), true));
    global0 = Struct_3(Struct_2(var_0.x), -57754i, global0.c, global0.d, countOneBits(global0.e));
    var var_1 = global0.c.a;
    return reverseBits(abs(reverseBits((vec3<u32>(u_input.a.x, 34152u, 4348u) | global0.e.xxy) & ~vec3<u32>(0u, 4294967295u, u_input.b))));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> i32 {
    let var_0 = -1i;
    var var_1 = arg_1;
    let var_2 = Struct_2(!(!all(select(vec4<bool>(true, arg_1.c.a, false, true), vec4<bool>(true, global0.a.a, var_1.c.a, true), vec4<bool>(var_1.c.a, false, global0.a.a, true)))));
    var var_3 = !vec2<bool>(!any(select(vec4<bool>(var_2.a, var_1.a.a, var_2.a, var_2.a), vec4<bool>(var_2.a, false, false, true), vec4<bool>(var_2.a, false, var_1.c.a, arg_1.c.a))), true);
    global0 = arg_1;
    return -(~(i32(-1i) * -2147483647i));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -349f);
    let var_1 = -1i;
    let var_2 = -(min(global1.wyx, ~min(vec3<i32>(global0.d.a, 0i, global0.b), global1.wzx)) & vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(4965i, u_input.c), vec2<i32>(global0.d.a, global0.b)), 26805i, global1.x));
    var var_3 = var_0;
    let var_4 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.e.x, ~global0.e.x, u_input.b), ~_wgslsmith_add_vec3_u32(global0.e.ywz, global0.e.yyw)) << (global0.e.wyw % vec3<u32>(32u));
    return Struct_4(Struct_3(global0.a, func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_4.x, 4294967295u), func_3(vec3<f32>(var_0, var_0, 273f))), Struct_3(Struct_2(true), abs(global1.x), global0.c, global0.d, global0.e)), Struct_2(true), Struct_1(_wgslsmith_clamp_i32(-var_2.x, global1.x, -460i), -2147483647i), global0.e), -(~var_1), any(vec2<bool>(global0.c.a, true)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(abs(var_0)))), true | !(false & all(vec2<bool>(true, global0.a.a))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32) -> Struct_3 {
    var var_0 = global0.c;
    var var_1 = arg_1;
    var var_2 = func_2();
    var var_3 = ~(~vec4<u32>(~31859u, _wgslsmith_add_u32(func_3(vec3<f32>(-335f, arg_1, var_2.d.x)).x, arg_2 << (u_input.b % 32u)), _wgslsmith_div_u32(~15833u, func_3(vec3<f32>(arg_1, 1122f, 736f)).x), ~arg_0.x ^ _wgslsmith_mod_u32(39224u, 4294967295u)));
    var var_4 = firstLeadingBit(-(~26822i));
    return func_2().a;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> i32 {
    return min(func_1(vec2<u32>(0u, ~(~0u)), arg_0, func_1(vec2<u32>(u_input.a.x, arg_1.e.x), arg_0, min(arg_1.e.x, 19500u)).e.x << (3237u % 32u)).b, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstTrailingBit(u_input.c);
    var var_1 = 6147u;
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(1i, global1.x, ~_wgslsmith_clamp_i32(reverseBits(-77319i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.b, global0.d.b, -15751i), global1.yzx), -global0.b), 14880i), vec4<i32>(global0.d.a, i32(-1i) * -58078i, -2147483647i, func_5(_wgslsmith_div_f32(-1342f, -1711f), func_1(u_input.a, 101f, 81624u), ~1i, 1i << (u_input.b % 32u))) << (~global0.e % vec4<u32>(32u)));
    global1 = var_2;
    global1 = var_2;
    global1 = -(~vec4<i32>(global0.d.b, func_4(~global0.e.x, func_2().a), ~u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(41871i, 0i, global1.x, var_0), vec4<i32>(-2147483647i, global1.x, var_0, 1i) | vec4<i32>(u_input.c, 6742i, u_input.c, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_2), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global0.e | global0.e, abs(vec4<u32>(global0.e.x, 1u, 38750u, u_input.a.x))), func_1(u_input.a, _wgslsmith_f_op_f32(step(883f, 1218f)), _wgslsmith_div_u32(global0.e.x, 1u)).e) | vec4<u32>(~(u_input.a.x | u_input.b), ~56051u, ~u_input.a.x, _wgslsmith_add_u32(min(9755u, u_input.b), func_3(vec3<f32>(-1369f, 983f, 1297f)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2277f, -645f))) + -1375f), ~_wgslsmith_sub_i32(-1i, func_1(firstTrailingBit(u_input.a), -1000f, 53630u).d.b));
}

