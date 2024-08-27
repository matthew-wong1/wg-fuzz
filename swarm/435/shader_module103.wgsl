struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(~vec2<i32>(u_input.c, ~(~u_input.c)), ~vec2<u32>(4294967295u, u_input.a), vec2<bool>(all(select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(true, arg_0.x, false, true))) | true, -1604f <= global0.x), u_input.c);
    var_1 = Struct_1(countOneBits(vec2<i32>(-u_input.c, 21890i)), _wgslsmith_mult_vec2_u32(countOneBits(var_1.b), _wgslsmith_clamp_vec2_u32(firstLeadingBit(~var_1.b), var_1.b, var_1.b)), select(arg_0, !select(select(vec2<bool>(var_1.c.x, true), arg_0, arg_0), !vec2<bool>(var_1.c.x, true), select(vec2<bool>(arg_0.x, true), var_1.c, false)), !(!all(vec4<bool>(var_1.c.x, true, false, var_1.c.x)))), 2635i);
    var_0 = 1u;
    var var_2 = reverseBits(vec2<i32>(-1i, var_1.a.x));
    return ~17025u;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_3(false, all(!select(select(vec3<bool>(true, arg_0.a.c.x, true), vec3<bool>(arg_0.a.c.x, true, arg_2.a.c.x), vec3<bool>(arg_0.a.c.x, arg_2.a.c.x, arg_0.a.c.x)), vec3<bool>(arg_2.a.c.x, arg_0.a.c.x, arg_2.a.c.x), vec3<bool>(false, false, arg_2.a.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x * global0.x)))))), 1i ^ u_input.b, arg_0.a);
    let var_1 = Struct_2(Struct_1(~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.a.a, arg_2.a.a), arg_0.a.a & var_0.e.a, _wgslsmith_sub_vec2_i32(arg_2.a.a, arg_2.a.a)), vec2<u32>(~4294967295u, ~u_input.a), var_0.e.c, ~(-80828i)));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-813f, global0.x, var_0.c, var_0.c)))))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global0.x, var_0.c), -1405f, _wgslsmith_f_op_f32(trunc(-523f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1771f, 694f, global0.x, 943f), vec4<f32>(484f, global0.x, 1000f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_0.c, global0.x, 370f) * vec4<f32>(global0.x, -1830f, global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.c)), 742f, _wgslsmith_f_op_f32(f32(-1f) * -969f), global0.x)))));
    return func_3(!vec2<bool>(any(vec4<bool>(var_1.a.c.x, false, arg_0.a.c.x, arg_0.a.c.x)) & !var_1.a.c.x, true));
}

fn func_1() -> bool {
    let var_0 = global0.x;
    var var_1 = Struct_1(~(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(u_input.b, u_input.c))), vec2<u32>(1u, firstLeadingBit(func_2(Struct_2(Struct_1(vec2<i32>(u_input.b, 4461i), vec2<u32>(4294967295u, 89275u), vec2<bool>(true, true), -2147483647i)), -1i, Struct_2(Struct_1(vec2<i32>(18322i, 2147483647i), vec2<u32>(u_input.a, 1261u), vec2<bool>(false, true), -28671i))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) % 32u))), vec2<bool>(true, true), abs(_wgslsmith_clamp_i32(-1i & u_input.b, u_input.b, u_input.c) & (u_input.c | u_input.c)));
    var_1 = Struct_1(vec2<i32>(~1i, u_input.b), _wgslsmith_mod_vec2_u32(~var_1.b, var_1.b) ^ vec2<u32>(~(~0u), abs(var_1.b.x) ^ var_1.b.x), select(!var_1.c, vec2<bool>(!(false || var_1.c.x), var_1.c.x), true), -13038i);
    var_1 = Struct_1(min(var_1.a ^ var_1.a, vec2<i32>(u_input.c, -20664i)) ^ min(-select(vec2<i32>(4823i, var_1.d), var_1.a, var_1.c.x), vec2<i32>(23552i, 16428i)), var_1.b, vec2<bool>(true, any(vec3<bool>(any(vec4<bool>(false, var_1.c.x, false, var_1.c.x)), true, true))), _wgslsmith_sub_i32(u_input.c, _wgslsmith_mult_i32(countOneBits(u_input.b), -45207i) ^ _wgslsmith_add_i32(var_1.d, -u_input.b)));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.a, ~var_1.a), vec2<i32>(u_input.c, -(u_input.c ^ var_1.d))) <= 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, all(vec3<bool>(false, false, true)), func_1()), true);
    let var_1 = Struct_3(true, var_0.x, -608f, min(~u_input.c ^ 0i, _wgslsmith_mult_i32(u_input.c, -9686i)), Struct_1(max(_wgslsmith_div_vec2_i32(vec2<i32>(3676i, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(-25895i, u_input.b), vec2<i32>(-15557i, u_input.c))), _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.c, 25704i), vec2<i32>(u_input.b, 27428i), vec2<bool>(true, var_0.x)), -vec2<i32>(27709i, 40224i))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(16455u, 4294967295u) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<u32>(20956u, u_input.a) ^ vec2<u32>(0u, 65869u)), select(!select(vec2<bool>(var_0.x, var_0.x), var_0.zz, var_0.x), select(var_0.wz, vec2<bool>(false, var_0.x), var_0.x), any(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.c, u_input.b), select(u_input.b, u_input.c, false), -1i, 1i), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.c, 21773i), vec4<i32>(-1i, 0i, 1i, u_input.b)), select(vec4<i32>(u_input.b, u_input.b, 1i, -32379i), vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i), var_0.x)))));
    var var_2 = u_input.a;
    var_0 = vec4<bool>(any(var_0.zy) && true, var_0.x, false, any(vec4<bool>(all(!vec2<bool>(var_1.a, var_0.x)), true, true, !any(var_0.xwz))));
    let var_3 = select(38843u, u_input.a, var_0.x);
    var var_4 = 4294967295u;
    var_4 = max(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(70214u, 0u, 33850u, 4294967295u)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(53989u, 0u, 22587u, 1u)), vec4<u32>(u_input.a, 46247u, u_input.a, u_input.a))), ~33521u) | _wgslsmith_mod_u32(~(~u_input.a | firstTrailingBit(u_input.a)), abs(u_input.a));
    let var_5 = vec2<i32>(_wgslsmith_dot_vec4_i32(abs(~abs(vec4<i32>(var_1.d, 7402i, -1i, var_1.e.a.x))), ~(~vec4<i32>(u_input.c, 2147483647i, u_input.b, 0i))), u_input.c);
    var var_6 = var_1.e.c;
    let x = u_input.a;
    s_output = StorageBuffer((countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.e.b.x, 1u, 43042u), vec3<u32>(u_input.a, var_3, u_input.a))) << ((~vec3<u32>(58432u, 0u, var_3) | ~vec3<u32>(u_input.a, var_1.e.b.x, u_input.a)) % vec3<u32>(32u))) & select(vec3<u32>(_wgslsmith_sub_u32(38421u, 1u), 4294967295u, firstTrailingBit(var_1.e.b.x)), vec3<u32>(_wgslsmith_add_u32(97511u, 21545u), 4294967295u, var_1.e.b.x), false), ~vec3<u32>(~(77982u & u_input.a), ~1u, _wgslsmith_clamp_u32(u_input.a | var_3, ~1u, 62550u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.yzw + _wgslsmith_f_op_vec3_f32(global0.yyx - global0.xyy)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c, 1410f, -202f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))), ~_wgslsmith_mult_u32(abs(~var_1.e.b.x), var_3), vec3<i32>(u_input.c, 30384i, 21244i));
}

