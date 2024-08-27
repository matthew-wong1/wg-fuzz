struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    var var_0 = ~(~(~u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1880f, 623f) * vec2<f32>(global1.b.e, -120f)), arg_1, select(select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true), arg_0.a), !vec2<bool>(global1.b.a, arg_0.a), all(vec2<bool>(true, false))))), arg_1)) + arg_1);
    var var_2 = Struct_4(vec3<bool>(false, any(select(!vec2<bool>(false, global1.b.a), select(vec2<bool>(true, global1.b.c), vec2<bool>(global1.b.c, arg_0.a), arg_0.a), !vec2<bool>(arg_0.a, false))), true && global1.b.d), ~arg_3, global1.b);
    let var_3 = Struct_4(var_2.a, max(~_wgslsmith_sub_vec2_i32(firstTrailingBit(arg_3), -vec2<i32>(2789i, arg_3.x)), select(~arg_3, vec2<i32>(arg_3.x, -28989i), true)), Struct_1((true | all(var_2.a)) & any(vec4<bool>(false, arg_0.a, true, var_2.c.d)), arg_2, arg_0.a, var_2.c.c, arg_1.x));
    let var_4 = var_3;
    return 10698u;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    global0 = arg_0;
    var var_0 = vec4<u32>(_wgslsmith_div_u32(func_3(Struct_2(global1.b.b < 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1409f, global1.b.e))), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 35475u, u_input.a.x, global1.a)) ^ global1.a, vec2<i32>(min(0i, -46247i), ~arg_0)), global1.b.b), u_input.a.x, u_input.a.x, global1.b.b ^ countOneBits(~(~global1.a)));
    var var_1 = 611f;
    global0 = (_wgslsmith_add_i32(arg_0, _wgslsmith_sub_i32(~arg_0, 55930i)) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, 1i, -2147483647i), vec3<i32>(~arg_0, -arg_0, abs(2147483647i)))) ^ firstTrailingBit(arg_0);
    let var_2 = Struct_4(!vec3<bool>(false, true, any(vec2<bool>(arg_1, true)) && true), _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, 18094i), firstTrailingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(arg_0, 0i)), vec2<i32>(arg_0, arg_0), reverseBits(vec2<i32>(arg_0, 51155i))))), global1.b);
    return global1.b;
}

fn func_1(arg_0: Struct_4) -> Struct_5 {
    global0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, arg_0.b.x >> (global1.a % 32u), -2147483647i, _wgslsmith_mult_i32(44513i, 22029i)) & select(vec4<i32>(-1i, 2147483647i, -16319i, 1i), abs(vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -35573i)), vec4<bool>(global1.b.c, global1.b.a, false, arg_0.c.c)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 38488i, 0i, arg_0.b.x), reverseBits(vec4<i32>(arg_0.b.x, -1i, arg_0.b.x, -2147483647i))), -max(vec4<i32>(arg_0.b.x, arg_0.b.x, 0i, arg_0.b.x), vec4<i32>(834i, 1i, arg_0.b.x, arg_0.b.x))));
    global0 = _wgslsmith_div_i32(arg_0.b.x, 0i);
    var var_0 = vec4<u32>(global1.b.b, u_input.b, min(30878u, abs(u_input.a.x)), ~max(_wgslsmith_mult_u32(30059u, abs(14331u)), abs(u_input.b << (88715u % 32u))));
    global1 = Struct_3(u_input.a.x, func_2(~1i, arg_0.a.x));
    var var_1 = all(vec2<bool>(arg_0.a.x, true)) || any(select(select(!vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, false), vec2<bool>(arg_0.a.x, true)), arg_0.a.zz, arg_0.a.yz));
    return Struct_5(i32(-1i) * -50326i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_4(!select(select(vec3<bool>(global1.b.c, global1.b.c, true), vec3<bool>(global1.b.d, global1.b.c, global1.b.d), false), select(vec3<bool>(false, global1.b.d, true), vec3<bool>(true, false, false), false), global1.b.a), _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -1i, 1i), vec2<i32>(firstLeadingBit(34220i), 2147483647i)), global1.b));
    global1 = Struct_3(~u_input.b >> (1u % 32u), global1.b);
    global2 = _wgslsmith_sub_u32(1u, u_input.a.x) >> (~22078u % 32u);
    var var_1 = _wgslsmith_mult_vec2_u32(firstLeadingBit(~u_input.a.zx), u_input.a.xw);
    var var_2 = !all(!vec2<bool>(global1.b.c, global1.b.d));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.e, -164f, global1.b.e) + vec3<f32>(-1000f, global1.b.e, global1.b.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.e, 306f, global1.b.e), vec3<f32>(global1.b.e, -134f, global1.b.e), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 324f, -785f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.b.e + -119f), _wgslsmith_f_op_f32(211f - global1.b.e), _wgslsmith_f_op_f32(-global1.b.e)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.e, 384f, global1.b.e) + vec3<f32>(-532f, 253f, 153f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.e, global1.b.e, global1.b.e) - vec3<f32>(2978f, 440f, -261f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.e * -232f) * -672f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(740f * global1.b.e))));
    global2 = 50288u;
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~abs(countOneBits(func_2(-37109i, global1.b.a).b)), u_input.a.yxx, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_3.x)))), var_3.zx);
}

