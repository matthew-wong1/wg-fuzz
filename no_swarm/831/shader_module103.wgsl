struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 25>;

var<private> global2: array<bool, 1> = array<bool, 1>(false);

var<private> global3: Struct_1 = Struct_1(false, -386f, true);

var<private> global4: bool = true;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)))));
    let var_1 = ~(~(vec3<i32>(_wgslsmith_sub_i32(-25956i, 0i), _wgslsmith_sub_i32(-5415i, -38461i), ~2147483647i) << (firstLeadingBit(vec3<u32>(u_input.a.x, 0u, u_input.b)) % vec3<u32>(32u))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2155f, var_0.x) * vec2<f32>(_wgslsmith_f_op_f32(global3.b * 573f), var_0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, var_0.x) - vec2<f32>(658f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(614f, 667f) + vec2<f32>(global0.b, -1060f)))), vec2<f32>(_wgslsmith_f_op_f32(253f * 176f), 890f), global0.a))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.x, 1215f, all(vec4<bool>(global0.a, true, true, true)))))), _wgslsmith_f_op_f32(floor(-130f)), global0.b);
    global0 = Struct_1(all(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(68926u, 25u)], global3.c, true), vec4<bool>(false, false, global0.c, global0.a), vec4<bool>(false, global3.c, true, false)), select(vec4<bool>(global0.a, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false, false), vec4<bool>(false, true, false, global3.a), global1[_wgslsmith_index_u32(4294967295u, 25u)]), true)) || (_wgslsmith_div_i32(var_1.x, _wgslsmith_clamp_i32(2147483647i, var_1.x, var_1.x)) >= -var_1.x), _wgslsmith_f_op_f32(-global0.b), any(select(!(!vec3<bool>(false, true, global0.c)), !select(vec3<bool>(global1[_wgslsmith_index_u32(31926u, 25u)], global3.a, true), vec3<bool>(global1[_wgslsmith_index_u32(5392u, 25u)], global1[_wgslsmith_index_u32(43357u, 25u)], true), vec3<bool>(global3.c, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)])), select(vec3<bool>(global3.c, false, global3.c), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global1[_wgslsmith_index_u32(10632u, 25u)], true), vec3<bool>(true, false, false), true), select(false, false, true)))));
    return -vec2<i32>(_wgslsmith_add_i32(var_1.x, var_1.x), firstLeadingBit(_wgslsmith_dot_vec3_i32(min(var_1, vec3<i32>(2147483647i, var_1.x, var_1.x)), abs(vec3<i32>(var_1.x, var_1.x, -30530i)))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = arg_0;
    var var_0 = func_3();
    let var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.x, func_3().x), firstLeadingBit(_wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0.x, -24214i), func_3(), select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 25u)]), vec2<bool>(global3.c, global1[_wgslsmith_index_u32(u_input.b, 25u)]), true)), vec2<i32>(abs(1i), ~var_0.x))));
    var_0 = var_1;
    global0 = Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -455f), !global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.a.x, reverseBits(7239u)), 25u)]);
    return firstTrailingBit(1i);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    global3 = arg_0;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b)) - _wgslsmith_f_op_f32(-776f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.b))))));
    let var_1 = vec4<i32>(-(func_2(Struct_1(arg_0.c, -1000f, global0.c)) << (u_input.b % 32u)), abs(~_wgslsmith_add_i32(-1i, ~(-50881i))), -2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(7533i, -3838i), -min(vec2<i32>(-12042i, 48120i), vec2<i32>(1499i, -2147483647i))), -countOneBits(-vec2<i32>(1i, 49859i))));
    global3 = arg_0;
    let var_2 = Struct_3(arg_0);
    return Struct_1(any(select(vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], false, global0.c, true)), all(vec4<bool>(global0.c, false, false, false)), global3.a & true), !(!vec3<bool>(false, false, global3.a)), vec3<bool>(false, all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], true, true)), global2[_wgslsmith_index_u32(~42679u, 1u)]))), var_0, select(true, arg_0.a, true));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_1 {
    global1 = array<bool, 25>();
    var var_0 = arg_3.a;
    global1 = array<bool, 25>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b, _wgslsmith_f_op_f32(global3.b - -143f), _wgslsmith_f_op_f32(max(771f, arg_0)), -181f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b - 457f), global0.b, 1930f, _wgslsmith_f_op_f32(ceil(1164f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-253f, -703f, arg_3.a.b, -2125f) - vec4<f32>(var_0.b, arg_0, -988f, global0.b)) + vec4<f32>(var_0.b, -1095f, -665f, -186f)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1561f) + _wgslsmith_f_op_f32(-arg_1.b)), -1027f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b)) - _wgslsmith_f_op_f32(sign(-2187f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global0.b, -462f, global3.b) - vec4<f32>(var_0.b, 1724f, -175f, 444f)), vec4<f32>(1000f, -1067f, var_0.b, global3.b), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, arg_1.b, arg_3.a.b, -1863f))))), vec4<bool>(_wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(58689i, -1i)) > -2147483647i, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false), vec4<bool>(true, arg_1.c, false, global3.a))), !global3.a, !global0.a))));
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(global0.b, Struct_1(true, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1705f)))), global3.a), vec2<i32>(-1i) * -vec2<i32>(0i, 1i), Struct_3(func_1(Struct_1(216f <= global0.b, 1f, true), -1465f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2055f, global3.b, -1938f)))));
    let var_0 = Struct_3(Struct_1(true, -1459f, any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(34133u, 1u)], global3.c), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], false), vec2<bool>(false, false)), true))));
    global2 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, countOneBits(select(-55586i, -30397i, !func_1(Struct_1(false, global3.b, global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), -367f, vec3<f32>(var_0.a.b, -341f, var_0.a.b)).c)), -63988i, select(firstLeadingBit(-vec2<i32>(-2147483647i, -1i)), -vec2<i32>(1i, func_2(Struct_1(global0.c, -1155f, global2[_wgslsmith_index_u32(u_input.b, 1u)]))), true));
}

