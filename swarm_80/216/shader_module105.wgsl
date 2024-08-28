struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    var var_0 = arg_0.b;
    let var_1 = Struct_1(-_wgslsmith_div_vec2_i32(u_input.b.xx, _wgslsmith_mult_vec2_i32(select(vec2<i32>(-14977i, var_0.c.a.x), vec2<i32>(-13601i, 1i), false), min(arg_0.d.a, vec2<i32>(arg_0.c.b.a.x, arg_0.b.c.a.x)))), var_0.b.b, var_0.e == -1314f, arg_2.d);
    var var_2 = arg_2;
    var_0 = arg_0.b;
    let var_3 = var_0.b.d;
    return ~(-_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, -1i, 60997i, -2147483647i), u_input.b), u_input.b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_3(vec2<u32>(u_input.a.x, u_input.a.x) & (vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~u_input.a.x) | ~vec2<u32>(u_input.a.x, u_input.a.x)), Struct_2(~u_input.b.x <= -u_input.b.x, Struct_1(vec2<i32>(0i, firstTrailingBit(-1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 606f)), arg_1.x, arg_1.x), Struct_1(vec2<i32>(arg_2.x, _wgslsmith_mod_i32(-6498i, arg_2.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.zx * vec2<f32>(370f, arg_0.x)), arg_0.xy, select(true, false, arg_1.x))), any(!vec4<bool>(arg_1.x, false, arg_1.x, false)), all(vec2<bool>(true, true))), vec3<u32>(~(~u_input.a.x), _wgslsmith_add_u32(u_input.a.x, 0u) << (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u), _wgslsmith_mod_u32(min(40815u, 0u), u_input.a.x)), arg_0.x), Struct_2(arg_1.x, Struct_1(firstTrailingBit(~u_input.b.wy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xx)), !arg_1.x, false), Struct_1(vec2<i32>(2789i, 19548i) >> (max(u_input.a.yz, u_input.a.zz) % vec2<u32>(32u)), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(exp2(arg_0.x)) <= _wgslsmith_f_op_f32(arg_0.x * arg_0.x), any(arg_1)), abs(u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_f32(sign(1f)))), Struct_1(~vec2<i32>(1i, firstTrailingBit(u_input.b.x)), vec2<f32>(1733f, arg_0.x), any(!select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, true, arg_1.x), false)), _wgslsmith_add_u32(~u_input.a.x, 48880u) < ~38137u));
    global0 = true;
    global0 = all(vec3<bool>(var_0.b.b.c, true, var_0.b.b.c));
    global0 = !(!(!arg_1.x));
    global0 = !(any(!select(vec4<bool>(var_0.d.d, false, arg_1.x, var_0.d.d), vec4<bool>(true, var_0.b.a, false, true), true)) || arg_1.x);
    return -1390f;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(_wgslsmith_mult_vec2_i32(u_input.b.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, ~0i), u_input.b.yy)), _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 992f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_f_op_f32(2216f + -774f))), vec3<bool>(1i <= -u_input.c, true, true), u_input.b.xx)));
    var var_1 = Struct_3(reverseBits(abs(~(vec2<u32>(9433u, u_input.a.x) ^ vec2<u32>(u_input.a.x, 1u)))), Struct_2(!(-11387i > firstTrailingBit(u_input.b.x)), Struct_1(~var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1303f, 404f), vec2<f32>(var_0.b, 298f))) - vec2<f32>(1000f, var_0.b)), true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false))), Struct_1(select(u_input.b.ww, var_0.a, any(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, var_0.b), vec2<f32>(603f, var_0.b)))), true, true || all(vec4<bool>(true, true, false, true))), vec3<u32>(4294967295u, ~abs(u_input.a.x), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-932f - var_0.b) + _wgslsmith_f_op_f32(-var_0.b)) + var_0.b)), Struct_2(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false)) & false, Struct_1(vec2<i32>(_wgslsmith_div_i32(5298i, u_input.c), firstLeadingBit(2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-118f - 1000f)), false, all(vec3<bool>(true, true, true))), Struct_1(vec2<i32>(func_1(Struct_3(vec2<u32>(32389u, 13008u), Struct_2(true, Struct_1(u_input.b.zw, vec2<f32>(var_0.b, var_0.b), true, false), Struct_1(vec2<i32>(16307i, 1i), vec2<f32>(1310f, var_0.b), false, true), vec3<u32>(u_input.a.x, u_input.a.x, 44081u), var_0.b), Struct_2(true, Struct_1(vec2<i32>(2147483647i, u_input.c), vec2<f32>(var_0.b, var_0.b), true, false), Struct_1(var_0.a, vec2<f32>(var_0.b, var_0.b), false, true), vec3<u32>(1u, u_input.a.x, 28170u), -558f), Struct_1(var_0.a, vec2<f32>(var_0.b, -148f), false, false)), vec2<bool>(false, false), Struct_1(u_input.b.zw, vec2<f32>(-1934f, var_0.b), true, false), vec2<bool>(true, true)), abs(u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(200f, var_0.b))), true, any(vec2<bool>(false, true))), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -564f)), var_0.b)), Struct_1(vec2<i32>(var_0.a.x | (u_input.b.x ^ u_input.c), 10491i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1206f)) - vec2<f32>(1245f, var_0.b)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-710f, 2251f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, 674f), vec2<f32>(2042f, -807f)))))), -36945i > (min(var_0.a.x, -8761i) ^ (u_input.b.x & 7633i)), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), all(vec3<bool>(false, false, true))))));
    let var_2 = Struct_2(select(false, var_0.a.x < -var_1.b.c.a.x, !var_1.d.c), var_1.b.c, var_1.b.c, ~min(select(vec3<u32>(23710u, var_1.b.d.x, u_input.a.x), var_1.c.d, vec3<bool>(var_1.d.c, true, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.d.x, 20112u, 4294967295u), u_input.a)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(46609u, 12260u)), abs(22953u ^ u_input.a.x), ~(~4524u)) % vec3<u32>(32u)), -1433f);
    let var_3 = vec2<u32>(min(firstTrailingBit(var_1.b.d.x) ^ max(_wgslsmith_mod_u32(var_2.d.x, var_2.d.x), 60543u), var_1.b.d.x), var_2.d.x);
    var var_4 = Struct_4(u_input.b.wyw);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(0i, -func_1(Struct_3(u_input.a.xx, Struct_2(true, Struct_1(u_input.b.ww, vec2<f32>(-1425f, 1095f), false, false), Struct_1(vec2<i32>(u_input.c, 0i), vec2<f32>(524f, 280f), true, false), u_input.a, 1000f), Struct_2(true, Struct_1(vec2<i32>(-5877i, -16641i), vec2<f32>(-598f, -519f), true, true), Struct_1(vec2<i32>(2147483647i, 0i), vec2<f32>(-1514f, 808f), true, false), vec3<u32>(1u, 1904u, u_input.a.x), -213f), Struct_1(vec2<i32>(u_input.c, -45096i), vec2<f32>(1578f, -207f), true, true)), vec2<bool>(false, false), Struct_1(vec2<i32>(-17295i, u_input.b.x), vec2<f32>(1023f, 1920f), false, true), vec2<bool>(true, false)))) >= ~u_input.b.x;
    let var_1 = Struct_3(vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x), func_2(), Struct_2(!var_0, Struct_1(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.c, -2147483647i), u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(-456f + 124f)), false, var_0), Struct_1(vec2<i32>(i32(-1i) * -1i, u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-664f, 656f))), u_input.a.x != _wgslsmith_mod_u32(0u, u_input.a.x), var_0), _wgslsmith_div_vec3_u32(func_2().d, _wgslsmith_clamp_vec3_u32(u_input.a, _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(1u, u_input.a.x, u_input.a.x)), vec3<u32>(1u, 1u, 1u))), 128f), Struct_1(select(vec2<i32>(u_input.b.x >> (18453u % 32u), u_input.c), _wgslsmith_sub_vec2_i32(reverseBits(u_input.b.wz), -u_input.b.wy), true), vec2<f32>(580f, _wgslsmith_f_op_f32(-1000f + -1042f)), any(vec2<bool>(true, true)) & var_0, true));
    let var_2 = all(select(select(select(!vec4<bool>(var_0, var_0, false, false), select(vec4<bool>(false, var_1.d.d, false, false), vec4<bool>(var_0, true, var_0, var_0), var_1.d.d), !var_1.d.c), !select(vec4<bool>(var_0, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, var_1.c.a, false)), vec4<bool>(var_1.c.c.d, true, true, !var_1.d.c)), select(vec4<bool>(select(var_1.b.a, true, true), var_0, true, true), select(!vec4<bool>(var_1.b.c.c, false, true, var_0), vec4<bool>(true, var_0, var_0, true), true), vec4<bool>(var_0, true, true, var_1.d.c & var_0)), select(select(!vec4<bool>(true, false, true, var_0), vec4<bool>(false, true, var_1.c.c.c, false), true), select(!vec4<bool>(var_1.c.a, true, true, false), select(vec4<bool>(true, var_1.c.a, true, var_0), vec4<bool>(var_0, var_0, false, var_1.d.c), vec4<bool>(var_0, var_0, var_1.c.c.c, true)), true), select(!vec4<bool>(var_1.c.a, false, var_1.c.c.c, var_1.b.c.c), select(vec4<bool>(false, var_1.d.c, true, false), vec4<bool>(var_0, var_0, false, var_1.b.b.c), false), vec4<bool>(var_0, true, true, var_0)))));
    var var_3 = Struct_3(~u_input.a.yz, func_2(), var_1.c, func_2().b);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.e));
    var_3 = var_1;
    var_4 = -1408f;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.b.b.x, vec3<u32>(var_1.b.d.x | (~0u >> (u_input.a.x % 32u)), reverseBits(~u_input.a.x), var_1.b.d.x), -16263i, u_input.a.x ^ 0u);
}

