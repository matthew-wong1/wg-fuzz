struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-604f, -114f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-827f)))) * vec2<f32>(486f, 412f)), any(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13925u, 1u, 1u), vec4<u32>(32318u, 43630u, 31020u, 16973u)) | _wgslsmith_clamp_u32(1u, min(80657u, 4294967295u), abs(22708u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.a))), any(select(select(vec4<bool>(var_0.b, true, false, var_0.b), select(vec4<bool>(false, var_0.b, var_0.b, false), vec4<bool>(false, false, var_0.b, var_0.b), var_0.b), select(vec4<bool>(var_0.b, false, var_0.b, false), vec4<bool>(false, var_0.b, true, true), true)), !vec4<bool>(var_0.b, false, var_0.b, var_0.b), var_0.b)), ~(~37308u));
    let var_2 = var_0;
    var var_3 = var_1;
    var var_4 = var_2;
    return ~u_input.c;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_i32(max(-func_3(), (firstLeadingBit(vec4<i32>(u_input.e.x, -2147483647i, 0i, u_input.a.x)) ^ -u_input.c) | u_input.c), ~_wgslsmith_mult_vec4_i32(firstLeadingBit(u_input.c) >> (select(vec4<u32>(110064u, 0u, 92811u, 53672u), vec4<u32>(0u, 4294967295u, 29191u, 0u), arg_0) % vec4<u32>(32u)), ~u_input.c | vec4<i32>(-2147483647i, -10868i, -1i, 1i)), func_3());
    var var_1 = firstTrailingBit(~1i);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-646f, _wgslsmith_div_f32(409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(237f, -1039f)))), false))));
    var_1 = abs(-_wgslsmith_clamp_i32(-1643i | _wgslsmith_add_i32(var_0.x, 25607i), _wgslsmith_sub_i32(max(0i, 35700i), u_input.c.x), firstTrailingBit(-18228i) >> (_wgslsmith_div_u32(0u, 4294967295u) % 32u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(970f, 596f) * _wgslsmith_f_op_f32(ceil(216f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -532f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1535f, _wgslsmith_f_op_f32(max(-135f, 630f))))))), false, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(max(~vec4<u32>(4294967295u, 21800u, 0u, 0u), firstTrailingBit(vec4<u32>(4294967295u, 27524u, 4294967295u, 44366u))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 56433u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(56028u, _wgslsmith_add_u32(1u, 95846u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 86261u, 3668u, 4294967295u), vec4<u32>(4294967295u, 56556u, 4932u, 83062u))), 1u)));
    return -2147483647i;
}

fn func_1() -> f32 {
    var var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true);
    let var_1 = _wgslsmith_div_vec4_i32(-vec4<i32>(-u_input.e.x, ~u_input.e.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.e.x, -2482i), u_input.b), _wgslsmith_add_i32(-2147483647i, -u_input.e.x)), -vec4<i32>(u_input.b, firstLeadingBit(func_2(var_0.x)), u_input.d, _wgslsmith_clamp_i32(15411i, ~(-2147483647i), 1i)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-182f, -590f), vec2<f32>(180f, -677f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 386f) + vec2<f32>(-1162f, -671f)) - vec2<f32>(240f, -1957f))))), false, _wgslsmith_sub_u32(~reverseBits(_wgslsmith_mod_u32(76568u, 1u)), 1u));
    var_2 = Struct_1(var_2.a, all(vec3<bool>(all(var_0.wxx), any(vec3<bool>(false, var_0.x, var_0.x)), false)), var_2.c);
    let var_3 = select(select(!vec3<bool>(var_2.b, false, var_2.c < 30607u), var_0.xww, !(!(43037u != var_2.c))), !var_0.zyw, all(!(!select(vec4<bool>(var_2.b, var_2.b, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, var_2.b), false))));
    return -943f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1017f;
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-173f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-485f, _wgslsmith_f_op_f32(f32(-1f) * -2007f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-612f * -1000f), _wgslsmith_f_op_f32(1120f + -482f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(419f)) + -235f)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -195f);
    var_0 = -633f;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-104f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 73182u, 0u), any(vec4<bool>(false, false, false, false))), select(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(61491u, 54798u, 9374u), vec3<u32>(69342u, 1u, 20132u)), false) << (firstTrailingBit(firstLeadingBit(vec3<u32>(24021u, 4294967295u, 1u))) % vec3<u32>(32u))), ~u_input.c, vec2<i32>(1i, 1i), ~1u);
}

