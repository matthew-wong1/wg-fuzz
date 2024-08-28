struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = arg_0;
    var_0 = Struct_1(-964f);
    var_0 = arg_0;
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a)), var_0.a));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-966f, 2354f) - _wgslsmith_f_op_f32(var_0.a - var_0.a))) + _wgslsmith_f_op_f32(f32(-1f) * -1483f)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a, -1115f, arg_0.a))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1502f, 356f, 407f), vec3<f32>(var_0.a, var_0.a, 1104f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(136f, var_0.a, -1140f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(316f + arg_0.a), _wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 330f, var_0.a) * vec3<f32>(arg_0.a, var_0.a, var_0.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(3396f, arg_0.a, -314f) * vec3<f32>(arg_0.a, -334f, arg_0.a))))) * _wgslsmith_div_vec3_f32(vec3<f32>(-440f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, 636f) - _wgslsmith_f_op_f32(sign(220f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a * arg_0.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1983f, -3679f, -316f) - vec3<f32>(var_0.a, 1703f, arg_0.a)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1857f, arg_0.a, 2285f))), vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(454f * 1000f), 155f, _wgslsmith_f_op_f32(step(-1909f, 844f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec4<bool>(false, true, false, false))), any(vec3<bool>(true, false, false)) || true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(!(false && all(vec2<bool>(false, false))), !(~(-8823i) == max(u_input.b.x, u_input.b.x)), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))), vec3<bool>(true, !(~57102u >= firstLeadingBit(u_input.a.x)), true));
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-133f)) - _wgslsmith_f_op_f32(arg_1.a + -177f)))));
    var_0 = select(select(vec3<bool>(true, any(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true))), !var_0.x), vec3<bool>(var_0.x, true, var_0.x), !(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false))), select(select(vec3<bool>(select(true, true, var_0.x), !var_0.x, true), !(!vec3<bool>(false, var_0.x, var_0.x)), false), !(!select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true)), _wgslsmith_mod_i32(i32(-1i) * -54904i, ~61i) != u_input.b.x), !var_0.x);
    var_0 = !vec3<bool>(!(!any(vec2<bool>(var_0.x, true))), var_0.x, reverseBits(-4102i) != ~u_input.b.x);
    var_0 = vec3<bool>(any(select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(false, false, var_0.x, var_0.x), !var_0.x), vec4<bool>(false, true, all(vec4<bool>(false, true, var_0.x, true)), u_input.b.x >= u_input.b.x), !(var_0.x || true))), (-u_input.b.x | 1i) > reverseBits(-(-1i | u_input.b.x)), !(!var_0.x) && false);
    return _wgslsmith_f_op_f32(sign(-1618f));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = !vec3<bool>(!(!any(vec4<bool>(true, false, false, false))), true, !all(vec2<bool>(false, true)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 405f) - _wgslsmith_f_op_f32(select(1000f, -1000f, var_0.x)))) * -591f));
    var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(-219f)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(889f + _wgslsmith_f_op_f32(-2392f + -1397f)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + 715f) - arg_2.a) - _wgslsmith_f_op_f32(-arg_2.a))));
    return any(!vec4<bool>(1147f >= _wgslsmith_f_op_f32(-arg_0.a), false, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 48258u, arg_1), vec3<u32>(80677u, u_input.a.x, arg_1)) > 1u, _wgslsmith_f_op_f32(f32(-1f) * -801f) < _wgslsmith_f_op_f32(trunc(arg_0.a))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<bool>) -> bool {
    var var_0 = ~(-3338i);
    let var_1 = arg_3;
    let var_2 = arg_3.x;
    var var_3 = arg_3.x;
    let var_4 = arg_0;
    return select(var_1.x, var_2, func_5(Struct_1(1254f), u_input.a.x, Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0))), Struct_1(1205f)))), -firstTrailingBit(1i & u_input.b.x)));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = select(vec4<bool>(any(vec4<bool>(true, true, true, any(vec3<bool>(true, false, true)))), !(!(arg_1 < u_input.b.x)), all(vec4<bool>(true, true, false, false)), func_2(1545f, select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(-1000f + arg_0), vec4<bool>(true, true, false, true)) || true), select(vec4<bool>(true, true, !func_5(Struct_1(arg_0), 14029u, Struct_1(-121f), u_input.b.x), arg_0 >= _wgslsmith_f_op_f32(round(-325f))), select(vec4<bool>(true, true, false, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true))), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), true);
    var var_1 = Struct_1(arg_0);
    let var_2 = u_input.a.x < firstTrailingBit(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    let var_3 = countOneBits(u_input.a.zy >> (~(~(~vec2<u32>(4294967295u, u_input.a.x))) % vec2<u32>(32u)));
    var_1 = Struct_1(arg_0);
    return Struct_1(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2369f), _wgslsmith_f_op_f32(-291f + 147f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-700f + 171f), _wgslsmith_f_op_f32(floor(1010f)))))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), -min(u_input.b.x, u_input.b.x), ~firstTrailingBit(u_input.b.x)), u_input.b.x));
    var_0 = func_1(104f, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x) << (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_i32(u_input.b, u_input.b)), u_input.b));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1475f, 398f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, var_0.a, var_0.a))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 378f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1606f, var_0.a, -2080f) - vec3<f32>(var_0.a, var_0.a, -522f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -2072f, var_0.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(39448u, ~(~countOneBits(select(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(38455u, u_input.a.x, u_input.a.x), vec3<bool>(true, true, false)))), vec4<i32>(1i, -4918i, u_input.b.x, ~(-1i)), ~(~abs(i32(-1i) * -3528i)));
}

