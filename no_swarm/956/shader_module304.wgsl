struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(1856f, -1318f, -881f), vec3<f32>(2291f, 1257f, 1000f), vec3<f32>(-1229f, -868f, -1000f), vec3<f32>(1143f, -304f, -980f), vec3<f32>(-1275f, -1676f, 527f), vec3<f32>(380f, 1161f, -614f), vec3<f32>(-483f, -1141f, -160f), vec3<f32>(333f, 1224f, -211f), vec3<f32>(-1000f, 1543f, 1278f), vec3<f32>(1146f, -673f, 620f), vec3<f32>(-1722f, 920f, -486f), vec3<f32>(1115f, -271f, 699f), vec3<f32>(2663f, 421f, -1000f), vec3<f32>(778f, -418f, -770f), vec3<f32>(-672f, -862f, -721f), vec3<f32>(1406f, 1258f, 920f), vec3<f32>(-659f, 1857f, -448f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = -211f;
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, ~(u_input.a ^ 1u)), ~arg_0), ~1u, arg_1.x);
    var var_2 = vec4<u32>(firstTrailingBit(min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, u_input.a), vec2<u32>(1u, 0u)) << (var_1.b % 32u), arg_0.x)), _wgslsmith_mult_u32(~(~var_1.b | var_1.b), ~firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 41336u, 128043u))), u_input.a, ~_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(max(4294967295u, 3835u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a.x, var_1.b), vec3<u32>(arg_0.x, arg_0.x, u_input.a)))));
    var var_3 = var_2.x;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-408f * -976f))), -2036f)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-715f, 409f))))), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), false), vec2<u32>(_wgslsmith_mult_u32(~(~4294967295u), var_2.x), _wgslsmith_dot_vec3_u32(var_2.xzw, vec3<u32>(var_1.a.x, ~9470u, ~0u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-622f - 2401f))))));
    return var_1.b;
}

fn func_2(arg_0: f32) -> bool {
    global0 = array<vec3<f32>, 17>();
    let var_0 = vec2<u32>(u_input.a, 68780u) << (vec2<u32>(func_3(~vec2<u32>(1u, u_input.a), vec4<i32>(-6421i, 1i, countOneBits(-27856i), _wgslsmith_div_i32(-2147483647i, 34116i)), vec3<i32>(1i, _wgslsmith_clamp_i32(-14804i, -2147483647i, -1i), abs(37991i))), ~86446u) % vec2<u32>(32u));
    global0 = array<vec3<f32>, 17>();
    let var_1 = vec4<bool>(false, all(vec3<bool>(true, true, true)), reverseBits(~(~var_0.x)) <= var_0.x, any(vec3<bool>(true, true, true)) && !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))));
    let var_2 = arg_0;
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_3 {
    global0 = array<vec3<f32>, 17>();
    var var_0 = Struct_3(true, select(vec3<bool>(true, true, func_2(_wgslsmith_div_f32(-246f, -759f))), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(false, false, true)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)))), true), _wgslsmith_clamp_vec2_u32(~arg_0.a | arg_0.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(26041u, arg_2), vec2<u32>(arg_0.a.x, arg_0.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, arg_0.a.x), arg_0.a)), reverseBits(select(vec2<u32>(4294967295u, arg_0.a.x) << (vec2<u32>(arg_0.b, 1u) % vec2<u32>(32u)), max(arg_0.a, arg_0.a), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2020f, -884f), -704f)))));
    global0 = array<vec3<f32>, 17>();
    var var_1 = ~u_input.a < (~arg_2 >> (68258u % 32u));
    let var_2 = arg_0;
    return Struct_3(var_0.a, var_0.b, var_0.c, -2062f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-703f)) + -2456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-448f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-844f, -245f)), _wgslsmith_f_op_f32(-769f - 1822f))))));
    var var_1 = func_1(Struct_1(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(7441u, u_input.a)), max(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)) << ((vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(54586u, u_input.a)) % vec2<u32>(32u)), vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 20147u)))), 4294967295u, 1i), abs(_wgslsmith_dot_vec2_i32(countOneBits(abs(vec2<i32>(0i, 1i))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-14690i, -20533i), vec2<i32>(-10039i, 2147483647i)))), ~u_input.a);
    global0 = array<vec3<f32>, 17>();
    var var_2 = Struct_3(any(var_1.b), var_1.b, var_1.c, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - _wgslsmith_f_op_f32(-func_1(Struct_1(var_1.c, var_1.c.x, -12947i), -1i, var_1.c.x).d)))));
    let var_3 = Struct_3(false, var_2.b, ~(~vec2<u32>(4294967295u, var_2.c.x) << (var_1.c % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -550f), var_0.x)));
    let var_4 = Struct_1(~firstTrailingBit(var_2.c), 0u, 1i);
    let var_5 = select(var_3.b.zx, var_1.b.zx, !var_2.b.xy);
    global0 = array<vec3<f32>, 17>();
    var var_6 = !(!vec2<bool>(var_2.a, !(var_2.a || false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -545f), 198f), _wgslsmith_f_op_f32(round(-1054f))));
}

