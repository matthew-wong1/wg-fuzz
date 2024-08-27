struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24>;

var<private> global1: vec2<f32> = vec2<f32>(814f, -1161f);

var<private> global2: array<vec2<f32>, 15>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    global0 = array<vec4<u32>, 24>();
    global2 = array<vec2<f32>, 15>();
    var var_0 = arg_3.b.x | (all(select(!vec2<bool>(true, arg_2.c), select(vec2<bool>(false, true), vec2<bool>(false, true), arg_3.b.x), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(arg_1.d, arg_3.d)))) && false);
    let var_1 = arg_3.b.x == false;
    return _wgslsmith_f_op_f32(abs(1000f));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> i32 {
    return -65053i;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_3(~func_4(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - global1.x), 1250f, _wgslsmith_f_op_f32(func_3(2988i, Struct_4(u_input.a.x, Struct_2(42817u, vec3<i32>(-18560i, u_input.a.x, u_input.c.x), true, vec2<i32>(u_input.c.x, 21906i), vec4<f32>(-329f, global1.x, -115f, 396f)), false, false, u_input.c.x), Struct_3(u_input.a.x, true, true, vec4<f32>(-985f, 708f, arg_0, arg_0)), Struct_1(40265u, vec4<bool>(true, true, false, true), vec3<u32>(63038u, u_input.d, 0u), true)))), 1u), ~(~_wgslsmith_mod_u32(arg_1.x, arg_1.x)) < 0u, false, vec4<f32>(arg_0, 446f, arg_0, _wgslsmith_f_op_f32(select(744f, -172f, true))));
    let var_1 = vec4<bool>(all(!select(!vec4<bool>(var_0.c, var_0.b, var_0.b, true), vec4<bool>(var_0.c, var_0.b, var_0.b, var_0.b), var_0.c)), !select(true, true, true), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(-arg_0)) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)))), true);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1185f, -1188f), global2[_wgslsmith_index_u32(u_input.d, 15u)])) + _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(4294967295u) << (~u_input.d % 32u)), 15u)]));
    var var_2 = Struct_3(u_input.a.x, true, -615f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(157f - var_0.d.x)))), var_0.d);
    var_2 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.xzz), vec3<f32>(var_2.d.x, global1.x, -797f))), 0u), var_2.c, var_1.x, _wgslsmith_f_op_vec4_f32(abs(var_2.d)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.wx)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -544f)), var_2.d.x));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    global2 = array<vec2<f32>, 15>();
    let var_0 = ~(~select(~vec2<u32>(u_input.b, u_input.d), firstLeadingBit(~vec2<u32>(52584u, u_input.b)), !(global1.x == 879f)));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(228f, global1.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(2908u, 15u)])))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(var_0.x, 15u)], vec2<f32>(arg_0.x, arg_0.x), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-arg_0.zx))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(564f * global1.x), ~vec3<u32>(17071u, 10705u, 4294967295u)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.zy))));
    let var_1 = Struct_2(_wgslsmith_sub_u32(~var_0.x, 9494u), countOneBits(vec3<i32>(1i, -select(-27150i, -21071i, false), u_input.a.x)), false, vec2<i32>(-45543i, -firstLeadingBit(28341i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, global1.x, arg_0.x, 1796f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, arg_0.x)), _wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_0.x)))));
    global2 = array<vec2<f32>, 15>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(u_input.d, 15u)];
    global0 = array<vec4<u32>, 24>();
    let var_0 = Struct_1(u_input.b >> (6149u % 32u), !select(vec4<bool>(any(vec3<bool>(false, true, false)), func_1(vec3<f32>(-400f, global1.x, -1785f)), all(vec3<bool>(true, false, false)), true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-1480f - global1.x) > _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_add_vec3_u32(countOneBits(max(select(vec3<u32>(u_input.d, 6390u, 0u), vec3<u32>(68930u, u_input.b, 9575u), vec3<bool>(true, false, true)), vec3<u32>(1u, 1u, u_input.d))), vec3<u32>(u_input.d, _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(u_input.b, u_input.b)), min(firstLeadingBit(24141u), u_input.b))), true);
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(-741f, ~vec3<u32>(var_0.a, u_input.b, var_0.a))).x), _wgslsmith_f_op_f32(-global1.x)));
    let var_1 = u_input.c.x > -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.c << (vec3<u32>(89966u, 12599u, u_input.b) % vec3<u32>(32u))), ~vec3<u32>(0u, var_0.c.x, u_input.d)), max(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(var_0.c, vec3<u32>(var_0.c.x, 4294967295u, var_0.c.x), vec3<bool>(true, var_1, false)), vec3<u32>(var_0.a, 4235u, var_0.c.x)), 24u)]), select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, var_0.a), min(u_input.b, 63689u)), 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], !var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -506f))), _wgslsmith_add_vec4_i32(-min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.c.x, 33577i, u_input.a.x)), vec4<i32>(-41610i, u_input.a.x, -1i, 27066i)), select(vec4<i32>(~(-50970i), u_input.c.x, 0i, -21965i), firstLeadingBit(reverseBits(vec4<i32>(23710i, 1i, u_input.c.x, -21831i))), ~var_0.c.x > 1u)), -_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, u_input.c.x, -31132i, u_input.a.x) << (abs(vec4<u32>(u_input.d, var_0.a, u_input.b, 1u)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, -20545i, -2147483647i)));
}

