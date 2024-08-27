struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, false, true, false), 18355u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    let var_0 = -1i;
    var var_1 = abs(~(max(~vec2<u32>(global2.b, global4.b), ~vec2<u32>(44369u, global3.b)) | vec2<u32>(firstTrailingBit(global3.b), global2.b ^ 10533u)));
    let var_2 = -_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(-2147483647i, u_input.b >> (9457u % 32u), ~u_input.b), ~min(-var_0, firstTrailingBit(u_input.b)));
    let var_3 = global2.a;
    var var_4 = Struct_1(select(select(select(global2.a, select(global3.a, global2.a, global0.a), vec4<bool>(true, global2.a.x, global3.a.x, true)), vec4<bool>(true, all(var_3.xy), true, false), max(var_0, var_0) != var_0), select(vec4<bool>(true, global2.a.x, true, !global2.a.x), vec4<bool>(true, global0.a.x, true, all(vec4<bool>(global3.a.x, true, true, false))), global3.a), true), global3.b);
    return 1u;
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(select(global3.a, vec4<bool>(true, global3.a.x, true, global0.a.x), true), firstLeadingBit(global4.b) >> ((10287u | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 23119u, global0.b), vec4<u32>(global3.b, 0u, global3.b, 17185u) >> (vec4<u32>(global0.b, 14905u, 4294967295u, 27085u) % vec4<u32>(32u)))) % 32u));
    global4 = Struct_1(!global4.a, func_3());
    let var_0 = Struct_1(vec4<bool>(true, !any(vec2<bool>(global4.a.x, true)), true, global3.a.x), 89148u);
    let var_1 = _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(~38277u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b, global0.b), vec2<u32>(var_0.b, 31472u) >> (vec2<u32>(global2.b, 0u) % vec2<u32>(32u))), 67542u)), vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global3.b, global0.b, global3.b)), vec3<u32>(global3.b, 64033u, 0u) << (vec3<u32>(global3.b, 1u, global0.b) % vec3<u32>(32u))), 27310u, var_0.b) | ~vec3<u32>(80074u, min(77434u, 5242u), global4.b << (var_0.b % 32u)));
    global4 = var_0;
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> i32 {
    let var_0 = min(~vec2<u32>(~_wgslsmith_add_u32(global2.b, u_input.a), _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0.b, 56394u), global4.b, 31227u)), vec2<u32>(14509u, 1u));
    global2 = func_2();
    global3 = func_2();
    global1 = abs(~(-2147483647i)) << (global2.b % 32u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-1411f * -970f), true)) * arg_1.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1427f - arg_1.x))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, !global0.a.x, _wgslsmith_div_u32(firstTrailingBit(33747u), u_input.a) == _wgslsmith_dot_vec2_u32(vec2<u32>(27439u, 41846u) & vec2<u32>(104779u, global3.b), min(vec2<u32>(49911u, u_input.a), vec2<u32>(2313u, global0.b))), (global0.b | global0.b) >= ~_wgslsmith_dot_vec3_u32(vec3<u32>(21285u, global0.b, 23787u), vec3<u32>(21508u, 45211u, global3.b))), countOneBits((45246u ^ global0.b) >> (global4.b % 32u)) | ~1u);
    let var_1 = abs(firstLeadingBit(vec2<i32>(func_1(Struct_1(global2.a, global2.b), vec4<f32>(-291f, 1000f, 274f, -1794f), u_input.b), _wgslsmith_mult_i32(u_input.b, -1i))) << (vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(23635u, 4294967295u, global4.b, global2.b), vec4<u32>(global0.b, global4.b, 0u, 4111u)), firstTrailingBit(abs(global4.b))) % vec2<u32>(32u)));
    var var_2 = global0.a.x;
    global4 = func_2();
    var var_3 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, 2147483647i), ~(-2147483647i), u_input.b), -vec3<i32>(-1i, u_input.c.x, -82680i)) | ~abs(-firstTrailingBit(vec3<i32>(u_input.b, 0i, var_1.x)));
    global4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(~vec3<u32>(4294967295u, 35762u, 4294967295u))) ^ select(countOneBits(reverseBits(vec3<u32>(global2.b, 4294967295u, global2.b))), abs(vec3<u32>(101904u, 4294967295u, 61204u)), var_0.a.xxz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-985f)), _wgslsmith_f_op_f32(-1000f + 1725f)) + vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -796f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(205f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2057f, 1008f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(902f, 2086f) - vec2<f32>(-1000f, -971f))))), global3.b);
}

