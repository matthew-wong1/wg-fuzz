struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5469u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = 59413u;
    var var_1 = u_input.d;
    var_1 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(26387u, u_input.a.x, 56039u))), vec3<u32>(~(4294967295u | u_input.d), u_input.a.x, u_input.a.x)) ^ ~(~select(4294967295u, ~u_input.d, true));
    global0 = select(firstTrailingBit(63532u), _wgslsmith_sub_u32(~u_input.a.x | ~u_input.d, countOneBits(u_input.a.x)), all(vec4<bool>(!all(vec4<bool>(false, true, false, false)), ~arg_0 == ~1i, false, true)));
    var_1 = 12925u;
    return 1i;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = max(~_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(arg_0.b, arg_0.b), abs(~vec3<u32>(u_input.d, u_input.a.x, u_input.a.x))), firstLeadingBit(arg_3.c.b));
    global0 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_3.a.b.x, 0u, _wgslsmith_add_u32(59974u, u_input.d))), ~reverseBits(~vec3<u32>(arg_0.b.x, 11485u, u_input.d)));
    var var_1 = 12178i <= (-6315i & ~(-u_input.b));
    var_0 = arg_3.c.b;
    var_1 = all(select(select(select(select(vec4<bool>(arg_2, arg_3.a.e.x, arg_0.e.x, true), vec4<bool>(arg_3.c.e.x, true, arg_3.a.e.x, true), vec4<bool>(false, false, arg_0.e.x, false)), vec4<bool>(arg_3.b.c.x, false, arg_3.b.c.x, true), true), !(!vec4<bool>(arg_3.a.c.x, true, false, true)), arg_0.c.x), select(select(vec4<bool>(arg_2, arg_3.c.e.x, false, arg_0.c.x), !vec4<bool>(arg_0.e.x, true, true, arg_2), !vec4<bool>(true, true, arg_3.c.e.x, arg_2)), !select(vec4<bool>(true, arg_3.c.e.x, false, true), vec4<bool>(false, true, arg_0.e.x, arg_3.c.e.x), arg_2), arg_0.c.x), select(select(vec4<bool>(arg_3.c.e.x, arg_3.a.c.x, true, true), vec4<bool>(false, false, arg_2, arg_2), false), vec4<bool>(true, -2147483647i <= u_input.c.x, true, true), all(!vec3<bool>(arg_0.e.x, false, arg_2)))));
    return 0i;
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = Struct_1(vec3<i32>(func_3(Struct_1(-vec3<i32>(arg_0, u_input.b, u_input.c.x), reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec3<bool>(true, false, true), vec4<u32>(u_input.a.x, u_input.d, 16405u, 0u), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), max(func_2(2147483647i), u_input.c.x), _wgslsmith_dot_vec3_i32(u_input.c.xwz, vec3<i32>(u_input.b, -1i, 59852i)) > ~(-53230i), Struct_2(Struct_1(vec3<i32>(0i, u_input.c.x, arg_0), vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(true, true, true), vec4<u32>(1u, 4294967295u, u_input.a.x, 4294967295u), vec2<bool>(true, false)), Struct_1(u_input.c.zxz, vec3<u32>(0u, u_input.a.x, 0u), vec3<bool>(true, false, true), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 12412u), vec2<bool>(false, false)), Struct_1(u_input.c.zyy, vec3<u32>(u_input.a.x, 53015u, 25543u), vec3<bool>(false, true, true), vec4<u32>(46451u, u_input.a.x, 46931u, 81858u), vec2<bool>(false, true)), _wgslsmith_f_op_f32(1224f - 434f))), u_input.b, u_input.c.x), ~(~((vec3<u32>(0u, u_input.a.x, u_input.a.x) | vec3<u32>(u_input.a.x, 1439u, 25924u)) << (select(vec3<u32>(7384u, u_input.d, u_input.d), vec3<u32>(u_input.a.x, 39683u, 13465u), true) % vec3<u32>(32u)))), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, 29239u, 61219u, u_input.a.x) | ~vec4<u32>(101974u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(23255u, 1u, 13197u ^ u_input.d, _wgslsmith_sub_u32(31226u, u_input.a.x)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, 25135u, u_input.a.x, u_input.d)), ~vec4<u32>(1u, u_input.d, u_input.a.x, u_input.d)) << (min(vec4<u32>(u_input.d, 104083u, u_input.d, u_input.a.x) ^ vec4<u32>(7770u, u_input.d, u_input.a.x, 4662u), ~vec4<u32>(u_input.a.x, 29286u, u_input.d, 7198u)) % vec4<u32>(32u))), vec2<bool>(true, true));
    return select(_wgslsmith_clamp_u32(65765u | (var_0.b.x & u_input.d), 1u, var_0.b.x) <= ~(~firstTrailingBit(var_0.b.x)), false, var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~44141i;
    let var_1 = -1383i | var_0;
    var var_2 = Struct_1(~(reverseBits(u_input.c.yyz) & ~abs(u_input.c.wxy)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 20686u, 1u), ~vec3<u32>(4294967295u, u_input.d, 34515u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.a.x), vec3<u32>(u_input.d, 4294967295u, u_input.d)), u_input.a.x << (u_input.d % 32u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(max(u_input.a.x, u_input.d), 1u, _wgslsmith_mod_u32(u_input.d, 4294967295u)), min(vec3<u32>(u_input.d, u_input.d, 12177u), vec3<u32>(86634u, 1u, 24880u)) & max(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(1u, 26981u, 23757u))) % vec3<u32>(32u)), select(!vec3<bool>(true, true, func_1(var_0)), vec3<bool>(false, !any(vec2<bool>(false, true)), func_1(-2147483647i)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec4<u32>(34862u & u_input.d, u_input.a.x, abs(u_input.d) & ~4294967295u, ~4294967295u), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), false), countOneBits(_wgslsmith_clamp_i32(-4066i, var_0, -2147483647i)) > abs(2147483647i)));
    var var_3 = Struct_2(Struct_1(~(~(-u_input.c.yww)), _wgslsmith_mod_vec3_u32(var_2.d.xxy, ~vec3<u32>(var_2.d.x, 0u, u_input.a.x)), vec3<bool>(_wgslsmith_f_op_f32(sign(-1308f)) == _wgslsmith_f_op_f32(min(1000f, -1000f)), func_1(func_2(u_input.c.x)), true), vec4<u32>(~72204u ^ ~u_input.d, u_input.a.x, u_input.d, 4294967295u), !(!vec2<bool>(var_2.e.x, true))), Struct_1(-var_2.a, vec3<u32>(var_2.b.x, ~_wgslsmith_dot_vec2_u32(var_2.d.wx, vec2<u32>(36323u, 0u)), ~_wgslsmith_dot_vec4_u32(var_2.d, vec4<u32>(var_2.b.x, 0u, u_input.d, u_input.a.x))), select(!vec3<bool>(var_2.c.x, false, var_2.e.x), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(var_2.e.x, false, var_2.e.x)), false, any(vec4<bool>(var_2.c.x, false, var_2.c.x, var_2.c.x)))), ~vec4<u32>(abs(9078u), _wgslsmith_mult_u32(u_input.d, 1u), 1u, var_2.d.x), var_2.e), Struct_1(~select(vec3<i32>(var_2.a.x, var_0, u_input.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.b), vec3<i32>(1i, -2147483647i, var_1)), var_2.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.d.x, 2917u, u_input.d), ~vec3<u32>(1u, var_2.d.x, 11590u)) & var_2.b, var_2.c, vec4<u32>(u_input.d, ~(~u_input.a.x), var_2.d.x, _wgslsmith_sub_u32(2322u, 1u)), select(!select(var_2.c.yx, vec2<bool>(true, var_2.c.x), true), select(!var_2.e, var_2.e, var_2.c.zz), !var_2.e.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(1068f, _wgslsmith_f_op_f32(f32(-1f) * -413f))))));
    var var_4 = 388f;
    let var_5 = var_2.c.x;
    let var_6 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.d.xw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-920f + -1000f), -639f), abs(_wgslsmith_mod_u32(~select(17786u, 4294967295u, var_3.b.e.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_2.d.zzy, vec3<u32>(1u, var_2.d.x, 1u)), ~var_2.d.zwy))));
}

