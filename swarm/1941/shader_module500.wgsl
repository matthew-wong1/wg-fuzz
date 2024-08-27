struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(4294967295u, 10365u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 43255u), vec2<u32>(31525u, 17515u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(27998u, 77306u), vec2<u32>(0u, 1u), vec2<u32>(9197u, 0u), vec2<u32>(1u, 29126u), vec2<u32>(56593u, 0u), vec2<u32>(263u, 4294967295u), vec2<u32>(44653u, 4294967295u), vec2<u32>(31837u, 4294967295u), vec2<u32>(45795u, 4294967295u), vec2<u32>(23730u, 1u), vec2<u32>(1u, 5034u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1172u), vec2<u32>(1381u, 27736u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(49256u, 25979u), vec2<u32>(15150u, 4294967295u), vec2<u32>(24255u, 4294967295u), vec2<u32>(4294967295u, 4294967295u));

var<private> global1: i32;

var<private> global2: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-11810i, 49001i, 0i, 10454i), vec4<i32>(-43892i, -12173i, 2036i, i32(-2147483648)), vec4<i32>(2147483647i, 79536i, 1i, 23452i), vec4<i32>(i32(-2147483648), 1i, -1i, -77402i), vec4<i32>(0i, -756i, 1i, 0i), vec4<i32>(20355i, 2147483647i, -10740i, 38855i), vec4<i32>(i32(-2147483648), 42038i, -51747i, 35162i), vec4<i32>(-35820i, 2147483647i, 81527i, -12116i), vec4<i32>(1i, 46184i, -29981i, 23090i), vec4<i32>(-1i, -34555i, 5471i, 1i), vec4<i32>(0i, 24683i, 1080i, 2147483647i), vec4<i32>(7341i, 25884i, -43196i, 0i), vec4<i32>(2147483647i, 0i, 33844i, 1i), vec4<i32>(18861i, 1i, -11993i, 2147483647i), vec4<i32>(i32(-2147483648), 28146i, -42722i, 2147483647i), vec4<i32>(-1457i, 0i, 1i, -29197i), vec4<i32>(2147483647i, 31443i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), -447i, 2147483647i, -21904i), vec4<i32>(-1i, 11456i, 12551i, 426i), vec4<i32>(-23444i, -12460i, -8903i, i32(-2147483648)), vec4<i32>(2302i, -72249i, 66110i, i32(-2147483648)), vec4<i32>(23284i, 13028i, 10318i, -1i), vec4<i32>(-1i, -45724i, -1i, i32(-2147483648)), vec4<i32>(1i, -1i, -59304i, -18249i), vec4<i32>(1i, -9898i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), 67803i, 1i, i32(-2147483648)), vec4<i32>(-975i, 1i, -65643i, -1i), vec4<i32>(-1i, 2147483647i, -14996i, 13138i), vec4<i32>(1i, -16982i, 0i, 58455i), vec4<i32>(1i, 2147483647i, 13520i, 1i), vec4<i32>(2147483647i, 71860i, -36172i, -33336i));

var<private> global3: f32 = -1061f;

var<private> global4: array<i32, 23> = array<i32, 23>(1428i, -1i, -56896i, 1i, -42026i, -14536i, 0i, 0i, 2147483647i, 0i, -3619i, 0i, -11151i, 2147483647i, 1i, -1i, i32(-2147483648), 36854i, 2147483647i, 1i, -48717i, -32642i, 91280i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> i32 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(741f, -1063f), 271f, arg_1.x)) * _wgslsmith_f_op_f32(min(-966f, _wgslsmith_f_op_f32(floor(-599f)))))));
    let var_0 = Struct_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, 630f, 1638f)), vec3<f32>(1f, 1f, 1f), arg_1))));
    global0 = array<vec2<u32>, 26>();
    global4 = array<i32, 23>();
    var var_1 = 1887f;
    return 2147483647i;
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_2(all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - 258f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), -369f, true)) - -2646f)));
    let var_1 = Struct_2(true, arg_0.zxx);
    var var_2 = 523f;
    let var_3 = vec4<u32>(1u, 1u, 1u, (1u >> (1u % 32u)) | firstTrailingBit(1u));
    var var_4 = Struct_4(vec4<f32>(616f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-682f + _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)), -851f)))));
    return _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_3.x, 12780u), select(~0u, countOneBits(1u), true)), var_3.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_3(!vec3<bool>(all(vec3<bool>(true, true, true)), true, true));
    var_0 = Struct_3(select(vec3<bool>(select(false, false, false), select(!var_0.a.x, !var_0.a.x, var_0.a.x), !var_0.a.x), !select(var_0.a, vec3<bool>(var_0.a.x, true, var_0.a.x), var_0.a.x), all(vec4<bool>(true, var_0.a.x, true, var_0.a.x)) & true));
    global4 = array<i32, 23>();
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1946f * -1055f), _wgslsmith_f_op_f32(select(-340f, -1000f, var_1)), _wgslsmith_f_op_f32(175f * -460f)) + vec3<f32>(_wgslsmith_f_op_f32(sign(-244f)), -769f, _wgslsmith_f_op_f32(325f + -400f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1700f)), _wgslsmith_div_f32(1279f, -1533f), _wgslsmith_f_op_f32(f32(-1f) * -1310f)) * vec3<f32>(_wgslsmith_f_op_f32(max(-1039f, 1000f)), _wgslsmith_div_f32(-544f, 1081f), _wgslsmith_f_op_f32(abs(962f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(531f, -681f, -925f)))))))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 1454f, -224f, var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -1296f, -686f)), vec4<bool>(var_0.a.x, true, false, false)))))));
}

fn func_1() -> u32 {
    let var_0 = func_4(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), u_input.a), reverseBits(~u_input.a) ^ _wgslsmith_clamp_i32(func_2(vec2<bool>(false, false), vec3<bool>(false, false, false)), u_input.a << (96427u % 32u), -10128i), global4[_wgslsmith_index_u32(~func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(567f, -454f, -911f, -545f)))), 23u)]), -26934i);
    let var_1 = -(~(-2147483647i));
    global2 = array<vec4<i32>, 31>();
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)), -758f, -1255f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(521f + var_0.a.x)))) - vec4<f32>(var_0.a.x, -695f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + var_0.a.x), _wgslsmith_f_op_f32(-163f + var_0.a.x)));
    var var_3 = Struct_1(!vec4<bool>(select(false, false, true), true, true, false), !(!(!any(vec3<bool>(true, false, true)))));
    return select(4294967295u, ~(~_wgslsmith_clamp_u32(1u, 1u, 62544u)) >> ((_wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(3778u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)] | vec2<u32>(4294967295u, 7613u)) & ~(~14205u)) % 32u), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(295f + _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-103f * 325f)))), firstTrailingBit(_wgslsmith_add_u32(min(_wgslsmith_mod_u32(5297u, 16771u), func_1()), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 4845u), 1u))), firstLeadingBit(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 82685i), vec2<i32>(-4141i, -1i)))) ^ vec2<i32>(reverseBits(abs(-6744i)), _wgslsmith_sub_i32(-u_input.a, 43372i)), global4[_wgslsmith_index_u32(36595u, 23u)]);
}

