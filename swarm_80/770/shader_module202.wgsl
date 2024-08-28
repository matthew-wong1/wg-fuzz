struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1221f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(419f * -221f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1600f, 916f) + vec2<f32>(-890f, 387f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1184f, 272f))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1311f, _wgslsmith_f_op_f32(-var_1.x))), -127f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(var_1.x, -475f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -691f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-805f, var_1.x) * vec2<f32>(-1237f, 661f))))));
    return _wgslsmith_f_op_f32(-363f * var_1.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(21150i << (0u % 32u))))));
    var_0 = 990f;
    global0 = arg_1.x;
    let var_1 = select(select(vec2<bool>(false, any(arg_2.wz)), !select(vec2<bool>(arg_2.x, arg_2.x), select(vec2<bool>(true, true), arg_0, arg_0.x), vec2<bool>(true, arg_2.x)), all(vec3<bool>(true, true, arg_2.x))), vec2<bool>(!any(vec2<bool>(arg_0.x, false)), false), !(arg_0.x | (countOneBits(-45553i) > _wgslsmith_div_i32(u_input.b.x, u_input.b.x))));
    var var_2 = vec2<u32>(~11131u, reverseBits(~(~u_input.d))) & arg_1;
    return Struct_1(-(~(~u_input.c.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 4294967295u)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(41996u, 1u)), max(vec2<u32>(54958u, 28429u), vec2<u32>(u_input.d, u_input.d))))), ~_wgslsmith_dot_vec4_u32((vec4<u32>(4294967295u, 4294967295u, u_input.d, u_input.d) >> (vec4<u32>(4294967295u, u_input.d, 5043u, u_input.d) % vec4<u32>(32u))) | ~vec4<u32>(u_input.d, 12104u, u_input.d, 1u), vec4<u32>(1u, 17809u, ~24632u, _wgslsmith_sub_u32(u_input.d, u_input.d))));
    let var_0 = ~u_input.d;
    global0 = var_0;
    var var_1 = -(u_input.a.x & u_input.e);
    global0 = ~4294967295u;
    return Struct_1(firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, -2147483647i), reverseBits(1i), 14026i) ^ _wgslsmith_clamp_i32(-arg_0.a, abs(-8931i), firstTrailingBit(arg_0.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = func_2(vec2<bool>(true, all(vec2<bool>(arg_3.x, arg_0.a < arg_1.a))), vec2<u32>(u_input.d, _wgslsmith_sub_u32(u_input.d, u_input.d)), !select(select(select(vec4<bool>(arg_2.x, arg_3.x, arg_3.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), false), vec4<bool>(false, false, arg_2.x, false), arg_3.x), select(!vec4<bool>(arg_2.x, arg_3.x, arg_2.x, arg_2.x), !vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), select(vec4<bool>(true, false, true, arg_2.x), vec4<bool>(true, arg_3.x, true, arg_2.x), false)), !vec4<bool>(arg_2.x, false, false, false)));
    global0 = 1u;
    global0 = ~_wgslsmith_div_u32(firstLeadingBit(~min(42415u, 0u)), 61951u);
    let var_1 = Struct_1(arg_0.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(213f, 1650f) - vec2<f32>(1978f, 457f)))))) - vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(1023f, -953f)))));
    return func_4(Struct_1(-arg_1.a));
}

fn func_1() -> vec3<f32> {
    global0 = u_input.d;
    global0 = 14945u;
    var var_0 = func_5(func_4(func_2(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), countOneBits(vec2<u32>(23611u, u_input.d)), vec4<bool>(true, true, true, true))), Struct_1(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a.x, 0i, 16299i)))), select(vec2<bool>(!any(vec4<bool>(true, true, true, true)), true), vec2<bool>((-2147483647i | u_input.b.x) == max(29350i, -1i), ~u_input.d < 42964u), true), vec2<bool>(!(!all(vec3<bool>(true, false, true))), false));
    let var_1 = func_2(select(!vec2<bool>(true, all(vec2<bool>(false, true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false)), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), vec2<bool>(true, true))), max(vec2<u32>(~u_input.d << (_wgslsmith_add_u32(8573u, u_input.d) % 32u), u_input.d ^ u_input.d), vec2<u32>(0u, _wgslsmith_div_u32(~1u, u_input.d | u_input.d))), select(vec4<bool>(true, all(vec2<bool>(false, false)) & true, true, true | all(vec3<bool>(false, false, true))), vec4<bool>(true, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), (true || all(vec3<bool>(false, true, true))) & true));
    let var_2 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2015f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(111f, -140f)), _wgslsmith_f_op_f32(sign(1f)));
    return var_2.yzw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d & (_wgslsmith_div_u32(u_input.d, u_input.d) & countOneBits(1u));
    let var_1 = Struct_1(~_wgslsmith_clamp_i32(2147483647i, firstTrailingBit(u_input.e), u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(358f, _wgslsmith_f_op_f32(1081f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(530f, 889f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -940f))), _wgslsmith_f_op_vec3_f32(func_1())));
    let var_3 = func_2(!select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), false | any(vec4<bool>(false, true, false, false))), reverseBits(_wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, var_0), vec2<u32>(24595u, u_input.d), vec2<bool>(true, true)) >> (~vec2<u32>(36653u, 0u) % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.d) ^ (vec2<u32>(var_0, 26042u) << (vec2<u32>(u_input.d, 51325u) % vec2<u32>(32u))))), select(vec4<bool>(true, u_input.c.x >= 1i, any(vec4<bool>(false, false, true, true)) | (var_0 != 38220u), true), vec4<bool>(true, true, true, true), var_2.x < -441f));
    var var_4 = !vec2<bool>(43732i > var_1.a, !any(vec4<bool>(true, true, true, true)));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.zz, vec2<f32>(913f, 106f)) - _wgslsmith_f_op_vec2_f32(var_2.zy - var_2.yx))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.zz, _wgslsmith_div_vec2_f32(vec2<f32>(-319f, -788f), vec2<f32>(-1000f, var_2.x)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(var_4.x, false)))))));
    var var_6 = vec2<u32>(u_input.d, ~(~u_input.d)) >> (vec2<u32>(u_input.d, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0, var_0, 4294967295u), vec3<u32>(var_0, var_0, 7118u), var_4.x), vec3<u32>(var_0, 18305u, var_0)) << (1u % 32u)) % vec2<u32>(32u));
    let var_7 = vec3<bool>(var_4.x, false, !(var_4.x & false));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), ~(~select(vec4<u32>(var_6.x, 43949u, u_input.d, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, 0u, var_6.x), vec4<u32>(4294967295u, 48609u, 38736u, var_0)), var_4.x | false)));
}

