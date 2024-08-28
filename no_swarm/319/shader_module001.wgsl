struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(15910i, -1i, 41995i), vec3<u32>(4294967295u, 1u, 94460u), vec2<i32>(0i, 1i), vec2<f32>(689f, 951f), vec3<f32>(-111f, 574f, -1126f)), -110f, vec3<i32>(3346i, 4584i, 0i), true, vec2<bool>(false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    var var_0 = select(!vec3<bool>(arg_1, !any(vec4<bool>(true, global1.e.x, global1.e.x, arg_1)), false), vec3<bool>(any(vec3<bool>(all(vec3<bool>(true, false, arg_1)), true, !arg_1)), global1.d, u_input.d.x > u_input.d.x), any(!global1.e));
    let var_1 = Struct_3(vec2<u32>(9761u, abs(_wgslsmith_mult_u32(8261u, 31443u))), false, 746f, Struct_1(u_input.b, ~vec3<u32>(global1.a.b.x, global1.a.b.x, u_input.d.x) ^ ~vec3<u32>(36002u, 53427u, global1.a.b.x), ~vec2<i32>(13018i, global1.c.x), vec2<f32>(-1349f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1525f * -1865f), -1673f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.e - vec3<f32>(arg_2.x, 1543f, arg_2.x))))), Struct_2(Struct_1(vec3<i32>(~global1.a.a.x, _wgslsmith_dot_vec3_i32(global1.c, arg_0), select(-1i, global1.c.x, global1.d)), ~u_input.d.zwz, u_input.b.yy, _wgslsmith_f_op_vec2_f32(arg_2.zz * vec2<f32>(global1.b, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(465f, 148f, -1259f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(164f, -459f, -1705f)), true))), _wgslsmith_f_op_f32(-global1.b), select(max(vec3<i32>(1i, -1i, u_input.c), u_input.b) << (vec3<u32>(4294967295u, 0u, 55146u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~vec3<i32>(global1.c.x, u_input.c, 1i), vec3<i32>(u_input.a, 0i, arg_0.x)), select(!vec3<bool>(var_0.x, true, global1.e.x), vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, global1.d), vec3<bool>(var_0.x, global1.d, true), vec3<bool>(false, false, false)))), !arg_1, !global1.e));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-383f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.x, var_1.e.b), global1.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.e.b), -2972f))) * arg_2);
    var var_3 = -vec2<i32>(max(u_input.b.x, u_input.c) | (i32(-1i) * -22553i), 11265i) ^ vec2<i32>(2147483647i, 20256i);
    let var_4 = var_1.e;
    return -787f;
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    global1 = arg_0.e;
    global1 = Struct_2(Struct_1(arg_0.d.a, ~(vec3<u32>(28517u, arg_0.a.x, 1u) & select(u_input.d.yzy, arg_0.d.b, vec3<bool>(global1.d, global1.e.x, global1.d))), select(vec2<i32>(~u_input.c, arg_0.e.a.a.x), firstLeadingBit(vec2<i32>(0i, -60468i)), select(vec2<bool>(true, arg_0.b), vec2<bool>(false, false), global1.e)), arg_0.e.a.e.zz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-690f - global1.a.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.d.x, global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1922f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, arg_0.d.e.x))), vec3<i32>(global1.a.a.x & _wgslsmith_mult_i32(-2147483647i, global1.a.c.x), ~u_input.c, arg_0.e.c.x), false, vec2<bool>(_wgslsmith_f_op_f32(step(-991f, _wgslsmith_f_op_f32(-arg_0.d.d.x))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b, global1.d, vec4<f32>(global1.a.d.x, arg_0.d.e.x, global1.b, -815f))), global1.a.d.x), arg_0.e.e.x));
    var var_0 = _wgslsmith_clamp_i32(u_input.a, countOneBits(u_input.b.x), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, -14942i), global1.a.a.x)) ^ -1i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_0.e.c.x, arg_0.e.c.x), global1.c.x, global1.a.a.x << (40448u % 32u)), min(global1.c, vec3<i32>(u_input.a, arg_0.e.a.c.x, u_input.b.x))), ~(global1.a.b << (vec3<u32>(global1.a.b.x, global1.a.b.x, 13778u) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, global1.a.b.x, 52020u), arg_0.e.a.b) % vec3<u32>(32u)), _wgslsmith_clamp_vec2_i32(u_input.b.xz, ~(~vec2<i32>(arg_0.e.c.x, global1.a.a.x)), vec2<i32>(-1i, ~global1.c.x)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a.a, arg_0.e.d, vec4<f32>(arg_0.e.b, 846f, -779f, global1.a.d.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b))), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d.d.x - 812f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -558f)), _wgslsmith_f_op_f32(-140f * global1.b))), -vec3<i32>(-56538i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.e.a.a.x, 15633i, 35449i), vec4<i32>(-1i, u_input.a, 1i, global1.c.x)), _wgslsmith_div_i32(2147483647i, u_input.a)) << (_wgslsmith_mod_vec3_u32(max(vec3<u32>(83240u, 6882u, arg_0.d.b.x), u_input.d.wzz ^ u_input.d.zxy), global1.a.b) % vec3<u32>(32u)), arg_0.b, vec2<bool>(false, global1.d));
    global1 = arg_0.e;
    return vec2<i32>(-1i) * -vec2<i32>(0i, 30808i);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(u_input.b, select(u_input.d.wyw, ~abs(global1.a.b) | vec3<u32>(arg_0.b.x, reverseBits(u_input.d.x), arg_0.b.x << (global1.a.b.x % 32u)), select(select(select(vec3<bool>(global1.d, false, global1.e.x), vec3<bool>(global1.d, false, false), false), select(vec3<bool>(global1.e.x, global1.e.x, true), vec3<bool>(global1.d, global1.e.x, false), global1.e.x), false), !(!vec3<bool>(global1.d, false, true)), select(!vec3<bool>(false, global1.d, false), vec3<bool>(true, true, global1.e.x), !vec3<bool>(false, false, global1.d)))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c.x, 0i) | vec2<i32>(arg_0.a.x, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(global1.a.c.x, 21573i), vec2<i32>(global1.a.c.x, arg_0.c.x))) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(11010u, global1.a.b.x), vec2<u32>(31296u, 77217u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(func_2(Struct_3(arg_0.b.xy, true, global1.a.d.x, Struct_1(vec3<i32>(9207i, -1i, 24632i), u_input.d.zzy, vec2<i32>(arg_0.c.x, 2147483647i), vec2<f32>(216f, -864f), global1.a.e), Struct_2(global1.a, arg_0.e.x, vec3<i32>(21554i, arg_0.a.x, arg_0.a.x), global1.d, global1.e))), (u_input.b.yz ^ vec2<i32>(11748i, 1i)) ^ select(vec2<i32>(global1.a.a.x, arg_0.a.x), vec2<i32>(u_input.c, 1i), global1.d))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(global1.a.d)), _wgslsmith_f_op_vec2_f32(floor(global1.a.d)))), global1.a.e.zz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.e))))));
    global0 = ~(-19507i);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(9023u, 5695u), ~select(~var_0.b.x, global1.a.b.x, any(vec4<bool>(false, false, false, false))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(476f, -711f), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.e.x, global1.b), var_0.d))), vec2<f32>(global1.b, 1524f), global1.e.x)), var_0.d, false));
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(var_0.a, u_input.b, -abs(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(var_0.c.x, global1.a.a.x, global1.a.c.x)))), vec3<u32>(5478u >> (~global1.a.b.x % 32u), _wgslsmith_clamp_u32(arg_0.b.x, max(countOneBits(4294967295u), 51754u), 36224u), u_input.d.x), vec2<i32>(-4681i, 1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.e.x, var_0.e.x), var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.d.x))))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-911f, _wgslsmith_f_op_f32(-var_2.x))))), -577f, -747f));
    return 1075f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(-76086i, global1.c.x, global1.a.c.x), vec3<u32>(4294967295u, global1.a.b.x, global1.a.b.x), vec2<i32>(0i, -42275i), vec2<f32>(-148f, global1.b), global1.a.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b))), all(select(!vec3<bool>(global1.d, global1.d, true), select(vec3<bool>(false, global1.d, true), vec3<bool>(true, true, global1.e.x), false), global1.d)))), _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -27127i, -(~global1.a.c.x), ~_wgslsmith_add_i32(u_input.c, global1.c.x)), ~(~u_input.b ^ vec3<i32>(global1.c.x, global1.a.c.x, global1.c.x))), false, global1.e);
    var var_0 = vec3<bool>(global1.e.x, global1.d, global1.e.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.e.x, global1.b, -493f, global1.b) - vec4<f32>(1000f, -1000f, global1.a.d.x, 220f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, global1.b, global1.a.d.x, 417f) * vec4<f32>(-279f, -462f, global1.a.d.x, 816f)))));
    var var_2 = Struct_3(vec2<u32>(~global1.a.b.x, u_input.d.x << (_wgslsmith_mult_u32(48625u & u_input.d.x, 60214u) % 32u)), false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(global1.c.x, global1.c.x, -2147483647i), ~vec3<u32>(u_input.d.x, 0u, global1.a.b.x), global1.a.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -826f)), _wgslsmith_div_vec3_f32(var_1.wzy, var_1.xwz)))))), global1.a, Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1.a))), global1.a.a, any(var_0.zx), var_0.xx));
    var var_3 = true;
    let var_4 = _wgslsmith_add_vec4_u32(u_input.d, ~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_2.e.a.e), global1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_2.e.a)) * var_1.x), -1000f), var_2.d.a);
}

