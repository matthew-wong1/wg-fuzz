struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(14421u, 4294967295u), false, vec3<f32>(630f, 905f, -1699f)));

var<private> global1: f32 = 1789f;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>) -> i32 {
    global2 = _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(75780u), 1u, arg_1.x), vec3<u32>(1577u, global0.a.a.x, u_input.d) << (select(vec3<u32>(global2.x, arg_1.x, ~global2.x), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(4294967295u, 0u, 40026u)), arg_0) % vec3<u32>(32u)));
    let var_0 = global0.a;
    let var_1 = min(vec4<i32>(-1i, -_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x), -55980i, min(reverseBits(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, -2147483647i & u_input.a.x))), vec4<i32>(-2147483647i, -u_input.a.x, 2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 8787i, 15190i, u_input.a.x), vec4<bool>(var_0.b, true, var_0.b, true))), -2147483647i << ((global2.x ^ var_0.a.x) % 32u))));
    var var_2 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(~global2.x, arg_1.x, 4294967295u)), u_input.b);
    let var_3 = ~(global2.x & u_input.d);
    return u_input.a.x;
}

fn func_2(arg_0: vec4<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.a.c, global0.a.c)));
    var var_1 = reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(82468u, 4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), vec3<u32>(53839u, global2.x, 66897u >> (global0.a.a.x % 32u))), 4294967295u));
    var var_2 = _wgslsmith_mult_i32(func_3(vec3<bool>(false, global0.a.b, max(-13458i, u_input.a.x) >= -50708i), vec2<u32>(1u, max(_wgslsmith_clamp_u32(global0.a.a.x, 22840u, global2.x), global2.x ^ 0u))), min(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(4925i, -5704i, -82960i, arg_0.x), ~arg_0), firstLeadingBit(arg_0)), _wgslsmith_dot_vec2_i32(~u_input.a.zz & select(vec2<i32>(3162i, u_input.a.x), u_input.a.yy, true), (u_input.a.yz ^ u_input.a.xy) | vec2<i32>(arg_0.x, arg_0.x))));
    var_2 = abs(arg_0.x);
    global1 = _wgslsmith_f_op_f32(-var_0.x);
    return _wgslsmith_div_vec2_i32(~vec2<i32>(~_wgslsmith_sub_i32(1i, u_input.a.x), ~2147483647i), ~vec2<i32>(arg_0.x, u_input.a.x));
}

fn func_1(arg_0: i32) -> Struct_5 {
    let var_0 = firstLeadingBit(~select(vec4<i32>(arg_0, arg_0, ~2147483647i, arg_0 | u_input.a.x), vec4<i32>(arg_0, u_input.a.x, 0i >> (u_input.d % 32u), _wgslsmith_div_i32(-14101i, arg_0)), any(!vec4<bool>(global0.a.b, global0.a.b, false, false))));
    let var_1 = vec4<f32>(-1300f, _wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_f_op_f32(ceil(704f)), global0.a.c.x);
    var var_2 = func_2(var_0) << (~_wgslsmith_mod_vec2_u32(global2.zx, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b.xz)) % vec2<u32>(32u));
    var var_3 = !all(select(vec3<bool>(false, !global0.a.b, !global0.a.b), vec3<bool>(global0.a.b, global0.a.b && false, false), true));
    var var_4 = global0.a.c.x;
    return Struct_5(Struct_1(~min(global2.yy, _wgslsmith_clamp_vec2_u32(u_input.b.zz, vec2<u32>(1u, 7667u), vec2<u32>(global0.a.a.x, 47006u))), false, vec3<f32>(-1000f, global0.a.c.x, global0.a.c.x)), Struct_4(Struct_2(global0.a), ~vec3<u32>(~4294967295u, 0u, 1u ^ global0.a.a.x), var_1.x, var_0.x >> (~1u % 32u)), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(638f + 979f)));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0)));
    var var_1 = -u_input.a.x;
    let var_2 = func_1(i32(-1i) * -53309i);
    global3 = array<Struct_1, 5>();
    var var_3 = true;
    global2 = var_2.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.a.c, _wgslsmith_add_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(u_input.a << (u_input.b % vec3<u32>(32u)), u_input.a & u_input.a, _wgslsmith_mod_vec3_i32(u_input.a, u_input.a))), _wgslsmith_mult_vec3_i32(u_input.a, min(u_input.a, vec3<i32>(var_2.b.d, 24508i, u_input.a.x)) >> (~vec3<u32>(var_2.b.b.x, u_input.d, u_input.d) % vec3<u32>(32u)))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(46188u, 6037u, _wgslsmith_clamp_u32(var_2.b.b.x << (17812u % 32u), var_2.b.b.x, global0.a.a.x)), ~(select(global2.x, global2.x, global0.a.b) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 46939u), global0.a.a) % 32u))));
}

