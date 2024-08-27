struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(966f, 1265f, 527f) - vec3<f32>(-395f, 769f, -755f)), vec3<f32>(-601f, 1194f, 1337f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(180f, -1936f, 2628f), vec3<f32>(-684f, -516f, 194f), arg_1.a)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1748f, 629f, -293f), vec3<f32>(-415f, 311f, 211f)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(928f, -1106f, 290f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-326f, 477f, 128f)) - vec3<f32>(-331f, -452f, 277f)), true))));
    return ~u_input.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_1(-(_wgslsmith_mult_i32(-u_input.b, 10151i) ^ 10349i), _wgslsmith_div_i32(~15583i, _wgslsmith_mult_i32(~func_3(arg_1, arg_1), 49997i)), min(select(~(~vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, 0u)), ~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 0u)), !(!arg_3)), u_input.a), (all(select(vec3<bool>(arg_1.a, true, false), vec3<bool>(arg_3.x, true, arg_3.x), true)) || arg_3.x) & arg_1.a);
    let var_1 = arg_1;
    let var_2 = var_0;
    let var_3 = select(select(select(select(!arg_3.ww, select(vec2<bool>(false, arg_3.x), vec2<bool>(var_0.d, arg_3.x), var_0.d), select(arg_3.wy, vec2<bool>(var_1.a, false), arg_3.ww)), !arg_3.wy, arg_1.a), vec2<bool>(!arg_1.a, true), arg_3.wx), arg_3.xw, !all(vec4<bool>(true, arg_1.a, true, any(vec2<bool>(false, false)))));
    let var_4 = arg_2.x;
    return select(var_2.c.x != 4294967295u, ~firstLeadingBit(var_0.c.x) < 4294967295u, !all(vec2<bool>(var_0.d, !arg_1.a)));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(true);
    let var_1 = 0i ^ _wgslsmith_div_i32(-2147483647i, ~min(~u_input.b, 0i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-2303f, _wgslsmith_f_op_f32(-105f - -641f))), -1818f))));
    let var_3 = u_input.c.x;
    let var_4 = abs(reverseBits(-select(vec3<i32>(-4873i, u_input.b, 35278i), vec3<i32>(-2147483647i, var_1, var_1), arg_0.xwz))) ^ firstTrailingBit(vec3<i32>(1i, -u_input.b, 0i));
    return Struct_1(~34938i, max(abs(1i), (-1i | _wgslsmith_div_i32(0i, var_4.x)) << (var_3 % 32u)), ~u_input.a, false);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(-u_input.b ^ u_input.b, firstTrailingBit(firstTrailingBit(-_wgslsmith_mod_i32(u_input.b, u_input.b))), u_input.a, arg_0.a);
    var_0 = func_4(select(select(!select(vec4<bool>(true, false, false, arg_0.a), vec4<bool>(false, arg_0.a, false, true), vec4<bool>(var_0.d, true, arg_0.a, true)), vec4<bool>(func_2(vec3<i32>(2147483647i, u_input.b, u_input.b), arg_0, vec3<f32>(arg_1.x, -988f, arg_1.x), vec4<bool>(var_0.d, false, false, arg_0.a)), any(vec4<bool>(var_0.d, arg_0.a, var_0.d, true)), true, false), vec4<bool>(any(vec4<bool>(true, false, true, arg_0.a)), false, var_0.d, arg_0.a)), select(!(!vec4<bool>(arg_0.a, false, false, arg_0.a)), vec4<bool>(true, false != arg_0.a, true, var_0.d), vec4<bool>(var_0.d, all(vec2<bool>(false, arg_0.a)), arg_0.a, true)), !vec4<bool>(arg_0.a, !arg_0.a, false, true)));
    var_0 = func_4(vec4<bool>(!var_0.d, false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x + -232f))) > -1733f, func_2(~firstTrailingBit(vec3<i32>(u_input.b, -2147483647i, 29237i)), arg_0, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -262f), arg_1.x, _wgslsmith_f_op_f32(trunc(arg_1.x))), vec4<bool>(any(vec2<bool>(true, var_0.d)), !var_0.d, any(vec3<bool>(false, false, false)), false))));
    var_0 = Struct_1(-var_0.a & u_input.b, max(var_0.a, countOneBits(13084i)), ~(~(~(vec4<u32>(1158u, 0u, u_input.a.x, 62269u) & var_0.c))), true);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(min(abs(vec3<i32>(u_input.b, var_0.b, var_0.b)) << (_wgslsmith_sub_vec3_u32(var_0.c.wwy, u_input.a.zwx) % vec3<u32>(32u)), ~vec3<i32>(u_input.b, u_input.b, var_0.b)), firstTrailingBit(-vec3<i32>(47943i, -2147483647i, 32930i) << (u_input.a.xzz % vec3<u32>(32u)))), max(-17228i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-22136i, 26746i, -24700i, -2147483647i), vec4<i32>(28938i, 33159i, -2147483647i, -2147483647i)), vec4<i32>(36631i, u_input.b & var_0.a, ~var_0.a, _wgslsmith_clamp_i32(var_0.a, 1i, var_0.a)))), vec4<u32>(u_input.c.x, 9783u, _wgslsmith_div_u32(~(~4294967295u), var_0.c.x), _wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, 4294967295u), ~u_input.a.x)), true);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(!(!select(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-506f, 612f)))))));
    var var_1 = func_4(vec4<bool>(var_0.a, true && select(var_0.a, true, any(vec2<bool>(var_0.a, var_0.a))), true, all(vec2<bool>(var_0.a, var_0.a)) | true));
    let var_2 = firstTrailingBit(vec4<u32>(select(var_1.c.x, _wgslsmith_add_u32(0u, var_1.c.x), !var_0.a), u_input.a.x, var_1.c.x, var_1.c.x)) | ~select(vec4<u32>(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 0u), u_input.c.x, ~var_1.c.x), vec4<u32>(min(var_1.c.x, 1u), var_1.c.x ^ 3439u, var_1.c.x, var_1.c.x), select(!vec4<bool>(var_0.a, var_1.d, var_1.d, var_0.a), !vec4<bool>(var_0.a, true, true, false), var_0.a));
    let var_3 = abs(vec4<i32>(-91477i, _wgslsmith_div_i32(~(var_1.a | u_input.b), ~min(var_1.b, -1i)), -16536i, -1i));
    var_0 = Struct_2(true);
    var var_4 = 2147483647i;
    var_0 = func_1(func_1(func_1(Struct_2(var_1.d), vec2<f32>(-277f, _wgslsmith_f_op_f32(-1631f * 316f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1279f, -969f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(884f, 251f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2391f, -739f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-697f, -1000f)), !func_2(var_3.zwy, Struct_2(var_1.d), vec3<f32>(-707f, -691f, -901f), vec4<bool>(false, var_0.a, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c.x, _wgslsmith_add_u32(~36736u, ~u_input.a.x), var_1.c.x, 12644u) << (var_2 % vec4<u32>(32u)));
}

