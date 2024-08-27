struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, 13891i), vec2<i32>(-28107i, 0i), vec3<bool>(false, false, true), false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = ~vec3<u32>(u_input.d.x, ~u_input.c.x, ~_wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(u_input.d.x, 0u, 1u)));
    let var_1 = vec4<bool>(false, global1.a.c.x, all(vec4<bool>(global1.a.d, global1.a.d, false, arg_0)), _wgslsmith_div_u32(u_input.c.x, u_input.d.x) > 20730u);
    let var_2 = 4294967295u;
    global0 = array<vec4<f32>, 19>();
    let var_3 = arg_2;
    return _wgslsmith_f_op_f32(607f - _wgslsmith_div_f32(-120f, -471f)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)), _wgslsmith_f_op_f32(f32(-1f) * -704f))), 1f));
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(global1.a);
    var var_0 = any(!vec2<bool>(all(global1.a.c), !func_3(global1.a.c.x, u_input.a.x, Struct_2(global1.a))));
    var var_1 = Struct_2(global1.a);
    var var_2 = Struct_1(-(select(-vec3<i32>(var_1.a.b.x, 1i, -5914i), var_1.a.a, !var_1.a.c) | vec3<i32>(var_1.a.a.x, _wgslsmith_sub_i32(2147483647i, u_input.a.x), 0i)), var_1.a.a.yz, !vec3<bool>(!var_1.a.d, true, var_1.a.c.x), false);
    return var_1.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-618f, -367f)))), -192f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - -317f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1006f, 635f, 921f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1190f, 1061f, -529f))) - vec3<f32>(_wgslsmith_f_op_f32(826f + 572f), -253f, -500f)), !global1.a.c.x)), vec3<f32>(_wgslsmith_f_op_f32(select(-382f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1601f, -1000f)))), !global1.a.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-721f, _wgslsmith_f_op_f32(-2092f + 316f)))), 1134f)));
    let var_2 = Struct_2(Struct_1(vec3<i32>(global1.a.b.x, _wgslsmith_mult_i32(8984i, _wgslsmith_dot_vec3_i32(u_input.a.wyx, global1.a.a)), arg_1.a.a.x), global1.a.b | reverseBits(var_0.b | vec2<i32>(u_input.b, 1i)), arg_1.a.c, global1.a.c.x));
    global1 = Struct_2(Struct_1(abs(~_wgslsmith_add_vec3_i32(var_2.a.a, var_2.a.a)), vec2<i32>(-global1.a.a.x >> (14982u % 32u), global1.a.a.x ^ arg_1.a.b.x), arg_1.a.c, !(!global1.a.d)));
    global1 = var_2;
    return !select(vec3<bool>(any(!vec3<bool>(var_0.d, false, true)), (2068f != var_1.x) | func_2().c.x, true), var_2.a.c, !global1.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1283f;
    global1 = Struct_2(Struct_1(-vec3<i32>(-25132i, u_input.b, global1.a.b.x), vec2<i32>(global1.a.a.x, u_input.b), vec3<bool>(true, all(func_1(global1.a.b, Struct_2(Struct_1(vec3<i32>(66332i, 1i, global1.a.b.x), global1.a.b, global1.a.c, global1.a.d)))), func_1(-global1.a.b, Struct_2(Struct_1(vec3<i32>(-4747i, global1.a.b.x, global1.a.b.x), vec2<i32>(global1.a.b.x, 18546i), vec3<bool>(global1.a.c.x, true, false), global1.a.d))).x), global1.a.d && !func_3(global1.a.d, 4124i, Struct_2(Struct_1(vec3<i32>(global1.a.a.x, -2147483647i, global1.a.b.x), global1.a.b, global1.a.c, global1.a.d)))));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(1u, u_input.c.x), firstLeadingBit(_wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_mod_u32(u_input.d.x, 1u)) ^ firstTrailingBit(u_input.c.x)));
    global1 = Struct_2(global1.a);
    var var_2 = -146f;
    var var_3 = u_input.c;
    var var_4 = Struct_2(Struct_1(~vec3<i32>(-2147483647i, 8119i, _wgslsmith_mult_i32(1i, 0i)), ~vec2<i32>(-2147483647i, func_2().b.x), vec3<bool>(true, func_2().c.x, global1.a.d), (~u_input.d.x >> (47686u % 32u)) != ~reverseBits(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(182f, _wgslsmith_div_f32(923f, 2276f))), u_input.c & u_input.c, ~(-firstLeadingBit(vec4<i32>(45618i, 1i, -8241i, -11949i)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(49497u, var_1.x, 66844u, u_input.c.x), vec4<u32>(var_1.x, u_input.c.x, u_input.c.x, var_3.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 1u, var_3.x, u_input.d.x), vec4<u32>(0u, 102640u, var_1.x, u_input.d.x), vec4<u32>(16236u, 0u, 12462u, 1u))) % vec4<u32>(32u))), select(u_input.c.yz, var_1, false & !global1.a.d));
}

