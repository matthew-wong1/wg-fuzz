struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: vec3<f32>;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(29718u, 4294967295u), vec2<f32>(-1849f, 948f), 0u, 4294967295u, vec4<f32>(-1012f, -2526f, -301f, -189f));

var<private> global4: vec4<i32> = vec4<i32>(1i, -54933i, -16408i, -11468i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = u_input.a.x;
    return 0i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<u32>(abs(u_input.b.x) ^ ~4294967295u, firstLeadingBit(_wgslsmith_add_u32(53606u | global3.c, select(_wgslsmith_sub_u32(arg_2.c, arg_2.a.x), ~40849u, true))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, 66421u, global3.d), _wgslsmith_div_vec3_u32(~vec3<u32>(39488u, 1u, arg_2.d), u_input.b | u_input.b)), min(~global3.a.x, _wgslsmith_div_u32(global3.a.x, 51078u)) >> (global3.c % 32u), ~(~global3.d)));
    let var_1 = _wgslsmith_f_op_vec3_f32(global3.e.yzz + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.e.wxy * vec3<f32>(-109f, arg_2.e.x, arg_2.b.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1259f, arg_2.b.x, -1000f), vec3<f32>(-473f, global1.x, -1290f))))) - _wgslsmith_f_op_vec3_f32(-arg_2.e.ywy)));
    let var_2 = !(!arg_1.xz);
    global3 = Struct_1(firstTrailingBit(max(u_input.b.xz, ~(~arg_2.a))), vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.x - -1000f), _wgslsmith_f_op_f32(abs(-104f))), 2008f)), _wgslsmith_div_u32(var_0.x, arg_2.d), var_0.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 372f, -980f, -988f)), vec4<f32>(109f, -283f, global1.x, -1525f))));
    var var_3 = !var_2.x;
    return max(min(u_input.a.x, -reverseBits(~arg_0.x)), firstTrailingBit(u_input.a.x));
}

fn func_2() -> Struct_1 {
    global4 = vec4<i32>(_wgslsmith_dot_vec3_i32(min(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, global4.x, u_input.a.x), global4.xyy), vec3<i32>(-global4.x, u_input.a.x, u_input.a.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global4.x, 18352i, 0i, -76806i)), -18117i, u_input.a.x)), -2147483647i, func_4(vec3<i32>(-_wgslsmith_div_i32(u_input.a.x, 11531i), ~(-1i) >> (global3.a.x % 32u), func_3(Struct_1(u_input.b.xz, vec2<f32>(global3.e.x, global1.x), 4294967295u, global3.c, global3.e)) << (firstLeadingBit(46938u) % 32u)), select(vec3<bool>(false, true, true), !(!global0[_wgslsmith_index_u32(global3.a.x, 31u)]), vec3<bool>(true, true, all(global0[_wgslsmith_index_u32(0u, 31u)]))), Struct_1(u_input.b.yz, global3.b, firstTrailingBit(firstTrailingBit(u_input.b.x)), 4294967295u, global3.e)), u_input.a.x);
    let var_0 = Struct_1(~(~vec2<u32>(41180u, _wgslsmith_sub_u32(78813u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yz) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.e.x, 477f) * vec2<f32>(369f, global3.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1082f, global1.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1012f, 353f))), vec2<bool>(true, true)))), ~(~4294967295u), ~global3.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.e))));
    let var_1 = var_0;
    global3 = var_1;
    let var_2 = Struct_1(abs(var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(1233f - 546f)) * vec2<f32>(_wgslsmith_f_op_f32(max(var_1.b.x, global1.x)), var_1.e.x))), _wgslsmith_dot_vec2_u32(u_input.b.xx, ~var_1.a), ~global3.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.x, -253f, _wgslsmith_f_op_f32(sign(global3.e.x)), var_0.b.x)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-178f - -1022f), _wgslsmith_f_op_f32(round(605f))), _wgslsmith_f_op_f32(-1991f - -1009f), global3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1669f - 902f), var_1.b.x))));
    return var_2;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = global4.x;
    global4 = u_input.a;
    let var_2 = vec4<bool>(arg_2.x, !any(!arg_2.xw), any(vec2<bool>(arg_1, true & arg_1)), true);
    var var_3 = -1i;
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    global3 = Struct_1(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(u_input.b.x, arg_0.d, 15438u)), countOneBits(firstTrailingBit(arg_0.a.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, global1.x)) * func_2().b)))), firstTrailingBit(22194u), 12394u, vec4<f32>(-1401f, 573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 747f))), 1460f));
    global0 = array<vec3<bool>, 31>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.e.wxw), arg_0.e.xzz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.e.xwy) + _wgslsmith_f_op_vec3_f32(max(global3.e.wxy, arg_0.e.zxy)))), arg_0.e.ywx) + _wgslsmith_f_op_vec3_f32(-global3.e.wzx));
    var var_0 = select(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], select(global0[_wgslsmith_index_u32(global3.c, 31u)], global0[_wgslsmith_index_u32(countOneBits(u_input.b.x), 31u)], !vec3<bool>(arg_1, arg_1, arg_1)));
    let var_1 = Struct_1(vec2<u32>(124878u, ~0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(483f))) * vec2<f32>(-1172f, _wgslsmith_f_op_f32(-971f - _wgslsmith_f_op_f32(select(1960f, -524f, arg_1))))), u_input.b.x, 7869u, _wgslsmith_f_op_vec4_f32(global3.e * global3.e));
    return vec4<bool>(any(select(!vec3<bool>(var_0.x, var_0.x, false), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, arg_0.a.x), 31u)], global0[_wgslsmith_index_u32(~1u, 31u)])), true, any(!vec2<bool>(global3.c != 4294967295u, any(vec3<bool>(true, arg_1, var_0.x)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), func_5(func_1(global1.yz, false, vec4<bool>(true, false, true, false)), true), all(vec4<bool>(true, false, false, false))));
    global0 = array<vec3<bool>, 31>();
    let var_1 = ~2147483647i;
    var var_2 = func_2();
    let var_3 = var_0;
    global0 = array<vec3<bool>, 31>();
    var var_4 = func_2();
    let var_5 = global3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(~15051u, _wgslsmith_div_u32(~var_4.c, _wgslsmith_mod_u32(59014u, global3.c))), vec2<u32>(var_4.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_4.a, vec2<u32>(1u, 25403u)), global3.d << (13533u % 32u)))), 1i, func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -2606f)), -421f), false, vec4<bool>(true | all(vec4<bool>(var_3.x, false, true, true)), false, true, var_3.x)).e.x);
}

