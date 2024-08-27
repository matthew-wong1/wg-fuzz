struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_u32(u_input.e, u_input.e, 1u ^ abs(arg_3.x));
    var var_1 = select(abs((_wgslsmith_clamp_vec3_i32(vec3<i32>(-20310i, arg_1.x, arg_1.x), arg_2, arg_2) ^ _wgslsmith_div_vec3_i32(vec3<i32>(19534i, arg_2.x, 0i), arg_2)) ^ vec3<i32>(arg_1.x >> (0u % 32u), -arg_2.x, 0i)), arg_2, arg_0);
    let var_2 = Struct_1(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(firstTrailingBit(4294967295u), u_input.d.x | 4294967295u)), u_input.c.x), select(arg_3.x, u_input.e, arg_2.x > 2147483647i), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1313f, 491f, arg_0.x)) - _wgslsmith_f_op_f32(max(-1481f, -558f)))))));
    let var_3 = Struct_1(_wgslsmith_clamp_u32(~u_input.b, firstLeadingBit(~(~u_input.a)), countOneBits(select(_wgslsmith_clamp_u32(28308u, arg_3.x, u_input.e), min(var_2.b, u_input.a), arg_0.x))), u_input.a, var_2.c);
    let var_4 = Struct_1(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 103604u, var_3.a, var_3.a), vec4<u32>(arg_3.x, 1u, u_input.d.x, 0u) << (vec4<u32>(var_2.b, arg_3.x, 23581u, var_2.a) % vec4<u32>(32u)), vec4<u32>(var_2.a, var_2.b, 1u, var_3.a)), reverseBits(select(vec4<u32>(44960u, var_2.b, 0u, 53372u), vec4<u32>(34972u, 4294967295u, 36759u, 41116u), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))))), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_3.x, select(32007u, 19996u, false)), abs(reverseBits(7090u)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-879f, _wgslsmith_div_f32(2300f, var_3.c.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_2.c * var_2.c)))))));
    return -vec3<i32>(1i, countOneBits(arg_2.x), arg_2.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    var var_0 = -28941i;
    var var_1 = false;
    var var_2 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, _wgslsmith_mult_i32(1i, -21952i), 2147483647i)), ~(~(-func_3(arg_0, vec2<i32>(-9529i, 1120i), vec3<i32>(18298i, 0i, -33265i), vec3<u32>(u_input.e, u_input.a, u_input.a)))));
    var var_3 = _wgslsmith_f_op_f32(-arg_1.c.x);
    var var_4 = Struct_1(arg_1.a >> (_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), 1u, _wgslsmith_mult_u32(reverseBits(0u), u_input.a)) % 32u), 31920u, arg_1.c);
    return any(select(!select(arg_0, vec3<bool>(true, true, true), arg_0.x), !arg_0, vec3<bool>(!arg_0.x, any(!arg_0), true)));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = vec4<f32>(-594f, -1404f, -232f, 1519f);
    var var_1 = select(vec3<bool>(true, true, true), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec3<bool>(var_0.x != _wgslsmith_f_op_f32(var_0.x * -917f), true, any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, func_2(vec3<bool>(true, true, false), Struct_1(0u, u_input.a, vec2<f32>(553f, arg_0.x)), Struct_1(u_input.d.x, u_input.c.x, vec2<f32>(362f, 1147f)), var_0), 1296f <= arg_0.x), vec3<bool>(true, true, true))), !select(vec3<bool>(0u >= u_input.d.x, var_0.x > var_0.x, true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), vec3<bool>(false, all(vec2<bool>(true, false)), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_0.x, 666f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0, vec4<f32>(-1570f, 846f, 540f, arg_0.x))))), all(select(select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, true, false, var_1.x), var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), 549f > var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -244f, -774f, -244f)))), var_0, all(select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, false, true, var_1.x), false)))))));
    return (1i & _wgslsmith_dot_vec4_i32(-vec4<i32>(-21898i, 2147483647i, -2147483647i, 0i), -vec4<i32>(1i, 1i, 1i, 1i))) ^ (((~19959i << (abs(u_input.a) % 32u)) >> (~select(u_input.b, 11362u, true) % 32u)) ^ ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-270f, 403f), vec2<f32>(-669f, -1098f)))))))));
    let var_1 = false;
    var var_2 = -290f;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1535f, 1114f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(170f, -395f, var_1)) - _wgslsmith_div_f32(701f, 631f)))) - 438f));
    let var_4 = countOneBits(_wgslsmith_div_u32(~countOneBits(u_input.b), select(abs(u_input.e), u_input.d.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~33300i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-140f))))), _wgslsmith_f_op_f32(-var_3.x)));
}

