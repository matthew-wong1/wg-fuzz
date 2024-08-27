struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(reverseBits(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(u_input.c.ywz, vec3<i32>(u_input.c.x, 2147483647i, 1834i)), global0.x)) & select(u_input.c.zzz, u_input.c.zzx, false));
    var var_1 = Struct_2(var_0.a);
    global0 = _wgslsmith_add_vec3_i32(countOneBits(-reverseBits(vec3<i32>(2147483647i, -94170i, 82422i))), vec3<i32>(u_input.b, countOneBits(-17069i), var_0.a.x | 32339i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(635f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1456f))))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = 4929u;
    global0 = ~u_input.c.zxx;
    global0 = _wgslsmith_add_vec3_i32(firstTrailingBit(countOneBits(u_input.c.wyx)), ~vec3<i32>(arg_1, -reverseBits(1i), arg_1));
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -982f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-429f - -2028f) - _wgslsmith_f_op_f32(func_3())), -1081f), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-345f, _wgslsmith_f_op_f32(max(1000f, -713f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-758f, 1000f, -205f) * vec3<f32>(-2346f, -449f, -1059f)))))), arg_2.x);
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1694f, var_1.b.b.x, var_1.b.c.x)))), Struct_1(_wgslsmith_f_op_f32(abs(-1330f)), vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.b.c.x)), 316f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(var_1.b.b.x, 1735f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, 1167f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), var_1.c);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1077f * var_1.a.x))), _wgslsmith_f_op_f32(-var_1.b.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(945f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), var_1.a.x) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1097f, var_1.b.a)), _wgslsmith_div_vec2_f32(var_1.b.b, var_1.b.b)))) + _wgslsmith_f_op_vec2_f32(floor(var_1.b.c.zy))), _wgslsmith_div_vec3_f32(var_1.b.c, var_1.a));
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_sub_vec3_i32(u_input.c.xxx, vec3<i32>(_wgslsmith_sub_i32(~countOneBits(-1i), ~(~13771i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.x, global0.x, max(-2147483647i, 2147483647i)), vec4<i32>(_wgslsmith_add_i32(global0.x, global0.x), ~(-1i), _wgslsmith_sub_i32(global0.x, global0.x), _wgslsmith_add_i32(global0.x, u_input.c.x))), global0.x));
    global0 = _wgslsmith_mult_vec3_i32(u_input.c.yyy, vec3<i32>(~(~u_input.a), global0.x, -2147483647i));
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(2018f, 236f), 1109f, _wgslsmith_f_op_f32(f32(-1f) * -2220f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, 1941f, 1524f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-107f, 389f, 1411f))))), vec3<f32>(400f, _wgslsmith_f_op_f32(f32(-1f) * -1701f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1468f))))), func_2(!vec4<bool>(false, true, any(vec2<bool>(true, false)), all(vec3<bool>(true, false, false))), 44134i, vec2<bool>(all(vec3<bool>(true, false, false)) || true, true)), any(vec4<bool>(!all(vec4<bool>(false, true, true, false)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false)), u_input.d >= _wgslsmith_mult_u32(1u, u_input.d), all(vec4<bool>(true, true, true, true)) && true)));
    var var_1 = true;
    global0 = vec3<i32>(-29346i, u_input.b, u_input.c.x);
    return StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(-u_input.c.x ^ global0.x, firstLeadingBit(2147483647i), 322i), -u_input.b >> (_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(u_input.d, 50346u)) % 32u), -2147483647i, global0.x), min(u_input.c, _wgslsmith_mult_vec4_i32(u_input.c, select(u_input.c, ~u_input.c, !vec4<bool>(true, var_0.c, var_0.c, var_0.c)))), var_0.b.a, ~select(~vec3<u32>(1u, 18681u, 78458u), vec3<u32>(70510u, 0u, ~u_input.d), !vec3<bool>(false, var_0.c, var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

