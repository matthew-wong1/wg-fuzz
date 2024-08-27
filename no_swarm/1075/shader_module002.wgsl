struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, 0i), vec4<bool>(true, false, false, true), vec2<f32>(483f, -371f), 823f, false);

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<i32>(0i, 0i), vec4<bool>(true, false, true, false), vec2<f32>(454f, -1966f), 1435f, false), Struct_1(vec2<i32>(-35836i, i32(-2147483648)), vec4<bool>(true, false, false, false), vec2<f32>(983f, 1645f), -1432f, true), Struct_1(vec2<i32>(1i, -13622i), vec4<bool>(true, false, true, false), vec2<f32>(2535f, -1000f), -1772f, false), Struct_1(vec2<i32>(-11149i, -49454i), vec4<bool>(true, false, false, true), vec2<f32>(509f, 681f), -136f, true), Struct_1(vec2<i32>(-37721i, -32217i), vec4<bool>(true, false, true, true), vec2<f32>(-182f, -259f), 398f, false), Struct_1(vec2<i32>(-18883i, 6512i), vec4<bool>(true, false, false, false), vec2<f32>(708f, 918f), 977f, false), Struct_1(vec2<i32>(-61108i, -31226i), vec4<bool>(true, true, false, false), vec2<f32>(-1408f, -1000f), 657f, true), Struct_1(vec2<i32>(i32(-2147483648), 25941i), vec4<bool>(true, true, false, true), vec2<f32>(183f, -572f), 1081f, true), Struct_1(vec2<i32>(21692i, -12041i), vec4<bool>(true, false, false, false), vec2<f32>(1000f, -2691f), -351f, true), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<bool>(false, true, false, false), vec2<f32>(-1175f, 1000f), -1035f, true), Struct_1(vec2<i32>(19785i, -1i), vec4<bool>(false, false, false, true), vec2<f32>(1176f, 394f), 788f, false), Struct_1(vec2<i32>(2147483647i, 0i), vec4<bool>(true, true, false, true), vec2<f32>(-646f, 187f), -108f, true), Struct_1(vec2<i32>(-1092i, 1i), vec4<bool>(true, false, true, true), vec2<f32>(240f, 762f), 2779f, true), Struct_1(vec2<i32>(1i, 0i), vec4<bool>(true, true, false, true), vec2<f32>(1829f, 907f), 2082f, false), Struct_1(vec2<i32>(-1i, 1i), vec4<bool>(false, true, false, true), vec2<f32>(-185f, -1759f), 1215f, true), Struct_1(vec2<i32>(i32(-2147483648), -27872i), vec4<bool>(false, false, false, true), vec2<f32>(889f, 1353f), -137f, false), Struct_1(vec2<i32>(1025i, -76861i), vec4<bool>(true, false, false, true), vec2<f32>(-1000f, -670f), 527f, false), Struct_1(vec2<i32>(-46270i, -16147i), vec4<bool>(true, true, false, false), vec2<f32>(-378f, 1537f), -176f, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    global0 = !((~firstTrailingBit(u_input.b) & ~4294967295u) != u_input.b);
    return global1.e;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(-global1.d) <= -1000f, (u_input.a ^ ~global1.a.x) < u_input.a);
    global0 = func_1(global3[_wgslsmith_index_u32(u_input.b, 18u)], !global1.b);
    let var_1 = !(!vec2<bool>(!all(vec3<bool>(true, true, false)), global1.e));
    let var_2 = Struct_1(global1.a, vec4<bool>(var_0.x || !func_2(vec3<f32>(global1.d, 485f, global1.d), Struct_1(vec2<i32>(u_input.a, global1.a.x), vec4<bool>(true, false, true, var_0.x), global1.c, global1.d, true)), all(!(!var_0)), var_1.x, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1155f, 851f)), global1.c))), _wgslsmith_f_op_vec2_f32(-global1.c), _wgslsmith_f_op_f32(-global1.c.x) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, global1.c.x)))), _wgslsmith_f_op_f32(sign(-243f)), !all(!(!global1.b.ywz)));
    global3 = array<Struct_1, 18>();
    var var_3 = Struct_1(-vec2<i32>(global1.a.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(40224i, global1.a.x, 2147483647i), vec3<i32>(u_input.a, 27535i, var_2.a.x) ^ vec3<i32>(u_input.a, 1i, -2147483647i))), select(!vec4<bool>(!global1.e, global1.d >= global1.d, !var_1.x, false), !vec4<bool>(func_1(var_2, var_2.b), false, true, true), !select(vec4<bool>(var_1.x, global1.b.x, false, global1.e), select(var_2.b, vec4<bool>(false, var_1.x, true, global1.b.x), var_1.x), select(vec4<bool>(true, true, global1.e, true), var_2.b, vec4<bool>(false, true, global1.b.x, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(746f, 106f) * var_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - var_2.d), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 36712i, -2147483647i, -45005i), vec4<i32>(var_2.a.x, var_3.a.x, 41426i, var_3.a.x))), -(~(~vec4<i32>(global1.a.x, -1i, 1i, 0i)))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(8019i, u_input.a, var_2.a.x), -vec3<i32>(52031i, var_2.a.x, 8863i)));
}

