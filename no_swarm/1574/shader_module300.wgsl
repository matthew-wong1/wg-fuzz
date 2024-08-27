struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = firstTrailingBit(vec2<i32>(-u_input.a, (_wgslsmith_add_i32(1i, arg_1) << (arg_0 % 32u)) & arg_1));
    return !select(!all(vec3<bool>(true, true, true)) || true, false, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<u32>, arg_3: f32) -> bool {
    let var_0 = u_input.a;
    var var_1 = Struct_4(true, arg_2.x, arg_0.x);
    var var_2 = true || var_1.a;
    var var_3 = Struct_2(max(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_2.xzx, vec3<u32>(78835u, 58690u, var_1.b)), abs(35169u ^ var_1.b), 1u), max(~firstTrailingBit(vec3<u32>(0u, 0u, var_1.b)), vec3<u32>(var_1.b, 34170u, firstLeadingBit(arg_2.x)))));
    var var_4 = Struct_1(select(_wgslsmith_mult_vec4_i32(-vec4<i32>(0i, var_0, var_0, 85620i), -select(vec4<i32>(20251i, 2147483647i, 27471i, var_0), vec4<i32>(34057i, u_input.a, var_0, u_input.a), vec4<bool>(true, true, true, var_1.c))), vec4<i32>(46344i, -3315i, var_0, ~(-1i)), countOneBits(47176u) >= arg_2.x), abs(~1i) < (var_0 | var_0));
    return !all(vec2<bool>(u_input.a > abs(2147483647i), abs(u_input.a) != -3015i));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = true;
    var var_1 = func_4(!vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), true, func_3(abs(1u), max(0i, -1849i)), arg_0 >= 1416f), !(_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(-337f * -2253f)) & all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(1u, 29527u, 0u, 134490u)), ~(~vec4<u32>(92197u, 1u, 0u, 0u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(min(vec4<u32>(0u, 4294967295u, 1u, 53255u), vec4<u32>(29433u, 5011u, 25494u, 34547u)), select(vec4<u32>(4294967295u, 1u, 1u, 69657u), vec4<u32>(90603u, 4294967295u, 10654u, 0u), vec4<bool>(true, true, false, false))), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-485f)), -846f))));
    var var_2 = vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, -1i), ~u_input.a);
    var var_3 = Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, -11843i, u_input.a >> (4294967295u % 32u), _wgslsmith_sub_i32(2147483647i, u_input.a)), _wgslsmith_add_vec4_i32(-vec4<i32>(-4598i, -43586i, var_2.x, var_2.x) & select(vec4<i32>(9220i, var_2.x, var_2.x, u_input.a), vec4<i32>(52196i, 28540i, 2147483647i, var_2.x), false), -abs(vec4<i32>(var_2.x, -38340i, var_2.x, u_input.a)))), !(1i >= _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 2147483647i, u_input.a), firstTrailingBit(vec3<i32>(var_2.x, u_input.a, var_2.x)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(165f, arg_0)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)), -1935f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)) - -656f)));
    return !select(!(!(!vec3<bool>(var_3.b, true, var_3.b))), select(vec3<bool>(true != var_3.b, all(vec2<bool>(true, false)), any(vec4<bool>(true, var_3.b, var_3.b, var_3.b))), select(vec3<bool>(false, true, var_3.b), vec3<bool>(true, false, false), any(vec4<bool>(var_3.b, var_3.b, var_3.b, var_3.b))), !vec3<bool>(true, var_3.b, true)), !(!vec3<bool>(false, false, var_3.b)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = select(select(!(!func_2(804f)), func_2(370f), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, select(true, all(vec3<bool>(false, true, false)), any(vec2<bool>(false, false))))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.x >= u_input.a, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), func_2(475f))), vec3<bool>(true, true, true), vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), true, true)), func_3(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(30855u, 0u, arg_2.a.x, arg_2.a.x), vec4<u32>(arg_1, arg_1, arg_1, arg_1), true), abs(vec4<u32>(arg_2.a.x, arg_1, 0u, 24345u))), _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a, u_input.a, arg_0.x) << (vec3<u32>(0u, 67049u, arg_1) % vec3<u32>(32u))), arg_0)));
    var var_1 = Struct_2(arg_2.a);
    var_1 = Struct_2(~vec3<u32>(~arg_2.a.x, arg_1, ~abs(arg_2.a.x)));
    var var_2 = !var_0.zy;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-954f)) * 338f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(309f)), _wgslsmith_f_op_f32(step(-358f, -1006f))))));
    return select(!(!(!select(vec4<bool>(true, var_2.x, false, var_0.x), vec4<bool>(true, true, var_2.x, var_0.x), false))), select(!select(vec4<bool>(false, false, var_2.x, var_2.x), !vec4<bool>(var_0.x, var_2.x, var_0.x, var_2.x), select(vec4<bool>(var_2.x, var_0.x, true, false), vec4<bool>(true, var_0.x, var_2.x, false), false)), vec4<bool>(!(!var_0.x), true, !all(vec4<bool>(var_2.x, true, var_0.x, var_2.x)), var_2.x), select(vec4<bool>(var_2.x, var_0.x, var_2.x, select(var_2.x, var_0.x, var_2.x)), vec4<bool>(var_2.x, true, var_0.x, func_4(vec4<bool>(true, true, true, var_0.x), true, vec4<u32>(arg_1, arg_2.a.x, arg_2.a.x, var_1.a.x), 130f)), vec4<bool>(var_0.x && var_2.x, false, !var_0.x, var_2.x))), (64292u > arg_2.a.x) & !all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~abs(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, false, true))));
    var var_1 = !func_1(abs(~countOneBits(vec3<i32>(31242i, 0i, -13676i))), ~_wgslsmith_mult_u32(1u >> (1u % 32u), firstLeadingBit(1u)), Struct_2(vec3<u32>(~var_0.a.x, ~0u, var_0.a.x)));
    var_0 = Struct_2(var_0.a | (vec3<u32>(14404u, _wgslsmith_clamp_u32(11281u, 50016u, 78553u), reverseBits(31658u)) ^ vec3<u32>(_wgslsmith_clamp_u32(5916u, var_0.a.x, var_0.a.x), max(31966u, var_0.a.x), _wgslsmith_div_u32(45278u, 62571u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1977f - _wgslsmith_f_op_f32(f32(-1f) * -503f))), -235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(472f + 512f)))))));
    let var_3 = var_1.x;
    let var_4 = Struct_3(u_input.a);
    var_1 = select(!(!vec4<bool>(true, var_1.x, var_1.x, !var_1.x)), vec4<bool>(any(var_1.yzx), var_1.x, any(vec4<bool>(var_1.x, true, true, all(vec2<bool>(false, var_1.x)))), true), vec4<bool>(true, false, var_2.x == 1f, func_3(var_0.a.x, -(16708i ^ var_4.a))));
    let var_5 = _wgslsmith_f_op_vec2_f32(-var_2.yx);
    var_1 = !select(!vec4<bool>(var_1.x, true, !var_1.x, select(var_1.x, var_1.x, var_1.x)), vec4<bool>(var_2.x <= _wgslsmith_f_op_f32(-var_2.x), any(func_1(vec3<i32>(-17594i, -5872i, var_4.a), 4294967295u, Struct_2(vec3<u32>(9026u, 44140u, var_0.a.x)))), var_1.x, !all(vec4<bool>(var_1.x, true, var_1.x, false))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a >> (~vec3<u32>(var_0.a.x | 9259u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(66149u, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(79635u, 11433u, 103675u, var_0.a.x))) % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-458f, -1090f))), -1613f, var_2.x, -269f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-776f, 1014f, var_5.x, -555f), vec4<f32>(1007f, var_2.x, var_2.x, var_5.x), false)), vec4<f32>(-418f, -1063f, 751f, var_2.x))))));
}

