struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = vec4<u32>(~1u, 19941u, u_input.b.x, 89594u | _wgslsmith_add_u32(22878u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), u_input.b.zy), firstTrailingBit(arg_0.x) ^ ~arg_0.x));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(~select(vec2<u32>(arg_1.x, arg_0.x), vec2<u32>(1u, u_input.b.x), any(vec3<bool>(true, true, false))), vec2<u32>(abs(1u), 1u), ~(firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x)) & vec2<u32>(arg_1.x, 0u)));
    var_1 = vec2<u32>(_wgslsmith_sub_u32(~0u, countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 1u))), ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 13857u), vec3<u32>(arg_0.x, 13286u, u_input.b.x)), vec3<u32>(var_1.x, 1u, u_input.b.x)));
    var_1 = _wgslsmith_mod_vec2_u32(var_0.yw ^ u_input.b.zx, _wgslsmith_mod_vec2_u32((_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.x), var_0.xz) & arg_1.ww) >> (_wgslsmith_clamp_vec2_u32(u_input.b.yz, vec2<u32>(20856u, var_1.x), ~vec2<u32>(arg_0.x, 30859u)) % vec2<u32>(32u)), vec2<u32>(1u, var_1.x)));
    let var_2 = Struct_3(arg_1.x, -reverseBits(~u_input.a.x));
    return -764f;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-1636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, arg_0.c.x, u_input.b.x, arg_0.c.x), vec4<u32>(33469u, 0u, u_input.b.x, 0u)))))), -429f, arg_2);
    let var_1 = arg_0.b;
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-396f, 363f, true))) + 1791f), _wgslsmith_f_op_f32(1530f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-arg_2)) - vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - arg_2)), var_0.x, -862f));
    var var_2 = var_1.b;
    var var_3 = 1i;
    return 217f;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(true, vec4<bool>(any(vec3<bool>(true, true, true)), true, true == (_wgslsmith_clamp_u32(32681u, u_input.b.x, 4294967295u) != abs(7303u)), 1f < _wgslsmith_f_op_f32(select(-148f, _wgslsmith_f_op_f32(func_2(Struct_2(u_input.b.wx, Struct_1(true, vec4<bool>(false, false, true, true), u_input.a.x, 35161i), u_input.b.yy), vec4<bool>(true, false, true, false), -1000f)), true))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-abs(1i), ~u_input.a.x | ~(-1i)), -56655i, u_input.a.x), ~(-41463i));
    var_0 = Struct_1(var_0.a, select(var_0.b, select(select(select(var_0.b, var_0.b, true), var_0.b, select(var_0.b, var_0.b, vec4<bool>(var_0.a, false, var_0.b.x, false))), !(!vec4<bool>(var_0.a, true, var_0.b.x, var_0.a)), vec4<bool>(true, true, true, true)), true), var_0.d, u_input.a.x);
    var_0 = Struct_1(var_0.b.x & false, !select(var_0.b, !var_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(4294967295u, 4294967295u)) <= ~0u), 34928i, max(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xy, u_input.a.xx), u_input.a.zz | u_input.a.xy) | u_input.a.x, -2147483647i));
    var_0 = Struct_1(var_0.a, !vec4<bool>(var_0.b.x, false, -1265f >= _wgslsmith_f_op_f32(select(269f, 1739f, var_0.a)), any(select(var_0.b.zxz, var_0.b.wxy, var_0.b.wzy))), _wgslsmith_mod_i32(~(-11429i), u_input.a.x), 1i);
    let var_1 = u_input.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f * -915f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(1712f, 439f)), _wgslsmith_f_op_f32(464f - 1672f), _wgslsmith_f_op_f32(floor(-324f)), -4291f), vec4<f32>(_wgslsmith_f_op_f32(func_1()), -462f, _wgslsmith_div_f32(-257f, -897f), _wgslsmith_f_op_f32(-338f + -1539f)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1361f)), _wgslsmith_f_op_f32(-190f - _wgslsmith_f_op_f32(-590f * 999f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(7923u, 67253u, u_input.b.x, 4294967295u)), u_input.b)), 1054f)));
    var var_1 = true;
    var_1 = !((any(vec3<bool>(true, true, true)) & (var_0.x != var_0.x)) && all(vec4<bool>(true, true, true, true))) & !select(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), false, true | all(vec3<bool>(false, true, true)));
    var_1 = false;
    var_1 = !(!(countOneBits(_wgslsmith_mod_i32(-21395i, -27151i)) > _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, 2147483647i), ~(-1i))));
    let var_2 = vec2<f32>(var_0.x, var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-632f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(362f + var_2.x) + var_0.x)), vec4<f32>(-682f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f * -772f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<i32>(u_input.a.x & u_input.a.x, u_input.a.x & u_input.a.x, ~u_input.a.x, ~u_input.a.x)), -211f, ~68626u, var_0.yzz);
}

