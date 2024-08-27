struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-835f * -1454f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) * -1275f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.d;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) + _wgslsmith_f_op_f32(ceil(-1000f)))))), abs(firstLeadingBit(select(firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, u_input.c.x)), -vec4<i32>(-2147483647i, u_input.c.x, 0i, -2147483647i), true))), ~(-u_input.b.x));
    var var_2 = var_1;
    var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), var_1.a) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_div_f32(var_1.a, -506f))))), vec4<i32>(_wgslsmith_mod_i32(71067i, u_input.b.x), u_input.c.x, abs(-2147483647i), 1i), var_1.c);
    var_2 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))))), var_2.b, var_1.c & _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.xx, min(vec2<i32>(1i, u_input.c.x), var_1.b.wy)), -53828i));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_1(1650f, firstLeadingBit(-abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-113971i, 1i, 1i, 24627i), vec4<i32>(arg_1.x, arg_1.x, arg_3.x, -2147483647i), vec4<i32>(arg_3.x, -22933i, -41384i, arg_1.x)))), 45404i);
    var_0 = func_2();
    var_0 = func_2();
    let var_1 = arg_0;
    var_0 = arg_0;
    return 126030u;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-677f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1241f)), 784f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(381f - 1000f) - -987f)))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(firstLeadingBit(arg_2), -19353i), -37687i), _wgslsmith_dot_vec3_i32(max(u_input.c, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(-3427i, arg_2, u_input.b.x), select(u_input.c, u_input.c, false))), ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, 10759i), u_input.b, true), vec2<i32>(u_input.c.x, u_input.c.x)), ~u_input.b.x), 33773i);
    return select(vec3<bool>(!all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) <= -177f, any(vec2<bool>(44634u < u_input.e.x, false))), !vec3<bool>(all(vec3<bool>(true, true, false)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true))), true), select(vec3<bool>(arg_2 < (73129i << (u_input.a % 32u)), !all(vec3<bool>(false, false, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), vec3<bool>(true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), true), vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.d.x, u_input.e.x), vec4<u32>(4294967295u, 4294967295u, 9953u, u_input.e.x)), func_1(Struct_1(1384f, vec4<i32>(u_input.c.x, u_input.c.x, u_input.b.x, -2147483647i), -2626i), u_input.c, vec3<u32>(u_input.e.x, 4294967295u, u_input.d.x), vec2<i32>(-5051i, u_input.c.x)), 3712u, 0u), vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, 12541u), ~u_input.a, u_input.d.x, 10359u)), reverseBits(vec4<u32>(60767u, ~1u, ~0u, max(u_input.e.x, u_input.e.x))), ~(-(~(-55171i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(142f, 1546f))))));
    let var_2 = -_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_mult_i32(u_input.c.x, 39401i)), abs(1i)), _wgslsmith_mult_vec2_i32(reverseBits(u_input.b), u_input.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(var_1));
    let var_4 = 12311u;
    var var_5 = vec3<u32>(1u, ~u_input.d.x, ~var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, 637f, var_1.x)) * vec4<f32>(var_1.x, 250f, var_3.x, -515f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-863f, _wgslsmith_f_op_f32(exp2(var_3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(f32(-1f) * -518f)), any(select(vec2<bool>(var_0, true), !vec2<bool>(var_0, var_0), false)))), vec2<u32>(1u, func_1(Struct_1(_wgslsmith_f_op_f32(var_3.x * -704f), -vec4<i32>(2147483647i, var_2, 47124i, u_input.b.x), var_2), vec3<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.b), 0i ^ u_input.c.x), vec3<u32>(reverseBits(4294967295u), var_5.x, ~6582u), abs(u_input.b))), -33087i, var_5.yz);
}

