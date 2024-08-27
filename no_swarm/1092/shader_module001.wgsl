struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = arg_2;
    var var_1 = 1i;
    var_1 = arg_1.b.x;
    let var_2 = arg_3.x;
    var_1 = var_0.a;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-594f, -100f, -301f, -514f)))))), vec4<f32>(-369f, _wgslsmith_f_op_f32(sign(-1153f)), _wgslsmith_f_op_f32(step(194f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1566f), -746f))), _wgslsmith_f_op_f32(-1822f * -926f)), vec4<bool>(any(vec3<bool>(true, true, true)) | true, any(vec4<bool>(true, true, false, false)) || (all(vec3<bool>(true, false, false)) != (var_2 >= var_2)), false, any(vec3<bool>(true, true, true)))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_sub_u32(2671u, ~_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 46165u), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), ~_wgslsmith_mod_u32(u_input.b, u_input.b)));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 1000f) + -2014f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - arg_2.c)))), -465f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c - -822f) - _wgslsmith_f_op_f32(max(-498f, -966f)))), _wgslsmith_f_op_vec4_f32(func_3(arg_2.d.a & u_input.d, arg_2.d, arg_2.d, ~vec2<u32>(~u_input.a.x, ~u_input.b))), 1000f, arg_2.d);
    var var_2 = 35027u;
    var_2 = u_input.a.x;
    let var_3 = var_1.d;
    return -var_1.d.a;
}

fn func_1() -> Struct_2 {
    var var_0 = ~countOneBits(_wgslsmith_sub_vec4_u32(~(~u_input.a), ~_wgslsmith_mult_vec4_u32(u_input.a, u_input.a)));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.c.x | -45047i, u_input.d), _wgslsmith_sub_i32(~u_input.d, u_input.e), _wgslsmith_dot_vec3_i32(~u_input.c, vec3<i32>(10188i, ~571i, 1i)), 1i), vec4<i32>(u_input.d, firstTrailingBit(-2147483647i), 17142i, _wgslsmith_mult_i32(func_2(false, 115f, Struct_2(vec4<f32>(-132f, -1682f, 837f, 2250f), vec4<f32>(1000f, -946f, 996f, -197f), -343f, Struct_1(u_input.c.x, u_input.c))), u_input.e)), vec4<i32>(~(-1838i), abs(abs(u_input.d)), _wgslsmith_div_i32(~(-46564i), -(i32(-1i) * -13795i)), abs(-70762i)));
    var var_2 = _wgslsmith_mod_i32(1i, var_1.x);
    var_0 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, ~var_0.x, var_0.x, var_0.x), u_input.a, vec4<u32>(firstTrailingBit(u_input.a.x), ~_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(4285u, 0u)), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.xy, var_0.wz)), var_0.x)));
    var_0 = u_input.a;
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1084f))), -739f, 1f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(631f - -1194f))), -591f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -470f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1403f, 645f, true)) * _wgslsmith_f_op_f32(-1436f - 843f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1384f, -1272f) * _wgslsmith_f_op_f32(f32(-1f) * -103f)) - -283f)), _wgslsmith_f_op_vec4_f32(func_3(-var_1.x, Struct_1(_wgslsmith_clamp_i32(-33087i, var_1.x, -u_input.e), ~_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(48093i, u_input.c.x, 0i))), Struct_1(abs(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-9066i, -1i, u_input.e))), u_input.c), ~(vec2<u32>(var_0.x, var_0.x) ^ u_input.a.yz))).x, Struct_1(-1i, max(var_1.xxz, vec3<i32>(-u_input.e, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_1.x, -29515i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = _wgslsmith_mod_vec2_i32(countOneBits(~(~vec2<i32>(var_0.d.a, -12517i) & _wgslsmith_mult_vec2_i32(u_input.c.yz, vec2<i32>(-2147483647i, var_0.d.b.x)))), reverseBits(vec2<i32>(i32(-1i) * -5270i, -1i)));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1090f, 345f, var_0.a.x, 1128f))), vec4<f32>(var_0.c, _wgslsmith_f_op_f32(select(-1007f, -518f, false)), var_0.a.x, -318f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), vec4<f32>(-300f, var_0.b.x, _wgslsmith_f_op_f32(-805f + var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -265f))), select(true, true, true))), _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-873f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(max(var_0.c, var_0.b.x)), _wgslsmith_div_f32(var_0.c, -1000f)))), var_0.b.x, func_1().d);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(-324f, -1048f, var_0.c, _wgslsmith_f_op_f32(-var_0.c))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.b, true)), _wgslsmith_f_op_vec4_f32(-var_0.b), true)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-110f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(1907f + 1144f), 1488f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(582f)) * 2324f), func_1().d);
    var var_2 = u_input.d;
    var_0 = func_1();
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

