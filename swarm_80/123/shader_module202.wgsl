struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(arg_1.a, arg_2.b.x < _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.x, 45184u), arg_2.c.xx), arg_2.b.yy), arg_2.b.x), u_input.c.yy);
    var_0 = Struct_1(var_0.a, true || arg_2.e, ~var_0.c >> (reverseBits((arg_1.a.yz ^ var_0.a.zy) << (vec2<u32>(69422u, var_0.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.a, 107111u, arg_1.a.x)), var_0.a));
    var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(var_0.a ^ min(vec3<u32>(u_input.a, 87389u, 21047u), vec3<u32>(var_0.a.x, u_input.a, 46519u)), reverseBits(arg_1.a), abs(vec3<u32>(0u, 33979u, arg_2.b.x))), !(var_0.b || true) || any(!select(vec2<bool>(true, var_0.b), vec2<bool>(false, false), vec2<bool>(true, var_0.b))), u_input.c.ww);
    var var_2 = _wgslsmith_f_op_f32(sign(-911f));
    return vec4<bool>(true, true, var_0.b, !(!var_0.b));
}

fn func_2() -> Struct_4 {
    let var_0 = vec4<u32>(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(u_input.a, 824u)), ~u_input.a, select(true, any(vec4<bool>(false, true, true, false)), true)), u_input.a, ~u_input.a ^ _wgslsmith_mod_u32(1u, u_input.a), 1u);
    var var_1 = select(func_3(-982f, Struct_3(vec3<u32>(u_input.a ^ 90943u, ~var_0.x, u_input.a)), Struct_2(1446f, abs(_wgslsmith_mod_vec3_u32(var_0.yyx, var_0.zwx)), firstLeadingBit(~vec4<u32>(var_0.x, 1u, var_0.x, 35937u)), true, !all(vec3<bool>(true, false, true)))), vec4<bool>(any(func_3(_wgslsmith_f_op_f32(f32(-1f) * -584f), Struct_3(vec3<u32>(4631u, var_0.x, 8618u)), Struct_2(-406f, vec3<u32>(u_input.a, var_0.x, 0u), var_0, true, true)).yxx), true, true, all(vec2<bool>(true, true))), any(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1012f)))), Struct_3(var_0.yxx), Struct_2(452f, var_0.zwx, var_0, true, all(vec4<bool>(true, true, true, false)))).wxy));
    let var_2 = Struct_3(var_0.zxw);
    let var_3 = u_input.c;
    var var_4 = Struct_1(vec3<u32>(min(9281u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_2.a.x), ~var_2.a.yx)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, u_input.a, var_2.a.x), abs(var_0.ywy)) & firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(23489u, var_2.a.x)), var_0.zz)), true, u_input.c.zy);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1072f * 682f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) + -440f)) - 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1985f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(709f)) - _wgslsmith_f_op_f32(-1318f * -1632f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-247f, 251f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(266f, 526f), vec2<f32>(-3203f, -1656f)))))), vec4<i32>(_wgslsmith_mod_i32(-25289i, -2147483647i & (u_input.b << (u_input.a % 32u))), _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_3.x, -1i, 21782i), vec3<i32>(2147483647i, 47117i, var_3.x) | u_input.c.xzz)), countOneBits(1i & (u_input.b ^ -32614i)), ~(-var_4.c.x)), max(-6495i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, var_3), abs(vec4<i32>(-2147483647i, -1i, -1i, var_3.x))), u_input.c.x ^ -37233i)), vec2<u32>(abs(min(var_4.a.x << (var_4.a.x % 32u), 1u)), var_2.a.x));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-966f * arg_3)))), arg_3));
    var var_1 = Struct_5(var_0.x, func_2(), _wgslsmith_mult_i32(-1199i << (~(~u_input.a) % 32u), u_input.b), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1426f), arg_0.a, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(17151u, arg_0.a.x, u_input.a), vec3<u32>(arg_0.a.x, arg_0.a.x, 0u)), u_input.a, _wgslsmith_mod_u32(1u, firstLeadingBit(arg_0.a.x)), arg_0.a.x), all(vec2<bool>(arg_1, false)), false));
    var_1 = Struct_5(var_1.d.a, func_2(), 54647i, var_1.d);
    var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3, arg_2)) + _wgslsmith_div_f32(-1200f, arg_2))) + -1000f), var_1.b, -2147483647i, var_1.d);
    var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(226f, var_0.x))), Struct_4(_wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_vec2_f32(-var_0.zx), -vec4<i32>(countOneBits(-2147483647i), -1i, -u_input.b, var_1.b.d), _wgslsmith_clamp_i32(2147483647i, 14235i, var_1.b.d) | -2147483647i, func_2().e), firstLeadingBit(-33176i), var_1.d);
    return var_1.b;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_5) -> vec4<i32> {
    let var_0 = func_3(arg_1.a, Struct_3(arg_2.d.c.yzz), Struct_2(arg_0, ~arg_2.d.c.xyz, ~abs(vec4<u32>(arg_2.d.b.x, u_input.a, 1u, arg_2.b.e.x)), false, (arg_1.c.x > 2147483647i) | arg_2.d.e)).yx;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1971f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, arg_0)))))), vec3<u32>(abs(_wgslsmith_mult_u32(u_input.a, arg_2.d.b.x) & 0u), ~countOneBits(_wgslsmith_mod_u32(55613u, arg_2.d.b.x)), u_input.a), ~abs(select(arg_2.d.c, vec4<u32>(u_input.a, 0u, 28634u, 49702u), vec4<bool>(true, var_0.x, arg_2.d.d, var_0.x))) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 50088u, arg_1.e.x, 22523u) << ((vec4<u32>(8432u, u_input.a, 1u, 4294967295u) & vec4<u32>(9332u, u_input.a, 62722u, arg_2.b.e.x)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.a, 4294967295u, arg_1.e.x, 4469u))) % vec4<u32>(32u)), select(var_0.x, _wgslsmith_add_u32(u_input.a, ~arg_1.e.x) < ~(~arg_2.d.b.x), arg_1.e.x < ~13983u), arg_2.d.e);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f * _wgslsmith_f_op_f32(f32(-1f) * -535f)));
    let var_3 = Struct_1(arg_2.d.b, !(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.e.x, 54017u), vec2<u32>(u_input.a, var_1.c.x)), 0u) != (_wgslsmith_div_u32(u_input.a, 4294967295u) | 46151u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-2147483647i, u_input.c.x | -12852i), -countOneBits(arg_2.c)), -_wgslsmith_sub_vec2_i32(vec2<i32>(23965i, 48478i), vec2<i32>(82122i, u_input.b)) ^ reverseBits(func_1(Struct_3(vec3<u32>(1u, 4294967295u, 21716u)), true, -107f, 557f).c.wx), vec2<i32>(~(-7542i), u_input.b)));
    let var_4 = arg_2.b.d;
    return vec4<i32>(-1i) * -vec4<i32>(-min(30251i, arg_2.c), -1i, 0i, arg_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1621f, _wgslsmith_f_op_f32(-856f * 143f)))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_mod_u32(u_input.a, 28849u)), u_input.a), u_input.a & (u_input.a & ~u_input.a), ~4294967295u), _wgslsmith_f_op_f32(240f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(971f - 2380f), _wgslsmith_f_op_f32(trunc(1745f)))), 1618f))), func_4(736f, func_1(Struct_3(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 46831u), false)), !any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(518f - _wgslsmith_f_op_f32(f32(-1f) * -691f)), _wgslsmith_f_op_f32(ceil(1f))), Struct_5(1035f, Struct_4(_wgslsmith_f_op_f32(step(-1098f, -1414f)), vec2<f32>(-852f, 804f), vec4<i32>(u_input.c.x, u_input.c.x, 0i, -2147483647i), i32(-1i) * -44551i, ~vec2<u32>(u_input.a, 0u)), -(~0i), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -609f), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), reverseBits(vec4<u32>(17346u, 3121u, u_input.a, 0u)), true, true))));
}

