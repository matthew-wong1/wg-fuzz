struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(-vec4<i32>(8727i, 26578i, arg_0, 13143i), firstTrailingBit(vec4<i32>(arg_0, arg_0, -51351i, arg_0))), vec4<i32>(-1i) * -vec4<i32>(arg_0, -23374i, arg_0, arg_0), true), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(-2147483647i, 0i)), 20588i, _wgslsmith_add_i32(1i, 1i), arg_0 | 101163i))), (_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0, -5881i)), -vec2<i32>(2147483647i, -48864i)) & (arg_0 & _wgslsmith_mod_i32(-3456i, arg_0))) ^ 2147483647i, arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-607f, 1653f), vec2<f32>(-463f, -573f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(486f, -1000f) * vec2<f32>(-803f, 716f))))) - vec2<f32>(464f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(218f)))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1456f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, -2076f)))), vec2<f32>(-2293f, _wgslsmith_f_op_f32(select(672f, 2050f, false))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f * var_1.x)), var_1.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, -596f))))), vec2<f32>(625f, _wgslsmith_f_op_f32(var_1.x - var_1.x)), vec2<bool>(true, true))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1089f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -2785f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-187f, -750f), vec2<f32>(-363f, var_1.x))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x)))))), vec2<f32>(var_1.x, 578f), all(vec3<bool>(all(vec4<bool>(true, true, true, true)), var_1.x < _wgslsmith_f_op_f32(f32(-1f) * -131f), all(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, true, false, true), vec4<bool>(true, true, arg_1.a, false)))))));
    var var_2 = arg_1;
    return !(!select(!(!vec4<bool>(true, var_2.a, var_2.a, var_2.a)), vec4<bool>(var_2.a, true, var_2.a, all(vec3<bool>(true, false, arg_1.a))), select(vec4<bool>(true, false, var_2.a, true), vec4<bool>(true, arg_1.a, false, false), !vec4<bool>(arg_1.a, arg_1.a, false, true))));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    var var_0 = 1f;
    var var_1 = select(select(func_3(1i, Struct_2(true, firstTrailingBit(vec3<u32>(1u, 4294967295u, 21759u)))), !(!func_3(13409i, Struct_2(false, vec3<u32>(u_input.b, 0u, u_input.a.x)))), vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec4<bool>(true, true, true, true)), !all(vec4<bool>(true, false, true, true)))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), false), true);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -473f);
    var var_2 = ~(~vec2<u32>(4294967295u, (u_input.b >> (u_input.a.x % 32u)) | u_input.b));
    var_2 = ~vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(9325u, u_input.a.x), vec2<u32>(u_input.b, u_input.a.x)), 32665u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(1f, 1f, 1f, 1f)))))) - -1803f);
    var var_1 = var_0;
    return Struct_4(vec3<f32>(var_0, 160f, _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, 1000f, var_0, var_0), vec4<f32>(var_0, var_0, var_0, var_0), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(719f, -1194f, 189f, 410f) + vec4<f32>(var_0, 1675f, -221f, var_0)))))), vec4<u32>(countOneBits(u_input.a.x), u_input.a.x, u_input.b, 4294967295u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool, arg_3: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 522f, -1496f, arg_0.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_1.a.x, arg_0.a.x, -404f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1224f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 649f) + _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x))))));
    let var_1 = !(!select(select(vec4<bool>(arg_2, arg_2, arg_3.x, true), vec4<bool>(false, true, arg_3.x, true), all(vec2<bool>(false, arg_2))), select(!vec4<bool>(false, true, arg_3.x, true), !vec4<bool>(arg_3.x, true, true, arg_3.x), true), vec4<bool>(any(vec2<bool>(arg_2, arg_2)), true, arg_3.x & false, !arg_3.x)));
    var var_2 = ~(firstTrailingBit(vec3<i32>(1i, 1i, 1i)) & _wgslsmith_sub_vec3_i32(reverseBits(-vec3<i32>(-1091i, 23072i, -9886i)), abs(vec3<i32>(-4576i, -460i, -6069i))));
    return arg_3.x;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> Struct_4 {
    let var_0 = arg_1;
    var var_1 = ~countOneBits(-vec3<i32>(1i, 1i, 1i) >> (~(~vec3<u32>(7170u, 6713u, u_input.b)) % vec3<u32>(32u)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(340f)), _wgslsmith_f_op_f32(ceil(246f)), _wgslsmith_f_op_f32(-1000f - 349f))))), vec4<u32>(u_input.b, max(u_input.b, abs(1u)) << (1u % 32u), 73888u, ~(~u_input.b)));
    var_0 = func_5(Struct_2(true, ~vec3<u32>(countOneBits(6988u), u_input.b, 0u)), vec3<bool>(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.a.xy)), func_1(), true || any(vec2<bool>(true, true)), vec2<bool>(true, select(true, false, true))), true, !func_3(-37519i, Struct_2(true, vec3<u32>(95028u, var_0.b.x, u_input.b))).x), (1102f > var_0.a.x) & false, (abs(~var_0.b.x) >> (_wgslsmith_mod_u32(u_input.a.x ^ u_input.b, var_0.b.x) % 32u)) >> (23119u % 32u));
    let var_1 = var_0.a.x;
    var_0 = Struct_4(var_0.a, ~vec4<u32>(u_input.b, abs(countOneBits(57898u)), 43753u, 37097u));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1405f, var_0.a.x) * _wgslsmith_div_vec2_f32(var_0.a.yz, var_0.a.xx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -629f)))), var_0.a.xz, true)));
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(max(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(275f, var_0.a.x, var_2.a.x) + var_0.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, var_0.a.x, -423f))))))), _wgslsmith_mod_vec4_u32(~var_0.b, vec4<u32>(0u, u_input.a.x, _wgslsmith_mod_u32(0u, var_0.b.x), ~firstLeadingBit(117448u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~1u), countOneBits((u_input.b >> (u_input.a.x % 32u)) ^ func_1().b.x), u_input.a.x));
}

