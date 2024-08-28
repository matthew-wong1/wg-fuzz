struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    var var_0 = vec2<i32>(max(u_input.b.x, u_input.a), _wgslsmith_dot_vec3_i32(-arg_3, vec3<i32>(arg_3.x, abs(1i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b.x, 61098i, -17240i), u_input.a))));
    var_0 = reverseBits(vec2<i32>(firstTrailingBit(select(reverseBits(u_input.b.x), var_0.x << (u_input.c.x % 32u), true)), -58193i));
    let var_1 = Struct_1(23318u);
    var_0 = vec2<i32>(1i, 18789i);
    let var_2 = vec4<i32>(min(reverseBits(0i) << (arg_2 % 32u), reverseBits(_wgslsmith_add_i32(30860i, _wgslsmith_clamp_i32(-35148i, -2147483647i, var_0.x)))), 0i, -7305i, abs(select(countOneBits(_wgslsmith_mult_i32(-1i, -37115i)), -17827i, true)));
    return _wgslsmith_div_u32(33668u << (_wgslsmith_add_u32(~(~u_input.d), _wgslsmith_div_u32(58736u, var_1.a << (var_1.a % 32u))) % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mod_u32(var_1.a, 13228u)), _wgslsmith_sub_u32(var_1.a, var_1.a) << (9843u % 32u), ~18852u), abs(var_1.a) | ~_wgslsmith_div_u32(u_input.c.x, 13844u)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: bool) -> bool {
    var var_0 = Struct_2(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(select(0i, arg_0.a, arg_3), ~26620i), -2147483647i), arg_0.a);
    var var_1 = Struct_2(1i, _wgslsmith_div_i32(-29958i, _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(var_0.a), abs(6566i), firstLeadingBit(38625i), -2147483647i), vec4<i32>(31634i, var_0.b, var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, var_0.a), vec3<i32>(2147483647i, arg_0.a, 9318i))))));
    return !any(vec4<bool>(!arg_3, u_input.a <= ~37163i, any(!vec4<bool>(arg_3, arg_3, false, arg_3)), arg_3));
}

fn func_5(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)));
    var var_1 = Struct_2(-4930i, u_input.a);
    var var_2 = Struct_1(~u_input.d);
    var var_3 = Struct_1(_wgslsmith_clamp_u32(15947u, ~(~1u), ~firstLeadingBit(0u << (u_input.c.x % 32u))));
    var var_4 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_3.a, var_3.a), 0u, ~4294967295u, ~var_3.a), u_input.c) ^ u_input.c.x);
    return (-_wgslsmith_sub_i32(u_input.a, u_input.a) << (_wgslsmith_mod_u32(min(6515u & var_2.a, 47483u), ~u_input.d) % 32u)) & countOneBits(u_input.b.x);
}

fn func_2() -> i32 {
    let var_0 = 1i;
    var var_1 = Struct_2(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(-u_input.b, _wgslsmith_mult_vec2_i32(u_input.b, u_input.b), vec2<bool>(false, true)), _wgslsmith_mod_vec2_i32(u_input.b, ~u_input.b)), vec2<i32>(firstLeadingBit(-1i) >> (0u % 32u), max(var_0, firstLeadingBit(var_0)))));
    var_1 = Struct_2(-79947i, firstLeadingBit(func_5(func_4(Struct_2(var_0, var_1.b), func_3(650f, vec2<f32>(457f, 280f), 4294967295u, vec3<i32>(-13761i, -13589i, 19704i)), 37655u & u_input.c.x, true))));
    var_1 = Struct_2(~14865i, 2147483647i);
    var var_2 = Struct_1(firstTrailingBit(min(~1u, ~u_input.d)));
    return -17641i;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(select(0i, u_input.b.x, false), u_input.a, func_2()), func_5(all(vec2<bool>(any(vec3<bool>(false, true, true)), true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-313f, arg_0.x, arg_0.x, -772f) - vec4<f32>(191f, arg_0.x, arg_0.x, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-1113f * _wgslsmith_f_op_f32(-arg_0.x)), 678f, -807f, arg_0.x))));
    let var_2 = Struct_1(_wgslsmith_mod_u32(1u, ~(~4294967295u)));
    let var_3 = arg_0;
    var_0 = u_input.b;
    return Struct_2(-var_0.x >> (26050u % 32u), 1i);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -1645f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-421f, var_0)))), -1279f, _wgslsmith_f_op_f32(ceil(1137f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(307f, -284f) + -1146f)))) + vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(-var_0), 826f));
    var var_2 = select(vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1308f)) * _wgslsmith_f_op_f32(floor(var_0))) != var_1.x), vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true), _wgslsmith_clamp_u32(~arg_2.a, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~54983u) == arg_1));
    var_2 = vec2<bool>(true, (1i >> (~4294967295u % 32u)) >= -_wgslsmith_mult_i32(u_input.a >> (arg_3.a % 32u), -68049i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x)));
    return Struct_1(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(vec3<f32>(1f, 1f, 1f)), u_input.d, Struct_1(_wgslsmith_mod_u32(1u, firstLeadingBit(reverseBits(u_input.d)))), Struct_1(~0u));
    let var_1 = -((abs(vec3<i32>(2147483647i, -44293i, -41937i) << (vec3<u32>(var_0.a, u_input.c.x, 1u) % vec3<u32>(32u))) << (~_wgslsmith_mult_vec3_u32(u_input.c.xxw, vec3<u32>(u_input.c.x, var_0.a, u_input.d)) % vec3<u32>(32u))) | countOneBits(~(~vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(~_wgslsmith_mult_i32(firstLeadingBit(-2147483647i), var_1.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 2147483647i, -1i), vec4<i32>(-58877i, u_input.a, -2147483647i, var_1.x)), _wgslsmith_mult_i32(var_1.x, var_1.x)), _wgslsmith_sub_i32(min(u_input.a, -2147483647i), ~u_input.b.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, -30242i, 2147483647i), 1i), 13569i), -2147483647i), firstTrailingBit(~vec4<i32>(~var_1.x, _wgslsmith_sub_i32(-65887i, u_input.a), -44231i, reverseBits(2147483647i))));
    var var_3 = Struct_1(abs(select(var_0.a, var_0.a, false)));
    var var_4 = select(!(!vec3<bool>(any(vec4<bool>(false, false, true, false)), func_4(Struct_2(1i, u_input.a), 18942u, 53118u, false), true)), vec3<bool>(!any(vec2<bool>(true, true)), true, _wgslsmith_mod_u32(0u, 0u | u_input.d) >= 14371u), (any(vec4<bool>(false, true, true, false)) || true) || !(!(u_input.a <= 2147483647i)));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1437f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(350f * 1803f), _wgslsmith_f_op_f32(floor(634f)), any(vec4<bool>(var_4.x, false, var_4.x, var_4.x)))))));
    var var_6 = ~(~min(vec2<i32>(u_input.b.x, abs(var_2.x)), -vec2<i32>(u_input.b.x, 1i)));
    var var_7 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(floor(1268f)), _wgslsmith_div_f32(147f, -248f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(320f, 1694f, -945f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, -2255f, 540f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-694f, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(-469f, _wgslsmith_f_op_f32(round(407f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f * -593f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-780f, 1000f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_div_f32(-792f, 565f))))), var_0.a, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-707f))), _wgslsmith_f_op_f32(-781f * 1790f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(352f))), _wgslsmith_f_op_f32(step(-1200f, _wgslsmith_div_f32(455f, 1205f))))));
}

