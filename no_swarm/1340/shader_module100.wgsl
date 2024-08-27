struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(~firstLeadingBit(vec3<u32>(2219u, arg_0.x, 1u)), _wgslsmith_f_op_f32(368f + -340f)));
    var_0 = Struct_2(Struct_1(select(_wgslsmith_mod_vec3_u32(var_0.a.a, var_0.a.a), select(var_0.a.a, vec3<u32>(75527u, arg_0.x, arg_0.x), vec3<bool>(false, true, true)), select(false, true, true)) | _wgslsmith_mult_vec3_u32(var_0.a.a, var_0.a.a | vec3<u32>(arg_0.x, var_0.a.a.x, arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a), 1660f, all(vec4<bool>(true, true, true, true))))));
    var var_1 = !any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), select(true, true, false)));
    var var_2 = arg_1;
    let var_3 = !(_wgslsmith_f_op_f32(trunc(-2569f)) != _wgslsmith_f_op_f32(select(var_2.a, 1417f, false)));
    return var_2.a;
}

fn func_2() -> Struct_5 {
    let var_0 = -1773f;
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 1307f));
    var var_2 = Struct_3(1u);
    var var_3 = -1i;
    var var_4 = vec4<i32>(-2147483647i, _wgslsmith_mult_i32(-u_input.a.x, 1i), ~(~(-abs(2147483647i))), -_wgslsmith_clamp_i32(-18172i, _wgslsmith_mult_i32(~u_input.a.x, -24153i), 0i));
    return Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_u32(~vec2<u32>(var_2.a, 4294967295u), vec2<u32>(var_2.a, 47183u)), Struct_5(var_1.a), Struct_5(var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, 231f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) + vec2<f32>(var_0, -1710f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, var_0)))));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> vec4<i32> {
    let var_0 = arg_1;
    var var_1 = -(u_input.b | firstTrailingBit(arg_0 << (1u % 32u)));
    let var_2 = _wgslsmith_mod_i32(u_input.a.x, ~arg_0);
    var var_3 = ~(~1u);
    var var_4 = firstTrailingBit(vec4<i32>(-(~var_2) | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(arg_0, -2147483647i)), _wgslsmith_mult_i32(1i, u_input.b)), countOneBits(1i), _wgslsmith_dot_vec4_i32(~(vec4<i32>(var_2, u_input.b, arg_0, -1i) & vec4<i32>(-54151i, var_2, -54986i, arg_0)), abs(vec4<i32>(-2147483647i, 89627i, 2147483647i, arg_0)) | vec4<i32>(-4269i, -1i, var_2, 1i)), -firstLeadingBit(max(var_2, var_2))));
    return reverseBits(vec4<i32>(26839i, -7804i, 0i, _wgslsmith_div_i32(var_4.x, 1i))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(-1i, -1i), _wgslsmith_dot_vec2_i32(countOneBits(var_4.yy), ~vec2<i32>(-72536i, var_2)), var_4.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(27195u, 1724u), vec2<u32>(1u, 0u)) % 32u), 1i), -firstTrailingBit(vec4<i32>(var_2, var_2, arg_0, 1i)));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(-12487i, func_2());
    var_0 = firstLeadingBit(~(-(~vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 28748i)) >> (~(~vec4<u32>(1u, 6121u, 0u, 1u)) % vec4<u32>(32u))));
    let var_1 = var_0.x >> (firstTrailingBit(1u) % 32u);
    var var_2 = select(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), !any(vec2<bool>(true, true))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)) && false);
    let var_3 = _wgslsmith_f_op_f32(-1664f - -603f);
    return Struct_2(Struct_1(~select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(78934u, 4294967295u, 1u), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, true, true), vec3<bool>(true, true, false))), 1181f));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_dot_vec2_u32(arg_2.a.a.yy, firstTrailingBit(vec2<u32>(~(~arg_2.a.a.x), _wgslsmith_add_u32(arg_2.a.a.x, ~arg_2.a.a.x))));
    let var_2 = Struct_3(arg_2.a.a.x);
    let var_3 = -1i;
    var var_4 = -(u_input.a & -_wgslsmith_sub_vec2_i32(vec2<i32>(var_3, 33060i) >> (vec2<u32>(4294967295u, var_2.a) % vec2<u32>(32u)), arg_0));
    return Struct_2(Struct_1(arg_2.a.a, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.a, select(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-1i, u_input.a.x), firstTrailingBit(-2147483647i)), u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -34988i, u_input.b), vec3<i32>(u_input.a.x, u_input.b, u_input.b)), -vec3<i32>(2473i, u_input.a.x, -1i)) <= -35649i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -840f));
    var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), u_input.a, u_input.a);
    let var_2 = func_5(select(u_input.a, vec2<i32>(abs(var_0.x), firstLeadingBit(-35926i)), vec2<bool>(true, true)) | vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(var_0.x, u_input.a.x)), var_0.x & firstLeadingBit(u_input.b)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec3<bool>(true, true, true))), vec3<bool>(true, ~72241u <= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(55245u, 4294967295u, 0u)), false)), func_1(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1157f)), 766f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(693f, 145f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(806f, 1020f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1394f - -1074f) - var_2.a.b);
    var var_3 = select(vec2<bool>(true, true), !(!vec2<bool>(true, any(vec3<bool>(true, true, true)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_i32(0i, _wgslsmith_sub_i32(select(var_0.x, 2147483647i, true), var_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) - _wgslsmith_f_op_f32(max(801f, 1651f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -861f) + _wgslsmith_div_f32(var_2.a.b, var_2.a.b)), var_2.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1857f, var_2.a.b, var_2.a.b, -1000f), vec4<f32>(-1989f, var_2.a.b, var_2.a.b, var_2.a.b))))), vec4<bool>(any(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(false, var_3.x), vec2<bool>(false, var_3.x))), true, true, var_3.x))), ~(~31727i), _wgslsmith_mult_vec2_i32(min(select(u_input.a, vec2<i32>(var_0.x, u_input.b), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, var_3.x))), ~vec2<i32>(var_0.x, 2064i) & u_input.a), vec2<i32>(-53155i, -4022i)), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_2.a.a.x), abs(vec2<u32>(4294967295u, var_2.a.a.x)) >> (vec2<u32>(4294967295u, var_2.a.a.x) % vec2<u32>(32u))), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f))), Struct_5(var_2.a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(627f, var_2.a.b)))))));
}

