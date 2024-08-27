struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, false, true, true, true);

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = select(select(vec2<bool>(all(select(vec3<bool>(false, global1.a, true), vec3<bool>(global0[_wgslsmith_index_u32(global2.a, 5u)], global1.a, true), true)), global1.a), vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.a), vec2<u32>(10323u, arg_0.a)), 5u)])), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.a, 5u)] == global1.a)), global1.a);
    let var_1 = (abs(-u_input.b) >> (abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(global2.a, global2.a, arg_0.a), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_0.a, arg_0.a), vec3<u32>(1u, 32428u, global2.a)))) % vec3<u32>(32u))) & abs(vec3<i32>(~u_input.a.x << (_wgslsmith_clamp_u32(global2.a, 94165u, 4294967295u) % 32u), ~(~u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(2147483647i, 1i)) | reverseBits(u_input.a.x)));
    var var_2 = _wgslsmith_mult_vec2_i32(~(-select(vec2<i32>(-1812i, -64972i) & var_1.xx, abs(vec2<i32>(2147483647i, var_1.x)), any(vec3<bool>(global1.a, true, true)))), u_input.a);
    global2 = Struct_2(arg_0.a);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-639f, 632f, 594f, -1000f), vec4<f32>(-364f, -1195f, 168f, 1158f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-756f, -1977f, -1452f, -147f))))), vec4<bool>(!global1.a, global1.a, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(790f * -1457f), _wgslsmith_div_f32(-1355f, 593f), -1234f, _wgslsmith_f_op_f32(1000f * -509f))), global0[_wgslsmith_index_u32(4294967295u, 5u)])), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(select(vec2<u32>(arg_0.a, 0u), vec2<u32>(arg_0.a, arg_0.a), vec2<bool>(true, global1.a))), vec2<u32>(1u, 1u) & ~vec2<u32>(43354u, global2.a)), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(global2.a), global2.a, firstTrailingBit(105500u)), ~vec3<u32>(0u, arg_0.a, 17850u)), arg_0.a));
    return _wgslsmith_f_op_vec2_f32(var_3.a.yx + var_3.a.yz);
}

fn func_2() -> Struct_1 {
    global2 = Struct_2(abs(_wgslsmith_add_u32(_wgslsmith_add_u32(global2.a, countOneBits(global2.a)), global2.a)));
    var var_0 = 27903u;
    var var_1 = vec2<i32>(u_input.b.x, 0i);
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(Struct_2(119530u)));
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 1814f, var_2.x, 190f), vec4<f32>(272f, var_2.x, -886f, -2623f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1731f, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1633f, var_2.x, var_2.x, -837f)))))), countOneBits(vec4<u32>(global2.a, _wgslsmith_sub_u32(_wgslsmith_add_u32(65819u, 0u), ~global2.a), 0u, firstLeadingBit(~global2.a))));
    return Struct_1(global0[_wgslsmith_index_u32(0u, 5u)]);
}

fn func_1() -> Struct_2 {
    let var_0 = ~4294967295u;
    var var_1 = func_2();
    global0 = array<bool, 5>();
    let var_2 = _wgslsmith_f_op_f32(ceil(-169f));
    var var_3 = Struct_2(~_wgslsmith_div_u32(~var_0, abs(4294967295u)) | 31543u);
    return Struct_2(firstTrailingBit(abs(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -616f), -207f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-502f, 294f))))) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(func_1())).x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(458f, -580f, false)) - _wgslsmith_f_op_f32(1348f + -477f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)))));
    global2 = func_1();
    var var_2 = ~(~_wgslsmith_add_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(16153i, 2554i, 1i), u_input.b)), u_input.b));
    let var_3 = 48699u;
    var var_4 = func_1();
    global0 = array<bool, 5>();
    let var_5 = vec2<i32>(abs(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(var_2.x, u_input.a.x), countOneBits(i32(-1i) * -34310i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_2.x, 48731i, 1i), abs(vec4<i32>(1i, var_2.x, 1i, -2147483647i) >> (vec4<u32>(20853u, var_3, global2.a, global2.a) % vec4<u32>(32u)))), -(~(var_2.x << (40606u % 32u)))));
    global0 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x - var_1.x), -max(select(-u_input.b, vec3<i32>(var_2.x, -2147483647i, var_2.x), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_div_vec3_i32(~vec3<i32>(54182i, u_input.a.x, 2147483647i), u_input.b)));
}

