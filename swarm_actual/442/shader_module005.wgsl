struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(4294967295u & _wgslsmith_clamp_u32(11638u, 1u, min(42138u, 20889u)), 1u));
    var var_1 = _wgslsmith_div_f32(186f, -367f);
    let var_2 = Struct_3(var_0);
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1206f - 699f), -535f));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1149f);
    return 1522f;
}

fn func_2(arg_0: vec2<f32>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -533f, arg_0.x)), vec4<f32>(355f, 2157f, arg_0.x, -236f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(379f, arg_0.x, -923f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1166f, arg_0.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -862f), 594f))) - _wgslsmith_f_op_f32(func_3(2147483647i))), vec2<u32>(~countOneBits(44960u), 22826u), -reverseBits(0i | min(0i, u_input.b)));
    return vec2<i32>(var_0.d, _wgslsmith_add_i32(var_0.d, ~_wgslsmith_add_i32(var_0.d, -2147483647i)) << (74523u % 32u));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1040f)), _wgslsmith_f_op_f32(step(-1000f, 184f))))), vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-828f, -842f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-564f, 184f) - vec2<f32>(595f, 248f))))));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a, func_2(vec2<f32>(var_0.x, var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1548f)) * _wgslsmith_f_op_f32(abs(342f)));
    let var_3 = _wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, -2147483647i, _wgslsmith_sub_i32(20128i, u_input.b)), _wgslsmith_mult_vec3_i32(-reverseBits(vec3<i32>(21395i, -19522i, u_input.a.x)), -(vec3<i32>(u_input.b, u_input.a.x, -5951i) & vec3<i32>(1i, -1i, u_input.a.x)))) | _wgslsmith_mult_vec3_i32(~(-countOneBits(vec3<i32>(u_input.b, 2147483647i, u_input.a.x))), -_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a.x, 12763i, 8333i), select(vec3<i32>(-44129i, 61602i, -34461i), vec3<i32>(u_input.b, u_input.a.x, -18896i), false)));
    var_2 = _wgslsmith_f_op_f32(-1638f + -1128f);
    return false;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-1i, 1i), u_input.a.x), max(-u_input.a, -_wgslsmith_add_vec2_i32(arg_0.yz, arg_0.yy)));
    let var_1 = _wgslsmith_clamp_vec3_i32(countOneBits(arg_0) ^ arg_0, ~arg_0, arg_0);
    let var_2 = vec2<bool>(true, arg_1.x);
    var var_3 = Struct_4(Struct_2(!select(!var_2, vec2<bool>(false, var_2.x), true)), Struct_3(_wgslsmith_clamp_u32(firstLeadingBit(~31268u), _wgslsmith_clamp_u32(~4294967295u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 0u, 72599u))), ~1u)));
    let var_4 = vec2<u32>(~_wgslsmith_div_u32((var_3.b.a >> (4294967295u % 32u)) | _wgslsmith_add_u32(var_3.b.a, 0u), 0u), ~(~firstTrailingBit(_wgslsmith_sub_u32(0u, var_3.b.a))));
    return vec2<u32>(var_4.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u ^ ~(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 94803u)) % 32u));
    var var_1 = func_4(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a ^ (vec2<i32>(35657i, 52026i) >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(reverseBits(u_input.a), -vec2<i32>(25091i, -21617i))), abs(0i), u_input.a.x), !vec2<bool>(func_1(), false));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(31643i, -1i, ~u_input.b, u_input.a.x)), _wgslsmith_sub_vec4_i32(-max(vec4<i32>(u_input.a.x, -21762i, u_input.a.x, 26352i), vec4<i32>(-1i, -1i, -2147483647i, -16368i)), vec4<i32>(1i, _wgslsmith_sub_i32(0i, -72685i), -1i, 0i))), u_input.b | ~func_2(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 569f), vec2<f32>(958f, 530f))).x, abs(1i), 27184i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1411f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1361f))), _wgslsmith_f_op_f32(f32(-1f) * -311f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))), _wgslsmith_mod_vec2_u32(firstTrailingBit(min(vec2<u32>(var_0, var_0), vec2<u32>(var_0, 1u))), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 65452u), select(vec2<u32>(103956u, 0u), vec2<u32>(var_0, 0u), vec2<bool>(false, true)))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), -33976i);
    var var_4 = Struct_4(Struct_2(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_3(9009u));
    var var_5 = var_4.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_2.wzw, _wgslsmith_mod_vec3_i32(firstLeadingBit(var_2.yxw), var_2.zwx)), 1u | var_4.b.a, var_3.a.yzw);
}

