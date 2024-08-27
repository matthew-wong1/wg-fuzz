struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: Struct_1;

var<private> global2: array<i32, 19> = array<i32, 19>(-65302i, 2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648), -30066i, -1i, -37344i, 0i, 2147483647i, -86202i, 0i, 30813i, i32(-2147483648), -1i, -1i, 0i, -26724i, 54315i);

var<private> global3: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = arg_3;
    global3 = array<vec4<bool>, 10>();
    var var_1 = Struct_2(var_0.a, _wgslsmith_div_i32(reverseBits(0i << (min(arg_2.x, var_0.d) % 32u)), arg_1.a.x), arg_3.a.x, 25696u, -36875i);
    global3 = array<vec4<bool>, 10>();
    return arg_1.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-469f + _wgslsmith_f_op_f32(ceil(arg_0.a.x)));
    var var_1 = -2147483647i;
    var var_2 = countOneBits(_wgslsmith_sub_vec4_i32(~func_3(vec2<bool>(global1.b.x, false), Struct_4(vec4<i32>(global1.c.x, arg_0.b, -46147i, -2995i), vec4<bool>(global1.b.x, global1.b.x, false, false)), global1.e, Struct_2(vec4<f32>(arg_0.a.x, arg_1.x, global1.a.x, -336f), -2147483647i, -1115f, 16727u, arg_0.e)), reverseBits(-vec4<i32>(0i, arg_0.b, global2[_wgslsmith_index_u32(15947u, 19u)], 2147483647i))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.xx));
    let var_4 = global0[_wgslsmith_index_u32(~global1.e.x, 4u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-281f * _wgslsmith_f_op_f32(round(arg_0.c))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -516f)))), _wgslsmith_f_op_f32(-global1.a.x));
}

fn func_1(arg_0: Struct_3) -> f32 {
    global0 = array<Struct_3, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-878f + 597f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(843f + -1050f) + _wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(-1476f, 512f, global1.a.x, -377f), global1.c.x, global1.a.x, global1.e.x, 37148i), vec4<f32>(global1.a.x, global1.a.x, 1404f, -363f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 1000f) + global1.a)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 166f), _wgslsmith_f_op_vec2_f32(step(global1.a, vec2<f32>(102f, 1658f)))), global1.a, global1.b)))), global1.b, _wgslsmith_add_vec3_i32(global1.c, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-81154i, global1.c.x, 2147483647i, 8098i), vec4<i32>(global2[_wgslsmith_index_u32(4073u, 19u)], 19696i, global2[_wgslsmith_index_u32(arg_0.b, 19u)], 1i)), max(global1.c.x, countOneBits(2147483647i)))), true, ~global1.e);
    let var_2 = select(!select(!vec4<bool>(false, arg_0.a, false, true), global3[_wgslsmith_index_u32(var_1.e.x, 10u)], global3[_wgslsmith_index_u32(~select(1960u, 0u, false), 10u)]), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(global1.e.x, 1u)), 10u)], true);
    var var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * -155f) + _wgslsmith_div_f32(var_1.a.x, 472f))), _wgslsmith_f_op_f32(-var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 10>();
    global0 = array<Struct_3, 4>();
    var var_0 = Struct_4(countOneBits(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(1u, 19u)], global1.c.x, -2147483647i, global1.c.x) ^ -vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i, -1i, global1.c.x), vec4<i32>(global1.c.x, global2[_wgslsmith_index_u32(21869u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)]) >> (vec4<u32>(4294967295u, global1.e.x, u_input.a, global1.e.x) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i))), vec4<bool>(true, global1.b.x, all(!vec4<bool>(global1.d, true, false, global1.b.x)), global1.d));
    let var_1 = min(global1.e, global1.e);
    global2 = array<i32, 19>();
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, 103f) * -1078f))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1506f))) - vec3<f32>(-1472f, _wgslsmith_f_op_f32(trunc(1573f)), -3323f));
    global2 = array<i32, 19>();
    var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-163f * global1.a.x) - _wgslsmith_f_op_f32(-424f + global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) * _wgslsmith_f_op_f32(global1.a.x - var_2.x))), 628f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-142f + -622f) * _wgslsmith_f_op_f32(select(215f, 207f, var_0.b.x))) + var_2.x), 950f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_3(var_0.b.x, 4294967295u, -13338i)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, -1000f, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -448f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, -541f, var_2.x, global1.a.x), vec4<f32>(635f, var_2.x, -758f, global1.a.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(771f, -354f, 1431f, global1.a.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(310f, global1.a.x, var_2.x, -179f) + vec4<f32>(var_2.x, global1.a.x, -744f, -1670f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2262f, 1020f, global1.a.x, var_2.x))))))), _wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(-362f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - global1.a.x) + _wgslsmith_f_op_f32(select(var_2.x, var_2.x, false)))))), vec2<i32>(abs(var_0.a.x), min(_wgslsmith_dot_vec2_i32(global1.c.xx, var_0.a.yx), ~func_3(vec2<bool>(global1.b.x, var_0.b.x), Struct_4(var_0.a, global3[_wgslsmith_index_u32(u_input.a, 10u)]), var_1, Struct_2(vec4<f32>(var_2.x, global1.a.x, -856f, global1.a.x), global2[_wgslsmith_index_u32(global1.e.x, 19u)], var_2.x, 0u, -2147483647i)).x)));
}

