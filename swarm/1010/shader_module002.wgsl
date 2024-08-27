struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(462f, 730f, -548f, 2225f, 165f, -1070f, -809f, -181f, -786f, -288f, -1000f, 1524f, -1000f, -674f, -1122f, 517f, 540f, -1301f, 1411f, 1299f, 1000f, -1262f, -948f, 1426f, -426f, -593f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = -1597f;
    let var_1 = 19793u;
    return -1i;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: i32) -> Struct_2 {
    let var_0 = -arg_0.yzz;
    var var_1 = 91811u;
    let var_2 = vec4<bool>(arg_1, true, arg_1, true);
    var_1 = u_input.b.x;
    var var_3 = ~1719i;
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -948f)))), _wgslsmith_mod_vec2_i32(arg_0.ww, var_0.yy));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> u32 {
    var var_0 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1, 19872u, 4294967295u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, 17007u, 0u) | vec3<u32>(arg_1, 10084u, 0u), vec3<u32>(0u, arg_1, 4294967295u) ^ vec3<u32>(arg_1, 45595u, u_input.a)) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1, 42396u, arg_1), _wgslsmith_sub_vec3_u32(vec3<u32>(31302u, 4294967295u, 62589u), vec3<u32>(u_input.c.x, u_input.a, arg_1)), vec3<u32>(u_input.c.x, arg_1, arg_1)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2026f, global0[_wgslsmith_index_u32(57883u, 26u)], -517f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 26u)], arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec3_f32(arg_0.zxz + arg_0.wwz))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - global0[_wgslsmith_index_u32(arg_1, 26u)]))))), -1217f, _wgslsmith_f_op_f32(-705f * _wgslsmith_f_op_f32(1345f + _wgslsmith_f_op_f32(step(arg_0.x, -1000f))))), !select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x == 1579f, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, arg_1), vec3<u32>(1u, u_input.c.x, 306u) | vec3<u32>(81790u, u_input.a, 46375u)), vec3<u32>(u_input.a, var_0.x, arg_1) & vec3<u32>(arg_1, 0u, 4294967295u)), vec3<u32>(arg_1 >> (1u % 32u), _wgslsmith_clamp_u32(u_input.b.x | 1u, 0u, 25898u), select(firstTrailingBit(4294967295u), arg_1, true))) | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 1u, ~46324u), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, var_0.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 30895u, u_input.b.x), vec3<u32>(53709u, arg_1, arg_1)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(u_input.a, var_0.x, arg_1)), min(vec3<u32>(arg_1, var_0.x, u_input.c.x), vec3<u32>(1u, 58649u, u_input.a)))), ~vec3<u32>(arg_1, var_0.x, arg_1) << (~(vec3<u32>(0u, 0u, 1u) & vec3<u32>(var_0.x, var_0.x, arg_1)) % vec3<u32>(32u)));
    let var_2 = Struct_1(reverseBits(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, 2147483647i)) | select(vec2<i32>(-1i, 0i), vec2<i32>(-23317i, 0i), false), min(vec2<i32>(-1i, -2147483647i), vec2<i32>(-33614i, -2147483647i)))));
    var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~1u, _wgslsmith_clamp_u32(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 1221u) ^ vec3<u32>(arg_1, arg_1, arg_1), ~vec3<u32>(20769u, u_input.b.x, var_0.x)), firstLeadingBit(u_input.c.x)), max(abs(u_input.a), _wgslsmith_mod_u32(~u_input.c.x, 1u ^ var_0.x))), reverseBits(~vec3<u32>(min(118285u, arg_1), abs(u_input.c.x), ~arg_1)));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_0 = Struct_4(func_2(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-1i, 9132i, -25017i, 36159i)), 24726i, func_1(false, true), 1i), true, select(select(min(-5197i, 6875i), 1i, true), max(-22033i, -9475i), true)), ~firstTrailingBit(countOneBits(~0u)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 39913u), 26u)]))), -vec2<i32>(1i, 1i)), vec4<u32>(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], -1215f, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(2684u, 26u)]))), ~(u_input.a & u_input.a)), 91397u, _wgslsmith_mod_u32(0u, 1u), countOneBits(u_input.b.x)));
    var var_1 = Struct_1(~(~_wgslsmith_mult_i32(var_0.a.b.x, var_0.a.b.x) << (2787u % 32u)));
    var_1 = Struct_1(reverseBits(var_1.a));
    global0 = array<f32, 26>();
    let var_2 = min(var_0.d.xw, vec2<u32>(u_input.a, 14922u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~(~var_2.x), 26u)])), global0[_wgslsmith_index_u32(var_0.d.x, 26u)], func_2(~vec4<i32>(21308i, -79315i, var_1.a, var_1.a) & ~vec4<i32>(var_0.a.b.x, 2147483647i, var_0.a.b.x, var_0.a.b.x), any(vec3<bool>(true, true, true)), select(var_1.a, 26712i, true)).a), firstTrailingBit(max(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.b.x, var_0.c.b.x, 3734i, var_1.a), vec4<i32>(0i, var_1.a, var_1.a, -11272i), vec4<i32>(-2147483647i, var_1.a, var_0.c.b.x, -20735i)), -vec4<i32>(var_0.c.b.x, -1i, -77745i, -2147483647i))), ~(~countOneBits(var_0.d)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(var_1.a), -var_0.a.b.x, 29489i >> (1u % 32u)), vec3<i32>(var_0.c.b.x, 2147483647i, var_1.a) << (var_0.d.zyz % vec3<u32>(32u))), -reverseBits(~vec3<i32>(15861i, 0i, -2147483647i))), vec3<u32>(1u, ~u_input.c.x, ~(~func_3(vec4<f32>(global0[_wgslsmith_index_u32(1u, 26u)], 1000f, -1086f, var_0.a.a), var_0.b))));
}

