struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = arg_1.c.x;
    let var_1 = arg_1.c.yy;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-360f * arg_2), _wgslsmith_f_op_f32(-619f * -615f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, arg_2)))) - vec2<f32>(170f, var_2.x)) - vec2<f32>(-260f, -591f));
    let var_3 = arg_0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)) + 701f);
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-777f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2627f * 637f)))), _wgslsmith_f_op_f32(-1116f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1564f + 818f), -437f)), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, arg_1.a, arg_1.a, true), Struct_2(2909i, vec2<i32>(-1i, 2147483647i), vec3<u32>(u_input.b.x, 20969u, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -801f)))))));
    let var_1 = u_input.b.x;
    var var_2 = -vec3<i32>(u_input.a << (1u % 32u), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.c), -vec3<i32>(u_input.a, u_input.c, u_input.c))), reverseBits(_wgslsmith_add_i32(-2147483647i, firstTrailingBit(23554i))));
    var_2 = reverseBits(_wgslsmith_add_vec3_i32(min(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(34744i, u_input.a, var_2.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 29345i, 11752i), vec3<i32>(u_input.c, 1i, -9150i))), vec3<i32>(u_input.a, ~u_input.a, 1i)), abs(~vec3<i32>(var_2.x, u_input.c, u_input.a))));
    let var_3 = (var_1 != ~u_input.b.x) || arg_0;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, 1989f, _wgslsmith_div_f32(-957f, 2083f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -640f, var_0.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-698f, 1000f, var_0.x)))))))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~0u;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(373f, -668f, 148f))), _wgslsmith_f_op_vec3_f32(func_2(false, Struct_3(false), vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1677f, 102f, 405f) * vec3<f32>(1438f, -1608f, 1102f))), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1121f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1065f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(582f, 198f, 2045f)))), select(all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(466f, -131f, -349f))) * vec3<f32>(773f, 1165f, -197f))))));
    let var_3 = _wgslsmith_mod_u32(var_0, ~u_input.b.x << (_wgslsmith_sub_u32(reverseBits(abs(var_1.c.x)), ~4294967295u | (var_0 ^ var_1.c.x)) % 32u));
    let var_4 = var_3;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(-228f));
    var var_1 = any(!(!vec3<bool>(u_input.a <= u_input.a, false, false)));
    let var_2 = Struct_3((true && all(vec4<bool>(true, true, true, true))) || true);
    var var_3 = func_1(Struct_2(_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a, -29072i, -2147483647i, 1165i) ^ vec4<i32>(u_input.c, u_input.a, 2147483647i, 0i)) & vec4<i32>(-2147483647i, u_input.a, u_input.c, 21311i), ~(~vec4<i32>(u_input.a, -2683i, u_input.a, -2147483647i))), countOneBits(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.c, 45448i), select(vec2<i32>(-31028i, -84i), vec2<i32>(u_input.a, u_input.c), vec2<bool>(var_2.a, false)), vec2<i32>(355i, u_input.c))), select(max(reverseBits(vec3<u32>(36157u, u_input.b.x, 0u)), vec3<u32>(u_input.b.x, 8098u, 17559u)), _wgslsmith_div_vec3_u32(reverseBits(u_input.b.zww), select(vec3<u32>(u_input.b.x, u_input.b.x, 38358u), u_input.b.zxx, vec3<bool>(var_2.a, var_2.a, false))), true)));
    var_3 = func_1(func_1(Struct_2(var_3.a, -vec2<i32>(var_3.b.x, var_3.a), vec3<u32>(19448u, ~var_3.c.x, ~36976u))));
    var_1 = !all(!vec4<bool>(all(vec4<bool>(var_2.a, var_2.a, true, var_2.a)), var_2.a, var_2.a || var_2.a, var_2.a));
    var var_4 = Struct_2(-firstLeadingBit(abs(-u_input.a)), _wgslsmith_mod_vec2_i32(var_3.b, var_3.b), vec3<u32>(~_wgslsmith_add_u32(var_3.c.x, var_3.c.x), abs(select(4294967295u, u_input.b.x, var_2.a)), 1u | u_input.b.x) | var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(-108f);
}

