struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.b) ^ (vec4<i32>(-1i) * -min(u_input.b, vec4<i32>(-30845i, u_input.b.x, arg_3, arg_3))), firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_3, arg_0.x, arg_0.x, arg_3), u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))) * _wgslsmith_f_op_f32(224f - _wgslsmith_f_op_f32(floor(arg_2))));
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-3001i, -42836i), _wgslsmith_clamp_vec2_i32(abs(u_input.b.zx), abs(select(reverseBits(vec2<i32>(1i, var_0)), vec2<i32>(u_input.b.x, 9660i), select(vec2<bool>(true, false), vec2<bool>(arg_1, false), vec2<bool>(false, true)))), -vec2<i32>(-arg_3, arg_3)));
    let var_3 = true;
    let var_4 = u_input.b;
    return _wgslsmith_mult_i32(-51383i, -26344i);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(!arg_0.a, func_3(vec3<i32>(-arg_0.b, max(firstTrailingBit(arg_0.b), arg_0.b), 2147483647i), !(!(4294967295u > u_input.c)), _wgslsmith_f_op_f32(floor(-664f)), u_input.b.x));
    var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = Struct_1(vec3<bool>((arg_0.b > (var_0.b << (u_input.c % 32u))) && !(!arg_0.a.x), var_0.a.x, countOneBits(abs(u_input.b.x)) == ~_wgslsmith_div_i32(u_input.b.x, 7937i)), -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1449f))) + 1000f);
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    let var_0 = vec3<bool>(all(!vec2<bool>(all(vec4<bool>(true, arg_0, true, arg_0)), false)), all(vec2<bool>(false, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(664f, -213f)) - 106f)) != _wgslsmith_f_op_f32(func_2(Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(arg_0, arg_0, true), arg_0), _wgslsmith_div_i32(-1i, 3879i)))));
    var var_1 = (min(abs(u_input.b.x) & 23764i, ~(~0i)) ^ 40753i) & firstTrailingBit(func_3(select(-vec3<i32>(u_input.b.x, u_input.b.x, -53345i), -vec3<i32>(9673i, u_input.b.x, -37865i), arg_0), true, 510f, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(13771i, u_input.b.x, -967i, u_input.b.x), u_input.b))));
    var var_2 = Struct_1(!vec3<bool>(!arg_0, any(var_0.zx), false), _wgslsmith_mod_i32(u_input.b.x, abs(-u_input.b.x << (12224u % 32u))));
    let var_3 = Struct_1(vec3<bool>(var_2.a.x, all(!vec2<bool>(var_2.a.x, false)) && true, arg_2.x != 0u), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(u_input.b.wwx, u_input.b.zyw)), -(~(~u_input.b.x))));
    var_1 = -1i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -670f) - _wgslsmith_f_op_f32(-1104f * -1554f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(836f, 458f)))))))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: i32, arg_3: bool) -> StorageBuffer {
    let var_0 = Struct_1(!select(select(select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, arg_3, true), vec3<bool>(false, true, arg_3)), !vec3<bool>(arg_3, true, arg_3), select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(true, arg_3, arg_3), vec3<bool>(true, true, arg_3))), select(select(vec3<bool>(false, arg_3, false), vec3<bool>(arg_3, arg_3, arg_3), true), !vec3<bool>(false, arg_3, true), vec3<bool>(arg_3, arg_3, false)), true), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, max(-arg_2, -2147483647i)), max(0i, ~1i)));
    var var_1 = _wgslsmith_f_op_f32(-1046f - _wgslsmith_f_op_f32(-893f - _wgslsmith_f_op_f32(f32(-1f) * -1694f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1180f))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))));
    var_1 = arg_0;
    return StorageBuffer(abs(-vec3<i32>(_wgslsmith_add_i32(-1i, arg_2), u_input.b.x, -u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1120f)))), firstTrailingBit(_wgslsmith_add_i32(var_0.b, -2147483647i)), arg_0, 342f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1473f)), _wgslsmith_f_op_f32(select(-844f, _wgslsmith_f_op_f32(max(-1288f, 1502f)), false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(false, u_input.a, vec4<u32>(4294967295u, u_input.a, 14058u, 39698u))))))), vec4<f32>(736f, -1000f, _wgslsmith_div_f32(100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1224f) + _wgslsmith_f_op_f32(select(659f, 527f, false)))), _wgslsmith_f_op_f32(1493f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) + _wgslsmith_f_op_f32(f32(-1f) * -1804f)))), ~abs(0i) << (1u % 32u), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))));
}

