struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec3<f32> {
    global1 = array<Struct_2, 28>();
    let var_0 = reverseBits(vec4<i32>(_wgslsmith_clamp_i32(global0.x, i32(-1i) * -1i, _wgslsmith_div_i32(-1i, global0.x)), _wgslsmith_clamp_i32(u_input.a, _wgslsmith_div_i32(-414i, 4135i) << (1u % 32u), global0.x), max(global0.x, reverseBits(-4949i)), -2147483647i));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -37343i, min(-2147483647i, arg_0.x), ~_wgslsmith_mod_i32(~u_input.a, arg_0.x & u_input.a)), countOneBits((vec4<i32>(var_0.x, -58245i, 11387i, 18732i) >> (vec4<u32>(797u, 41036u, 0u, arg_1) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, global0.x, 4423i, 48539i), var_0)) >> (vec4<u32>(firstTrailingBit(abs(arg_1)), ~_wgslsmith_add_u32(arg_1, 4294967295u), ~48075u, 1u) % vec4<u32>(32u)));
    let var_2 = vec4<f32>(676f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(570f)) + -778f), -913f))), -1745f, -1047f);
    var var_3 = var_2.x;
    return _wgslsmith_f_op_vec3_f32(var_2.yzw * vec3<f32>(var_2.x, 771f, _wgslsmith_div_f32(var_2.x, -1578f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> u32 {
    var var_0 = arg_1.c;
    let var_1 = _wgslsmith_mult_i32(1i, -u_input.a);
    let var_2 = _wgslsmith_mult_u32(firstLeadingBit(6550u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(arg_2.c.b.zw) ^ abs(vec2<u32>(arg_1.b.x, 0u)), countOneBits(~vec2<u32>(arg_1.b.x, arg_2.c.c.b)), _wgslsmith_add_vec2_u32(max(arg_0.b.zw, arg_1.b.yx), abs(arg_1.b.yw))), firstLeadingBit(~_wgslsmith_add_vec2_u32(arg_2.c.b.wy, arg_2.c.b.yw))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(-1i) * -max(vec3<i32>(global0.x, -2147483647i, 0i), vec3<i32>(arg_1.c.a.x, 1i, arg_1.c.c)), abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.c.b, 24706u), firstLeadingBit(arg_1.b.x))))), vec4<i32>(i32(-1i) * -u_input.a, _wgslsmith_sub_i32(~u_input.a, _wgslsmith_mod_i32(u_input.a, var_0.c)), arg_0.c.c, -35066i) | ~select(firstLeadingBit(var_0.a), select(arg_0.c.a, vec4<i32>(arg_1.c.a.x, 1302i, 0i, -2147483647i), true), true), Struct_2(select(_wgslsmith_dot_vec3_i32(arg_0.c.a.xzy, vec3<i32>(1i, -24914i, var_1) & vec3<i32>(var_1, 1i, arg_2.c.c.a.x)), ~global0.x, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), _wgslsmith_div_vec4_u32(arg_0.b, arg_0.b), Struct_1(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, -1i, 25382i, var_1), firstLeadingBit(vec4<i32>(-1i, var_1, 0i, var_1))), _wgslsmith_mod_u32(arg_2.c.b.x, countOneBits(1121u)), 0i)), global0.x);
    global0 = -(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-1i, 2147483647i)), vec2<i32>(global0.x, -1i), vec2<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, arg_2.c.a))) ^ vec2<i32>(1i >> (~var_0.b % 32u), 1i));
    return 0u;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(-(~(vec4<i32>(2147483647i, global0.x, u_input.a, u_input.a) << (~vec4<u32>(4294967295u, 1u, 0u, 3876u) % vec4<u32>(32u)))), _wgslsmith_mult_u32(~1u >> (~func_2(Struct_2(-1i, vec4<u32>(19684u, 1u, 0u, 78179u), Struct_1(vec4<i32>(2147483647i, -2147483647i, 0i, -7114i), 16798u, global0.x)), Struct_2(0i, vec4<u32>(16240u, 27434u, 35753u, 1u), Struct_1(vec4<i32>(1i, 0i, -2147483647i, u_input.a), 40496u, 1i)), Struct_3(vec3<f32>(446f, 1621f, -1713f), vec4<i32>(u_input.a, 38869i, global0.x, -35418i), Struct_2(global0.x, vec4<u32>(4294967295u, 80621u, 85788u, 23635u), Struct_1(vec4<i32>(-26874i, 7881i, u_input.a, -2147483647i), 1u, -24522i)), -3361i), vec4<i32>(u_input.a, -1i, global0.x, 5881i)) % 32u), ~reverseBits(1u)), -1i >> (0u % 32u));
    var var_1 = vec2<bool>(true, -u_input.a <= 1i);
    let var_2 = vec2<bool>(true, true);
    var var_3 = 13232u;
    let var_4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(208f * -1132f)))), 983f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1249f)))))))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_4.x)), _wgslsmith_f_op_f32(step(240f, -1427f)), _wgslsmith_f_op_f32(ceil(725f))) - vec3<f32>(_wgslsmith_f_op_f32(var_4.x * var_4.x), _wgslsmith_f_op_f32(sign(-320f)), 1674f)) + vec3<f32>(var_4.x, 1010f, -1719f)), vec4<i32>(1i, 20044i, global0.x, global0.x), Struct_2(_wgslsmith_mult_i32(abs(var_0.a.x), _wgslsmith_mod_i32(var_0.c, 0i)) ^ u_input.a, ~abs(vec4<u32>(1u, 1u, 4294967295u, 1786u)), var_0), ~global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_2, 28>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a), vec4<i32>(_wgslsmith_add_i32(min(u_input.a ^ -1i, ~(-858i)), u_input.a), -reverseBits(-var_0.c.c.c), abs(-31194i), global0.x | -1i), func_1().c, _wgslsmith_div_i32(firstLeadingBit(19969i), global0.x));
    var var_2 = var_1.d;
    let var_3 = true;
    global1 = array<Struct_2, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-841f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.x, 1098f)) - var_1.a.x)) + -1969f), ~4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(var_0.b.wzy, 33710u)).x, var_1.a.x) * vec2<f32>(var_0.a.x, var_0.a.x))), -4989i, abs(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.d, ~var_0.b.x), global0.x, reverseBits(var_0.b.x))));
}

