struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: u32 = 817u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    return _wgslsmith_sub_u32(27273u, ~(~(~u_input.e.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_2 {
    global0 = u_input.c;
    var var_0 = Struct_2(Struct_1(u_input.c));
    var_0 = Struct_2(Struct_1(u_input.c));
    var var_1 = (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 24627u, u_input.e.x), vec3<u32>(0u, u_input.d, 29804u)) | ~(vec3<u32>(u_input.d, var_0.a.a, var_0.a.a) >> (vec3<u32>(4294967295u, var_0.a.a, u_input.d) % vec3<u32>(32u)))) << (~vec3<u32>(~u_input.e.x, ~21038u | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 68672u, var_0.a.a), vec4<u32>(u_input.c, u_input.e.x, var_0.a.a, 4294967295u)), ~1u) % vec3<u32>(32u));
    var_1 = reverseBits(firstLeadingBit(vec3<u32>(~109271u, var_1.x, var_1.x))) >> (vec3<u32>(var_1.x, _wgslsmith_div_u32(var_0.a.a | 27782u, 4294967295u), var_0.a.a) % vec3<u32>(32u));
    return Struct_2(Struct_1(_wgslsmith_sub_u32(~abs(112064u), ~55299u ^ func_3())));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> Struct_4 {
    global0 = ~(~arg_0.a.a);
    let var_0 = Struct_4(func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(0i, -27277i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, 48801i, u_input.b, -2147483647i)), vec4<i32>(-2147483647i, u_input.b, u_input.b, 24964i) ^ vec4<i32>(u_input.a.x, -5361i, u_input.a.x, u_input.b)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(9738i, -38084i, u_input.b, 20898i), vec4<i32>(u_input.a.x, -4491i, u_input.a.x, -41764i)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-192f, 1635f), vec2<f32>(-1136f, 807f)))))).a);
    global0 = _wgslsmith_div_u32(~min(u_input.e.x << (4294967295u % 32u), ~arg_0.a.a), _wgslsmith_mod_u32(max(112699u, ~(~arg_0.a.a)), 14695u));
    let var_1 = select(vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(u_input.e), abs(u_input.e)), func_3(), abs(arg_0.a.a), 0u), select(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(2373u, arg_0.a.a, 1u, arg_0.a.a), vec4<u32>(var_0.a.a, arg_0.a.a, 7841u, 1u)), abs(vec4<u32>(var_0.a.a, u_input.c, 0u, 0u))), ~(~vec4<u32>(u_input.e.x, 38755u, u_input.e.x, 1353u)), select(select(vec4<bool>(arg_2, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, arg_2, false, arg_1.x)), vec4<bool>(arg_2, arg_1.x, arg_1.x, false), !vec4<bool>(false, false, arg_1.x, arg_2))), !select(select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(false, false, arg_1.x, true), vec4<bool>(true, arg_1.x, arg_1.x, arg_2)), !vec4<bool>(false, false, false, arg_1.x), vec4<bool>(false, true, arg_2, false))) | min(vec4<u32>(~var_0.a.a, func_3(), ~0u, ~(~u_input.d)), countOneBits((vec4<u32>(0u, arg_0.a.a, u_input.d, u_input.d) ^ vec4<u32>(var_0.a.a, var_0.a.a, 14882u, arg_0.a.a)) & abs(vec4<u32>(0u, 7426u, 16280u, var_0.a.a))));
    let var_2 = -(vec3<i32>((-1i | u_input.b) << (u_input.d % 32u), -25704i, -2147483647i) ^ _wgslsmith_add_vec3_i32(abs(vec3<i32>(-2181i, -15046i, -12659i)), vec3<i32>(-u_input.b, u_input.b, 1i)));
    return Struct_4(func_2(max(firstLeadingBit(-vec4<i32>(var_2.x, var_2.x, -16490i, -12795i)), countOneBits(max(vec4<i32>(60653i, u_input.b, 1i, 181i), vec4<i32>(u_input.b, u_input.b, -28155i, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_3, -1661f), vec2<f32>(arg_3, 1326f)))).a);
}

fn func_1(arg_0: f32) -> vec3<i32> {
    var var_0 = func_4(func_2(abs(~(~vec4<i32>(14138i, -2147483647i, u_input.b, 2147483647i))), vec2<f32>(301f, -885f)), vec2<bool>(!select(all(vec3<bool>(true, true, false)), true, true), false), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-777f))));
    var_0 = func_4(Struct_2(func_2(-(~vec4<i32>(-14201i, u_input.a.x, -1i, u_input.b)), vec2<f32>(-429f, _wgslsmith_f_op_f32(min(-311f, arg_0)))).a), vec2<bool>((firstLeadingBit(var_0.a.a) >> (~u_input.c % 32u)) < _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 24595u, 24371u)), vec3<u32>(50191u, 69357u, 44085u)), any(vec3<bool>(true, true, true))), select(firstLeadingBit(6274u) > _wgslsmith_dot_vec2_u32(u_input.e, u_input.e), true, _wgslsmith_f_op_f32(f32(-1f) * -547f) != _wgslsmith_f_op_f32(round(arg_0))) | (~(~u_input.a.x) < 43604i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0)), -380f)));
    var_0 = func_4(func_2(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 30874i, u_input.a.x, -4584i), vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, 2147483647i)), -vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.b), vec4<bool>(true, false, false, true)) ^ select(-vec4<i32>(-1i, u_input.a.x, u_input.b, -4457i), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(arg_0, arg_0)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(391f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-285f, 784f)))))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, false), u_input.b != 0i), true), any(vec2<bool>(all(vec4<bool>(true, true, true, false)), false))), func_4(Struct_2(var_0.a), vec2<bool>(true, true), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_0, arg_0))))).a.a == ~firstLeadingBit(_wgslsmith_div_u32(u_input.d, u_input.d)), -235f);
    var var_1 = Struct_3(-2068f, _wgslsmith_clamp_u32(((var_0.a.a >> (4294967295u % 32u)) & select(var_0.a.a, 34176u, false)) | 9137u, _wgslsmith_div_u32(0u, max(var_0.a.a & u_input.c, var_0.a.a)), 52919u), !(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false))), func_4(Struct_2(var_0.a), vec2<bool>(true, false), _wgslsmith_f_op_f32(exp2(arg_0)) > -659f, -886f).a);
    let var_2 = u_input.a;
    return -_wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -2147483647i), -vec3<i32>(-2147483647i, var_2.x, 1i)), vec3<i32>(-1i) * -abs(vec3<i32>(0i, var_2.x, 40975i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(517f - 1f))));
    let var_1 = func_2(firstTrailingBit(vec4<i32>(-1i, func_1(-249f).x, select(-var_0.x, u_input.b, true), abs(1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1066f), -461f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))).a;
    var var_2 = !(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))) || any(vec3<bool>(true, true, true))) & true;
    global0 = 1u;
    global0 = u_input.d;
    let var_3 = !vec3<bool>(false, ((u_input.c > u_input.c) | true) & true, false);
    var var_4 = func_2(abs(select(vec4<i32>(var_0.x, var_0.x, u_input.b, 1i) | (vec4<i32>(var_0.x, -36420i, -1i, var_0.x) << (vec4<u32>(u_input.c, var_1.a, 27408u, var_1.a) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, u_input.b, u_input.a.x), vec4<i32>(var_0.x, 2147483647i, var_0.x, 2147483647i)), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(749f, -314f) - vec2<f32>(247f, -928f)))))).a;
    let var_5 = var_3.zy;
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(-570f - 1862f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1742f, 107f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1307f))));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.b), vec2<i32>(10974i, -4987i)) ^ 2147483647i, var_0.x, any(!vec3<bool>(true, var_3.x, var_5.x))), 30617i, any(var_3)));
}

