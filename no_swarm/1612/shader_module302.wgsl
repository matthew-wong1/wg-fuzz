struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<u32, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: f32) -> vec3<i32> {
    var var_0 = u_input.d.xyy;
    return vec3<i32>(~_wgslsmith_mult_i32(select(-40142i, -47843i, any(vec3<bool>(false, true, true))), -2147483647i), ~_wgslsmith_clamp_i32(2147483647i, -countOneBits(-12799i), -u_input.c.x), ~abs(u_input.c.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = all(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), u_input.c.x >= -2147483647i));
    let var_1 = _wgslsmith_f_op_f32(sign(397f));
    let var_2 = arg_2.b.zz;
    let var_3 = arg_0;
    var_0 = true;
    return (-2147483647i & u_input.e.x) == -1i;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(vec3<f32>(-276f, 776f, -1523f), firstTrailingBit(~u_input.d), u_input.d.xyw, _wgslsmith_f_op_f32(abs(-1925f)));
    var var_1 = var_0;
    let var_2 = select(!vec3<bool>(arg_1, any(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), true)), false), vec3<bool>(!((arg_1 & arg_1) || (global1[_wgslsmith_index_u32(var_1.c.x, 26u)] < 0u)), select(arg_1, false, true), arg_1), select(any(select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), true), vec2<bool>(false, false))), true, arg_1));
    let var_3 = arg_0.x;
    global1 = array<u32, 26>();
    return var_0;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(541f * 1875f), -608f, _wgslsmith_f_op_f32(min(arg_0, -903f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 1473f), _wgslsmith_f_op_f32(arg_0 - arg_0))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-166f - arg_0) + -452f))) + vec4<f32>(arg_0, arg_0, arg_0, -1525f));
    let var_2 = !all(vec3<bool>(!var_0, var_0, var_0));
    global0 = 4294967295u;
    global0 = 0u;
    return func_4(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, 13423i), vec2<i32>(_wgslsmith_mod_i32(0i, -30662i), max(u_input.e.x, u_input.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -1297f)), !func_3(Struct_1(var_1.wzw, _wgslsmith_sub_vec4_u32(vec4<u32>(39944u, u_input.b, 95045u, 49420u), vec4<u32>(u_input.b, u_input.d.x, 20293u, 4294967295u)), u_input.d.xzy, _wgslsmith_f_op_f32(-arg_0)), Struct_1(var_1.xwz, u_input.d >> (u_input.d % vec4<u32>(32u)), u_input.d.ywz, -502f), Struct_1(vec3<f32>(1255f, 1508f, arg_0), u_input.d ^ u_input.d, u_input.d.xyw ^ vec3<u32>(8273u, u_input.a, u_input.b), arg_0)), 15115u);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = array<u32, 26>();
    let var_0 = vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true && any(vec2<bool>(false, true)))), false, true);
    global1 = array<u32, 26>();
    let var_1 = !all(select(select(!vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), false), vec3<bool>(true, !var_0.x, all(var_0)), !select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), true)));
    var var_2 = ~(~countOneBits(4294967295u) << (arg_2.b.x % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.x, -988f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x))))) * _wgslsmith_f_op_f32(exp2(arg_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_5(abs(~global1[_wgslsmith_index_u32(u_input.a, 26u)]), func_1(726f), func_4(countOneBits(u_input.c.yww), true, 1u), Struct_1(vec3<f32>(178f, -618f, 535f), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12551u, 26u)], 26u)], 1u, 38336u, 1u), u_input.d.yzy >> (u_input.d.xyw % vec3<u32>(32u)), -814f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1399f * -2560f))))));
    let var_1 = vec3<f32>(502f, _wgslsmith_f_op_f32(func_5(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(60548u, u_input.a, 33743u, u_input.a), select(u_input.d, u_input.d, vec4<bool>(false, false, true, true)), u_input.d), firstTrailingBit(u_input.d & vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], 14846u, 6653u))), 26u)], func_1(var_0.x), func_4(u_input.c.yyw, select(true, any(vec4<bool>(true, false, false, false)), all(vec4<bool>(false, false, false, true))), 1u), Struct_1(vec3<f32>(_wgslsmith_div_f32(-183f, var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 67893u | global1[_wgslsmith_index_u32(53209u, 26u)], global1[_wgslsmith_index_u32(~u_input.b, 26u)], ~13092u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(63344u, u_input.d.x, 4294967295u), vec3<u32>(u_input.d.x, u_input.d.x, global1[_wgslsmith_index_u32(u_input.d.x, 26u)])), var_0.x))), _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = _wgslsmith_mult_u32(1u, ~global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(10284u, u_input.a), 26u)], func_4(vec3<i32>(0i, -2147483647i, u_input.c.x), 0u >= u_input.b, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], 1u, 12972u, 1u))).c.x), 26u)]);
    let var_3 = func_4(u_input.c.yww, any(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true)))), 13781u);
    var_0 = var_1.yx;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(-715f).b, _wgslsmith_mod_u32(u_input.b, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(22681u, u_input.a), ~(~global1[_wgslsmith_index_u32(var_3.b.x, 26u)]))), u_input.c.x);
}

