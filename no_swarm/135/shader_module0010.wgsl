struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 11>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1579f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(451f, global0.e), vec2<f32>(1000f, 916f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2396f, -476f))) + _wgslsmith_f_op_vec2_f32(global0.c.zy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.yw) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e, arg_1.e), vec2<f32>(arg_1.e, 1266f), true))))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(arg_1.c.xy));
    var var_1 = arg_0;
    var_0 = vec2<f32>(612f, -1002f);
    let var_2 = arg_0;
    return select(arg_0.b.x, ~arg_1.b.x, !all(!select(vec3<bool>(var_1.d, var_2.d, true), vec3<bool>(arg_1.d, false, false), vec3<bool>(arg_0.d, arg_1.d, var_2.d))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = 2147483647i;
    global1 = array<i32, 11>();
    let var_1 = arg_0;
    global0 = Struct_1(_wgslsmith_mod_vec3_i32(arg_2.a, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -1i), arg_2.a.zz), _wgslsmith_clamp_i32(var_0 | var_0, arg_2.a.x ^ -17149i, 2147483647i), 1182i & _wgslsmith_clamp_i32(20581i, var_0, global0.a.x))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(49096u, 1u), global0.b.wy) ^ 48232u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a), 1u, _wgslsmith_dot_vec4_u32(global0.b, arg_2.b)), global0.b.x), 46272u, func_3(arg_2, arg_2)), global0.c, false, _wgslsmith_f_op_f32(abs(global0.e)));
    let var_2 = global0.a.xx;
    return ~u_input.d.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_2;
    let var_1 = global1[_wgslsmith_index_u32(4294967295u | func_2(arg_2.d, global0.b.x, arg_2), 11u)];
    let var_2 = Struct_1(var_0.a, reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.b.x, 1u, global0.b.x >> (1u % 32u)), arg_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(abs(var_0.e)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_vec4_f32(arg_2.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(1062f, var_0.c.x, -181f, arg_0.x) - global0.c)))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) * _wgslsmith_div_f32(1000f, arg_2.e)));
    let var_3 = arg_2;
    var_0 = Struct_1(_wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_0.a.x, 1i), select(var_0.a, vec3<i32>(-4404i, arg_2.a.x, 26825i), var_2.d), firstTrailingBit(vec3<i32>(0i, 0i, 70783i))), var_0.a), select(vec4<u32>(~u_input.a >> (41857u % 32u), ~_wgslsmith_clamp_u32(4294967295u, u_input.b, arg_2.b.x), _wgslsmith_mult_u32(~var_0.b.x, var_0.b.x), ~(~1u)), max(vec4<u32>(77202u, firstTrailingBit(global0.b.x), global0.b.x | 0u, arg_2.b.x << (4294967295u % 32u)), var_3.b), (firstLeadingBit(var_3.b.x) >= arg_2.b.x) == all(select(arg_1, arg_1, vec4<bool>(var_2.d, true, false, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-960f)), var_3.e, _wgslsmith_div_f32(arg_2.c.x, global0.c.x), var_2.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.c)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(arg_2.c)))))), 1u < firstTrailingBit(reverseBits(_wgslsmith_dot_vec3_u32(arg_2.b.xyx, vec3<u32>(var_3.b.x, global0.b.x, 0u)))), var_0.c.x);
    return !arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 11>();
    let var_0 = !(!(!func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-780f, global0.c.x)), !vec4<bool>(false, global0.d, false, false), Struct_1(vec3<i32>(0i, 12530i, u_input.c), vec4<u32>(59955u, global0.b.x, 38159u, global0.b.x), vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.e), global0.d, global0.c.x))));
    var var_1 = Struct_1(vec3<i32>(u_input.c, firstLeadingBit(u_input.c), _wgslsmith_sub_i32(-69127i, global1[_wgslsmith_index_u32(1u, 11u)])), abs(max(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, global0.b.x, 0u, u_input.e), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 112117u), global0.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, 4294967295u, global0.b.x, u_input.d.x), vec4<u32>(global0.b.x, global0.b.x, global0.b.x, 0u)) ^ vec4<u32>(u_input.b, 45096u, 1u, 91247u))), vec4<f32>(_wgslsmith_f_op_f32(sign(1677f)), _wgslsmith_f_op_f32(-global0.e), _wgslsmith_f_op_f32(sign(-669f)), global0.e), global0.d, global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.e, 279f, var_1.e, -329f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.x, 203f, var_1.c.x, global0.e), global0.c)), !var_0)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c.x, 313f, 285f, global0.c.x), _wgslsmith_f_op_vec4_f32(abs(var_1.c)))))), global0.c.wz, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.c.wxw, _wgslsmith_f_op_vec3_f32(var_1.c.wxw + global0.c.ywz)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.e, -395f), 1435f)), _wgslsmith_f_op_f32(max(global0.e, _wgslsmith_f_op_f32(-global0.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1097f * 485f))))));
}

