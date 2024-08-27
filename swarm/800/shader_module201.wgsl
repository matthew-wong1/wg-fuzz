struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_1(~min(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.c, -1i), vec4<i32>(358i, u_input.a, u_input.a, u_input.c))), reverseBits(select(vec4<i32>(u_input.a, 1i, u_input.a, -64754i), vec4<i32>(u_input.e.x, 0i, -1297i, 8050i), false))), vec2<u32>(0u, ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(22252u, u_input.b.x), vec2<u32>(u_input.b.x, 87092u)), 37177u, 219f <= arg_0)), abs(u_input.b.x), ~(~u_input.e.x));
    let var_1 = Struct_2(arg_0);
    let var_2 = _wgslsmith_add_i32(1i, u_input.a) < -(~(~27878i) | max(_wgslsmith_clamp_i32(var_0.d, 48962i, var_0.a.x), firstTrailingBit(-1i)));
    let var_3 = Struct_2(119f);
    var var_4 = var_1;
    return _wgslsmith_dot_vec2_i32(u_input.e, ~abs(select(vec2<i32>(-2147483647i, 2147483647i), -u_input.e, !var_2)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_div_f32(arg_3.a, arg_3.a);
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -8793i, func_3(-376f, ~vec2<u32>(u_input.b.x, 4294967295u)), -3283i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x), vec3<i32>(1i, arg_2, 1i)), -39865i)), ~(-vec4<i32>(arg_2, 2451i, -64426i, 8950i))), _wgslsmith_sub_vec2_u32(arg_0, abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(u_input.d, 77868u)))), ~arg_0.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(22524i, 1i), vec2<i32>(-2147483647i, arg_2)) & -53223i);
    var var_2 = arg_3;
    var_2 = Struct_2(-355f);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    return u_input.a;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = 360f;
    let var_1 = _wgslsmith_add_i32(max(abs(_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(30331i, 1i))), arg_0.b.a.x), max(-1i, 2147483647i));
    var var_2 = !(34401u >= min(1u, abs(u_input.b.x >> (4294967295u % 32u))));
    var_2 = true;
    var var_3 = Struct_4(select(min(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b) << (u_input.b % vec4<u32>(32u)), u_input.b), ~u_input.b, !(!select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, true, arg_0.a, false), arg_0.a))), vec2<i32>(func_2(~_wgslsmith_mod_vec2_u32(u_input.b.xx, vec2<u32>(u_input.d, 44520u)), vec2<bool>(arg_0.a, true), 2147483647i, Struct_2(_wgslsmith_f_op_f32(-776f - var_0))), 0i), Struct_3(true, arg_0.b, arg_0.c, arg_0.c), -vec4<i32>(func_2(~vec2<u32>(arg_0.b.b.x, u_input.b.x), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a), arg_0.a), u_input.e.x, Struct_2(var_0)), 1i, ~1i, _wgslsmith_mod_i32(~39838i, var_1)));
    return var_3.c.b;
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1785f, arg_0.c.a) - vec2<f32>(-1394f, arg_0.c.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(579f, 928f) * vec2<f32>(arg_0.d.a, 1524f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-565f, -1171f) - vec2<f32>(-1171f, arg_0.d.a))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, -889f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.d.a, arg_0.c.a))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_f_op_f32(-590f * arg_0.c.a))))));
    var var_2 = func_1(arg_0);
    let var_3 = 4294967295u >> (_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.b.x, 1036u, var_2.b.x), _wgslsmith_mult_vec3_u32(u_input.b.zwz, vec3<u32>(arg_0.b.b.x, u_input.b.x, 1u)), abs(vec3<u32>(var_2.c, u_input.d, var_2.b.x))), vec3<u32>(arg_0.b.b.x, _wgslsmith_mod_u32(arg_0.b.c, _wgslsmith_clamp_u32(21721u, var_2.c, 1u)), ~_wgslsmith_sub_u32(37821u, 0u))) % 32u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec4<u32>(~countOneBits(0u) & u_input.d, ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 21094u, u_input.d << (u_input.d % 32u)), u_input.b.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), vec4<u32>(u_input.d, 1u, 1u, 4294967295u))), -u_input.e, Struct_3(func_4(Struct_3(true, func_1(Struct_3(true, Struct_1(vec4<i32>(1i, 50209i, u_input.a, u_input.e.x), vec2<u32>(102005u, u_input.d), 0u, u_input.e.x), Struct_2(254f), Struct_2(-1627f))), Struct_2(328f), Struct_2(643f))), Struct_1(-vec4<i32>(19207i, u_input.a, u_input.c, 0i) << (~vec4<u32>(u_input.b.x, u_input.d, 1u, 48511u) % vec4<u32>(32u)), ~(~vec2<u32>(1u, 1u)), u_input.b.x, 0i), Struct_2(1316f), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(123f * -962f), _wgslsmith_f_op_f32(f32(-1f) * -1815f), true)))), vec4<i32>(u_input.e.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-27523i, -2147483647i, -1i, u_input.a), vec4<i32>(u_input.c, u_input.a, 0i, -2147483647i)), -vec4<i32>(2147483647i, u_input.c, 8405i, 0i) << (~vec4<u32>(u_input.d, 4294967295u, 10743u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-56786i, u_input.e.x, u_input.c) | (i32(-1i) * -17470i), u_input.c), 2147483647i));
    var var_1 = var_0.c;
    var var_2 = var_0.c;
    let var_3 = -_wgslsmith_sub_i32(15168i, -var_1.b.a.x);
    var var_4 = max(u_input.e.x, var_1.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.a, -253f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1049f)), 1492f))), vec2<f32>(var_1.d.a, var_0.c.c.a)), ~var_2.b.c, 0i, vec4<i32>(-1i, select(~abs(var_3), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.b.a.x), vec2<i32>(-2147483647i, 0i))), _wgslsmith_f_op_f32(ceil(var_0.c.c.a)) != _wgslsmith_f_op_f32(1554f + var_0.c.d.a)), 17535i, _wgslsmith_mod_i32(countOneBits(u_input.c | 39100i), u_input.e.x)), 643f);
}

