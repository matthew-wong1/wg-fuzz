struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(47612i, -13257i, i32(-2147483648), 15155i, 0i, -31132i, 0i, i32(-2147483648), 2147483647i, -75830i, 0i, 2147483647i, 0i, 2147483647i, 2147483647i, i32(-2147483648), -57252i, 2147483647i, 75074i, 1i, -5864i);

var<private> global1: bool = false;

var<private> global2: array<u32, 30> = array<u32, 30>(1u, 0u, 4294967295u, 9580u, 12211u, 34251u, 0u, 8877u, 6092u, 12410u, 1u, 0u, 26246u, 34558u, 33285u, 1u, 4294967295u, 3010u, 0u, 44793u, 34426u, 1u, 12340u, 105667u, 0u, 12856u, 18925u, 19191u, 1u, 22970u);

var<private> global3: Struct_2 = Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false)), vec4<bool>(false, false, true, true), Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, false, true)));

var<private> global4: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, false, true)), vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, true, false))), Struct_2(vec2<i32>(19329i, -34574i), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, false)), vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, false, false))), Struct_2(vec2<i32>(1754i, -1i), Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, false, false)), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, true, false))), Struct_2(vec2<i32>(-220i, 1i), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, true, true)), vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, true, false))), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false)), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, false, true))), Struct_2(vec2<i32>(6142i, i32(-2147483648)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, true, false)), vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, true, false))), Struct_2(vec2<i32>(2147483647i, 0i), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, true)), vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false))), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, false, true)), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, true, true))), Struct_2(vec2<i32>(1i, -18837i), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, false)), vec4<bool>(false, false, true, true), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, false, false))), Struct_2(vec2<i32>(-1i, -24959i), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, false, false)), vec4<bool>(true, true, false, false), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, true, true))), Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, true, false)), vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, true, false))), Struct_2(vec2<i32>(-46830i, -5798i), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, false, true)), vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, true, true))), Struct_2(vec2<i32>(63688i, 2147483647i), Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, true, true)), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, true, false))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1019f, 442f, true))))), 273f));
    let var_2 = vec2<u32>(global2[_wgslsmith_index_u32(1u << (0u % 32u), 30u)], u_input.d.x & (~30430u >> ((1u & u_input.a.x) % 32u)));
    global0 = array<i32, 21>();
    var var_3 = arg_1;
    return !(!vec3<bool>(var_3.c.x, all(arg_1.b.a.wzx), true));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_2(-vec2<i32>(global0[_wgslsmith_index_u32(abs(~global2[_wgslsmith_index_u32(0u, 30u)]), 21u)], global0[_wgslsmith_index_u32(reverseBits(arg_3.x), 21u)] << (u_input.b.x % 32u)), Struct_1(vec4<bool>(!global3.d.a.x, _wgslsmith_f_op_f32(exp2(arg_1)) <= _wgslsmith_f_op_f32(-arg_1), (1u >= arg_3.x) == any(vec3<bool>(global3.d.b.x, global3.b.a.x, arg_0.a.x)), false), func_3(Struct_1(vec4<bool>(global3.d.a.x, arg_0.b.x, true, true), select(vec3<bool>(arg_0.a.x, global3.b.a.x, global3.d.a.x), global3.c.zyz, global3.b.a.x)), Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(global3.a.x, global0[_wgslsmith_index_u32(50149u, 21u)]), global3.a), arg_0, vec4<bool>(arg_0.a.x, arg_2.a.x, arg_2.b.x, true), Struct_1(global3.b.a, vec3<bool>(arg_0.b.x, global3.b.a.x, true))), ~arg_3.yz)), select(vec4<bool>(true, arg_0.a.x, any(func_3(Struct_1(global3.c, vec3<bool>(global3.d.b.x, false, arg_0.a.x)), Struct_2(vec2<i32>(3756i, 4448i), arg_2, arg_2.a, global3.d), vec2<u32>(u_input.a.x, u_input.a.x)).zz), global3.c.x), vec4<bool>(arg_0.a.x, global3.c.x, arg_2.a.x, func_3(arg_2, Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(91158u, 21u)], -1i), Struct_1(arg_0.a, arg_0.b), vec4<bool>(global3.c.x, arg_0.a.x, true, true), Struct_1(arg_2.a, arg_0.a.wxw)), countOneBits(vec2<u32>(4294967295u, 4294967295u))).x), !select(arg_0.a, global3.d.a, arg_2.a.x)), arg_2);
    let var_1 = Struct_1(vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))) > arg_1, true, all(vec2<bool>(true, false))), arg_2.b);
    var var_2 = var_0.c.x;
    var_2 = true | (-1000f < _wgslsmith_f_op_f32(-421f + arg_1));
    return -1525f;
}

fn func_1() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-531f, -222f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, global3.b.a.x, true, global3.b.b.x), global3.c.yyx), -970f, Struct_1(global3.c, global3.d.a.zyz), vec4<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37295u, 30u)], 30u)], u_input.a.x))), _wgslsmith_f_op_f32(round(1000f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-509f, -1000f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1849f, -403f), vec2<f32>(694f, -1361f))), true)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(950f, -859f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~4583u, 13u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-169f, -1000f)), _wgslsmith_f_op_vec2_f32(func_1())))))));
    var var_2 = vec2<bool>(all(!global3.c), !var_0.c.x);
    var var_3 = global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.a.yz), 43618u), 13u)];
    let var_4 = !(!var_0.d.a.wyw);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<i32>(-6988i, -40957i, global3.a.x)), _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(~select(0u, u_input.a.x, true), u_input.d.x)));
}

