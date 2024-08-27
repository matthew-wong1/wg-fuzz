struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec4<u32>, 7>;

var<private> global2: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-15770i, 2147483647i, 2147483647i, 1i));

var<private> global3: array<vec4<i32>, 18>;

var<private> global4: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<i32>(51446i, firstLeadingBit(_wgslsmith_sub_i32(abs(1i), ~(-2147483647i))));
    global1 = array<vec4<u32>, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(612f, 645f, -4360f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 622f, 900f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(864f, -1303f, 1195f), vec3<f32>(714f, -663f, -1000f)))))));
    var var_2 = vec3<u32>(_wgslsmith_add_u32(~u_input.a ^ 54034u, ~(~1u)), ~(~(~39568u)), _wgslsmith_dot_vec2_u32(~max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4245u), vec2<u32>(4294967295u, u_input.a)) & abs(vec2<u32>(u_input.a, 1u)))) | ~_wgslsmith_add_vec3_u32(vec3<u32>(select(9876u, u_input.a, global4.x), u_input.a, 4294967295u), ~vec3<u32>(54053u, u_input.a, u_input.a) | ~vec3<u32>(u_input.a, 4294967295u, 67639u));
    var var_3 = global0[_wgslsmith_index_u32(0u, 17u)];
    return vec3<bool>(all(vec2<bool>(!select(false, global4.x, true), var_1.x <= _wgslsmith_f_op_f32(-618f - var_3.a.x))), true, true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    let var_0 = arg_1;
    var var_1 = reverseBits(1u);
    let var_2 = 27442u;
    var var_3 = func_3();
    let var_4 = arg_0;
    return ~var_2;
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~1u, 7u)] << (vec4<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 1u)), vec2<u32>(u_input.a, 1u)), 3662u), func_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1488f, 1622f, 1735f), vec3<f32>(-1318f, 508f, -103f))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 79650u), 17u)], !(!vec3<bool>(global4.x, global4.x, global4.x))), max(func_2(global0[_wgslsmith_index_u32(reverseBits(19338u), 17u)], Struct_1(vec3<f32>(-1072f, -604f, -775f)), select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(true, global4.x, global4.x), vec3<bool>(global4.x, false, true))), u_input.a)) % vec4<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1188f, -322f, 1322f))))));
    let var_2 = var_1;
    var var_3 = vec3<f32>(_wgslsmith_div_f32(var_2.a.x, 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - 277f) - -200f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, var_2.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-904f))));
    var var_4 = var_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -1294f, _wgslsmith_f_op_f32(-var_2.a.x)) + var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global4.x, !global4.x, true, all(!vec2<bool>(global4.x, true)) && false);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1109f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-747f, -1485f), -159f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1116f))), var_0.x))));
    global4 = vec3<bool>(!(!(!any(vec4<bool>(false, false, var_0.x, global4.x)))), true, any(!select(select(vec4<bool>(var_0.x, false, global4.x, false), vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, false, global4.x, global4.x)), vec4<bool>(global4.x, true, true, global4.x), !vec4<bool>(var_0.x, global4.x, true, var_0.x))));
    let var_2 = func_1();
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i) >> (~max(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), min(-vec2<i32>(24810i, -33933i), firstLeadingBit(vec2<i32>(-18868i, -2147483647i)))));
}

