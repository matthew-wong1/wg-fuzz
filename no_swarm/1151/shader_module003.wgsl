struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = Struct_1((u_input.a.x ^ 48185u) >> (_wgslsmith_mod_u32(abs(u_input.b), u_input.b) % 32u), _wgslsmith_mult_u32(u_input.b, abs(select(abs(u_input.a.x), 1u, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-585f + -1000f) + _wgslsmith_f_op_f32(trunc(1337f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) - -628f))), select(select(vec2<bool>(global0.x, true), select(select(global0.yx, global0.wz, global0.wy), vec2<bool>(global0.x, global0.x), !global0.wx), true), !global0.zz, vec2<bool>(true, false)), abs(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(44062i, arg_0, 64961i), vec3<i32>(2147483647i, arg_0, u_input.c)) ^ (u_input.d | 1i))));
    global0 = vec4<bool>(true, var_0.d.x, -1i != u_input.d, true);
    var var_1 = _wgslsmith_mult_i32(~var_0.e, arg_0);
    var var_2 = ~vec2<u32>(80769u, ~(~var_0.b));
    var_2 = u_input.a.wx;
    return select(vec2<bool>(any(vec2<bool>(true, global0.x)), true), vec2<bool>(!(var_0.c >= var_0.c) || global0.x, global0.x), select(vec2<bool>(all(global0.wyx), true), vec2<bool>(true, !var_0.d.x), global0.x));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_div_vec4_i32(max(~select(vec4<i32>(-1i, -1i, arg_1.a.e, arg_1.a.e), vec4<i32>(22617i, 3714i, -7924i, 6975i), vec4<bool>(global0.x, true, true, true)) & ~(-vec4<i32>(arg_1.a.e, -38201i, arg_1.a.e, u_input.d)), vec4<i32>(arg_1.a.e, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.e, arg_1.a.e, -7555i, -6323i), vec4<i32>(-3283i, -2147483647i, u_input.c, arg_1.a.e)), 3432i), 2147483647i, _wgslsmith_add_i32(arg_1.a.e, ~2147483647i))), vec4<i32>(-arg_1.a.e, max(u_input.d, -11608i) >> (0u % 32u), countOneBits(-22632i), arg_1.a.e ^ arg_1.a.e));
    global0 = vec4<bool>(true, select(arg_1.a.d.x | global0.x, select(func_3(u_input.d).x, true, arg_2 <= arg_2), true) && !(!(!arg_1.b.x)), firstLeadingBit(abs(43266i) >> (firstTrailingBit(arg_1.a.b) % 32u)) >= -28947i, all(!select(vec3<bool>(arg_1.a.d.x, arg_1.a.d.x, global0.x), !global0.wxz, vec3<bool>(global0.x, arg_1.b.x, arg_1.a.d.x))));
    var var_1 = ~_wgslsmith_add_i32(-_wgslsmith_mod_i32(min(u_input.c, var_0.x), ~(-2147483647i)), var_0.x);
    let var_2 = firstLeadingBit(var_0.yx);
    var var_3 = var_0.yyx;
    return arg_1.a.b;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1, ~1u, 48733u), arg_1), func_4(arg_1, Struct_3(Struct_1(35061u, u_input.b, -843f, global0.zy, -2147483647i), func_3(0i)), _wgslsmith_f_op_f32(-1571f + _wgslsmith_f_op_f32(846f + -3808f)))), arg_1);
    var var_1 = Struct_4(-(~(-abs(vec4<i32>(arg_2.x, -1193i, arg_2.x, 2147483647i)))), Struct_2(2147483647i, Struct_1(u_input.e, u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -713f), select(vec2<bool>(false, global0.x), global0.yz, !global0.wy), 37802i), -arg_0, firstLeadingBit(_wgslsmith_clamp_u32(0u, u_input.e, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), Struct_1(3236u, _wgslsmith_dot_vec2_u32(~vec2<u32>(75183u, arg_1), firstLeadingBit(u_input.a.xy)), -583f, vec2<bool>(true, global0.x), -20446i)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, u_input.b), _wgslsmith_mult_u32(0u, 0u), 1u), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), arg_1 ^ arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_1, 20067u), vec3<u32>(0u, 35692u, arg_1)))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_4(u_input.b, Struct_3(Struct_1(arg_1, 1u, 1000f, vec2<bool>(global0.x, global0.x), 35438i), vec2<bool>(global0.x, true)), 1000f), ~15112u, arg_1, 39801u), abs(~vec4<u32>(4294967295u, arg_1, u_input.b, 41020u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(823f, 1387f))) * 2038f), !select(select(vec2<bool>(true, true), global0.xy, global0.zz), vec2<bool>(global0.x, false), global0.zz), abs(countOneBits(~21596i))));
    var_1 = Struct_4(var_1.a, Struct_2(select(u_input.c, -(~1i), false), Struct_1(arg_1, var_1.b.e.a, var_1.b.b.c, select(!vec2<bool>(false, var_1.b.b.d.x), func_3(arg_2.x), select(vec2<bool>(true, global0.x), global0.wz, vec2<bool>(true, false))), -2202i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(firstTrailingBit(-13791i), 1i), 0i, var_1.c.e), ~arg_1, var_1.c), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 42695u, u_input.a.x), min(u_input.a.zyz, u_input.a.xzx)), ~(~arg_1), _wgslsmith_f_op_f32(var_1.c.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(439f)) - var_1.b.e.c)), !(!(!var_1.b.b.d)), 0i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.c, var_1.b.b.c, !all(vec3<bool>(true, global0.x, var_1.b.b.d.x)))) * var_1.b.e.c);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.c))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1144f, var_1.c.c), 1000f, false))));
    return !vec4<bool>(var_1.c.d.x, (22520u >= _wgslsmith_div_u32(22210u, arg_1)) == all(select(vec4<bool>(var_1.b.b.d.x, var_1.b.e.d.x, var_1.c.d.x, true), vec4<bool>(global0.x, global0.x, var_1.b.e.d.x, var_1.b.e.d.x), var_1.b.b.d.x)), var_1.c.d.x, select(true, all(!vec4<bool>(var_1.b.b.d.x, global0.x, false, false)), !var_1.b.b.d.x));
}

fn func_1() -> vec3<u32> {
    global0 = !(!select(select(func_2(u_input.c, u_input.b, vec2<i32>(u_input.d, u_input.c)), func_2(u_input.d, u_input.e, vec2<i32>(u_input.c, -2147483647i)), !vec4<bool>(false, global0.x, true, global0.x)), !vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, true)));
    global0 = !vec4<bool>(!(global0.x | false) || global0.x, any(global0.yy), all(vec4<bool>(global0.x, true, global0.x, false)) | !(u_input.d > u_input.c), all(func_2(u_input.c, _wgslsmith_clamp_u32(u_input.e, 0u, u_input.e), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.d), vec2<i32>(64675i, -1i))).zyx));
    global0 = !vec4<bool>(!select(false, true, global0.x) & all(select(vec4<bool>(false, true, global0.x, false), vec4<bool>(false, false, global0.x, true), global0.x)), false, global0.x, global0.x);
    global0 = !vec4<bool>(all(func_2(i32(-1i) * -2147483647i, _wgslsmith_mod_u32(4294967295u, u_input.a.x), vec2<i32>(18166i, u_input.c)).zwz), _wgslsmith_f_op_f32(max(142f, _wgslsmith_f_op_f32(floor(-1000f)))) > _wgslsmith_f_op_f32(floor(-1418f)), u_input.d != (i32(-1i) * -1i), global0.x);
    global0 = !func_2(countOneBits(-11917i), ~(_wgslsmith_mod_u32(u_input.e, u_input.a.x) << ((u_input.e ^ u_input.a.x) % 32u)), countOneBits(~(-vec2<i32>(u_input.c, u_input.d))));
    return u_input.a.xzz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global0.x, true);
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(970f, 345f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1725f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(1389f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1064f + 1000f), _wgslsmith_f_op_f32(-1472f + -1225f)))))));
    let var_3 = abs(max(u_input.a.yz, u_input.a.yy) ^ u_input.a.zy);
    var var_4 = abs(u_input.c >> (~1u % 32u));
    let var_5 = ~_wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.a.wyw, func_1(), u_input.a.xwz), vec3<u32>(37798u, 1u, ~u_input.b));
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1096f + 1697f), var_2.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.xx)) - var_2.wx)));
    var var_7 = vec3<i32>(abs(18629i), u_input.c, u_input.d) >> (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(select(func_1(), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, var_1), var_5), true), u_input.a.xyw), var_5 ^ u_input.a.zxy) % vec3<u32>(32u));
    var_6 = var_2.wz;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec4_i32(~vec4<i32>(18838i, 6815i, 38301i, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, u_input.d, -7092i) ^ vec4<i32>(-69728i, var_7.x, u_input.c, var_7.x), min(vec4<i32>(u_input.d, u_input.c, u_input.d, u_input.c), vec4<i32>(1i, var_7.x, 1i, var_7.x)))));
}

