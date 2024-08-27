struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-651f, 813f, 980f, -642f, -1261f, -1172f, 1658f, 1274f, -345f, 1274f, 100f, 1479f, 266f, -2204f, 875f, 472f, -751f, 1701f, 1206f, -130f, 268f, -450f, 1959f, -226f, 2124f, 125f, 2120f, -307f, 1306f, 397f);

var<private> global1: array<i32, 1> = array<i32, 1>(1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = select(vec2<bool>(arg_1.a.x >= global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(26355u, countOneBits(35186u)), 30u)], select(false, true, arg_0.b != u_input.a.x) || true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), !all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_1 = Struct_2(_wgslsmith_div_u32(1u, 23362u));
    return true;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * -1828f), _wgslsmith_f_op_f32(f32(-1f) * -290f)), vec3<f32>(1f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30175u, 1u, arg_2.a), vec3<u32>(43262u, arg_2.a, 4294967295u)), 30u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] * 699f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_0.a, arg_1))) + var_0.a)), global1[_wgslsmith_index_u32(~arg_2.a, 1u)]);
    let var_2 = u_input.a.wwz;
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + global0[_wgslsmith_index_u32(arg_2.a, 30u)]) + -959f))), 1468f, _wgslsmith_f_op_f32(-arg_0)), abs(u_input.a.x));
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(82951u, 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f + _wgslsmith_f_op_f32(arg_1.x - 740f))), var_1.a.x), u_input.a.x);
    return !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    global1 = array<i32, 1>();
    var var_0 = arg_1;
    var var_1 = any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_3(global0[_wgslsmith_index_u32(arg_0, 30u)], vec3<f32>(global0[_wgslsmith_index_u32(4196u, 30u)], 1141f, 1490f), arg_1, u_input.a.xy), vec2<bool>(false, false)), true), select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true), true), false));
    return arg_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = firstTrailingBit(vec3<u32>(arg_1.a, arg_1.a, arg_1.a & arg_1.a)) >> (min(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(968u, arg_1.a, arg_1.a), vec3<u32>(arg_1.a, arg_1.a, 4294967295u)), ~vec3<u32>(arg_1.a, arg_1.a, arg_1.a)), vec3<u32>(arg_1.a, abs(9236u), arg_1.a >> (arg_1.a % 32u)) | reverseBits(~vec3<u32>(arg_1.a, 4294967295u, arg_1.a))) % vec3<u32>(32u));
    let var_1 = reverseBits(~(~select(0u, arg_1.a, false)) >> (arg_1.a % 32u));
    let var_2 = global0[_wgslsmith_index_u32(44317u, 30u)];
    var_0 = _wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(4294967295u, arg_1.a, var_0.x)), vec3<u32>(~arg_1.a, _wgslsmith_mod_u32(_wgslsmith_mult_u32(39900u, 52121u), arg_1.a << (var_1 % 32u)), var_0.x)) | vec3<u32>(firstTrailingBit(15605u), 3140u, select(abs(abs(4294967295u)), abs(~1u), _wgslsmith_f_op_f32(f32(-1f) * -282f) > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 30u)])));
    var var_3 = -32149i;
    return Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-658f, 257f, 431f)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 30u)])))), _wgslsmith_div_f32(3254f, _wgslsmith_f_op_f32(abs(2311f))), -833f), countOneBits(global1[_wgslsmith_index_u32(~min(arg_2.a, arg_2.a ^ 47505u), 1u)]));
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_0.a.xz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.xy) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.yx * var_0.a.yx)), arg_0.a.yz)));
    var var_3 = arg_2;
    let var_4 = vec2<bool>(true, !(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))));
    return ~(~24618i) > -_wgslsmith_mod_i32(-29318i, countOneBits(global1[_wgslsmith_index_u32(1u, 1u)]) >> (~var_3.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = select(vec4<bool>(true, true, select(all(vec2<bool>(true, true)), !func_1(Struct_1(vec3<f32>(-963f, global0[_wgslsmith_index_u32(1458u, 30u)], global0[_wgslsmith_index_u32(23810u, 30u)]), -2147483647i), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(59506u, 30u)]), 9513i)), true), func_5(func_4(reverseBits(u_input.a.xzz), func_2(20553u, Struct_2(52217u))), Struct_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -1757f, -651f)))), Struct_2(1u))), vec4<bool>(true, true, true, true), true | all(vec2<bool>(true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

