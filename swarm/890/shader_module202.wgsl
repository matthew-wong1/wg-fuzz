struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec4<u32>;

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> bool {
    var var_0 = arg_1;
    global0 = array<Struct_1, 21>();
    let var_1 = Struct_2(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - -684f) + _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(max(arg_0, arg_0))))), global0[_wgslsmith_index_u32(~4294967295u, 21u)], global0[_wgslsmith_index_u32(arg_1.d, 21u)]);
    let var_2 = vec2<f32>(-1607f, _wgslsmith_f_op_f32(trunc(var_1.b)));
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(min(global1.yw, ~abs(vec2<u32>(var_1.a.b, 4294967295u))), global1.zy), abs(_wgslsmith_div_vec2_u32(vec2<u32>(~1661u, 32039u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, global1.x), abs(global1.yx)))));
    return false;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 21>();
    var var_0 = !vec3<bool>(true, any(vec2<bool>(any(arg_0), arg_2.a)), arg_2.a);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(1104f + 1416f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2267f, -970f)) * -1725f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(144f + -969f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1152f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1553f, -317f, var_0.x)))), false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1716f))))), _wgslsmith_f_op_f32(716f + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(214f * 738f)))))), _wgslsmith_f_op_f32(floor(1f)));
    return Struct_1(any(select(select(!vec4<bool>(false, true, true, arg_0.x), !vec4<bool>(false, arg_1.a, false, true), vec4<bool>(arg_0.x, true, false, false)), select(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, arg_2.a, arg_2.a, arg_0.x)), !vec4<bool>(var_0.x, true, arg_0.x, arg_0.x), !vec4<bool>(true, arg_1.a, true, true)), !select(vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(false, true, true, true), vec4<bool>(arg_0.x, true, var_0.x, false)))), ~_wgslsmith_dot_vec3_u32(~global1.wzx, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global1.zxx, vec3<u32>(6264u, arg_2.b, 28458u)), global1.xyx)), i32(-1i) * -32464i, ~_wgslsmith_mod_u32(arg_1.b, countOneBits(u_input.a)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: vec3<i32>) -> bool {
    var var_0 = arg_0;
    var var_1 = 58050i;
    var var_2 = func_3(!(!vec2<bool>(func_2(853f, global0[_wgslsmith_index_u32(1u, 21u)], arg_3.x, vec3<bool>(true, true, false)), arg_0 & true)), global0[_wgslsmith_index_u32(u_input.a & countOneBits(91341u), 21u)], global0[_wgslsmith_index_u32(countOneBits(max(firstTrailingBit(global1.x), 4294967295u) << (u_input.a % 32u)), 21u)]);
    let var_3 = select(select(vec3<bool>(any(select(vec2<bool>(false, var_2.a), vec2<bool>(false, var_2.a), true)), !arg_0, !var_2.a), select(!vec3<bool>(true, var_2.a, true), vec3<bool>(var_2.a || false, all(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, false))), all(select(vec3<bool>(var_2.a, arg_0, var_2.a), vec3<bool>(var_2.a, arg_0, var_2.a), vec3<bool>(var_2.a, true, var_2.a)))), vec3<bool>(func_2(306f, func_3(vec2<bool>(arg_0, arg_0), Struct_1(arg_0, 1u, -1i, u_input.a), Struct_1(var_2.a, 59258u, -45685i, 0u)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, var_2.c), arg_3.zx), select(vec3<bool>(false, true, false), vec3<bool>(var_2.a, false, arg_0), true)), !var_2.a, var_2.a)), select(select(vec3<bool>(true, var_2.a | var_2.a, true), !select(vec3<bool>(arg_0, arg_0, var_2.a), vec3<bool>(true, true, arg_0), vec3<bool>(var_2.a, arg_0, false)), all(vec2<bool>(var_2.a, var_2.a))), !(!vec3<bool>(var_2.a, var_2.a, true)), true), !vec3<bool>(all(vec4<bool>(true, true, arg_0, arg_0)) && var_2.a, !func_2(-198f, global0[_wgslsmith_index_u32(213u, 21u)], 1i, vec3<bool>(true, true, var_2.a)), _wgslsmith_f_op_f32(ceil(1346f)) <= -1454f));
    var_1 = -(countOneBits(arg_3.x) >> (0u % 32u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global2 = !(!func_1(true, 4294967295u, u_input.a, vec3<i32>(1i, 1i, 1i)) | false);
    global0 = array<Struct_1, 21>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -544f), 372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1007f)) * _wgslsmith_f_op_f32(-260f + -1063f)), _wgslsmith_f_op_f32(f32(-1f) * -702f)))));
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -50628i, -1i), vec4<i32>(-1i, 30633i, -77845i, -38057i))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(max(11869i, -1i), reverseBits(-1i)), abs(1i))));
}

