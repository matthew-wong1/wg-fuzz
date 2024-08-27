struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec2<f32> = vec2<f32>(-1751f, 363f);

var<private> global2: vec2<f32> = vec2<f32>(648f, -1954f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> bool {
    global1 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x));
    var var_0 = -1287f;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, arg_2))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), -270f))));
    var var_1 = arg_3.d.yz;
    var var_2 = 32778u;
    return any(vec4<bool>(all(arg_3.d.wzw), arg_3.b, var_1.x, arg_3.d.x | arg_3.b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    var var_0 = Struct_1(firstLeadingBit(vec4<u32>(~arg_0.a.x, 1u, firstTrailingBit(_wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x)), countOneBits(_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x)))), ~0u >= ~_wgslsmith_clamp_u32(abs(13758u), ~9891u, select(arg_0.a.x, 19844u, false)), 2147483647i, vec4<bool>(!any(!arg_0.d.zx), !(!arg_3), arg_3, arg_0.b));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.zyx * vec3<f32>(_wgslsmith_f_op_f32(912f + arg_1.x), _wgslsmith_f_op_f32(max(853f, 1107f)), _wgslsmith_f_op_f32(sign(1136f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.xzy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2278f, global2.x, global1.x))) * vec3<f32>(_wgslsmith_f_op_f32(abs(813f)), _wgslsmith_f_op_f32(abs(752f)), -1291f))));
    global2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(arg_1.yx)), vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 197f) * _wgslsmith_f_op_f32(f32(-1f) * -359f)) + -880f))));
    let var_3 = var_2.xy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))));
}

fn func_1() -> i32 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 329f)))))));
    var var_0 = Struct_1(vec4<u32>(~(~(~0u)), _wgslsmith_sub_u32(~(~1u), _wgslsmith_clamp_u32(0u, ~1u, ~58931u)), reverseBits(~1u), firstLeadingBit(~firstTrailingBit(125145u))), false, u_input.b.x, !vec4<bool>(select(func_2(u_input.b.x, 0u, -208f, Struct_1(vec4<u32>(17149u, 1u, 4294967295u, 53733u), true, u_input.a, vec4<bool>(true, false, true, false))), true, true), !(u_input.b.x >= u_input.b.x), all(vec3<bool>(true, true, true)), false));
    global1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x - 192f), _wgslsmith_f_op_f32(global1.x - global2.x), any(var_0.d))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-296f - 651f), _wgslsmith_f_op_f32(-global2.x)))), global2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x * -559f), _wgslsmith_f_op_f32(abs(-778f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1065f, global1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), vec2<bool>(false, true)))))));
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-284f, global1.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(87578u, 13584u, 0u, var_0.a.x), true, var_0.c, vec4<bool>(false, var_0.d.x, false, false)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-707f, global1.x, 522f, global2.x))), vec2<bool>(var_0.b, var_0.b), true)))));
    let var_1 = Struct_1(var_0.a, func_2(_wgslsmith_add_i32(var_0.c, 57121i), ~_wgslsmith_mod_u32(var_0.a.x, 4718u | var_0.a.x), _wgslsmith_f_op_f32(trunc(211f)), Struct_1(var_0.a, !(9541u != var_0.a.x), u_input.a << (_wgslsmith_mult_u32(var_0.a.x, var_0.a.x) % 32u), vec4<bool>(!var_0.d.x, false, var_0.d.x, !var_0.d.x))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-(~u_input.a), u_input.b.x), abs(1i)), vec4<bool>(!var_0.b, true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-277f, global1.x, false))) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(func_1(), u_input.a, true);
    let var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(min(firstTrailingBit(vec4<u32>(5795u, 41422u, 22068u, 33274u)), ~vec4<u32>(4294967295u, 0u, 1u, 14805u)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(257u, 10625u, 1u, 1u)), vec4<u32>(4294967295u, 35077u, 79142u, 0u))), ~abs(vec4<u32>(0u, 20093u, 1u, 17026u)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 59993u, 11982u, 4294967295u), vec4<u32>(1u, 37008u, 85675u, 19142u)), vec4<u32>(1u, 1u, 1u, 1u)), 1u, 45195u, 4030u)), !(!func_2(0i, ~0u, 424f, Struct_1(vec4<u32>(1u, 51592u, 0u, 37706u), false, 2147483647i, vec4<bool>(true, true, false, true)))), -2147483647i, vec4<bool>(true, true, true, true));
    let var_2 = !(!var_1.d.x);
    var var_3 = var_1.d.zz;
    let var_4 = Struct_1(var_1.a, true, func_1(), !(!select(vec4<bool>(true, var_3.x, var_3.x, true), vec4<bool>(false, true, false, var_2), !vec4<bool>(var_3.x, true, var_2, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, countOneBits(-52359i));
}

