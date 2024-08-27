struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: i32 = 1i;

var<private> global2: Struct_4 = Struct_4(85616u, Struct_1(vec2<bool>(false, true), vec3<f32>(107f, -1823f, 971f)), vec4<bool>(false, false, true, true), vec3<u32>(36960u, 20926u, 11255u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = !(!global2.b.a.x);
    global2 = Struct_4(~4294967295u, Struct_1(!(!select(global2.b.a, vec2<bool>(true, false), global2.c.yy)), vec3<f32>(-2096f, _wgslsmith_f_op_f32(trunc(-1343f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1491f + arg_0)))), select(select(vec4<bool>(false, true, any(vec4<bool>(true, true, true, false)), true), global2.c, vec4<bool>(true, any(global2.c), global2.b.a.x, any(vec4<bool>(global2.c.x, true, global2.b.a.x, global2.c.x)))), !global2.c, false), vec3<u32>(~min(global2.d.x, u_input.c.x), arg_2.x, u_input.a) | ~abs(u_input.c));
    global2 = Struct_4(u_input.c.x, global2.b, vec4<bool>(!all(!global2.c), _wgslsmith_f_op_f32(step(-969f, _wgslsmith_f_op_f32(global2.b.b.x * global2.b.b.x))) >= 1037f, false, select(!all(global2.b.a), select(true, !global2.b.a.x, true), var_0)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, global2.d.x), select(arg_2.x, u_input.a, false)) & 1u, global2.d.x, 41912u));
    let var_1 = _wgslsmith_sub_u32(17348u, u_input.a);
    let var_2 = vec2<i32>(arg_1.x, -1i);
    return -1i;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5) -> Struct_3 {
    let var_0 = arg_0;
    global1 = -(i32(-1i) * -(~u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.b.x - global2.b.b.x)))) - global2.b.b.x);
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(func_3(_wgslsmith_f_op_f32(max(global2.b.b.x, 1041f)), min(vec2<i32>(arg_0.b.x, arg_1.c.x), arg_0.b.zy), select(vec4<u32>(0u, 14400u, 0u, arg_0.a), vec4<u32>(0u, 1u, arg_1.b, global2.a), global2.c)), func_3(_wgslsmith_f_op_f32(-534f + global2.b.b.x), vec2<i32>(arg_0.b.x, -2058i), ~vec4<u32>(global2.d.x, global2.d.x, 4294967295u, var_0.a))) << (_wgslsmith_mult_vec2_u32(~select(u_input.c.zy, vec2<u32>(arg_1.b, arg_1.b), vec2<bool>(true, arg_1.a.x)), countOneBits(_wgslsmith_sub_vec2_u32(u_input.c.zx, vec2<u32>(u_input.c.x, u_input.c.x)))) % vec2<u32>(32u)), vec2<i32>(1i, -(global0.x ^ 18066i)));
    global2 = Struct_4(~1u, Struct_1(vec2<bool>(4294967295u != (arg_1.b & u_input.a), !(arg_1.a.x == arg_1.a.x)), global2.b.b), !global2.c, vec3<u32>(_wgslsmith_dot_vec3_u32(global2.d, u_input.c), abs(var_0.a ^ 131788u) >> (var_0.a % 32u), var_0.a));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> vec3<u32> {
    global2 = Struct_4(_wgslsmith_add_u32(15308u, arg_3.a), global2.b, vec4<bool>(any(!(!global2.c)), global2.c.x, ~41980u == ~(~global2.d.x), !(!global2.c.x) || !global2.c.x), global2.d);
    let var_0 = Struct_5(!global2.c.zzx, ~(~arg_2), -vec4<i32>(abs(arg_3.b.x) >> (31446u % 32u), firstTrailingBit(u_input.b.x), ~countOneBits(u_input.b.x), min(_wgslsmith_div_i32(-416i, global0.x), -u_input.b.x)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -808f), vec2<i32>(-(19398i & arg_1.b.x), -28039i), _wgslsmith_mult_vec4_u32(~vec4<u32>(16965u, u_input.c.x, 40729u, arg_2), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.a, 4294967295u, 75935u, arg_3.a) >> (vec4<u32>(1u, arg_3.a, u_input.c.x, u_input.a) % vec4<u32>(32u)), vec4<u32>(global2.d.x, u_input.a, 7370u, 1u), ~vec4<u32>(13186u, arg_2, 6116u, 0u)))));
    var var_1 = global2.b;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(max(global2.b.b.x, 1531f))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b.x) * global2.b.b.x)))));
    var var_3 = var_1.b;
    return global2.d;
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_5 {
    return Struct_5(!(!(!select(vec3<bool>(true, false, global2.b.a.x), global2.c.ywx, false))), ~(~arg_1), reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, global0.x, 2147483647i), -vec4<i32>(-1i, u_input.b.x, global0.x, 2147483647i)), 22178i >> (~u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x) & vec2<i32>(u_input.b.x, global0.x), vec2<i32>(-4223i, u_input.b.x)), -2147483647i)), u_input.b.x);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = func_5(-594f, _wgslsmith_dot_vec3_u32(u_input.c, abs(vec3<u32>(global2.a, 1u, 183912u))) & _wgslsmith_dot_vec3_u32(func_4(func_2(Struct_3(62475u, vec4<i32>(-30147i, arg_0, u_input.b.x, u_input.b.x)), Struct_5(vec3<bool>(false, false, global2.b.a.x), 0u, vec4<i32>(-1i, -20911i, arg_0, 62799i), global0.x)), func_2(Struct_3(1518u, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 22457i)), Struct_5(global2.c.ywx, global2.a, vec4<i32>(arg_0, arg_0, -23763i, u_input.b.x), arg_0)), u_input.c.x, Struct_3(u_input.c.x, vec4<i32>(33000i, u_input.b.x, -36298i, u_input.b.x))), ~vec3<u32>(global2.a, global2.a, 1u)));
    var var_1 = vec3<f32>(global2.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1612f)))), _wgslsmith_f_op_f32(-global2.b.b.x));
    var var_2 = -_wgslsmith_mod_i32(~(-1i), 4581i << ((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.d.x), global2.d.zx) ^ 1u) % 32u));
    var_2 = _wgslsmith_mod_i32(u_input.b.x, i32(-1i) * -1i);
    let var_3 = global2.b.b;
    return func_2(Struct_3(~0u, ~var_0.c), Struct_5(!(!vec3<bool>(false, var_0.a.x, false)), u_input.a, vec4<i32>(arg_0, var_0.d, -1i, _wgslsmith_mod_i32(var_0.c.x, global0.x)), _wgslsmith_sub_i32((u_input.b.x << (var_0.b % 32u)) | _wgslsmith_clamp_i32(var_0.d, -1i, u_input.b.x), arg_0))).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(~func_1(27432i));
    let var_0 = _wgslsmith_mod_vec4_u32(firstTrailingBit(~(vec4<u32>(global2.a, 111448u, u_input.a, u_input.c.x) | ~vec4<u32>(1u, 35383u, u_input.c.x, global2.d.x))), vec4<u32>(1u, global2.a, ~(~_wgslsmith_sub_u32(u_input.a, global2.d.x)), abs(u_input.c.x >> (global2.a % 32u))));
    global0 = u_input.b;
    let var_1 = Struct_3(57098u & var_0.x, vec4<i32>(1i << (u_input.a % 32u), _wgslsmith_clamp_i32(u_input.b.x, global0.x, abs(global0.x) & u_input.b.x), countOneBits(u_input.b.x), _wgslsmith_div_i32(u_input.b.x, i32(-1i) * -u_input.b.x)));
    let var_2 = global2.b;
    global1 = ~global0.x;
    var var_3 = 1i;
    var var_4 = vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, -10147i, u_input.b.x), vec4<i32>(var_1.b.x, _wgslsmith_dot_vec3_i32(var_1.b.xyz, var_1.b.wxy), global0.x, 2147483647i))), 29535i, countOneBits(-2147483647i));
    let var_5 = func_2(func_2(func_2(Struct_3(u_input.c.x, ~vec4<i32>(-4875i, 30250i, var_4.x, var_1.b.x)), Struct_5(!vec3<bool>(global2.b.a.x, false, var_2.a.x), abs(global2.a), _wgslsmith_mult_vec4_i32(vec4<i32>(5786i, u_input.b.x, var_4.x, var_4.x), var_1.b), 49159i)), func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(872f)), var_2.b.x, u_input.c.x != 4294967295u)), _wgslsmith_clamp_u32(var_0.x, ~global2.a, 1376u))), Struct_5(global2.c.xzw, u_input.c.x, var_1.b, global0.x | ~global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(var_0, ~var_0)), select(abs(vec4<u32>(var_5.a, var_1.a, var_1.a, 4294967295u)), vec4<u32>(25976u, 0u, 6484u, 0u), -222f != var_2.b.x) ^ select(var_0, vec4<u32>(var_0.x, 54818u, var_1.a, 938u), any(global2.c.xzz))), vec4<u32>(45784u >> (~(u_input.a ^ var_1.a) % 32u), 32449u, 34658u << (~_wgslsmith_clamp_u32(var_1.a, var_0.x, u_input.c.x) % 32u), abs(_wgslsmith_div_u32(firstLeadingBit(50147u), var_0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.b.x, 1982f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-832f, 2304f, -234f), vec3<f32>(106f, 377f, -240f), true)), vec3<bool>(true, true, all(vec2<bool>(false, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, -1000f, 470f))))), -10804i);
}

