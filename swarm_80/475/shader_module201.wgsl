struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1145f;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, false, false));

var<private> global2: vec2<f32> = vec2<f32>(-841f, -1098f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(798f, _wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, 700f, 1126f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-397f, global2.x, global2.x) + vec3<f32>(global2.x, 315f, -1071f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1102f, -1550f, 2168f) - vec3<f32>(1252f, -163f, 131f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, global2.x, -292f)))))))));
    global1 = array<vec4<bool>, 1>();
    return true;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> vec2<f32> {
    var var_0 = !vec4<bool>(true, arg_1, arg_1, arg_1);
    global0 = global2.x;
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), global2.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1715f * -344f))) - -1447f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, global2.x))))));
    var var_1 = any(select(var_0.xyz, select(var_0.zxw, select(vec3<bool>(true, true, true), var_0.xyz, select(var_0.wwy, var_0.zwz, arg_1)), all(!vec3<bool>(true, arg_1, false))), var_0.www));
    let var_2 = 753f;
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, global2.x), vec2<f32>(_wgslsmith_f_op_f32(-var_2), global2.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec3<u32>) -> vec3<f32> {
    let var_0 = arg_2.c;
    global0 = _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1729f)))));
    global2 = _wgslsmith_f_op_vec2_f32(-arg_1);
    var var_1 = var_0.b;
    let var_2 = 1u;
    return vec3<f32>(-396f, -706f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_2.c.a)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(548f + -587f);
    var var_0 = ~_wgslsmith_sub_u32(u_input.a.x, arg_1.x);
    let var_1 = global1[_wgslsmith_index_u32(31842u, 1u)];
    var var_2 = select(~1u, _wgslsmith_sub_u32(firstTrailingBit(reverseBits(min(u_input.a.x, u_input.a.x))), arg_1.x), true);
    var var_3 = arg_2;
    return Struct_1(-238f, _wgslsmith_add_i32(countOneBits(15611i) << (min(0u, _wgslsmith_div_u32(u_input.a.x, 4294967295u)) % 32u), max(-4481i, arg_2.b)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(func_4(u_input.a.x << (1u % 32u), _wgslsmith_f_op_vec2_f32(func_3(~(~u_input.a.yz), func_2())), Struct_2(~(-vec3<i32>(21584i, 2147483647i, -1i)), _wgslsmith_add_u32(10624u, u_input.a.x), Struct_1(global2.x, abs(-6698i)), Struct_1(_wgslsmith_f_op_f32(round(1221f)), reverseBits(-1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-386i, 2147483647i, -25317i, 0i), vec4<i32>(-29242i, 0i, -20702i, 32196i)) ^ 2147483647i), abs(u_input.a.wxw) ^ ~(~vec3<u32>(4837u, 4294967295u, u_input.a.x)))), u_input.a.ywx, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_4(27650u, vec2<f32>(-619f, 1732f), Struct_2(vec3<i32>(55034i, -1i, 35408i), 36314u, Struct_1(global2.x, 1i), Struct_1(-633f, -50704i), 13450i), u_input.a.wxw)).x, global2.x, true)) - global2.x), -1i), vec4<i32>(firstLeadingBit(abs(0i)), _wgslsmith_div_i32(1i, i32(-1i) * -2147483647i), -31337i, -50708i) & -(~firstTrailingBit(vec4<i32>(2147483647i, 43791i, 0i, -3785i))));
    return Struct_2(firstLeadingBit(vec3<i32>(1i, ~var_0.b, var_0.b)) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_sub_u32(~12189u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 25056u), vec3<u32>(u_input.a.x, 1u, 0u), vec3<u32>(1u, 0u, 1u))))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2261f, 2108f, 199f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1949f, global2.x)))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, 69102u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(1u, u_input.a.x, u_input.a.x))), countOneBits(u_input.a.wzz) | select(vec3<u32>(0u, 51486u, u_input.a.x), u_input.a.yxw, false)), func_5(vec3<f32>(var_0.a, -346f, _wgslsmith_f_op_f32(sign(var_0.a))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), Struct_1(_wgslsmith_div_f32(1759f, global2.x), var_0.b), vec4<i32>(-1i, 1i, -2147483647i, 1i)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<i32>(6435i, 4711i, var_0.b, -1i), vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b)) >> (_wgslsmith_mult_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)), select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, -1i, var_0.b), vec4<i32>(1i, var_0.b, var_0.b, var_0.b)), vec4<i32>(var_0.b, var_0.b, var_0.b, 1i), vec4<bool>(true, true, true, true)))), Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b), -20358i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = any(vec2<bool>(select(false, any(vec4<bool>(true, false, false, true)) || true, true), true));
    var var_2 = 4294967295u;
    global0 = _wgslsmith_f_op_f32(ceil(global2.x));
    var_2 = ~u_input.a.x >> (firstLeadingBit(u_input.a.x) % 32u);
    var var_3 = func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.d.a, _wgslsmith_f_op_f32(exp2(global2.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.c.a, global2.x, true)), 1175f, true))))), var_3.b, -25219i, min(~(-vec2<i32>(var_3.b, var_3.b)) & vec2<i32>(-31778i, -13725i), vec2<i32>(var_3.b, 0i)));
}

