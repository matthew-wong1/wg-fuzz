struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-986i, -41363i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec3<u32> {
    return _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~min(u_input.a.x << (4294967295u % 32u), 1u), 32545u), ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(30235u, u_input.b, 22397u), vec3<u32>(u_input.a.x, 4294967295u, u_input.b))) & vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 145646u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 29007u, u_input.b), vec3<u32>(0u, u_input.b, u_input.b))), ~u_input.b));
}

fn func_2() -> f32 {
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 0i), vec2<i32>(-1i) * -(~vec2<i32>(global0.x, 0i)));
    let var_0 = vec4<bool>(false, !(countOneBits(u_input.c.x & 2147483647i) != ~global0.x), true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.a.x <= 0u, true, true), all(vec2<bool>(true, true)))));
    global0 = u_input.c.ww;
    global0 = u_input.c.yx | u_input.c.wy;
    var var_1 = _wgslsmith_clamp_vec3_u32(select(select(~vec3<u32>(78954u, u_input.a.x, u_input.a.x), vec3<u32>(50045u, 38444u, 1u), var_0.zyw), ~func_3(), vec3<bool>(false, true, var_0.x)), ~vec3<u32>(u_input.a.x, max(39466u, u_input.b), u_input.a.x), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(5702u, u_input.b, u_input.b)))) | select(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u), ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec3<u32>(u_input.b, u_input.a.x, 1u))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(44255u, u_input.a.x, 4294967295u), vec3<u32>(30345u, 36647u, 22215u)), countOneBits(vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)))), ~vec3<u32>(0u >> (u_input.a.x % 32u), _wgslsmith_sub_u32(u_input.b, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(15341u, u_input.b, 0u, u_input.a.x), vec4<u32>(0u, 30210u, 43363u, 50469u))), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f)) + -786f);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.a.x - arg_3.a.x), -894f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(1653f * arg_3.a.x));
    let var_1 = arg_3;
    var var_2 = -106f;
    var_2 = _wgslsmith_f_op_f32(floor(-1000f));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, -1131f), 903f)), _wgslsmith_f_op_f32(ceil(-739f)), 283f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1762f, arg_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1889f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.a.xxz)) + var_1.a.zwz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, var_0.x) + _wgslsmith_f_op_vec3_f32(exp2(var_1.a.yxy))) * _wgslsmith_div_vec3_f32(var_1.a.ywx, _wgslsmith_f_op_vec3_f32(ceil(var_0))))))));
    return select(min(-2147483647i, _wgslsmith_div_i32(global0.x, countOneBits(-36480i))) << (arg_1.x % 32u), i32(-1i) * -(_wgslsmith_mult_i32(-2147483647i, u_input.c.x) & _wgslsmith_div_i32(global0.x, -1i)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(u_input.c.x, abs(reverseBits(reverseBits(1i))));
    global0 = u_input.c.zw;
    global0 = ~(u_input.c.yy | u_input.c.yz);
    var var_0 = true;
    var var_1 = !vec4<bool>(!((2147483647i > u_input.c.x) || true), true, true, select(u_input.a.x, 1u, true) >= ~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(-global0.x, func_1(true, firstTrailingBit(~vec3<u32>(u_input.b, 302u, u_input.a.x)), (vec4<u32>(u_input.b, 8378u, 4294967295u, 108979u) ^ vec4<u32>(u_input.b, 42235u, u_input.a.x, u_input.b)) | select(vec4<u32>(u_input.b, 1u, u_input.b, 1u), vec4<u32>(4294967295u, 1u, 1u, 9457u), false), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, 1165f, -1110f, 304f)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.c.x, global0.x), u_input.c), var_1.x, vec3<i32>(global0.x, global0.x, u_input.c.x))), !(!all(vec2<bool>(var_1.x, var_1.x)))), vec4<i32>(u_input.c.x, ~(~(-2147483647i)) << (u_input.b % 32u), -global0.x, 0i), u_input.b);
}

