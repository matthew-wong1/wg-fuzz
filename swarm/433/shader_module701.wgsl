struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(0i, i32(-2147483648), 2147483647i, 1i, 11991i, 2147483647i, 33612i, -71288i, -59171i, 2147483647i, 1i, 12438i);

var<private> global1: array<bool, 10> = array<bool, 10>(false, true, true, true, false, true, false, true, false, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_1(755f, countOneBits((_wgslsmith_mult_u32(u_input.e, 1u) ^ ~u_input.a) ^ 1071u), -abs(u_input.c.x), select(vec4<bool>(false, arg_0.x, false, select(true, false, true)), vec4<bool>(all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(35182u, 10u)])), global1[_wgslsmith_index_u32(35706u, 10u)], false, !arg_0.x), vec4<bool>(u_input.c.x <= ~0i, false, any(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], arg_0.x, arg_0.x), vec3<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(true, true, false))), arg_0.x)));
    let var_1 = Struct_3(var_0.a, Struct_1(var_0.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, u_input.e, 0u), vec3<u32>(0u, 1u, 1u)), (vec3<u32>(var_0.b, 86571u, 0u) >> (vec3<u32>(var_0.b, u_input.e, var_0.b) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, 1u, var_0.b), vec3<u32>(var_0.b, 8584u, var_0.b))), reverseBits(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(44613u, 12u)] & 1i, _wgslsmith_dot_vec3_i32(u_input.c.wzw, u_input.c.zwz))), var_0.d), u_input.b.x, true);
    var var_2 = vec3<bool>(true, any(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)] >= u_input.d, var_1.d)), false);
    let var_3 = 1i ^ -select(u_input.d, -35721i, var_2.x);
    var var_4 = _wgslsmith_mod_vec4_u32(max(~select(select(vec4<u32>(0u, u_input.a, var_1.b.b, 29408u), vec4<u32>(4294967295u, var_1.b.b, 4294967295u, 0u), false), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.b, 0u, 21083u, 0u), vec4<u32>(4294967295u, 8463u, 0u, u_input.e)), !var_1.b.d), vec4<u32>(firstTrailingBit(~var_0.b), ~(~68972u), 0u, var_1.b.b)), countOneBits(firstLeadingBit(vec4<u32>(63527u, abs(u_input.e), firstLeadingBit(66851u), abs(1u)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1565f, 231f)) - 103f) + var_1.b.a)), _wgslsmith_f_op_f32(step(912f, var_0.a)));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 10u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.e, 10u)])))), _wgslsmith_f_op_f32(-469f * _wgslsmith_f_op_f32(-1778f - -130f)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1245f), _wgslsmith_f_op_f32(-1f)));
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.e, ~29203u), ~49226u), ~_wgslsmith_mod_u32(8823u, u_input.a));
    let var_2 = Struct_2(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2606f), 920f));
    global1 = array<bool, 10>();
    let var_3 = Struct_3(1095f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1542f), _wgslsmith_sub_u32(u_input.e, reverseBits(1u)), -37887i, !(!select(vec4<bool>(global1[_wgslsmith_index_u32(var_1, 10u)], true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(var_1, 10u)], true, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), false))), u_input.b.x, all(vec2<bool>(true, global1[_wgslsmith_index_u32(firstTrailingBit(u_input.e), 10u)])));
    return select(var_3.b.d.wz, select(vec2<bool>(-1081f <= _wgslsmith_f_op_f32(sign(var_0.b.x)), true), !vec2<bool>(!global1[_wgslsmith_index_u32(10792u, 10u)], true), var_3.d), var_3.d);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = vec3<f32>(-1303f, arg_1.a, -145f);
    var var_1 = func_2();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(921f * 1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(round(arg_1.a))), arg_1.a)), 725f, !func_2().x)), _wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, arg_1.d.x), !arg_1.d.wz, true))));
    var_1 = arg_1.d.xw;
    var var_3 = arg_1;
    return vec3<i32>(_wgslsmith_mult_i32(~(-1i), 28159i), arg_2, min(-_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_3.c, -2147483647i), u_input.c.zwz), -2147483647i), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-501f, _wgslsmith_f_op_f32(f32(-1f) * -548f)))), 1u, i32(-1i) * -2147483647i, select(select(vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], false, global1[_wgslsmith_index_u32(u_input.e, 10u)], global1[_wgslsmith_index_u32(62602u, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(12686u, 10u)], true, true, false)), !(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], false, true, true)), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(42936u, 10u)], true, true)))), u_input.d, u_input.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f), 2015f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1908f, 1085f))))));
    global1 = array<bool, 10>();
    global0 = array<i32, 12>();
    global1 = array<bool, 10>();
    let var_2 = Struct_3(var_1, Struct_1(-760f, _wgslsmith_clamp_u32(11513u, _wgslsmith_div_u32(4294967295u, ~35141u), u_input.e), _wgslsmith_sub_i32(var_0.x, -global0[_wgslsmith_index_u32(~0u, 12u)]), !select(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 10u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(45549u, 10u)], global1[_wgslsmith_index_u32(25u, 10u)], global1[_wgslsmith_index_u32(146450u, 10u)], true), global1[_wgslsmith_index_u32(58348u, 10u)])), _wgslsmith_div_i32(_wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.c.x, 2147483647i), countOneBits(max(-1i, -2147483647i))), -53396i), true);
    global0 = array<i32, 12>();
    let var_3 = ~firstTrailingBit(vec4<u32>(50633u, var_2.b.b, var_2.b.b, var_2.b.b)) & ~(~vec4<u32>(u_input.a, max(69751u, 1u), u_input.a, firstTrailingBit(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a, -625f, -1465f, 556f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(706f, 1000f, var_1, 1000f), vec4<f32>(var_1, var_1, 1435f, var_2.b.a)))))), abs(u_input.b) >> (var_3.wy % vec2<u32>(32u)));
}

