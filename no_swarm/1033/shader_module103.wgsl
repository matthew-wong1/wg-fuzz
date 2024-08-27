struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1.d.x;
    var_0 = true;
    var var_1 = arg_1;
    return 0i;
}

fn func_2() -> vec3<f32> {
    let var_0 = -(~(func_3(u_input.c.x, Struct_2(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, 35186i), 2172f, Struct_1(u_input.b.x), vec2<bool>(true, false))) | _wgslsmith_mult_i32(min(u_input.c.x, -37780i), max(-1482i, u_input.c.x))));
    let var_1 = Struct_2(_wgslsmith_mult_vec4_i32(reverseBits(reverseBits(vec4<i32>(u_input.c.x, 2147483647i, -23527i, u_input.c.x))), vec4<i32>(func_3(_wgslsmith_add_i32(-8883i, var_0), Struct_2(vec4<i32>(u_input.c.x, var_0, -17647i, 19614i), -492f, Struct_1(33136u), vec2<bool>(false, false))), 1i, _wgslsmith_clamp_i32(-2147483647i, func_3(var_0, Struct_2(vec4<i32>(1i, -11228i, u_input.c.x, 1835i), -1951f, Struct_1(u_input.b.x), vec2<bool>(false, false))), -2147483647i), 593i)), 218f, Struct_1(16634u), select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false))), vec2<bool>(true, any(vec2<bool>(true, true))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-826f)), -957f);
    var var_3 = var_1;
    var_3 = Struct_2(-_wgslsmith_sub_vec4_i32(-var_1.a, -vec4<i32>(-1i, -4420i, -43139i, -34168i) << (vec4<u32>(var_1.c.a, u_input.d.x, 11921u, var_1.c.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), -1000f, all(!vec3<bool>(true, var_3.d.x, true)))), var_3.c, !select(!(!vec2<bool>(false, var_3.d.x)), var_3.d, !var_1.d.x));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, -937f, var_1.b) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, 1000f, 643f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, -980f, -203f), vec3<f32>(var_1.b, -725f, 1639f), false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -642f, -1000f) - vec3<f32>(var_3.b, 540f, var_3.b))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(177f)), _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-1526f + var_3.b))), _wgslsmith_mult_u32(0u, var_1.c.a) > _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.c.a, 0u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(31367u, 1u, 1u, 18829u), vec4<u32>(u_input.b.x, u_input.d.x, 1u, 1u)))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = -2147483647i;
    var var_2 = true;
    var var_3 = _wgslsmith_add_i32(func_3(u_input.c.x ^ u_input.c.x, Struct_2(-vec4<i32>(var_0, var_0, -758i, 1i), _wgslsmith_f_op_f32(-arg_1.x), Struct_1(42323u), vec2<bool>(true, true))), 54568i) <= ~(-20220i);
    var_1 = arg_0.a;
    return Struct_1(u_input.b.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> Struct_4 {
    let var_0 = Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(16025u, 0u), 1u, u_input.a) | u_input.a);
    var var_1 = func_4(Struct_5(reverseBits(abs(arg_2))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())));
    var var_2 = 1i << (~4294967295u % 32u);
    let var_3 = Struct_2(-(_wgslsmith_add_vec4_i32(vec4<i32>(1i, arg_2, 17987i, arg_2), vec4<i32>(30469i, arg_2, 4092i, u_input.c.x)) >> ((u_input.b << (vec4<u32>(var_0.a, var_0.a, 4294967295u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (~(~(~vec4<u32>(45239u, u_input.d.x, var_1.a, 41720u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(267f)), -279f)) + -1436f), Struct_1(_wgslsmith_add_u32(4294967295u, 0u)), vec2<bool>(true, true));
    var_1 = Struct_1(~(~(~_wgslsmith_div_u32(159919u, u_input.b.x))));
    return Struct_4(Struct_1(_wgslsmith_add_u32(~countOneBits(63226u), _wgslsmith_dot_vec2_u32(reverseBits(u_input.d.yy), vec2<u32>(u_input.b.x, var_1.a)))), ~min(1u, 20331u), Struct_1(select(~var_1.a ^ 4294967295u, min(var_3.c.a, 1u), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1030f, -762f)), 1134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1587f)) * -1041f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1903f, 349f))))), _wgslsmith_f_op_f32(f32(-1f) * -722f), u_input.c.x);
    var var_1 = _wgslsmith_mod_vec2_i32(u_input.c.xz, vec2<i32>(~(~u_input.c.x), _wgslsmith_clamp_i32(u_input.c.x & u_input.c.x, -9588i, _wgslsmith_sub_i32(u_input.c.x, -22688i)))) << (u_input.b.wx % vec2<u32>(32u));
    let var_2 = 1i;
    var var_3 = vec2<bool>(true, all(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true)))));
    var_1 = abs(~_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(0i, -1i)), vec2<i32>(~2147483647i, max(var_2, var_1.x))));
    let var_4 = 441f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.a, ~u_input.d.x, min(func_1(vec4<f32>(var_4, var_4, var_4, -1855f), -1648f, 1i).a.a, reverseBits(u_input.d.x)), 0u) ^ select(_wgslsmith_add_vec4_u32(u_input.b, u_input.b) | _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_0.a.a, var_0.a.a) << (u_input.b % vec4<u32>(32u)), countOneBits(u_input.b)), true), _wgslsmith_f_op_f32(-723f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(var_4 * var_4)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4, 945f)))), abs(-_wgslsmith_add_vec4_i32(vec4<i32>(-21944i, u_input.c.x, 5749i, -10635i), vec4<i32>(var_1.x, -3533i, 44762i, var_2)) << (countOneBits(select(vec4<u32>(var_0.b, u_input.b.x, 166274u, var_0.b), vec4<u32>(77181u, u_input.d.x, 39504u, 0u), vec4<bool>(var_3.x, var_3.x, var_3.x, false))) % vec4<u32>(32u))));
}

