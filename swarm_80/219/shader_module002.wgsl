struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: vec4<i32>;

var<private> global2: array<i32, 23>;

var<private> global3: vec3<u32> = vec3<u32>(8302u, 24323u, 62716u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = abs(~select(~u_input.a, _wgslsmith_div_vec4_u32(select(vec4<u32>(1414u, global0[_wgslsmith_index_u32(global3.x, 1u)], u_input.a.x, 0u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<bool>(true, true, false, true)), ~u_input.a), true));
    var var_2 = abs(_wgslsmith_dot_vec2_u32(~(~var_1.wx), u_input.a.wz << (u_input.a.yw % vec2<u32>(32u))));
    var var_3 = u_input.b;
    var_2 = min(u_input.a.x, firstLeadingBit(_wgslsmith_mod_u32(47659u, global0[_wgslsmith_index_u32(reverseBits(~1u), 1u)])));
    return u_input.a.xxz;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> f32 {
    global3 = ~u_input.a.xyz;
    let var_0 = arg_0;
    global3 = func_3(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-117f, 1000f, 461f))) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, 794f, 109f), vec3<f32>(712f, -1104f, arg_0.a))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(-1250f - arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) * -1000f), -130f, 1315f, -382f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, arg_0.a, arg_0.a, var_0.a)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, var_0.a, 1419f, arg_0.a), vec4<f32>(2092f, 771f, arg_0.a, 805f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 1050f, var_0.a) + vec4<f32>(892f, arg_0.a, 1000f, -902f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, 1443f, -641f, 1832f)))), vec4<bool>(any(vec4<bool>(false, true, false, false)), all(vec2<bool>(false, true)), true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, 1174f, var_0.a, -649f), vec4<f32>(-369f, var_0.a, -689f, arg_0.a))), vec4<f32>(689f, var_0.a, -266f, arg_0.a)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1979f, var_0.a, -182f, var_0.a)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a, arg_0.a, -191f, -563f))))))));
    global1 = -vec4<i32>(-u_input.c.x, u_input.c.x, -31563i, _wgslsmith_add_i32(~select(u_input.d, -67581i, false), ~_wgslsmith_dot_vec2_i32(global1.zz, u_input.b.ww)));
    return _wgslsmith_f_op_f32(max(-496f, _wgslsmith_f_op_f32(arg_0.a - -315f)));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    global1 = -vec4<i32>(global1.x, -10892i, -(global1.x << (102568u % 32u)) & _wgslsmith_mod_i32(u_input.c.x, firstTrailingBit(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 23u)])), _wgslsmith_mod_i32(~(-global2[_wgslsmith_index_u32(25950u, 23u)]), -8244i));
    global0 = array<u32, 1>();
    let var_0 = 1i;
    let var_1 = false;
    global2 = array<i32, 23>();
    return Struct_1(1653f);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = -(vec3<i32>(max(_wgslsmith_mult_i32(-1i, -39244i), min(1i, 1i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(global2[_wgslsmith_index_u32(36342u, 23u)], global1.x, u_input.c.x), u_input.b.yyx | global1.yyw), -(~(-2147483647i))) | select(vec3<i32>(25623i, 95139i, 26621i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 1i, 38224i), vec3<i32>(-49622i, global2[_wgslsmith_index_u32(global3.x, 23u)], -2147483647i)), -(~u_input.b.xwz), vec3<bool>(true, arg_0, true)));
    global1 = countOneBits(u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a))))) - -769f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_div_f32(arg_1.a, arg_1.a)) - arg_1.a));
    global2 = array<i32, 23>();
    return func_4(~(~abs(u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(-448f), global1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)])), arg_2, -1502f, _wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_2, arg_1.a, arg_1.a))))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    return vec4<bool>(true, _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(~u_input.a.x, 1u)], 1u) == 1u, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 1>();
    global3 = vec3<u32>(_wgslsmith_div_u32(abs(global3.x) << (4294967295u % 32u), global3.x), ~u_input.a.x, global3.x);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-772f + _wgslsmith_div_f32(-151f, -136f)))), -1506f));
    var var_1 = -vec2<i32>(global1.x, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(~select(u_input.a.x, global3.x, true), 23u)], _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 17185i, -14014i), select(global1.wyx, global1.zwx, false)), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48913u, 1u)], 23u)]));
    let var_2 = all(select(vec4<bool>(true, true, true, true), func_5(func_1(any(vec3<bool>(false, false, false)), Struct_1(1000f), -1220f), func_4(1u, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -826f, 1012f, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1042f, 872f, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1317f, -1072f)))), !(!(global2[_wgslsmith_index_u32(1u, 23u)] >= -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_div_vec2_i32(u_input.c, _wgslsmith_mod_vec2_i32(vec2<i32>(-32076i, 21907i), global1.wz))), -reverseBits(var_1.x >> (global3.x % 32u)) >> (abs(~(global3.x >> (global3.x % 32u))) % 32u));
}

