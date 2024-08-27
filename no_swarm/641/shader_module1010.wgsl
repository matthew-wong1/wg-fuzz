struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(i32(-2147483648), -1i, 2147483647i, -1i), vec4<i32>(-57440i, 1i, -1i, -48238i), vec4<i32>(-14965i, 91968i, i32(-2147483648), 2147483647i), vec4<i32>(28385i, 0i, 1i, -6743i), vec4<i32>(i32(-2147483648), 9543i, -8641i, 0i), vec4<i32>(-34400i, 0i, 2147483647i, -42282i), vec4<i32>(1i, 0i, 1i, 1i), vec4<i32>(1i, 0i, 22333i, i32(-2147483648)), vec4<i32>(2147483647i, -17577i, 0i, -47310i), vec4<i32>(-18402i, -16583i, -29599i, i32(-2147483648)), vec4<i32>(1i, 0i, 41652i, 29127i), vec4<i32>(0i, -7434i, 8447i, -7780i), vec4<i32>(0i, -1i, 8463i, -17780i), vec4<i32>(2429i, -21545i, 0i, 36808i), vec4<i32>(i32(-2147483648), 6566i, 0i, 27783i), vec4<i32>(-757i, 23326i, 17367i, -1i), vec4<i32>(1i, 2147483647i, 0i, -51478i), vec4<i32>(0i, i32(-2147483648), -1i, -34006i), vec4<i32>(i32(-2147483648), -1i, -51609i, 28082i), vec4<i32>(0i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 62551i, 0i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, 1047f))))))));
    global2 = array<vec4<i32>, 21>();
    var var_0 = all(!select(vec4<bool>(true, true, true, select(false, false, true)), vec4<bool>(true, true, true, true), true));
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    let var_2 = Struct_1(485f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, global1.x)), _wgslsmith_sub_u32(0u, u_input.b.x), select(max(arg_0, -u_input.c), -vec2<i32>(_wgslsmith_div_i32(arg_0.x, arg_0.x), arg_0.x), vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))), ~_wgslsmith_dot_vec3_u32(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, arg_1.x, 4294967295u), vec3<u32>(1u, 4294967295u, u_input.a.x)), u_input.b.yyw), u_input.b.wyx));
    return _wgslsmith_div_f32(-197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1f))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.c.x, 0i), ~vec2<u32>(u_input.a.x, u_input.b.x))), -1059f))) * 534f);
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -u_input.c.x, select(_wgslsmith_div_i32(14499i, i32(-1i) * -2147483647i), 42068i, true)), -(~vec3<i32>(13993i, 0i, 37214i ^ u_input.c.x)));
    var var_2 = min(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, firstLeadingBit(var_1.x)), reverseBits(-20631i)), -1i);
    var var_3 = vec4<i32>(-1i) * -max(global2[_wgslsmith_index_u32(countOneBits(0u), 21u)] >> (u_input.b % vec4<u32>(32u)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, u_input.c.x, u_input.c.x, var_1.x), global2[_wgslsmith_index_u32(22847u, 21u)]), -global2[_wgslsmith_index_u32(u_input.b.x, 21u)]));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + global1.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) - _wgslsmith_f_op_f32(1060f * global1.x))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - var_0))));
    return var_0;
}

fn func_1() -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -122f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, global1.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-317f, global1.x), vec2<f32>(-1145f, global1.x))))))));
    global1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_2()), -1207f)));
    let var_0 = all(select(vec4<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(any(vec2<bool>(false, false)), false, true, u_input.c.x <= -2147483647i), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = u_input.c.x;
    let var_2 = u_input.b.x;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(abs(global1.x)))), _wgslsmith_f_op_f32(-global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(func_1());
    global2 = array<vec4<i32>, 21>();
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(2147483647i, 0i), u_input.b.zw)))), global1.x), 2394u, u_input.c, ~(~((u_input.a.x | 0u) >> ((4294967295u << (u_input.b.x % 32u)) % 32u))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2154f) - -890f))) > global1.x;
    let var_2 = Struct_1(544f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.b))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1118f, 1188f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, var_0.a)))))), ~var_0.e, _wgslsmith_mult_vec2_i32(var_0.d, u_input.c ^ var_0.d), u_input.a.x);
    var var_3 = select(vec4<bool>(abs(var_2.d.x >> (u_input.b.x % 32u)) >= -19811i, true, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true), !vec4<bool>(false, true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true & (-727f > global1.x)), (false != (true || (2509i <= var_0.d.x))) | (countOneBits(abs(var_2.e)) > ~(4294967295u | u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(var_0.e, 21u)]);
}

