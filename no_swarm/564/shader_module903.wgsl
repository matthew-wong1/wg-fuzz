struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(310f, Struct_1(false, vec3<bool>(false, true, true), -218f, 16008i), -1i, vec3<i32>(1i, i32(-2147483648), 2147483647i), Struct_1(true, vec3<bool>(false, false, true), -911f, -61007i)), Struct_2(187f, Struct_1(true, vec3<bool>(true, true, false), 2217f, -67191i), -12244i, vec3<i32>(i32(-2147483648), -52888i, 43515i), Struct_1(true, vec3<bool>(true, false, false), 391f, -53331i)), Struct_2(-1046f, Struct_1(true, vec3<bool>(false, false, true), -2108f, 7131i), 2147483647i, vec3<i32>(11378i, -1i, 18019i), Struct_1(false, vec3<bool>(true, true, true), -507f, 2147483647i)), Struct_2(1574f, Struct_1(false, vec3<bool>(true, true, false), -638f, 0i), -10318i, vec3<i32>(-1i, -1347i, 34743i), Struct_1(true, vec3<bool>(true, true, true), -354f, 2147483647i)), Struct_2(150f, Struct_1(true, vec3<bool>(true, true, false), -215f, 39231i), -18419i, vec3<i32>(1i, -930i, 19906i), Struct_1(true, vec3<bool>(true, false, true), -1161f, 9278i)));

var<private> global1: vec4<f32>;

var<private> global2: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec4<i32> {
    global0 = array<Struct_2, 5>();
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(trunc(global1.x)))), -592f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(1748f - -1398f), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(max(781f, 675f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -397f, global1.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(881f, -393f, 357f, -1779f))), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false))))))));
    global0 = array<Struct_2, 5>();
    global2 = abs(0u << (select(0u, u_input.c.x, true) % 32u));
    var var_0 = ~(~firstTrailingBit(countOneBits(u_input.c.www))) & ~(~vec3<u32>(1u, 2208u, 30986u) ^ _wgslsmith_add_vec3_u32(~u_input.c.zxw, max(u_input.c.xyy, arg_1)));
    return firstTrailingBit(vec4<i32>(1i, 0i, arg_0, _wgslsmith_div_i32(_wgslsmith_clamp_i32(min(-2147483647i, 0i), 24855i, 19804i << (arg_1.x % 32u)), abs(-13256i))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>) -> f32 {
    global1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1947f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -415f)) + 1647f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2015f)), _wgslsmith_f_op_f32(floor(1444f)), select(true, true, true))), global1.x, _wgslsmith_div_f32(-856f, -1483f));
    let var_0 = _wgslsmith_sub_vec4_i32(func_3(u_input.b.x, arg_0), -u_input.b);
    var var_1 = firstTrailingBit(~(reverseBits(u_input.c.x) ^ _wgslsmith_div_u32(~u_input.c.x, select(0u, u_input.c.x, true))));
    var var_2 = Struct_1(true, select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), global1.x, -2147483647i);
    var var_3 = var_0 << (_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(0u, arg_0.x, max(select(u_input.c.x, 4294967295u, false), arg_0.x | 1u), _wgslsmith_dot_vec2_u32(arg_0.xx, u_input.c.zy))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * _wgslsmith_f_op_f32(-var_2.c));
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = ~(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -14532i, -2147483647i, 44187i)), u_input.b), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, -1i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), u_input.b)));
    global2 = 19370u ^ arg_0.a.b;
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-509f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(534f + global1.x)))), _wgslsmith_div_f32(arg_0.a.a, -608f), _wgslsmith_f_op_f32(func_2(~reverseBits(vec3<u32>(1u, u_input.c.x, 104147u)), _wgslsmith_sub_vec4_i32(select(u_input.b, vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a), vec4<bool>(true, false, false, false)), ~u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2102f) * _wgslsmith_f_op_f32(arg_0.a.a - global1.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2055f, -233f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -1000f))), arg_0.a.a) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1721f, global1.x, global1.x, 284f)))))))));
    var var_1 = u_input.c.xwx;
    var var_2 = firstLeadingBit(vec4<u32>(1u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~arg_0.a.b, u_input.c.x) & vec4<u32>(1u & arg_0.a.b, u_input.c.x ^ arg_0.a.b, var_1.x, ~0u)) ^ firstLeadingBit(abs(u_input.c));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + 441f) - arg_0.a.a)) - _wgslsmith_f_op_f32(-arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(global1.x, -761f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(-1964f, 33362u), global1.x))) + -738f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x))) - _wgslsmith_f_op_f32(func_2(firstTrailingBit(u_input.c.yzz), func_3(37044i, vec3<u32>(52174u, u_input.c.x, u_input.c.x))))), _wgslsmith_f_op_f32(sign(global1.x)));
    global2 = u_input.c.x;
    var var_0 = !(!any(vec4<bool>(true, true, true, true)) || false);
    var var_1 = u_input.c.zyy;
    let var_2 = Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(global1.x - global1.x) == -652f)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false)), !any(vec3<bool>(true, false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(global1.x, var_1.x), -736f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-111f))))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, abs(u_input.a << (var_1.x % 32u)), u_input.a), countOneBits(u_input.b.wxz)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_clamp_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), countOneBits(u_input.c.xwx), ~vec3<u32>(2183u, var_1.x, 1u)), countOneBits(~vec3<u32>(1u, 94776u, var_1.x)), (var_2.c == 205f) & (u_input.a < -45379i)), min(vec3<u32>(max(u_input.c.x, u_input.c.x), ~u_input.c.x, 41050u & u_input.c.x), _wgslsmith_clamp_vec3_u32(~u_input.c.wzw, u_input.c.yzy, ~vec3<u32>(u_input.c.x, 1u, 0u))), vec3<u32>(firstLeadingBit(11230u), ~select(4294967295u, 30119u, var_2.b.x), ~(~4294967295u))));
}

