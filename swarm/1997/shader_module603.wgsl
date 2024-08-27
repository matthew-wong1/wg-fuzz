struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = -2275f;
    var_0 = _wgslsmith_f_op_f32(select(332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(792f)) + -291f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2664f, 382f)))), !arg_1.a.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f));
    let var_1 = vec3<bool>(true, true, true);
    var_0 = 1000f;
    return countOneBits(u_input.a.x ^ -45150i);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(func_3(u_input.b.zx, arg_2), 1i, arg_2.b), 21601i));
    var_0 = Struct_1(arg_2.a, ~(var_0.b >> (reverseBits(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.b.x)) % 32u)));
    var var_1 = arg_0;
    var var_2 = arg_0;
    let var_3 = arg_0;
    return Struct_1(!vec2<bool>(!all(vec4<bool>(false, var_2.a.x, true, true)), any(select(vec2<bool>(arg_1, var_2.a.x), arg_2.a, var_2.a))), countOneBits(var_0.b ^ arg_2.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_1(arg_0.a, min(i32(-1i) * -34909i, ~(~_wgslsmith_mult_i32(arg_3.x, u_input.d.x))));
    var var_1 = var_0;
    var var_2 = func_2(arg_2, !all(!vec3<bool>(var_0.a.x, var_0.a.x, true)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(floor(arg_1.x))), 556f)) - _wgslsmith_f_op_f32(floor(-276f))));
    var_2 = Struct_1(!vec2<bool>(true, any(var_0.a)), 0i);
    let var_3 = ~(~(-(~u_input.d.xxy)));
    return !any(!select(vec3<bool>(true, var_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_2.a.x, false), arg_0.a.x));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(vec2<bool>(func_4(func_2(Struct_1(vec2<bool>(false, false), 14933i), true, Struct_1(vec2<bool>(false, true), u_input.d.x), 1682f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1963f, -1247f, 1097f)), Struct_1(vec2<bool>(false, false), u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.d.x, 55561i)) | true, !(func_2(Struct_1(vec2<bool>(true, true), u_input.d.x), true, Struct_1(vec2<bool>(false, false), u_input.d.x), 673f).b < -2147483647i)), u_input.d.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-903f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1394f - 391f), _wgslsmith_f_op_f32(319f - 159f), var_0.a.x | var_0.a.x))), _wgslsmith_f_op_f32(floor(-673f)), 1f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-581f, -125f, -1186f))))));
    let var_2 = 91993u;
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(649f, var_1.x, 1546f) + vec3<f32>(var_1.x, -1503f, var_1.x)) - vec3<f32>(829f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1082f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1703f, var_1.x, var_1.x) - vec3<f32>(-384f, -1029f, -1083f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-778f, var_1.x, 683f) * vec3<f32>(1000f, 157f, 780f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, -344f, 997f)))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(func_1(), _wgslsmith_sub_i32(-u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x, 40513i, 0i) & u_input.d.x) & _wgslsmith_div_i32(_wgslsmith_mod_i32(select(-25353i, u_input.d.x, false), -4311i), _wgslsmith_add_i32(1i >> (u_input.c % 32u), u_input.d.x)));
    var_0 = max(min(15446i, 1i), func_1());
    var_0 = -(~u_input.a.x);
    var_0 = 1i;
    var_0 = -19995i;
    let var_1 = firstLeadingBit(u_input.a.x);
    let var_2 = func_2(Struct_1(!vec2<bool>(true, any(vec3<bool>(true, false, false))), _wgslsmith_sub_i32(countOneBits(i32(-1i) * -1i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1, 35656i), vec3<i32>(var_1, -1i, 6903i)), 1i))), all(select(vec4<bool>(true, true, func_2(Struct_1(vec2<bool>(false, false), var_1), true, Struct_1(vec2<bool>(true, false), u_input.a.x), 141f).a.x, true), vec4<bool>(true, true, true, true), func_2(Struct_1(vec2<bool>(true, false), 0i), true, func_2(Struct_1(vec2<bool>(true, true), 14678i), true, Struct_1(vec2<bool>(false, false), -35778i), 119f), _wgslsmith_f_op_f32(floor(662f))).a.x)), Struct_1(vec2<bool>(true, true), -53884i), 1678f);
    var_0 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_mult_u32(reverseBits(1003u), ~4294967295u)), select(~countOneBits(u_input.b), reverseBits(~(~vec3<u32>(27330u, u_input.c, 0u))), any(vec3<bool>(!var_2.a.x, var_2.a.x, !var_2.a.x))));
}

