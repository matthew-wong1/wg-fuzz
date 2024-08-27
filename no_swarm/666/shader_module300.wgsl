struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -20903i;

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2049f, _wgslsmith_f_op_f32(floor(global1.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, -1403f) * global1.a))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(731f, -503f)), 597f))))), _wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(437f, global1.b))))))), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, -14975i, 6131i, global1.c.x), _wgslsmith_clamp_vec4_i32(-u_input.a, countOneBits(vec4<i32>(-1i, 24741i, u_input.a.x, -57727i)), -vec4<i32>(arg_3.x, 2147483647i, arg_3.x, arg_3.x))), abs(u_input.c.x), abs((arg_3.x & arg_3.x) >> ((70210u | u_input.b.x) % 32u))));
    let var_1 = var_0.a.x;
    let var_2 = u_input.b.xz;
    global2 = !select(arg_0.a.wyx, vec3<bool>(all(!vec4<bool>(true, true, arg_0.a.x, global2.x)), !(!arg_1), arg_0.a.x), select(!select(vec3<bool>(arg_0.a.x, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, true, false)), !arg_0.a.xwz, _wgslsmith_f_op_f32(f32(-1f) * -752f) == var_0.a.x));
    let var_3 = var_0.a.x;
    return u_input.c;
}

fn func_2() -> u32 {
    global1 = Struct_1(_wgslsmith_div_vec2_f32(global1.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-179f, 124f))), _wgslsmith_f_op_vec2_f32(-global1.a), global2.xy))))), _wgslsmith_f_op_f32(-global1.a.x), -func_3(Struct_2(!vec4<bool>(true, global2.x, global2.x, false)), global2.x, _wgslsmith_div_vec4_f32(vec4<f32>(-964f, global1.b, -617f, global1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.b, -1000f, -1791f))), ~_wgslsmith_add_vec3_i32(global1.c, vec3<i32>(u_input.a.x, global1.c.x, 2147483647i))));
    let var_0 = -vec3<i32>(-((-1i | global1.c.x) | -32363i), u_input.c.x, _wgslsmith_dot_vec2_i32(global1.c.yx, vec2<i32>(~u_input.c.x, -u_input.a.x)));
    global1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1533f, -1662f, false)), global1.a.x), 237f), -1612f, var_0);
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(global1.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1272f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(192f, -114f), _wgslsmith_div_f32(global1.b, -1000f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b, global1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1806f, global1.a.x, global2.x)))))), global1.c);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(128f))) + _wgslsmith_f_op_f32(trunc(764f)))));
    return _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d, ~(~u_input.d >> (~1u % 32u))), u_input.b.x, max(u_input.d, ~(~u_input.d)) & u_input.b.x);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> bool {
    var var_0 = max(4294967295u, 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b, 239f), global1.a, global2.xz));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(arg_1.yx) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), arg_1.zz), abs(select(vec2<u32>(u_input.d, 27003u), vec2<u32>(0u, 0u), global2.x))), u_input.b.yw), _wgslsmith_mult_vec2_u32(vec2<u32>(func_2(), _wgslsmith_add_u32(arg_0, 0u)) | vec2<u32>(~arg_1.x, select(arg_1.x, 0u, global2.x)), firstLeadingBit(select(u_input.b.yy, ~arg_1.zz, !vec2<bool>(false, global2.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1274f, -472f))), vec2<f32>(-869f, 598f)))), global1.a)));
    var var_3 = Struct_3(select(u_input.b.xw, arg_1.zy & ~u_input.b.wz, !(!vec2<bool>(false, global2.x))) & arg_1.xy, Struct_1(vec2<f32>(global1.a.x, -172f), _wgslsmith_f_op_f32(-1189f - var_1.x), ~reverseBits(~vec3<i32>(-26713i, -1i, 0i))), abs(_wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, 0i), abs(global1.c.xz))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(vec3<bool>(_wgslsmith_f_op_f32(-global1.b) > _wgslsmith_div_f32(1134f, 811f), 2147483647i == _wgslsmith_add_i32(global1.c.x, u_input.a.x), global2.x), select(vec3<bool>(global1.a.x > global1.a.x, global2.x, global2.x), !vec3<bool>(global2.x, global2.x, global2.x), global2.x), false);
    var var_0 = select(vec4<bool>(true, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b.zxy, vec3<u32>(44685u, u_input.b.x, 0u)), u_input.b.x & 5843u) < 10684u, func_1(0u, ~u_input.b.xzx), true), !select(vec4<bool>(global2.x | true, func_1(24386u, vec3<u32>(u_input.d, u_input.b.x, 26795u)), all(vec3<bool>(global2.x, false, false)), global1.b >= global1.b), vec4<bool>(false || global2.x, any(vec4<bool>(false, true, true, true)), !global2.x, global2.x & global2.x), vec4<bool>(global1.c.x >= 1i, global2.x, false, true)), global2.x);
    let var_1 = Struct_2(!(!(!select(vec4<bool>(var_0.x, var_0.x, true, global2.x), vec4<bool>(false, false, global2.x, false), vec4<bool>(false, global2.x, true, global2.x)))));
    var_0 = vec4<bool>(true, false, false, any(var_0.wz));
    var var_2 = false;
    var_0 = !vec4<bool>(!global2.x, all(vec2<bool>(false, true)) != var_1.a.x, 14041u < u_input.b.x, false);
    var var_3 = _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(abs(global1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(-10692i), -u_input.a.x), ~firstLeadingBit(abs(select(u_input.b, u_input.b, var_1.a.x))), func_3(var_1, true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, global1.a.x, global1.a.x, global1.b) + vec4<f32>(712f, global1.a.x, -838f, -1630f)))), abs(firstTrailingBit(u_input.c))).x << ((u_input.b.x | firstLeadingBit(60148u ^ u_input.d)) % 32u), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(f32(-1f) * -337f)), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.b.x), u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.d), vec3<u32>(1u, 69309u, 31079u)) << (~21928u % 32u)), ~vec4<u32>(1u, u_input.b.x, 26017u, 1u | u_input.b.x)));
}

