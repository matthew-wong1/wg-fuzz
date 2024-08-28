struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec3<f32> {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(reverseBits(~51380u), 4294967295u), 1u, select(min(~0u, reverseBits(66266u)) >> (1u % 32u), abs(28288u), arg_0.a.c.x));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.a)), vec4<i32>(abs(-2147483647i), u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.wy, u_input.b.zz), -1361i), arg_0.a.c), select(~var_0.x, 1u, false), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.b.a.x)), -938f, true)), _wgslsmith_f_op_f32(arg_1 + -981f)), reverseBits(17709u) & _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.x, 40268u, var_0.x), var_0.x ^ 1u, 14535u >> (1u % 32u)), -62994i));
    global0 = 42349u;
    let var_2 = _wgslsmith_f_op_f32(floor(arg_1));
    global0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.zy), vec2<u32>(var_0.x, ~(var_1.a.d << (var_0.x % 32u)))));
    return _wgslsmith_f_op_vec3_f32(ceil(var_1.a.a.a));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(1293f, -1069f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_2.a.a.x)))))), reverseBits(arg_2.a.b), arg_2.a.c);
    let var_1 = Struct_3(arg_2);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(var_1.a.a, Struct_1(arg_2.a.a, vec4<i32>(-21953i, arg_2.a.b.x, var_1.a.a.b.x, arg_2.a.b.x), var_1.a.a.c), u_input.a.x), 758f)).x, var_0.a.x, true)), !arg_0))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-211f)));
    var var_4 = u_input.b.x ^ arg_2.e;
    return 4294967295u;
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    global0 = ~4294967295u;
    var var_0 = select(19201u, func_4(true, _wgslsmith_f_op_f32(arg_1 + arg_2.x), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(arg_0.a, Struct_1(vec3<f32>(927f, arg_2.x, arg_2.x), u_input.c, arg_0.a.c), -1i), 541f)), _wgslsmith_mult_vec4_i32(u_input.b, u_input.b), arg_0.b.c), 1u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(arg_2)))), _wgslsmith_clamp_u32(~1u, ~89648u, ~1u), ~3311i)), arg_0.b.c.x);
    global0 = 1u;
    var var_1 = firstTrailingBit(u_input.c.xzw);
    var_1 = u_input.b.zww;
    return arg_0.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = firstTrailingBit(-firstLeadingBit(-_wgslsmith_mult_vec2_i32(u_input.b.yy, arg_2.a.b.xz)));
    let var_1 = func_2(Struct_4(arg_2.a, arg_2.a, 36986i), _wgslsmith_f_op_f32(f32(-1f) * -550f), arg_2.a.a.xx);
    let var_2 = Struct_3(Struct_2(func_2(Struct_4(var_1, Struct_1(arg_2.a.a, vec4<i32>(-1i, 0i, -4868i, var_0.x), var_1.c), -1i), 228f, vec2<f32>(120f, _wgslsmith_div_f32(var_1.a.x, -136f))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.d, 83632u, 1u), vec4<u32>(arg_2.b, arg_2.d, 52176u, arg_2.d) | vec4<u32>(arg_2.b, 4294967295u, 4294967295u, arg_2.b)) | abs(~42152u), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x), _wgslsmith_f_op_f32(-arg_2.c.x))), 4294967295u, abs(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_div_i32(3814i, 2147483647i)))));
    var var_3 = firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(select(u_input.c.x | -23123i, func_2(Struct_4(Struct_1(arg_2.a.a, vec4<i32>(14810i, -2147483647i, 8279i, arg_2.e), var_2.a.a.c), Struct_1(arg_2.a.a, var_1.b, var_2.a.a.c), arg_2.a.b.x), var_2.a.c.x, vec2<f32>(arg_2.c.x, -410f)).b.x, true), arg_2.e | _wgslsmith_clamp_i32(-2147483647i, 2147483647i, var_2.a.e)), ~abs(var_2.a.a.b.yz)));
    var_3 = func_2(Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.a.x, arg_2.c.x, 1000f) * var_2.a.a.a)), var_1.b, select(!vec3<bool>(false, var_1.c.x, false), select(vec3<bool>(arg_2.a.c.x, false, arg_0.x), vec3<bool>(false, false, var_2.a.a.c.x), var_2.a.a.c.x), arg_2.a.c.x)), func_2(Struct_4(var_2.a.a, arg_2.a, arg_2.a.b.x | -2147483647i), arg_2.c.x, vec2<f32>(-284f, _wgslsmith_f_op_f32(-var_1.a.x))), abs(var_2.a.a.b.x)), _wgslsmith_f_op_f32(select(arg_2.c.x, _wgslsmith_f_op_f32(-var_1.a.x), 105290u >= _wgslsmith_add_u32(_wgslsmith_add_u32(arg_2.b, var_2.a.b), ~4294967295u))), vec2<f32>(-916f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x * 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.c.x), _wgslsmith_f_op_f32(var_2.a.a.a.x - -1142f)))))).b.xy;
    return arg_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(995f * 157f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), true, Struct_2(Struct_1(vec3<f32>(1897f, 1337f, -1470f), u_input.a, vec3<bool>(true, false, false)), 47487u, vec2<f32>(-329f, 158f), 580u, u_input.c.x))) * _wgslsmith_f_op_f32(floor(-1548f))), 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1011f, -1209f, 1704f) - vec3<f32>(-604f, -830f, 1157f)))) * vec3<f32>(_wgslsmith_f_op_f32(round(-431f)), _wgslsmith_f_op_f32(234f + 234f), -1042f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-408f, func_2(Struct_4(Struct_1(vec3<f32>(255f, 207f, -1000f), vec4<i32>(u_input.c.x, -74339i, 6197i, -39773i), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-324f, 1776f, -155f), vec4<i32>(u_input.a.x, 0i, u_input.b.x, u_input.c.x), vec3<bool>(true, true, false)), -13841i), 2257f, vec2<f32>(1324f, -598f)).a.x, _wgslsmith_f_op_f32(step(-306f, -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -621f), 268f, _wgslsmith_f_op_f32(-555f - -1000f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1469f, -1077f, 609f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-690f, -716f, -1771f) + vec3<f32>(899f, 1000f, -438f))), vec3<bool>(true, true, any(vec3<bool>(true, true, true))))), vec3<bool>(true, true, true)))));
    let var_1 = vec2<u32>(58038u, ~0u);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(func_2(Struct_4(Struct_1(vec3<f32>(var_0.x, -1134f, var_0.x), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.c.x), vec3<bool>(false, false, true)), Struct_1(vec3<f32>(382f, var_0.x, var_0.x), u_input.c, vec3<bool>(false, false, false)), u_input.b.x), -205f, var_0.zy).a))), abs(_wgslsmith_sub_vec4_i32(func_2(Struct_4(Struct_1(vec3<f32>(var_0.x, var_0.x, 213f), u_input.a, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(var_0.x, var_0.x, -412f), vec4<i32>(u_input.b.x, u_input.c.x, -1i, u_input.a.x), vec3<bool>(true, false, true)), u_input.b.x), var_0.x, var_0.xy).b, -u_input.c)), vec3<bool>(all(vec3<bool>(true, true, true)), true, -849f < _wgslsmith_f_op_f32(var_0.x + var_0.x))), 24171u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2524f))))))), var_1.x, _wgslsmith_sub_i32(countOneBits(-1i & u_input.c.x) & (reverseBits(u_input.b.x) >> (firstLeadingBit(47133u) % 32u)), _wgslsmith_add_i32(u_input.b.x, -_wgslsmith_div_i32(0i, u_input.a.x))));
    global0 = 57017u;
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(var_2.a.a));
    var_0 = vec3<f32>(-1358f, _wgslsmith_f_op_f32(sign(var_0.x)), -144f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a);
}

