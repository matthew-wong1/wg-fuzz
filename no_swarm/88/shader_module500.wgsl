struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(43255u, -1882f, -15964i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global1.c << (1u % 32u), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1.c, 0i, u_input.d), global0.c), ~1i), u_input.d, u_input.d, _wgslsmith_clamp_i32(~global0.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.c, 0i, global1.c, 4588i), vec4<i32>(-1i, global1.c, global0.c, 0i)), 2147483647i)), -(~max(vec4<i32>(-24942i, global1.c, -35519i, global1.c), vec4<i32>(-16437i, 0i, -24575i, -3046i)) | (_wgslsmith_mod_vec4_i32(vec4<i32>(-28094i, 71907i, global0.c, 1i), vec4<i32>(-1i, 2147483647i, -6631i, -91107i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(1i, global0.c, global1.c, 2147483647i), vec4<i32>(2147483647i, global1.c, -26888i, global1.c)))));
    let var_1 = Struct_2(true, ~abs(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c, -1i, global0.c), vec3<i32>(1895i, 2147483647i, u_input.a.x))), Struct_1(firstLeadingBit(reverseBits(countOneBits(u_input.b))), _wgslsmith_f_op_f32(sign(global1.b)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d, global0.c, u_input.c, global1.c)), min(~vec4<i32>(0i, global0.c, -29367i, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, u_input.c, 1i, 15240i), vec4<i32>(var_0.x, -7457i, u_input.c, 0i))))));
    var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f - 583f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1.b, global1.b)), global1.b))) * var_1.c.b), -1i);
    var_2 = Struct_1(0u, var_2.b, var_2.c);
    var_2 = var_1.c;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-629f, -1696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b, 1000f)) * _wgslsmith_f_op_f32(-618f - -1876f)), _wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(var_1.c.b * global1.b), true))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b), global1.b, false)), _wgslsmith_f_op_f32(trunc(var_2.b)), 173f, global1.b), false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = global0.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(max(72289u, global0.a))).x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(263f * _wgslsmith_f_op_f32(abs(arg_1.c.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(618f)), _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))))));
    global0 = arg_1.c;
    var var_2 = (u_input.b ^ _wgslsmith_mult_u32(_wgslsmith_mod_u32(min(u_input.e, 4294967295u), u_input.e), 33116u)) << (1u % 32u);
    global0 = Struct_1(select(global1.a, arg_1.c.a, ~0u == global0.a), _wgslsmith_f_op_f32(-global1.b), -_wgslsmith_dot_vec4_i32(~select(vec4<i32>(1i, global0.c, arg_1.b.x, -9726i), vec4<i32>(1i, global1.c, arg_1.c.c, -58506i), vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a)), vec4<i32>(global1.c, firstTrailingBit(2147483647i), arg_1.c.c, ~global1.c)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(-1589f, -1222f, arg_0.x, -204f), _wgslsmith_f_op_vec4_f32(arg_0 * arg_0))) + _wgslsmith_f_op_vec4_f32(-arg_0)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global1.a | global0.a))))), arg_0.b));
    global1 = arg_0.b.c;
    var var_1 = ~(~abs(vec3<u32>(global0.a, reverseBits(555u), 59128u)));
    var var_2 = Struct_2(true, abs(select(arg_1.zyx, vec3<i32>(-27461i, 3059i, u_input.d) & arg_1.xwy, !vec3<bool>(arg_3.x, true, false))), arg_0.b.c);
    var_2 = arg_0.b;
    return ~13428u;
}

fn func_1() -> Struct_2 {
    var var_0 = 8660u;
    var var_1 = _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_div_u32(~1u, u_input.e), global0.a, func_2(Struct_3(Struct_1(0u, global0.b, global0.c), Struct_2(false, vec3<i32>(1i, global1.c, u_input.d), Struct_1(global0.a, 780f, -43888i))), vec4<i32>(-2147483647i, global1.c, global1.c, global0.c), -1643f, vec3<bool>(false, true, false)) | 1u, 83405u)), ~abs(vec4<u32>(32552u, ~global0.a, _wgslsmith_div_u32(u_input.b, u_input.b), global0.a)));
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(firstLeadingBit(2147483647i)), ~max(-1i, 8377i), _wgslsmith_add_i32(firstLeadingBit(global1.c) << (~37508u % 32u), firstLeadingBit(-u_input.c)), global1.c), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-13873i, select(-2147483647i, 1i, true), u_input.c, global1.c | global0.c), firstTrailingBit(vec4<i32>(u_input.c, global1.c, global1.c, global0.c))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1123f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) * _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(sign(-1645f))))));
    var var_4 = Struct_1(~reverseBits(~(~1u)), -265f, 2147483647i);
    return Struct_2(true || (_wgslsmith_mult_i32(77122i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.c, 76615i, global0.c), var_2.wzy)) < -36749i), _wgslsmith_add_vec3_i32(var_2.zxy, var_2.wxw), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_4.a, 0u), vec3<u32>(global1.a, var_4.a, 0u)), 40569u), 924f, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-844f, _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)));
    let var_2 = global0.a;
    var var_3 = func_1();
    var var_4 = vec3<bool>(!var_3.a, false, all(!vec2<bool>(select(var_3.a, false, true), var_3.a)));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-240f)), 324f)), _wgslsmith_div_f32(-723f, 1123f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-652f, _wgslsmith_f_op_f32(global1.b + -358f))))) - vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.b + var_3.c.b) * _wgslsmith_f_op_f32(floor(global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, -739f))));
    var_1 = _wgslsmith_f_op_vec4_f32(func_3(~(func_1().c.a << (var_0 % 32u)))).xzy;
    global1 = var_3.c;
    var var_5 = vec3<bool>(!var_3.a, true, var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer((-(~vec4<i32>(26777i, -1i, -8104i, u_input.d)) & abs(vec4<i32>(global0.c, global0.c, global1.c, -82554i))) >> (~(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 29588u, 3618u, u_input.b), vec4<u32>(32961u, global0.a, 1u, 48905u), vec4<u32>(global1.a, 11543u, 0u, global0.a)) ^ ~vec4<u32>(1u, global0.a, 15041u, var_0)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-1145f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-506f, -1531f)) * _wgslsmith_f_op_f32(abs(var_3.c.b)))))));
}

