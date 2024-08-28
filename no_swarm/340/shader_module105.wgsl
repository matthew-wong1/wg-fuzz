struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, true, true, true, false, true, true, true, false, false, true, false, false, false, false, true, true, true, false);

var<private> global1: array<bool, 25> = array<bool, 25>(true, true, false, false, true, true, true, false, false, true, false, true, false, true, false, false, false, false, true, false, true, true, false, false, false);

var<private> global2: vec4<bool>;

var<private> global3: array<f32, 30>;

var<private> global4: array<i32, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = arg_1.yzx;
    global0 = array<bool, 19>();
    global2 = !select(vec4<bool>(any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d.x, 19u)], true)), !global2.x, arg_1.x, global2.x & (u_input.d.x == 41601u)), vec4<bool>(true, false, var_0.x, var_0.x), arg_1);
    global4 = array<i32, 3>();
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(1u, 30u)], 1613f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b + 1033f) + _wgslsmith_f_op_f32(floor(-306f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-597f + 1704f) - arg_0.b.b)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1709f, _wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(arg_0.b.a.x * 1492f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 30u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-932f, global3[_wgslsmith_index_u32(0u, 30u)], -960f, -155f))), select(arg_1, vec4<bool>(global2.x, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(12917u, 25u)], arg_0.a), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d.x, 19u)], global2.x))))), global3[_wgslsmith_index_u32(u_input.b.x, 30u)]);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(var_1.a))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global3 = array<f32, 30>();
    let var_0 = abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, -global4[_wgslsmith_index_u32(4294967295u, 3u)], firstLeadingBit(u_input.a), firstTrailingBit(-1i)), select(firstLeadingBit(~vec4<i32>(-31183i, u_input.c, global4[_wgslsmith_index_u32(u_input.d.x, 3u)], 0i)), select(~vec4<i32>(u_input.c, 1i, -2147483647i, u_input.a), ~vec4<i32>(u_input.a, global4[_wgslsmith_index_u32(34798u, 3u)], 9733i, u_input.c), !vec4<bool>(global2.x, global2.x, true, global2.x)), global0[_wgslsmith_index_u32(1u, 19u)] && (global2.x | false))));
    let var_1 = arg_1;
    var var_2 = -(-67732i & max(max(var_0.x, -u_input.a), -13477i));
    return true;
}

fn func_1() -> i32 {
    var var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], 945f, -1016f, -583f), 1140f), global2.wyy), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(0u, 19u)], true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(41171u, 25u)], global2.x, false, global0[_wgslsmith_index_u32(78170u, 19u)])))))), 1f), vec3<bool>(false, !(!func_3(Struct_1(vec4<f32>(-980f, global3[_wgslsmith_index_u32(1u, 30u)], 538f, global3[_wgslsmith_index_u32(u_input.d.x, 30u)]), 1888f), Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], global3[_wgslsmith_index_u32(31183u, 30u)], global3[_wgslsmith_index_u32(u_input.b.x, 30u)], -1577f), global3[_wgslsmith_index_u32(19879u, 30u)]), Struct_2(false, Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(u_input.b.x, 30u)], -921f, global3[_wgslsmith_index_u32(15674u, 30u)]), 197f), vec3<bool>(global2.x, global2.x, true)))), false || any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(48073u, 25u)]))));
    global1 = array<bool, 25>();
    var_0 = Struct_2(!(!any(!global2.zww)), var_0.b, !vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], !global2.x));
    let var_1 = 4294967295u < _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.wwy << (firstLeadingBit(u_input.b.yyz) % vec3<u32>(32u)), max(vec3<u32>(20300u, 82986u, u_input.b.x), vec3<u32>(0u, u_input.d.x, u_input.b.x) & vec3<u32>(u_input.d.x, 10139u, 1u))));
    var var_2 = var_0.b;
    return -23502i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 25>();
    var var_0 = vec2<i32>(func_1(), u_input.c & ~(-max(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], global4[_wgslsmith_index_u32(u_input.d.x, 3u)])));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(401f - _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 30u)]))), _wgslsmith_f_op_f32(max(-268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x, 30u)] + 186f)))))));
    global0 = array<bool, 19>();
    let var_2 = Struct_2(!(_wgslsmith_f_op_f32(-var_1) <= global3[_wgslsmith_index_u32(u_input.d.x & _wgslsmith_div_u32(u_input.b.x, 26398u), 30u)]), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1188f, var_1, true))), _wgslsmith_f_op_f32(-1814f - var_1), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(f32(-1f) * -725f)), var_1), global3[_wgslsmith_index_u32(~abs(u_input.d.x | u_input.d.x), 30u)]), global2.xww);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_2.b.a, vec4<f32>(global3[_wgslsmith_index_u32(22619u, 30u)], var_2.b.a.x, -907f, global3[_wgslsmith_index_u32(4294967295u, 30u)]))), var_2.b.a) + _wgslsmith_f_op_vec4_f32(func_2(var_2, !vec4<bool>(true, false, false, var_2.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(917f, var_1))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 + var_3.a.x))) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 30u)]))) * -486f);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, -1061f, _wgslsmith_f_op_f32(ceil(-568f))))), var_2.b.a);
}

