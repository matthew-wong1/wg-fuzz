struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 159f;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = 1i;
    var_0 = u_input.c.x;
    var var_1 = ~(~u_input.a >> (u_input.a % 32u));
    var var_2 = true;
    global0 = arg_0.x;
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(819f, arg_0.x), arg_0.x, false));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<bool> {
    global0 = -1764f;
    var var_0 = arg_2.x;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f - _wgslsmith_f_op_f32(f32(-1f) * -141f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(510f)));
    var var_1 = arg_3;
    return select(arg_3.a.wy, !select(vec2<bool>(true, true), !arg_3.a.yy, true), (-4844i & ((u_input.c.x | 59518i) >> (u_input.a % 32u))) == -1i);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-588f - 266f), _wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1284f)) - _wgslsmith_f_op_f32(abs(1146f)))));
    var var_1 = ~select(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a))), ~vec2<u32>(u_input.a, u_input.a >> (0u % 32u)), func_3(any(vec3<bool>(true, true, true)), vec2<i32>(u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.d.x)), vec4<bool>(true, true, true, true), Struct_1(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), false, _wgslsmith_sub_u32(27734u, u_input.a), -998f > var_0.x, countOneBits(vec3<i32>(u_input.d.x, 2147483647i, -1i)))));
    var_1 = vec2<u32>(var_1.x, ~58267u << (min(0u, 4294967295u) % 32u));
    let var_2 = select(u_input.d.yy, u_input.c.zy, true) | (_wgslsmith_mult_vec2_i32(u_input.d.yy, u_input.d.xx & firstTrailingBit(u_input.c.xy)) >> (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, u_input.a), vec2<u32>(68686u, var_1.x)), ~vec2<u32>(u_input.a, var_1.x)), ~(~vec2<u32>(u_input.a, 16786u))) % vec2<u32>(32u)));
    var var_3 = Struct_1(!vec4<bool>(var_2.x >= -u_input.b, true, !all(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, true, true))), !any(vec4<bool>(select(true, false, false), true, all(vec4<bool>(true, false, true, false)), true)), ~1u, var_0.x <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(512f, var_0.x)), vec2<u32>(u_input.a, var_1.x))))), vec3<i32>(-2147483647i, select(abs(_wgslsmith_mult_i32(3973i, -24104i)), _wgslsmith_clamp_i32(max(u_input.c.x, 36141i), var_2.x, -50235i), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), -_wgslsmith_mod_i32(-1i, 5463i)));
    return _wgslsmith_dot_vec2_u32(select(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 0u), vec2<u32>(40956u, 14409u))), abs(vec2<u32>(1u, 63033u)), var_3.b), vec2<u32>(u_input.a, ~_wgslsmith_clamp_u32(~u_input.a, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c, 1u, var_3.c, var_1.x), vec4<u32>(4294967295u, 4294967295u, 60979u, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(597f));
    let var_0 = !(!vec2<bool>(all(vec2<bool>(true, false)), true));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(432f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-393f + 1f), _wgslsmith_f_op_f32(414f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec2<f32>(-1117f, -1437f), vec2<u32>(u_input.a, 0u))))))));
    global0 = 1984f;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -413f);
    var var_1 = ~func_2();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, -2147483647i, u_input.b, 66980i)), abs(vec4<i32>(u_input.c.x, -2147483647i, 2147483647i, u_input.d.x))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -24690i, 2147483647i, 13163i), vec4<i32>(-1i, u_input.b, u_input.c.x, u_input.c.x), vec4<i32>(36645i, 41552i, 2147483647i, -1i)), firstTrailingBit(vec4<i32>(u_input.b, u_input.d.x, 0i, 2147483647i)), !var_0.x)) | (countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.d.x, -2147483647i), vec4<i32>(11747i, -2311i, -12451i, u_input.d.x))) ^ -(~vec4<i32>(u_input.c.x, -1i, u_input.d.x, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1266f, -2416f) + vec2<f32>(-185f, -100f))), ~reverseBits(vec2<u32>(9371u, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f - _wgslsmith_f_op_f32(min(888f, 683f))) + _wgslsmith_f_op_f32(f32(-1f) * -368f))), ~select(select(1u, u_input.a, select(var_0.x, var_0.x, false)), u_input.a, !(!var_0.x)));
}

