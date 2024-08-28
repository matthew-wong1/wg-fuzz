struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_3((vec4<i32>(abs(-10693i), _wgslsmith_mod_i32(-2147483647i, u_input.b), -1i, -54838i) & vec4<i32>(-2147483647i, min(2147483647i, u_input.b), u_input.b, 66553i)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 34698u, 18215u), abs(u_input.c)) ^ (_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)) << (~vec4<u32>(17456u, u_input.c.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var_0 = Struct_3(_wgslsmith_div_vec4_i32(~(-_wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(u_input.b, var_0.a.x, 2147483647i, var_0.a.x))), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -19338i, 2147483647i, u_input.b), var_0.a), 3495i, -2147483647i ^ countOneBits(var_0.a.x), i32(-1i) * -44173i)));
    let var_1 = -_wgslsmith_dot_vec2_i32(abs(-var_0.a.zy) | vec2<i32>(_wgslsmith_sub_i32(-1568i, 39284i), var_0.a.x & 22777i), var_0.a.yx);
    let var_2 = true;
    var var_3 = ~u_input.a.x;
    return var_0.a.zw & abs(-vec2<i32>(_wgslsmith_clamp_i32(0i, u_input.b, var_0.a.x), -1i));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = (arg_1.x | _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(18610u, 0u, arg_1.x), _wgslsmith_sub_u32(arg_1.x, 37935u)), _wgslsmith_add_u32(~u_input.a.x, ~arg_1.x))) >> (u_input.a.x % 32u);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-659f, arg_0, arg_0) - vec3<f32>(arg_0, -874f, -1000f))))), ~(~func_3()), u_input.b, arg_0, abs(_wgslsmith_div_vec2_i32(vec2<i32>(45251i, u_input.b), vec2<i32>(0i, 2147483647i)) << (~countOneBits(vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u))));
    var var_2 = true;
    var var_3 = ~var_1.c;
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, arg_0), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(var_1.a, vec3<f32>(arg_0, var_1.a.x, -1076f))))))), var_1.b, -1i, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f))), reverseBits(vec2<i32>(~_wgslsmith_mod_i32(39570i, var_1.b.x), u_input.b << (var_0 % 32u))));
    return Struct_3(-firstLeadingBit(-abs(vec4<i32>(-2147483647i, 12063i, -38271i, var_1.e.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_4 {
    var var_0 = arg_2;
    let var_1 = !vec2<bool>(!all(vec4<bool>(true, true, true, true)), true);
    var var_2 = vec4<bool>(arg_2.x, false, var_1.x, any(!(!vec4<bool>(true, var_0.x, var_1.x, false))));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(151f, 847f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 1093f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1292f, -477f) + vec2<f32>(-172f, -783f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1420f, -639f), vec2<f32>(1655f, -892f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-740f, 847f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-976f, -806f), vec2<f32>(861f, 685f), var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, 2109f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(831f, -2855f), vec2<f32>(-1423f, -348f))) + vec2<f32>(345f, 340f))))));
    var_2 = !vec4<bool>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x) + _wgslsmith_f_op_f32(-379f - 1936f)) > 1f, var_2.x, any(!select(vec4<bool>(var_0.x, true, true, var_2.x), vec4<bool>(false, false, false, arg_2.x), var_1.x)));
    return Struct_4(vec4<i32>(~14697i, 55385i, ~arg_0.a.x & max(min(-31877i, arg_1.a.x), select(u_input.b, -57469i, false)), func_3().x));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -403f);
    let var_1 = 1i;
    let var_2 = vec2<i32>(var_1, -1i);
    var_0 = _wgslsmith_f_op_f32(-390f - -539f);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f) - _wgslsmith_div_f32(-996f, 457f)), _wgslsmith_f_op_f32(-1531f * 1161f), _wgslsmith_f_op_f32(trunc(856f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f)), _wgslsmith_f_op_f32(-772f - 948f), _wgslsmith_f_op_f32(round(1226f)))), vec2<i32>(-var_1, var_1), ~(-25959i ^ ~u_input.b) ^ ~(u_input.b & _wgslsmith_mod_i32(-2147483647i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f * 147f)), var_2);
    return func_4(Struct_3(-vec4<i32>(_wgslsmith_div_i32(-1i, var_2.x), var_2.x, _wgslsmith_mult_i32(-1i, 24491i), _wgslsmith_dot_vec2_i32(var_3.e, var_2))), func_2(-2200f, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.c.x, 4294967295u, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(0u, 79917u, 16917u, 34192u)), _wgslsmith_dot_vec3_u32(u_input.c.xyx, u_input.c.yyz), _wgslsmith_add_u32(1u, 29022u)), true, !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, any(vec4<bool>(false, false, false, true)), false)));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = ~(~select(u_input.c.yyx, ~(u_input.c.wzy & vec3<u32>(0u, u_input.c.x, 0u)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))));
    var_0 = _wgslsmith_mod_vec3_u32(reverseBits(~(~vec3<u32>(u_input.c.x, var_0.x, var_0.x))), _wgslsmith_clamp_vec3_u32(max(reverseBits(u_input.c.zwy << (vec3<u32>(var_0.x, var_0.x, 56277u) % vec3<u32>(32u))), u_input.a), vec3<u32>(var_0.x, 4294967295u, u_input.a.x) & u_input.c.zzy, vec3<u32>(select(var_0.x, 4294967295u, true), 1u ^ var_0.x, abs(u_input.a.x)) ^ max(~u_input.a, ~u_input.c.wzy)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -895f);
    let var_1 = func_5(u_input.b, func_1(), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0, var_0), var_0)), 1264f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1314f + var_0), _wgslsmith_f_op_f32(abs(var_0)))))), _wgslsmith_div_f32(var_0, 1391f)));
    let var_2 = ~u_input.c.x;
    var var_3 = u_input.c.xzy;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(176f + _wgslsmith_div_f32(var_0, var_0))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-964f, 1172f), 311f, var_0)))));
    let var_5 = var_1.a.wxx;
    let var_6 = reverseBits(83325u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(var_4.x * var_0)))), _wgslsmith_div_vec3_i32(func_4(Struct_3(firstLeadingBit(vec4<i32>(var_5.x, var_1.a.x, -24727i, 18201i))), func_2(_wgslsmith_f_op_f32(var_0 * var_0), ~vec3<u32>(0u, var_2, u_input.a.x), true, vec3<bool>(true, true, true)), vec2<bool>(true, true)).a.zxy, -(~(vec3<i32>(-1i, -48252i, 45088i) ^ var_5))), _wgslsmith_f_op_f32(1741f + _wgslsmith_f_op_f32(round(var_4.x))), abs(countOneBits(~24252u)));
}

