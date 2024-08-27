struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 136394u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>) -> vec4<bool> {
    global0 = vec2<u32>(_wgslsmith_mult_u32(select(max(max(global0.x, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(40452u, global0.x, global0.x, u_input.c.x), vec4<u32>(global0.x, 85136u, u_input.a.x, u_input.b))), reverseBits(_wgslsmith_div_u32(u_input.c.x, u_input.c.x)), true), global0.x), global0.x);
    return vec4<bool>(!all(vec3<bool>(true, true, any(vec2<bool>(false, true)))), false && any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true), vec2<bool>(true, true))), true, false);
}

fn func_2() -> bool {
    var var_0 = Struct_1(select(select(vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), all(vec3<bool>(true, true, false))), vec4<bool>(true, select(true, false, true), true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, select(false, false, true), true, false), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-456f, -195f, 407f)), abs(vec4<i32>(u_input.e, u_input.d, u_input.d, 1i))))), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.d | 8855i, u_input.e), firstTrailingBit(min(-vec2<i32>(u_input.e, -32445i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 28106i), vec2<i32>(-1i, 43870i))))), select(vec4<bool>(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(-1031f, -1114f, -393f), vec3<f32>(-406f, 1516f, 417f)), -vec4<i32>(-23117i, -22378i, u_input.e, u_input.e)).x, false, any(func_3(vec3<f32>(341f, 2391f, 576f), vec4<i32>(u_input.d, u_input.e, 14560i, 47213i))), true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, false)), true, true, ~global0.x >= 4294967295u)), i32(-1i) * -7853i);
    let var_1 = Struct_1(!(!var_0.c), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.d, abs(-2147483647i)), abs(u_input.d)), -_wgslsmith_mult_i32(1i, abs(20815i))), vec4<bool>(all(vec2<bool>(var_0.c.x, true)), any(vec2<bool>(any(vec3<bool>(var_0.a.x, false, false)), false)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-157f, 1086f, -1000f)), -firstLeadingBit(vec4<i32>(2550i, -13040i, 1i, 2147483647i))).x, var_0.a.x), var_0.d >> (firstTrailingBit(58867u) % 32u));
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(!(!var_0.c), var_1.b, select(select(var_1.a, !select(var_1.c, vec4<bool>(var_0.c.x, true, true, false), var_1.a.x), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1746f, -836f, 367f) * vec3<f32>(234f, 1433f, 238f)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -65061i, var_1.d, -17216i), vec4<i32>(var_1.b.x, var_1.d, var_0.d, u_input.d)))), vec4<bool>(var_1.a.x & true, _wgslsmith_f_op_f32(189f - 815f) <= _wgslsmith_f_op_f32(trunc(1000f)), var_0.c.x, 1i != firstTrailingBit(0i)), true && any(var_0.a.yyy)), 2147483647i);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1583f, _wgslsmith_f_op_f32(f32(-1f) * -269f), -855f, -335f)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(1329f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(3091f, 361f, var_1.c.x)))), _wgslsmith_f_op_f32(-1048f - 238f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-251f + -526f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-665f - _wgslsmith_f_op_f32(select(-228f, -639f, false))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -841f), -1616f)))));
    return false;
}

fn func_1() -> vec4<u32> {
    let var_0 = any(vec2<bool>(func_2(), u_input.d < u_input.d));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(173f)))) * 825f)));
    let var_2 = Struct_1(!func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1000f, var_1) * vec3<f32>(-442f, var_1, -671f))), ~(~vec4<i32>(u_input.e, u_input.e, -1i, 0i))), -select(countOneBits(abs(vec2<i32>(u_input.e, u_input.e))), ~(~vec2<i32>(u_input.d, u_input.d)), !vec2<bool>(false, var_0)), !(!(!select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, false, false, var_0)))), 1i);
    var var_3 = ~_wgslsmith_div_vec4_u32(~(~(~vec4<u32>(u_input.c.x, 1u, global0.x, global0.x))), ~max(vec4<u32>(82567u, u_input.b, 0u, u_input.a.x), reverseBits(vec4<u32>(global0.x, 2347u, global0.x, global0.x))));
    var_3 = ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(51687u, var_3.x, u_input.c.x, 0u), vec4<u32>(u_input.a.x, var_3.x, var_3.x, 1u)) ^ min(vec4<u32>(1u, 36184u, 9398u, 39344u), vec4<u32>(1892u, var_3.x, var_3.x, var_3.x))) & select(vec4<u32>(0u, u_input.c.x, 43051u, var_3.x), vec4<u32>(1u, u_input.a.x >> (0u % 32u), _wgslsmith_div_u32(13246u, 17053u), var_3.x << (global0.x % 32u)), vec4<bool>(true, any(var_2.c.xy), var_2.a.x && var_0, var_0)));
    return vec4<u32>(global0.x, _wgslsmith_add_u32(0u, (~u_input.c.x << (~42248u % 32u)) >> (_wgslsmith_div_u32(62900u, ~global0.x) % 32u)), 18058u, min(4294967295u, min(~4294967295u, 35092u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(true, all(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false), global0.x <= 1u)));
    global0 = firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, u_input.c.x, 0u), func_1()), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 9955u, u_input.c.x), vec4<u32>(global0.x, u_input.b, u_input.a.x, global0.x))), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), u_input.c.zy))));
    let var_1 = _wgslsmith_f_op_f32(436f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * -1000f), 1f)));
    var var_2 = max(abs(reverseBits(_wgslsmith_mod_u32(~28782u, _wgslsmith_add_u32(global0.x, 0u)))), min(_wgslsmith_clamp_u32(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global0.x, 1u, 1u), vec4<u32>(global0.x, 4831u, 4294967295u, 26076u)) ^ ~u_input.c.x, ~global0.x), ~34017u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, var_1, -1706f, -668f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, -235f, -230f), vec4<f32>(var_1, var_1, -1720f, var_1)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -304f, -1053f, var_1) + vec4<f32>(504f, var_1, var_1, -1470f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-956f, var_1, var_1, 1797f) - vec4<f32>(var_1, 105f, 1442f, -1690f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, -925f))))));
    var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, -1092f, 139f, -471f), vec4<f32>(-986f, var_1, var_3.x, var_3.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(604f, var_3.x, 1294f, var_1))), true))))));
    let var_4 = Struct_1(vec4<bool>(var_0.x, var_0.x, any(!(!vec4<bool>(true, false, var_0.x, var_0.x))), !(func_3(vec3<f32>(-816f, 330f, var_3.x), vec4<i32>(2147483647i, u_input.e, u_input.e, 0i)).x & true)), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.e, 12604i)), vec2<i32>(-1i, -2362i) << (u_input.c.zx % vec2<u32>(32u))), !vec4<bool>(var_0.x, false, func_2(), any(var_0)), u_input.e);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, _wgslsmith_f_op_f32(ceil(-934f))))), var_4.b.x ^ u_input.e);
}

