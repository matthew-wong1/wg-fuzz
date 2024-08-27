struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12>;

var<private> global1: vec4<f32>;

var<private> global2: array<f32, 30> = array<f32, 30>(-628f, 1296f, 1220f, 763f, 1047f, -291f, 2133f, 801f, 845f, -963f, -964f, 2056f, -1000f, 195f, -655f, -121f, 543f, 548f, 560f, 315f, -511f, 122f, -499f, 1171f, 1000f, 102f, 699f, -1346f, -599f, -769f);

var<private> global3: vec3<bool>;

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -388f))), global2[_wgslsmith_index_u32(~1u, 30u)], global1.x, -137f))), false);
    var var_1 = _wgslsmith_mod_u32(u_input.d.x, u_input.a);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, firstLeadingBit(countOneBits(~0u))), 30u)];
    var var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(var_3.a, var_0.a, var_3.b)), _wgslsmith_f_op_vec4_f32(max(var_0.a, vec4<f32>(495f, -788f, global2[_wgslsmith_index_u32(u_input.e, 30u)], 917f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -750f)), var_0.a.x, _wgslsmith_f_op_f32(trunc(global1.x)), -382f)), any(vec2<bool>(var_0.b, false == any(vec4<bool>(var_3.b, true, true, false)))));
    return -192f;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353f + global1.x) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(55543u, 30u)] - _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-442f * _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(39789u, 30u)], 1128f, false))))), -1903f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-780f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) != _wgslsmith_f_op_f32(-1f));
    let var_1 = !any(select(vec3<bool>(false, global3.x, select(false, arg_0, arg_0)), vec3<bool>(false, false, !arg_0), !(!global3.x)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, -496f, -1184f, global2[_wgslsmith_index_u32(u_input.d.x, 30u)]) + var_0.a) * _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(var_0.a * var_0.a))))), false);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = global1.yyx;
    global3 = select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !all(vec2<bool>(true, true)));
    let var_1 = vec4<bool>(!arg_0, !global3.x, global3.x, !global3.x);
    let var_2 = u_input.d;
    global2 = array<f32, 30>();
    return func_2(global3.x);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = ~_wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(min(u_input.b, 85017u), 37731u)) | (u_input.d.x ^ ~(~_wgslsmith_div_u32(u_input.d.x, 4294967295u)));
    global2 = array<f32, 30>();
    var var_1 = abs(0u);
    let var_2 = arg_2;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-250f, -1152f, 727f, -414f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_2.a.x, var_2.a.x, 1155f)), !arg_1)))), !(!(var_2.a.x <= -949f) || (u_input.c != u_input.c)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a + var_2.a) * var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~4294967295u, 30u)])), !(!vec4<bool>(all(vec2<bool>(global3.x, true)), true, true, false)), func_1(true)));
    var var_1 = vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_div_u32(30424u, u_input.b), ~265u, 140859u), vec3<u32>(u_input.a & u_input.d.x, abs(0u), u_input.d.x), !select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(true, false, global3.x), vec3<bool>(true, true, global3.x))), vec3<u32>(~u_input.a | (62333u & u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(29777u, u_input.e, u_input.e, u_input.b), ~vec4<u32>(u_input.d.x, 4294967295u, 27033u, u_input.d.x)), u_input.e)), firstTrailingBit(~u_input.b ^ ~32103u), ~u_input.b);
    let var_2 = func_2(false);
    global4 = global1.x;
    let var_3 = 580f;
    var var_4 = var_2;
    var var_5 = vec2<i32>(u_input.c, select(_wgslsmith_sub_i32(u_input.c, reverseBits(u_input.c)), 1i, true) & _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c & 38483i, countOneBits(1i)), ~(~u_input.c)));
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(var_6.a, var_6.a), u_input.b);
}

