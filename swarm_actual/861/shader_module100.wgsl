struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_1(abs(firstTrailingBit(_wgslsmith_div_i32(u_input.a, 0i) >> (u_input.d.x % 32u))), arg_0.x, -u_input.b);
    var_0 = Struct_1(u_input.a >> (u_input.c.x % 32u), true, min(_wgslsmith_add_i32(abs(1i), u_input.b), -_wgslsmith_mult_i32(firstTrailingBit(u_input.b), ~8587i)));
    var var_1 = Struct_1((abs(-u_input.b) ^ _wgslsmith_mult_i32(firstTrailingBit(var_0.c), _wgslsmith_div_i32(1i, u_input.a))) | -33787i, true, abs(~(-1i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1373f, -186f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-672f, 1000f)), arg_0.x)))), vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1447f * -840f), -468f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(24341i, 29121i), vec2<i32>(-34737i, var_1.a));
    return u_input.a;
}

fn func_2() -> u32 {
    let var_0 = vec4<bool>(false, true, !(_wgslsmith_f_op_f32(f32(-1f) * -1233f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -101f)))), true);
    let var_1 = Struct_4(Struct_1(-1i, var_0.x, func_3(!var_0)), ~(~max(select(vec3<u32>(1u, 4294967295u, 61589u), u_input.c, false), u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(201f, _wgslsmith_f_op_f32(-919f * -362f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1940f, 963f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1462f, -639f) - vec2<f32>(1144f, -490f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(517f, -1712f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -763f)))))), abs(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, 32004i), vec3<i32>(u_input.b, u_input.b, u_input.a)), -vec3<i32>(-37431i, -32713i, u_input.a))) << (min(_wgslsmith_div_u32(reverseBits(u_input.d.x), ~39494u), _wgslsmith_div_u32(u_input.d.x, u_input.d.x)) % 32u));
    var var_2 = var_1.a;
    var_2 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i >> (0u % 32u), var_1.a.a, 0i, -var_1.d), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_2.a, -1i, u_input.a), vec4<i32>(-2147483647i, 2147483647i, -55942i, var_1.a.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.c, -2147483647i, u_input.b, var_1.d), vec4<i32>(1i, u_input.b, -4686i, var_2.a))), select(vec4<i32>(u_input.a, 1i, -1i, var_1.a.a), abs(vec4<i32>(var_1.d, 20985i, -12426i, 2264i)), vec4<bool>(var_0.x, var_0.x, true, true))), ~firstTrailingBit(vec4<i32>(u_input.b, var_1.d, 1i, u_input.b) >> (vec4<u32>(u_input.d.x, var_1.b.x, 4294967295u, 72360u) % vec4<u32>(32u)))), !(u_input.d.x < 66333u), 1i);
    var var_3 = Struct_2(Struct_1(var_1.a.a, true, ~_wgslsmith_add_i32(1i, -34603i) & min(~(-33691i), var_2.a)), Struct_1(func_3(var_0), var_2.b, u_input.b), var_0.x);
    return _wgslsmith_add_u32(~(var_1.b.x | 27252u) | ~var_1.b.x, max(_wgslsmith_dot_vec2_u32(~var_1.b.yz, var_1.b.xx), 24111u)) ^ ~max(~u_input.d.x, var_1.b.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 52341u, func_2(), 1u), _wgslsmith_mult_vec4_u32(~max(reverseBits(vec4<u32>(1u, 4294967295u, arg_1.b.x, arg_1.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.c.x, 4294967295u), vec4<u32>(22208u, 1u, u_input.d.x, 29490u))), vec4<u32>(arg_1.b.x, 36320u, ~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), firstTrailingBit(0u))));
    return 49183i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_i32(-func_1(Struct_3(Struct_2(Struct_1(u_input.a, true, 21363i), Struct_1(u_input.a, true, u_input.b), true), vec3<i32>(-9806i, u_input.b, u_input.a), -1000f, vec2<i32>(u_input.b, 0i), vec3<bool>(false, false, false)), Struct_4(Struct_1(-2147483647i, false, 2147483647i), u_input.c, vec2<f32>(-703f, 728f), u_input.a), -vec3<i32>(-8432i, -2147483647i, 0i)), _wgslsmith_mod_i32(~(~42019i), abs(u_input.b))), any(vec3<bool>(!any(vec2<bool>(false, true)), false, !all(vec3<bool>(true, false, true)))), ~firstLeadingBit(~u_input.a & abs(-1i)));
    var var_1 = -13319i < select(_wgslsmith_clamp_i32(-var_0.c >> (_wgslsmith_div_u32(u_input.d.x, u_input.d.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-35469i, -3333i), -1i), _wgslsmith_div_i32(-36506i, 2147483647i)), max(i32(-1i) * -var_0.a, abs(-var_0.c)), !var_0.b);
    var var_2 = Struct_4(var_0, u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1294f)) - _wgslsmith_div_f32(241f, -265f)), _wgslsmith_f_op_f32(abs(1290f)))), ~max(~var_0.a, -(-17112i ^ u_input.b)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - var_2.c.x);
    var var_4 = !select(!(!vec2<bool>(var_0.b, var_0.b)), !select(vec2<bool>(false, var_2.a.b), select(vec2<bool>(var_2.a.b, var_2.a.b), vec2<bool>(true, var_0.b), vec2<bool>(true, var_0.b)), select(vec2<bool>(true, true), vec2<bool>(false, var_2.a.b), var_0.b)), select(!select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_2.a.b, var_0.b)), !select(vec2<bool>(false, false), vec2<bool>(false, var_0.b), var_0.b), true));
    var_4 = !select(vec2<bool>(var_0.b | !var_0.b, !(var_0.a < var_0.a)), vec2<bool>(var_0.b && any(vec4<bool>(false, var_4.x, false, var_0.b)), true), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

