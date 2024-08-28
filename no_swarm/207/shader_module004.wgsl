struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(~u_input.b.wy), ~countOneBits(u_input.b.zy)), 99346u), 16u)];
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(~u_input.e, 16u)], global0[_wgslsmith_index_u32(114528u, 16u)], u_input.b.x & _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(0u), ~4294967295u, ~u_input.e), u_input.b.yyx), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(416f, 1000f), _wgslsmith_div_f32(-763f, 456f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1109f, 149f)), _wgslsmith_f_op_f32(-183f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -726f)) - -212f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(922f - _wgslsmith_f_op_f32(select(-178f, 228f, true))))));
    global0 = array<Struct_1, 16>();
    let var_1 = vec2<bool>(false, true);
    let var_2 = var_0.a;
    return -644f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f - 1350f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(1209f, -481f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(650f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-219f, 1000f) - -1203f)));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(156f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -742f)))))));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(max(countOneBits(vec3<u32>(u_input.e, 146445u, u_input.b.x)), ~u_input.b.zyz) & vec3<u32>(u_input.b.x >> (u_input.b.x % 32u), u_input.e, 119170u), ~firstTrailingBit(vec3<u32>(1u, 1532u, u_input.b.x))), 16u)];
    global0 = array<Struct_1, 16>();
    return Struct_1(!vec2<bool>(any(vec3<bool>(false, true, true)), true));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    global1 = Struct_1(!(!arg_1.a));
    let var_0 = Struct_2(func_2(), global0[_wgslsmith_index_u32(select(84212u, 1u, false | (any(vec4<bool>(true, true, arg_1.a.x, arg_1.a.x)) | true)), 16u)], u_input.e, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-378f - arg_0))), 525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), vec4<f32>(-1000f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) * _wgslsmith_f_op_f32(-647f - 1818f)), arg_0)));
    global0 = array<Struct_1, 16>();
    var var_1 = Struct_2(func_2(), func_2(), ~var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1936f, arg_0, 1873f, arg_0), vec4<f32>(var_0.d.x, -222f, arg_0, var_0.d.x)), vec4<f32>(arg_0, var_0.d.x, 224f, var_0.d.x), true))))));
    global1 = Struct_1(arg_1.a);
    return _wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1295f, 298f, var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 956f, var_1.d.x, -1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(-624f, global0[_wgslsmith_index_u32(u_input.b.x & _wgslsmith_mult_u32(u_input.e, u_input.b.x), 16u)]))))));
    let var_2 = Struct_2(Struct_1(func_2().a), global0[_wgslsmith_index_u32(2257u, 16u)], firstLeadingBit(u_input.b.x), _wgslsmith_f_op_vec4_f32(var_1 * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-184f, 1075f, _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(var_1.x * -1353f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1618f, var_1.x, var_1.x) + var_1))))));
    global0 = array<Struct_1, 16>();
    let var_3 = ~_wgslsmith_div_vec2_i32(vec2<i32>(abs(u_input.a.x), _wgslsmith_div_i32(-3170i, u_input.d.x)) << (~(u_input.b.ww | vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), vec2<i32>(1i, -2147483647i));
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, countOneBits(u_input.b.yz), min(var_2.c, 18857u), -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), vec3<i32>(7517i, ~2147483647i, -var_3.x)), 0u);
}

