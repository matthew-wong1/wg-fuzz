struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    global1 = true;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.a.x));
    var_0 = _wgslsmith_f_op_f32(1063f + global0.a.b.a.x);
    return _wgslsmith_add_i32(u_input.b, -85199i) >> (0u % 32u);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(func_3(global0.d.yz)), 37969i, _wgslsmith_add_i32(firstLeadingBit(global0.a.b.b), global0.a.b.b)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.b.b, -2147483647i, 0i), vec3<i32>(-1i, global0.c, -2147483647i)), i32(-1i) * -2147483647i, -4804i)), ~(vec3<i32>(u_input.b, 15949i, 1i) << (vec3<u32>(_wgslsmith_add_u32(global0.d.x, global0.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 104892u, 61177u, u_input.a.x), global0.d), ~58897u) % vec3<u32>(32u))), max(select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, global0.c, -2147483647i), vec3<i32>(-28142i, 1i, u_input.b)), vec3<i32>(u_input.b, u_input.b, 2147483647i), all(vec2<bool>(true, true))) ^ ~(-vec3<i32>(global0.c, 15838i, u_input.b)), vec3<i32>(_wgslsmith_add_i32(-1i, global0.a.a.b), countOneBits(global0.c), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1401i), vec2<i32>(-13766i, global0.a.b.b)))));
    var var_1 = global0.b.zxw;
    let var_2 = Struct_3(false == (global0.d.x <= 10808u), select(firstLeadingBit(var_0.yx), max(min(abs(vec2<i32>(global0.c, u_input.b)), vec2<i32>(2147483647i, var_0.x)), vec2<i32>(-2147483647i, ~(-11324i))), true), select(var_0.zy, vec2<i32>(max(u_input.b >> (4294967295u % 32u), 2147483647i), global0.c), global0.b.zy));
    var var_3 = Struct_3(!select((u_input.a.x ^ u_input.c.x) != (31616u << (u_input.a.x % 32u)), false, global0.b.x | all(vec3<bool>(global0.b.x, false, global0.b.x))), ~(~(-var_2.b)), -var_0.yy);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1894f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1417f, -1004f, var_1.x))) - -313f));
    return var_2;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    global0 = Struct_4(Struct_2(Struct_1(vec3<f32>(-1974f, -1175f, _wgslsmith_f_op_f32(step(arg_1.a.a.x, arg_1.b.a.x))), arg_3.c.x), arg_1.a), !global0.b, 1386i, _wgslsmith_add_vec4_u32(select(global0.d, global0.d, vec4<bool>(false, global0.b.x, arg_3.a, global0.b.x)) & ~vec4<u32>(4294967295u, 11988u, 9340u, u_input.c.x), _wgslsmith_div_vec4_u32(global0.d, ~vec4<u32>(0u, u_input.a.x, 4294967295u, global0.d.x))) | vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global0.d.x), ~vec2<u32>(13453u, 1u)), u_input.a.x, _wgslsmith_dot_vec2_u32(global0.d.xz, vec2<u32>(0u, global0.d.x)), reverseBits(~1u)));
    global0 = Struct_4(arg_1, select(vec4<bool>(!(!global0.b.x), !(arg_2.x | arg_2.x), all(select(arg_2, arg_2, arg_3.a)), false), !(!(!vec4<bool>(false, arg_3.a, false, false))), global0.b), func_3(~abs(~u_input.a.zx)), vec4<u32>(0u, global0.d.x, 78413u, _wgslsmith_dot_vec3_u32(~vec3<u32>(3518u, u_input.c.x, 37078u), _wgslsmith_mult_vec3_u32(u_input.a, select(vec3<u32>(global0.d.x, u_input.c.x, global0.d.x), vec3<u32>(global0.d.x, global0.d.x, 1u), vec3<bool>(arg_3.a, arg_2.x, false))))));
    global0 = Struct_4(Struct_2(global0.a.b, arg_1.a), select(!vec4<bool>(all(vec2<bool>(false, false)), true, true, all(global0.b.yzz)), !(!vec4<bool>(arg_2.x, global0.b.x, arg_2.x, true)), global0.b.x), func_3(vec2<u32>(firstLeadingBit(countOneBits(1u)), 1u)), ~vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), global0.d.x), ~4294967295u, global0.d.x & 48701u, ~(~1u)));
    global1 = global0.b.x;
    global1 = global0.b.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, -421f, 1922f)), _wgslsmith_f_op_vec3_f32(global0.a.a.a + global0.a.b.a), select(vec3<bool>(global0.b.x, global0.b.x, true), global0.b.xww, true))))), 0i << (global0.d.x % 32u));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-181f)), 1000f);
    let var_1 = -947f;
    var var_2 = arg_1.b.a.x;
    let var_3 = ~global0.a.a.b != _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_clamp_i32(arg_2.b, -1i, u_input.b)), ~(vec2<i32>(global0.c, -1i) | vec2<i32>(-2147483647i, global0.a.a.b))), min(global0.a.b.b, _wgslsmith_sub_i32(1i, -47881i)) & u_input.b);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_1.a.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(307f, -1191f, -401f), _wgslsmith_div_vec3_f32(arg_1.a.a, arg_1.a.a)) + global0.a.a.a))), func_3(~_wgslsmith_mod_vec2_u32(global0.d.ww, firstTrailingBit(global0.d.zz))));
    return global0.a.a;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = global0.a.a.a.x;
    let var_1 = global0.b;
    global1 = true;
    let var_2 = vec4<i32>(firstTrailingBit(firstTrailingBit(global0.c) & ~(~u_input.b)), -17850i, _wgslsmith_div_i32(global0.c, (u_input.b >> (global0.d.x % 32u)) ^ ~global0.c) | _wgslsmith_sub_i32(global0.a.a.b, select(-1i, global0.a.a.b, any(global0.b.wy))), u_input.b);
    let var_3 = Struct_3(global0.b.x, ~vec2<i32>(~(-23674i << (arg_0 % 32u)), 2147483647i), var_2.wz);
    return func_5(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~4294967295u, arg_0, 1u ^ arg_0), 1u) | 1u, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.a.x, -900f, arg_1.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1000f, global0.a.b.a.x))), global0.a.b.b), func_4(min(_wgslsmith_mod_vec2_i32(var_3.c, var_3.b), vec2<i32>(0i, var_2.x) << (global0.d.yz % vec2<u32>(32u))), Struct_2(global0.a.b, global0.a.b), vec2<bool>(arg_0 <= global0.d.x, global0.a.a.a.x < 1534f), func_2(abs(arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-686f, global0.a.b.a.x))))), Struct_5(select(select(select(vec3<bool>(false, var_1.x, true), var_1.yww, vec3<bool>(var_3.a, global0.b.x, true)), vec3<bool>(global0.b.x, global0.b.x, global0.b.x), select(var_1.yyw, global0.b.wxy, var_3.a)), vec3<bool>(var_1.x && false, global0.b.x, arg_1.x == global0.a.b.a.x), true), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_3.b.x, var_2.x)), vec2<i32>(u_input.b, _wgslsmith_mult_i32(global0.a.b.b, global0.a.a.b))), vec2<bool>(false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(Struct_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(875f, -345f), -1000f, _wgslsmith_f_op_f32(-global0.a.a.a.x)), u_input.b), func_1(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(386f, global0.a.a.a.x, 1660f, global0.a.a.a.x)) * vec4<f32>(-1042f, global0.a.a.a.x, -1000f, 886f)))), !select(vec4<bool>(all(global0.b.zy), select(false, false, global0.b.x), true, any(global0.b.wx)), vec4<bool>(!global0.b.x, true, global0.b.x | false, all(global0.b.wy)), vec4<bool>(all(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), global0.b.x, true, u_input.b <= u_input.b)), u_input.b, reverseBits(global0.d));
    let var_0 = global0.a.a.a.zy;
    var var_1 = global0.a.b;
    let var_2 = all(global0.b);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-872f)));
    var var_4 = func_4(~(~(-vec2<i32>(global0.a.a.b, 25688i))) | vec2<i32>(0i, global0.a.a.b & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_1.b, var_1.b, -26704i), vec4<i32>(1i, 2147483647i, -50836i, var_1.b))), Struct_2(func_5(u_input.a.x, Struct_2(Struct_1(global0.a.b.a, global0.a.b.b), Struct_1(vec3<f32>(global0.a.b.a.x, -583f, -1810f), 0i)), Struct_5(global0.b.ywx, var_1.b, vec2<bool>(var_2, var_2))), func_5(u_input.c.x, global0.a, Struct_5(vec3<bool>(false, global0.b.x, global0.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, -1i), vec2<i32>(5243i, 1i)), global0.b.wz))), select(!vec2<bool>(global0.b.x, !global0.b.x), !global0.b.wy, global0.b.x), Struct_3(0u < u_input.a.x, ~_wgslsmith_mod_vec2_i32(vec2<i32>(-36440i, 0i), vec2<i32>(1i, 1i)) | (vec2<i32>(-1i) * -vec2<i32>(u_input.b, var_1.b)), vec2<i32>(-6680i ^ _wgslsmith_clamp_i32(0i, var_1.b, u_input.b), var_1.b ^ global0.a.a.b))).a;
    let var_5 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.d, vec4<u32>(_wgslsmith_dot_vec4_u32(global0.d, global0.d), _wgslsmith_mult_u32(u_input.c.x, global0.d.x), u_input.a.x, u_input.c.x) ^ vec4<u32>(~37075u, _wgslsmith_mod_u32(u_input.c.x, u_input.a.x), global0.d.x, ~global0.d.x), vec4<u32>(11680u, ~0u, reverseBits(1u) ^ ~u_input.c.x, _wgslsmith_dot_vec4_u32(global0.d ^ vec4<u32>(u_input.c.x, global0.d.x, u_input.c.x, 4294967295u), ~vec4<u32>(global0.d.x, 64437u, 31824u, global0.d.x)))), global0.d >> (global0.d % vec4<u32>(32u)));
    global0 = Struct_4(global0.a, !(!select(select(global0.b, vec4<bool>(false, true, true, global0.b.x), false), !vec4<bool>(global0.b.x, true, false, var_2), global0.b)), _wgslsmith_clamp_i32(~var_1.b, -36321i, -(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, u_input.b, -2147483647i), vec3<i32>(u_input.b, u_input.b, global0.c)) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, -2147483647i, var_1.b, -1778i), vec4<i32>(-44574i, var_1.b, -17150i, -1i)))), _wgslsmith_mult_vec4_u32(~(~global0.d), vec4<u32>(13130u, ~4294967295u, firstTrailingBit(u_input.a.x), ~u_input.c.x) ^ ~(vec4<u32>(u_input.c.x, var_5, 45285u, var_5) >> (vec4<u32>(u_input.a.x, global0.d.x, u_input.c.x, global0.d.x) % vec4<u32>(32u)))));
    var var_6 = Struct_5(global0.b.zzz, -(var_1.b >> ((var_5 >> (var_5 % 32u)) % 32u)) ^ select(0i, -27037i >> (~var_5 % 32u), false), !global0.b.zz);
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, _wgslsmith_div_vec2_i32(~countOneBits(vec2<i32>(var_1.b, u_input.b)), vec2<i32>(~(-2147483647i), global0.c)) >> ((vec2<u32>(1u, ~27370u) >> (select(_wgslsmith_clamp_vec2_u32(u_input.a.xx, vec2<u32>(19400u, global0.d.x), u_input.c), vec2<u32>(49221u, 72189u), true) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(~(~(~11868u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 53451u, u_input.c.x, _wgslsmith_mult_u32(126780u, 308u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.d.x, u_input.c.x, 0u), global0.d >> (vec4<u32>(u_input.c.x, global0.d.x, 68275u, 3373u) % vec4<u32>(32u))))));
}

