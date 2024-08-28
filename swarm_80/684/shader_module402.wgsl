struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<f32, 2>;

var<private> global2: Struct_3 = Struct_3(-978f);

var<private> global3: array<bool, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = abs(~(~u_input.e << (~u_input.b % vec4<u32>(32u))));
    global2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.e.x, 2u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(10686u, 2u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 2u)]))))));
    var var_1 = Struct_4(Struct_1(~firstTrailingBit(1u), ~(~_wgslsmith_sub_u32(var_0.x, 33285u)), any(vec3<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 7u)], false, global3[_wgslsmith_index_u32(u_input.a, 7u)])), -58360i != u_input.d.x, true))), 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(2544f, -1452f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(313f - 446f), -1000f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, 2380f) + vec2<f32>(global2.a, global2.a)), _wgslsmith_div_vec2_f32(vec2<f32>(global2.a, 497f), vec2<f32>(global0[_wgslsmith_index_u32(26452u, 2u)], -922f)))))), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~(~var_0.x), 2u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a, global2.a) - _wgslsmith_f_op_f32(global2.a - global1[_wgslsmith_index_u32(1u, 2u)])))), global3[_wgslsmith_index_u32(9898u, 7u)])));
    let var_2 = -_wgslsmith_sub_i32(~_wgslsmith_div_i32(u_input.c, 1i), u_input.d.x) < 1i;
    var var_3 = _wgslsmith_mult_u32(var_1.a.b, u_input.e.x);
    return -1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> vec4<u32> {
    global1 = array<f32, 2>();
    global0 = array<f32, 2>();
    var var_0 = Struct_3(1072f);
    global2 = Struct_3(-1488f);
    var var_1 = vec2<i32>(-70111i, max(_wgslsmith_mult_i32(i32(-1i) * -5834i, func_3()), (-2147483647i | arg_0.x) ^ _wgslsmith_mult_i32(arg_0.x, arg_0.x))) & vec2<i32>(func_3(), arg_0.x);
    return u_input.e;
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 2>();
    let var_0 = Struct_3(821f);
    global1 = array<f32, 2>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2702f, -1249f, 663f, _wgslsmith_f_op_f32(1000f + global2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1569f, global0[_wgslsmith_index_u32(3212u, 2u)], -2415f, -323f))))), vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 2u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + 1022f)));
    var var_2 = abs(u_input.d.wwx);
    return Struct_1(~(u_input.a >> (4294967295u % 32u)), 26060u, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~30356u), _wgslsmith_dot_vec4_u32(u_input.b, func_2(var_2.yz, Struct_4(Struct_1(24787u, u_input.a, global3[_wgslsmith_index_u32(u_input.b.x, 7u)]), u_input.b.x, vec2<f32>(var_1.x, -314f), global1[_wgslsmith_index_u32(0u, 2u)])))), 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(-41962i);
    var var_1 = func_1();
    global2 = Struct_3(global2.a);
    var var_2 = ~countOneBits(u_input.e.x);
    var var_3 = Struct_4(func_1(), abs(1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(975f, global2.a), vec2<f32>(global1[_wgslsmith_index_u32(10386u, 2u)], 484f), true)))))), 377f);
    var_0 = firstLeadingBit(u_input.d.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_3.c);
    global2 = Struct_3(218f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_3.c, _wgslsmith_f_op_vec2_f32(var_3.c + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.c.x, -1000f))))));
}

