struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    var var_0 = true;
    var var_1 = Struct_2(~(vec4<u32>(_wgslsmith_sub_u32(44934u, 11869u), 54580u, 61643u, _wgslsmith_sub_u32(51117u, u_input.a)) | vec4<u32>(1u, arg_1.c.c.x, arg_1.c.c.x << (arg_1.c.c.x % 32u), ~23454u)), _wgslsmith_div_i32(-22003i, arg_2.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(586f + -744f) * -1296f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) + arg_1.c.d.x), _wgslsmith_f_op_f32(step(-869f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)))))));
    return 4294967295u;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1501f) * _wgslsmith_f_op_f32(-arg_0.x))) + arg_0.x));
    let var_1 = Struct_3(arg_3.c.c.a.x, u_input.d, Struct_1(!(!(!arg_3.c.c.a)), ~reverseBits(arg_3.c.b.x) >> (45206u % 32u), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.c.c.c, vec2<u32>(0u, arg_2.b.x) | vec2<u32>(1u, arg_2.d.x), vec2<u32>(arg_3.b.x, arg_2.c.c.c.x) & vec2<u32>(4294967295u, 65521u)), abs(vec2<u32>(1u, 45630u))), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-arg_2.a))));
    let var_2 = arg_3.c.c.b;
    var var_3 = select(arg_2.c.a, arg_3.c.a, all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)) | ((!arg_2.c.a || true) && any(var_1.c.a)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)));
    return Struct_2(vec4<u32>(~(~6993u), 4294967295u, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, arg_3.d.x), 41338u), func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(337f, arg_0.x, arg_2.a))), Struct_3(var_1.c.a.x, arg_2.c.b, Struct_1(vec2<bool>(var_1.a, arg_3.c.c.a.x), arg_2.c.b.x, vec2<u32>(arg_2.c.c.c.x, 13911u), arg_3.c.c.d)), Struct_1(vec2<bool>(false, arg_3.c.c.a.x), 1i, vec2<u32>(0u, 24964u), arg_3.c.c.d))), u_input.b.x), abs(var_2));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.c.d.x, _wgslsmith_f_op_f32(floor(-485f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(375f, _wgslsmith_f_op_f32(trunc(496f))) + _wgslsmith_f_op_f32(665f + _wgslsmith_f_op_f32(arg_2.c.d.x * arg_2.c.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.d.x), -673f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-390f, arg_1.a, arg_1.a, arg_2.c.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, 144f, 196f)))) - vec4<f32>(arg_2.c.d.x, 1000f, _wgslsmith_f_op_f32(-arg_2.c.d.x), -130f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.d.x, arg_1.a, -1157f, -441f) * vec4<f32>(159f, -317f, -985f, -421f))))));
    let var_1 = arg_2;
    var var_2 = false;
    var var_3 = arg_1.c;
    var var_4 = !(_wgslsmith_f_op_f32(-arg_1.c.c.d.x) < _wgslsmith_f_op_f32(abs(arg_1.c.c.d.x))) | !var_3.a;
    return _wgslsmith_div_i32(select(u_input.d.x, ~(~var_3.b.x), !any(vec2<bool>(false, false))), 1i);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = Struct_1(!vec2<bool>(arg_0.x, u_input.b.x >= (u_input.b.x | 22440u)), _wgslsmith_add_i32(func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, 858f, 1722f)), u_input.c.x, Struct_4(1060f, vec2<u32>(4294967295u, 0u), Struct_3(true, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), Struct_1(vec2<bool>(arg_1.x, arg_1.x), u_input.d.x, vec2<u32>(u_input.c.x, 2992u), vec2<f32>(-2065f, 902f))), u_input.c), Struct_4(-647f, vec2<u32>(0u, u_input.c.x), Struct_3(arg_0.x, u_input.d, Struct_1(vec2<bool>(arg_1.x, true), 13290i, u_input.b, vec2<f32>(-1789f, 791f))), u_input.c)), Struct_4(_wgslsmith_div_f32(-2058f, -1316f), ~u_input.b, Struct_3(arg_0.x, u_input.d, Struct_1(vec2<bool>(true, true), -1i, u_input.b, vec2<f32>(1514f, 662f))), reverseBits(vec3<u32>(u_input.b.x, 1u, u_input.a))), Struct_3(any(vec4<bool>(true, arg_0.x, arg_1.x, arg_1.x)), u_input.d, Struct_1(vec2<bool>(false, true), u_input.d.x, u_input.b, vec2<f32>(812f, 1000f)))), u_input.d.x), vec2<u32>(reverseBits(_wgslsmith_div_u32(func_3(vec3<f32>(-200f, 798f, 689f), Struct_3(arg_1.x, u_input.d, Struct_1(vec2<bool>(true, arg_0.x), 1i, vec2<u32>(u_input.b.x, 4294967295u), vec2<f32>(-2436f, -352f))), Struct_1(arg_0, 319i, u_input.b, vec2<f32>(-1000f, 2684f))), _wgslsmith_mult_u32(45481u, 39167u))), _wgslsmith_mod_u32((90340u >> (u_input.b.x % 32u)) << (~u_input.a % 32u), ~15667u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2308f, -756f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f * -563f))));
    let var_1 = ~var_0.c.x;
    var_0 = Struct_1(!var_0.a, max(var_0.b, ~_wgslsmith_sub_i32(-1i, var_0.b)) | abs(abs(var_0.b)), ~(~u_input.c.yz), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-260f - 269f)) - vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-var_0.d.x))), var_0.d, true)));
    let var_2 = ~(vec4<u32>(var_1 >> (1u % 32u), ~u_input.a, ~u_input.a, u_input.c.x) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.x, 0u, u_input.b.x, 66140u), vec4<u32>(4294967295u, u_input.b.x, 87264u, 33290u))) << (~vec4<u32>(firstTrailingBit(36416u), _wgslsmith_mult_u32(78669u, 1u), 0u, 1u) % vec4<u32>(32u));
    var var_3 = !select(vec4<bool>(true, !(var_0.a.x && true), true, !(!arg_0.x)), vec4<bool>(arg_1.x, arg_0.x, true, true), false);
    return vec2<bool>(!(var_0.a.x & ((var_2.x >> (0u % 32u)) == _wgslsmith_clamp_u32(var_0.c.x, var_0.c.x, 20008u))), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_i32(-1i, ~_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(-2147483647i, -1i), i32(-1i) * -90832i));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(1000f - -574f), _wgslsmith_sub_vec2_u32(select(~u_input.b, u_input.c.yx, select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), func_1(vec2<bool>(true, false), vec3<bool>(false, false, false)), vec2<bool>(true, true))), ~vec2<u32>(u_input.a, u_input.c.x ^ u_input.a)), Struct_3(!(_wgslsmith_f_op_f32(ceil(1041f)) < -390f), u_input.d, Struct_1(func_1(vec2<bool>(false, false), vec3<bool>(true, true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(43376i, u_input.d.x, var_0, 2445i), -vec4<i32>(32999i, -15843i, u_input.d.x, u_input.d.x)), select(vec2<u32>(0u, 45247u), vec2<u32>(u_input.b.x, 17355u), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-296f, 1072f), vec2<f32>(471f, -1802f))))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.c.x, 4294967295u, u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 81056u), u_input.c), u_input.c), u_input.c), min(vec3<u32>(func_3(vec3<f32>(1443f, -535f, 758f), Struct_3(true, vec3<i32>(0i, u_input.d.x, 1i), Struct_1(vec2<bool>(true, true), 4085i, u_input.c.yx, vec2<f32>(775f, -1511f))), Struct_1(vec2<bool>(true, true), u_input.d.x, u_input.c.zy, vec2<f32>(-1000f, 730f))), countOneBits(19905u), u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(40326u, 4294967295u, 1u), vec3<u32>(0u, u_input.c.x, u_input.a)) | max(vec3<u32>(4294967295u, 97502u, 11737u), u_input.c))));
    var var_2 = -1565f;
    var var_3 = abs(u_input.d.x);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.c.d.x))) - _wgslsmith_f_op_f32(step(-404f, _wgslsmith_f_op_f32(1325f + 749f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1007f + _wgslsmith_f_op_f32(f32(-1f) * -1045f)), var_1.c.c.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-719f);
}

