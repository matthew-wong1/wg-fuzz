struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1158f, 1095f, -1443f, -734f);

var<private> global1: Struct_1;

var<private> global2: array<bool, 14> = array<bool, 14>(false, true, false, false, true, false, false, false, true, true, false, true, true, true);

var<private> global3: bool;

var<private> global4: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(4294967295u, 6239u), vec2<u32>(4294967295u, 32684u), vec2<u32>(51120u, 1u), vec2<u32>(90560u, 1u), vec2<u32>(46236u, 40208u), vec2<u32>(0u, 4911u), vec2<u32>(5967u, 1u), vec2<u32>(4294967295u, 88224u), vec2<u32>(0u, 4294967295u), vec2<u32>(86569u, 444u), vec2<u32>(41159u, 4294967295u), vec2<u32>(0u, 59933u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.wwx)));
    var var_1 = vec2<i32>(abs(select(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, arg_1.a.x), global1.a), false)), 1i);
    let var_2 = firstTrailingBit(u_input.e.x);
    let var_3 = 43035u;
    var var_4 = 4294967295u;
    return vec4<i32>(min(u_input.d, ~(~arg_1.a.x)), arg_1.a.x, -firstTrailingBit(36048i), ~firstLeadingBit(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.c, 1i), arg_2.a), -vec2<i32>(1i, arg_2.a.x))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = arg_2;
    let var_1 = 540f;
    let var_2 = false;
    let var_3 = _wgslsmith_div_vec4_i32(firstLeadingBit(abs(func_3(var_2 & false, var_0, var_0))), countOneBits(countOneBits(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, -2147483647i, 30744i, -18232i), vec4<i32>(29919i, -76730i, global1.a.x, var_0.a.x))))));
    let var_4 = Struct_1(abs(select(_wgslsmith_clamp_vec2_i32(arg_1.a, var_3.yx, _wgslsmith_sub_vec2_i32(var_3.yz, vec2<i32>(62994i, arg_2.a.x))), vec2<i32>(-arg_2.a.x, 1i), vec2<bool>(var_2 | arg_3, !global2[_wgslsmith_index_u32(u_input.b, 14u)]))));
    return false;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = 2147483647i;
    var var_1 = select(!select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)], false), select(vec4<bool>(arg_0.x, false, false, global2[_wgslsmith_index_u32(3448u, 14u)]), vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 14u)], false, true, false)), select(vec4<bool>(global2[_wgslsmith_index_u32(5899u, 14u)], arg_0.x, global2[_wgslsmith_index_u32(u_input.e.x, 14u)], true), vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], arg_0.x, global2[_wgslsmith_index_u32(u_input.b, 14u)]), global2[_wgslsmith_index_u32(u_input.e.x, 14u)])), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), false), vec4<bool>(false, !(!global2[_wgslsmith_index_u32(u_input.b, 14u)] == true), arg_0.x, func_2(-_wgslsmith_div_i32(21126i, 371i), Struct_1(~global1.a), Struct_1(global1.a), false)), !select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 14u)] & true, false && arg_0.x, true), !select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], true, arg_0.x, false)), all(vec4<bool>(global2[_wgslsmith_index_u32(38830u, 14u)], true, false, global2[_wgslsmith_index_u32(u_input.e.x, 14u)]))));
    var var_2 = -firstTrailingBit(func_3(global1.a.x >= 0i, Struct_1(vec2<i32>(-2147483647i, 2147483647i)), Struct_1(reverseBits(global1.a))).yyy);
    return Struct_1(vec2<i32>(_wgslsmith_add_i32(21393i, global1.a.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(firstLeadingBit(global1.a.x), global1.a.x), func_3(!var_1.x, Struct_1(vec2<i32>(-2147483647i, -2147483647i)), Struct_1(vec2<i32>(0i, 1i))).x, _wgslsmith_div_i32(global1.a.x ^ u_input.d, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 14u)], (u_input.a.x >> (_wgslsmith_mult_u32(50238u, 0u) % 32u)) < _wgslsmith_mod_u32(u_input.a.x, u_input.a.x & 0u)));
    global1 = Struct_1(~select(vec2<i32>(firstLeadingBit(45140i), u_input.c), vec2<i32>(i32(-1i) * -2147483647i, reverseBits(u_input.d)), !(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(u_input.e.x, 14u)]))));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - -648f), _wgslsmith_f_op_f32(abs(1076f)))) * _wgslsmith_f_op_f32(1322f - _wgslsmith_f_op_f32(-764f + -1695f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1297f, global0.x), 1f, global2[_wgslsmith_index_u32(countOneBits(u_input.b), 14u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.wz)))));
    global2 = array<bool, 14>();
    let var_2 = func_1(!(!vec2<bool>(true, all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], false)))));
    global1 = var_2;
    var var_3 = func_1(!select(!vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 14u)]), select(select(vec2<bool>(true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 14u)]), true), select(vec2<bool>(true, true), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), true), select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(4294967295u, 14u)])), !(global0.x > var_1.x)));
    var_3 = func_1(vec2<bool>(4294967295u > ~u_input.e.x, (global1.a.x | select(33359i, u_input.c, true)) >= (-1i | max(-1i, u_input.d))));
    var_3 = func_1(select(vec2<bool>(true, false), vec2<bool>(1059f < global0.x, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1097f, -203f))))), global0.x);
}

