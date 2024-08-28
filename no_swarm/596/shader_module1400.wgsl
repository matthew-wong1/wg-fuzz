struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    return u_input.b.x << (26139u % 32u);
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = vec4<i32>(-u_input.b.x, u_input.b.x, u_input.b.x, -23601i);
    var_0 = countOneBits(~vec4<i32>(u_input.b.x, 51505i, firstTrailingBit(u_input.b.x), min(var_0.x, -33218i)));
    var_0 = vec4<i32>(select(-u_input.b.x, var_0.x, true), abs(2147483647i), u_input.b.x, 22663i) << (vec4<u32>(select(45673u, ~(1u << (1u % 32u)), all(vec3<bool>(false, true, true))), firstLeadingBit(u_input.a), 1u, 38030u) % vec4<u32>(32u));
    var_0 = firstTrailingBit(vec4<i32>(var_0.x, u_input.b.x, 2147483647i, _wgslsmith_div_i32(var_0.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(1i, 28824i)), -9651i))));
    let var_1 = u_input.b.x;
    return any(vec3<bool>(any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) * _wgslsmith_f_op_f32(-arg_0)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-870f - arg_0)), false));
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    let var_0 = u_input.b.x;
    var var_1 = ~((vec3<i32>(-2147483647i, func_2(), _wgslsmith_mult_i32(var_0, u_input.b.x)) & (vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i))) >> (_wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 65216u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u))), ~(vec3<u32>(u_input.a, 49490u, 1u) & vec3<u32>(0u, u_input.a, u_input.a))) % vec3<u32>(32u)));
    let var_2 = func_3(-895f);
    let var_3 = Struct_1(arg_0);
    var var_4 = Struct_1(var_3.a);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 90307u) | (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 35129u), ~vec2<u32>(56622u, u_input.a)) | ~firstTrailingBit(vec2<u32>(u_input.a, u_input.a))));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(~_wgslsmith_sub_u32(arg_0.x, 40624u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_0.x), ~arg_0), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(0u, arg_0.x)) >> (~arg_0.x % 32u)), countOneBits(max(~vec3<u32>(arg_0.x, 1u, u_input.a), countOneBits(vec3<u32>(1u, u_input.a, 0u)))) >> (vec3<u32>(4294967295u, 345u, arg_0.x) % vec3<u32>(32u)));
    var var_1 = Struct_1(select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), func_3(420f))), true));
    var_1 = Struct_1(select(vec3<bool>(_wgslsmith_mult_u32(u_input.a, 37882u) < _wgslsmith_clamp_u32(var_0.x, u_input.a, 4294967295u), func_3(680f), true), vec3<bool>(!all(vec4<bool>(false, false, var_1.a.x, var_1.a.x)), true, any(!vec4<bool>(true, true, true, var_1.a.x))), vec3<bool>(func_3(180f) && var_1.a.x, var_1.a.x, var_1.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - -1092f), _wgslsmith_f_op_f32(select(-1000f, 766f, true)), _wgslsmith_f_op_f32(-349f - 1258f)))));
    return Struct_1(select(vec3<bool>(any(select(vec2<bool>(var_1.a.x, true), var_1.a.zz, vec2<bool>(true, var_1.a.x))), false, all(vec3<bool>(var_1.a.x, var_1.a.x, false)) || all(vec2<bool>(true, false))), var_1.a, var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false)));
    var var_1 = var_0;
    var var_2 = _wgslsmith_add_vec4_i32(min(vec4<i32>(_wgslsmith_mod_i32(func_2(), 0i), ~_wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(countOneBits(u_input.b.x), u_input.b.x | -2147483647i), 0i), firstLeadingBit(-vec4<i32>(-36364i, u_input.b.x, 16294i, u_input.b.x) | -vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))), -vec4<i32>(~(-2147483647i), ~0i, abs(1i), i32(-1i) * -2147483647i));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-610f - 677f) - _wgslsmith_f_op_f32(sign(-651f)))));
    let var_4 = -794f;
    var var_5 = reverseBits(~2147483647i);
    let var_6 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mult_u32(1u << (1u % 32u), abs(select(0u, u_input.a, false))), ~(~u_input.a) & ~90774u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4 * 993f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, -1523f) * _wgslsmith_f_op_f32(ceil(-264f))))), var_2.wxy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, var_4, var_4))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4, var_4, 1574f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_4, var_4))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(select(var_4, -128f, var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)), _wgslsmith_f_op_f32(min(-101f, _wgslsmith_f_op_f32(select(770f, -1469f, false))))), vec3<bool>(true, true & var_1.a.x, all(select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, false), var_0.a.x))))), _wgslsmith_sub_u32(abs(countOneBits(~var_6.x)), u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(var_6.x, 9986u), ~reverseBits(var_6)));
}

