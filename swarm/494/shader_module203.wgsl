struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2819f, 1069f, 509f), vec3<f32>(223f, 1000f, -369f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1175f, 1170f, 2283f) + vec3<f32>(673f, -2208f, -1963f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-465f, -212f, 371f) + vec3<f32>(-343f, 1058f, -504f))))), true, min(vec4<i32>(0i, min(u_input.a.x, u_input.a.x), -2147483647i, ~63645i) | abs(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zy))), -2147483647i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(778f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-336f * -235f) + -878f)) * 142f), var_0.a.x);
    let var_2 = Struct_2((1u | ~(~u_input.b.x)) != (max(u_input.c, 4294967295u ^ u_input.c) ^ 3243u), var_0);
    var var_3 = Struct_3(var_2);
    var_3 = Struct_3(var_3.a);
    return !all(!(!select(vec3<bool>(true, var_3.a.b.b, var_3.a.a), vec3<bool>(false, true, true), vec3<bool>(var_3.a.a, var_3.a.a, var_3.a.a))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> vec4<i32> {
    let var_0 = true;
    let var_1 = vec2<f32>(-1455f, _wgslsmith_f_op_f32(-arg_1));
    var var_2 = -2052f;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, 716f, var_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(603f, arg_1, arg_1)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1182f, -1295f, -902f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1000f, var_1.x) + vec3<f32>(arg_1, -1000f, -208f))) + vec3<f32>(var_1.x, -1000f, 1033f))), !(!var_0), ~(-arg_2), _wgslsmith_clamp_i32(-1i, -52383i, 26844i));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1741f, -224f, var_1.x)), vec3<f32>(412f, var_1.x, -1439f))) * _wgslsmith_f_op_vec3_f32(-var_3.a))), (_wgslsmith_div_u32(~u_input.b.x, 49677u) >> (u_input.c % 32u)) >= abs(63994u), vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x), i32(-1i) * -1i, i32(-1i) * -60737i) << (firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 14855u, 4294967295u, 4294967295u), vec4<u32>(u_input.c, u_input.c, u_input.b.x, 6697u))) % vec4<u32>(32u)), 18443i);
    return arg_2 & max(reverseBits(_wgslsmith_clamp_vec4_i32(var_4.c, vec4<i32>(2147483647i, 2147483647i, arg_2.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(35513i, 0i, u_input.a.x, arg_2.x), vec4<i32>(u_input.a.x, -31277i, 42127i, 2147483647i)))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(33270i, 1i, var_4.c.x, arg_2.x), var_3.c));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> Struct_2 {
    return Struct_2(!(!all(vec3<bool>(false, true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1095f, -964f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 314f))))), func_2(), vec4<i32>(_wgslsmith_dot_vec4_i32(func_3(false, arg_2, vec4<i32>(32333i, arg_0, u_input.a.x, 3197i)), firstTrailingBit(vec4<i32>(arg_0, 11602i, 1i, arg_1.x))), i32(-1i) * -50940i, _wgslsmith_add_i32(arg_1.x, -22104i >> (u_input.b.x % 32u)), i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.a.yx, vec2<i32>(-51771i, 2147483647i)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(83855i, -59217i), u_input.a.zy)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_1.b;
    let var_1 = func_1(~_wgslsmith_mult_i32(~u_input.a.x, ~(-u_input.a.x)), _wgslsmith_sub_vec4_i32(var_0.c, arg_3.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(arg_0 + -171f))), _wgslsmith_f_op_f32(ceil(298f)))));
    var_0 = arg_3;
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(27867u), 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(15188u, 44245u), vec2<u32>(u_input.c, arg_2))), 52569u), ~_wgslsmith_sub_u32(min(abs(40169u), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.c, arg_2, arg_2))), firstLeadingBit(abs(11957u))), _wgslsmith_dot_vec4_u32(vec4<u32>(4043u, ~(u_input.c ^ 10688u), u_input.b.x, 28651u), vec4<u32>(4294967295u, arg_2, ~(arg_2 ^ u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(77104u, 1u, 73371u), vec3<u32>(u_input.c, 1u, 0u)))), 26990u);
    var_0 = func_1(~(-42457i), arg_1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.a.x)))), -1119f)))).b;
    return Struct_3(Struct_2((_wgslsmith_f_op_f32(1109f - arg_0) > -819f) == !(u_input.c <= var_2.x), func_1(max(_wgslsmith_mult_i32(var_1.b.c.x, 27629i), -11403i), abs(reverseBits(var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) + _wgslsmith_f_op_f32(-var_1.b.a.x))).b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)));
    let var_1 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1153f), func_1(0i, _wgslsmith_div_vec4_i32(-vec4<i32>(16884i, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(-u_input.a.x, firstTrailingBit(u_input.a.x), 1i, abs(u_input.a.x))), 353f), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~1u), u_input.c, 4294967295u), _wgslsmith_add_vec3_u32(~(~u_input.b), u_input.b)), func_1(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 41140i, u_input.a.x), vec4<i32>(-11555i, 1i, ~u_input.a.x, u_input.a.x | u_input.a.x)), 411f).b);
    global0 = array<vec4<bool>, 15>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2051f - 1701f), var_1.a.b.a.x))))));
    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.b.a.x)) - _wgslsmith_div_f32(var_1.a.b.a.x, _wgslsmith_f_op_f32(step(-198f, _wgslsmith_f_op_f32(-var_1.a.b.a.x))))), var_1.a, 4294967295u, var_1.a.b).a;
    global0 = array<vec4<bool>, 15>();
    var var_4 = vec2<bool>(any(vec3<bool>(var_1.a.b.b, 86095u < u_input.b.x, var_0)), var_1.a.a);
    var_2 = -550f;
    global0 = array<vec4<bool>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, ~vec4<u32>(u_input.c, max(0u, _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.xx)), u_input.b.x, (u_input.b.x | 1u) ^ u_input.c), _wgslsmith_div_i32(5151i, -14520i), u_input.a.x);
}

