struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(341f, 785f, -1002f, -290f, 169f, -1000f, -168f, -1654f, 1669f, -1000f, -553f, -324f, -734f, -1000f, 432f, 648f, 329f, -170f, -275f, -2527f, -934f);

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~(~vec3<u32>(~38242u, reverseBits(1u), _wgslsmith_mult_u32(4294967295u, 0u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(27861u, 76467u), 21u)], -1162f))))), !select(!(-1267f == global0[_wgslsmith_index_u32(15935u, 21u)]), true, all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -379f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-188f * 1746f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(41979u, 21u)] * -386f)))))));
    global0 = array<f32, 21>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, abs(select(47265u, _wgslsmith_add_u32(var_0.a.x, 24198u | var_0.a.x), true))), 21u)];
    let var_2 = (all(!select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_0.c, true, true), true)) || true) || (~(_wgslsmith_mod_u32(var_1.a.x, 8413u) >> ((4294967295u | var_1.a.x) % 32u)) < 18795u);
    let var_3 = Struct_1(vec3<u32>(var_1.a.x, var_0.a.x, select(~15263u, var_1.a.x | 4294967295u, true != any(vec4<bool>(false, false, var_1.c, false)))), -1484f, !all(vec4<bool>(var_2, var_0.a.x < 38401u, false, 1i > u_input.a)), _wgslsmith_f_op_f32(-var_0.d));
    return ~var_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = arg_0.a;
    var var_1 = Struct_1(abs(vec3<u32>(func_3(), ~1u, func_3()) ^ (~arg_1 & arg_3.a)), _wgslsmith_f_op_f32(f32(-1f) * -352f), all(select(vec2<bool>(any(vec3<bool>(arg_0.c, arg_0.c, arg_2)), all(vec3<bool>(arg_0.c, arg_0.c, true))), select(select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_0.c), arg_0.c), !vec2<bool>(false, arg_2), select(vec2<bool>(false, true), vec2<bool>(true, true), arg_3.c)), !select(vec2<bool>(true, arg_3.c), vec2<bool>(false, arg_2), false))), arg_3.b);
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(~arg_1, ~arg_3.a), max(~_wgslsmith_add_u32(4294967295u, var_1.a.x), var_0.x), ~(1u | ~arg_0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), arg_3.b)), any(!(!select(vec4<bool>(arg_0.c, false, var_1.c, arg_2), vec4<bool>(arg_0.c, true, false, true), vec4<bool>(arg_0.c, arg_3.c, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -861f)));
    let var_3 = ~_wgslsmith_sub_i32(select(_wgslsmith_mult_i32(u_input.a, 2147483647i), select(u_input.a, -3460i, false), true) >> (42488u % 32u), ~(-u_input.a));
    let var_4 = -abs(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(0i, 16884i), vec2<i32>(10080i, u_input.a)), firstTrailingBit(vec2<i32>(-4794i, u_input.a))), vec2<i32>(_wgslsmith_sub_i32(var_3, u_input.a), 13440i)));
    return arg_0.c;
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 21>();
    var var_0 = Struct_1(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(25368u, 21u)] - global0[_wgslsmith_index_u32(22056u, 21u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 21u)]))))), false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1369f))))));
    var var_1 = !(!vec4<bool>(~4294967295u > (var_0.a.x ^ 4294967295u), var_0.c && !var_0.c, (u_input.a >> (6275u % 32u)) > -2147483647i, false));
    let var_2 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(max(var_0.a.x, var_0.a.x), var_0.a.x >> (1u % 32u), 7666u), ~vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u)), vec3<u32>(4294967295u, 0u, var_0.a.x)), var_0.b, false, 451f);
    var var_3 = select(vec2<bool>(select(!func_2(Struct_1(vec3<u32>(var_0.a.x, var_0.a.x, var_2.a.x), -677f, false, var_2.b), vec3<u32>(0u, 4294967295u, 39821u), var_2.c, Struct_1(var_0.a, var_0.d, false, 1000f)), false, var_0.c), true), var_1.yx, var_1.yy);
    return Struct_1(~firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 1u), var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, 1u, 0u, var_0.a.x), vec4<u32>(var_0.a.x, var_2.a.x, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -2017f), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -369f) * _wgslsmith_f_op_f32(f32(-1f) * -747f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    var var_0 = -1613f;
    global0 = array<f32, 21>();
    let var_1 = func_1();
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

