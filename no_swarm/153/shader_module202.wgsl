struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(1000f, vec3<i32>(38228i, -1i, 0i), 39330i), Struct_1(333f, vec3<i32>(33672i, -1i, 2147483647i), -24743i), Struct_1(-1316f, vec3<i32>(14291i, 0i, i32(-2147483648)), 1i), Struct_1(-384f, vec3<i32>(7486i, 0i, 0i), -8610i), Struct_1(-1552f, vec3<i32>(-29212i, -36111i, 0i), i32(-2147483648)), Struct_1(-752f, vec3<i32>(i32(-2147483648), -98559i, 0i), 1i), Struct_1(-189f, vec3<i32>(1i, 14387i, 57372i), 14980i), Struct_1(-1321f, vec3<i32>(-22218i, 0i, 1i), 29020i), Struct_1(-2398f, vec3<i32>(1i, 42262i, -61253i), 39020i), Struct_1(1000f, vec3<i32>(2147483647i, 32266i, -11990i), -1i), Struct_1(108f, vec3<i32>(-1i, -1i, -16478i), 0i), Struct_1(1171f, vec3<i32>(1i, 0i, -29505i), 39500i), Struct_1(797f, vec3<i32>(2147483647i, 18146i, i32(-2147483648)), i32(-2147483648)), Struct_1(-182f, vec3<i32>(i32(-2147483648), 0i, -44186i), 2147483647i), Struct_1(-543f, vec3<i32>(1i, i32(-2147483648), 11788i), 16200i), Struct_1(1101f, vec3<i32>(0i, 2147483647i, 0i), 2147483647i), Struct_1(363f, vec3<i32>(9167i, 0i, i32(-2147483648)), i32(-2147483648)), Struct_1(-639f, vec3<i32>(i32(-2147483648), -35245i, 0i), -14072i));

var<private> global1: array<vec2<i32>, 22>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<i32>, 22>();
    global1 = array<vec2<i32>, 22>();
    let var_0 = vec2<u32>(~_wgslsmith_mod_u32(u_input.c, ~min(0u, 66699u)), ~select(1u, ~0u, select(true, all(vec4<bool>(true, false, false, true)), all(vec4<bool>(false, true, true, true)))));
    global0 = array<Struct_1, 18>();
    var var_1 = ~countOneBits(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-2147483647i, u_input.b.x, 0i, u_input.b.x) << (~vec4<u32>(var_0.x, var_0.x, 0u, u_input.a) % vec4<u32>(32u))));
    return global0[_wgslsmith_index_u32(~0u, 18u)];
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_u32(4294967295u, u_input.a);
    var var_1 = -2134f;
    global0 = array<Struct_1, 18>();
    global1 = array<vec2<i32>, 22>();
    global1 = array<vec2<i32>, 22>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(firstLeadingBit(19129u), var_0 >> (u_input.a % 32u))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, 4294967295u)), vec2<u32>(u_input.a, var_0)), select(vec2<u32>(1u, 1u) ^ vec2<u32>(var_0, 99192u), _wgslsmith_div_vec2_u32(vec2<u32>(4584u, var_0), vec2<u32>(0u, 60360u)), vec2<bool>(true, true))), vec2<u32>(_wgslsmith_mult_u32(1u, abs(var_0)), 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 21734u | ~u_input.c), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0) >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u)), vec2<u32>(1u, 1u)), countOneBits(max(vec2<u32>(u_input.a, 0u), vec2<u32>(4294967295u, 1u))), reverseBits(vec2<u32>(var_0, u_input.c)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 26219u), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_2.a)) * _wgslsmith_f_op_f32(arg_2.a * arg_2.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1764f + arg_2.a), 455f)))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_mod_u32(u_input.c ^ func_3(), ~(~70832u) >> (~_wgslsmith_sub_u32(~0u, 1u) % 32u));
    var var_3 = ~vec3<u32>(select(~4105u, u_input.c ^ u_input.c, false), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 65276u), vec3<u32>(u_input.a, 29387u, u_input.c)) & u_input.c, ~760u) >> (vec3<u32>(57381u, 0u, 4294967295u & firstTrailingBit(u_input.c)) % vec3<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(734f, 489f, arg_2.a, -484f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(121f, 299f, 133f, var_1.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -1503f, arg_1.x, -1124f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1099f, 657f, arg_1.x, arg_2.a) * vec4<f32>(-251f, 1373f, 269f, 396f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-912f)), _wgslsmith_f_op_f32(ceil(arg_2.a)), -1640f, var_1.a))))));
    return -242f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    var var_0 = 1u;
    var_0 = u_input.a;
    global1 = array<vec2<i32>, 22>();
    let var_1 = vec3<f32>(422f, _wgslsmith_f_op_f32(func_1(true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1277f)) * _wgslsmith_f_op_f32(floor(-200f))), _wgslsmith_f_op_f32(f32(-1f) * -252f)), global0[_wgslsmith_index_u32(u_input.c, 18u)], ~(~u_input.a) <= min(u_input.a, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_f_op_f32(min(932f, 385f)))) - _wgslsmith_f_op_f32(224f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(243f * 1469f) * _wgslsmith_f_op_f32(sign(144f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))) + _wgslsmith_f_op_f32(-var_1.x)), -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, reverseBits(u_input.b.x), 1i), -vec3<i32>(0i, -9269i, u_input.b.x)), ~(-u_input.b.x));
    let var_3 = min(-32811i, u_input.b.x);
    var var_4 = !any(!vec4<bool>(true, any(vec2<bool>(true, false)), all(vec2<bool>(true, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(vec2<u32>(u_input.a, u_input.c), reverseBits(vec2<u32>(27784u, u_input.c)), false) ^ vec2<u32>(~u_input.c, ~u_input.c), vec2<u32>(~firstLeadingBit(0u), ~(31125u ^ u_input.a))), max(~(~(~u_input.c)), _wgslsmith_add_u32(_wgslsmith_div_u32(abs(61397u), ~0u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), ~u_input.c))), _wgslsmith_sub_vec3_i32(~var_2.b >> ((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.c, 4294967295u), vec3<u32>(78335u, 27103u, 68013u)) | ~vec3<u32>(u_input.c, 149342u, u_input.c)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(select(var_2.c, var_3, true), firstLeadingBit(var_2.b.x), 2147483647i), -vec3<i32>(57489i, 3455i, u_input.b.x), ~vec3<i32>(-1i, var_3, var_3))));
}

