struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 28> = array<i32, 28>(17022i, -74301i, -49117i, -13385i, 37178i, 2147483647i, 72411i, 36885i, 11348i, 42526i, 1i, -14753i, i32(-2147483648), 1i, -19119i, 2147483647i, 1i, -1i, i32(-2147483648), 0i, -24070i, -42312i, 1039i, 7450i, 20778i, 0i, -843i, 2221i);

var<private> global2: bool = false;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(12246u, 1u, 0u), 12882u, 3025f);

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global3 = Struct_1(~(~(~min(global3.a, vec3<u32>(1u, 52389u, arg_1.b)))), ~global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-351f, 1436f)) + _wgslsmith_div_f32(587f, arg_1.c))));
    global3 = Struct_1(global3.a, _wgslsmith_div_u32(~arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(-2018f, 1097f))) * 1220f));
    global0 = -658f;
    global4 = _wgslsmith_f_op_f32(ceil(arg_0));
    let var_0 = vec4<bool>(any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))) | (-firstLeadingBit(u_input.a.x) <= min(i32(-1i) * -2147483647i, -global1[_wgslsmith_index_u32(arg_1.b, 28u)])), true, false, !any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true)));
    return arg_1.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    global2 = all(!vec2<bool>(true || select(true, arg_1, arg_1), true));
    let var_0 = func_3(1075f, arg_0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global3.c), global3.c, _wgslsmith_f_op_f32(arg_0.a.c - global3.c)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-592f, global3.c, 345f) + vec3<f32>(arg_0.a.c, arg_0.a.c, global3.c)))), true)) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1779f))), 909f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c, arg_0.a.c, global3.c))) - vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(max(global3.c, arg_0.a.c))), arg_0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -183f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-303f, var_1.x, 838f), vec3<f32>(-694f, 1966f, global3.c))) - vec3<f32>(801f, global3.c, global3.c)) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.c), _wgslsmith_f_op_f32(-186f - var_1.x), _wgslsmith_f_op_f32(-global3.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -220f, _wgslsmith_f_op_f32(sign(1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-274f, global3.c, var_1.x), vec3<f32>(-954f, var_1.x, 1006f), arg_1)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(686f, global3.c, -557f) - vec3<f32>(global3.c, 1263f, arg_0.a.c))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(973f, var_1.x, -1190f))));
    let var_2 = reverseBits(u_input.a);
    return !select(!(!vec3<bool>(arg_1, true, false)), vec3<bool>(true, all(vec2<bool>(arg_1, arg_1)), arg_1), !(~20436i == (var_2.x & -2147483647i)));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = ~abs(select(reverseBits(arg_0.a & vec3<u32>(global3.a.x, 0u, global3.a.x)), vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.b), !func_2(Struct_2(Struct_1(global3.a, arg_0.b, 2209f)), false)));
    var var_1 = firstLeadingBit(min(_wgslsmith_add_i32(u_input.a.x, countOneBits(_wgslsmith_mod_i32(u_input.a.x, global1[_wgslsmith_index_u32(global3.b, 28u)]))), _wgslsmith_add_i32(-1i, global1[_wgslsmith_index_u32(45264u, 28u)])));
    var var_2 = vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(-global3.c), 1101f, global3.c);
    global2 = true;
    var_1 = ~min(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(9993u, global3.b), 28u)] & _wgslsmith_mod_i32(2147483647i, _wgslsmith_mod_i32(-9554i, -2147483647i)), 5180i);
    return Struct_3(all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), !func_2(Struct_2(arg_0), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec3<u32>(max(_wgslsmith_div_u32(4294967295u, global3.a.x), 4294967295u), 1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(global3.b, 34191u), 59583u)), 1u, 689f));
    let var_1 = true && (global3.c >= 912f);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c, global3.c) + vec2<f32>(global3.c, 552f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-961f, -1127f) + vec2<f32>(994f, 1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, -1295f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-318f, global3.c)))))));
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(433f, global3.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(select(114f, _wgslsmith_f_op_f32(f32(-1f) * -1046f), select(false, all(vec4<bool>(var_1, var_1, var_1, var_1)), var_1)))));
    let var_3 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, u_input.a.x);
}

