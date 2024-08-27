struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(47071u, 4744u, 31967u, 1u, 104062u, 0u, 31907u, 4294967295u, 58892u, 0u);

var<private> global1: Struct_2 = Struct_2(true);

var<private> global2: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(1u, arg_0.x, 59601u)), firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], global0[_wgslsmith_index_u32(arg_0.x, 10u)], u_input.a))), arg_0);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(859f)) - -186f), _wgslsmith_f_op_f32(-474f - _wgslsmith_f_op_f32(min(305f, 1040f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2462f)), -223f, 925u > var_0.x))), ~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(19886i, 2147483647i, -10424i, 33453i)), vec4<i32>(1i, 1i, 1i, -1i))), -_wgslsmith_dot_vec3_i32(vec3<i32>(~(-16196i), -8226i, -2147483647i), vec3<i32>(_wgslsmith_mod_i32(2440i, -1i), i32(-1i) * -2147483647i, i32(-1i) * -33081i)));
    let var_2 = Struct_2(false);
    var var_3 = _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_sub_u32(~countOneBits(0u), ~firstLeadingBit(123194u)), 0u);
    var var_4 = Struct_1(1877f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1070f * _wgslsmith_f_op_f32(step(162f, var_1.a.a))))))), 1i);
    return var_1.a.b;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = select(global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(_wgslsmith_add_u32(~arg_0.x, ~arg_0.x))), 10u)], 26077u, any(vec3<bool>(true, any(vec3<bool>(false, global1.a, global1.a)), true)) || global1.a);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(min(arg_0.wzy, vec3<u32>(u_input.a, 0u, 4294967295u)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1698f + -929f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -(~abs(-1i))), firstTrailingBit(abs(-2147483647i)));
    let var_2 = var_1.a;
    var var_3 = Struct_2(global1.a);
    var var_4 = Struct_3(var_1.a, (firstTrailingBit(-var_1.a.c) & 13218i) & -2147483647i);
    return var_1.a;
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 0u, 4294967295u)), select(vec4<u32>(45304u, 4294967295u, global0[_wgslsmith_index_u32(14521u, 10u)], 8854u), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 0u, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 10u)]), false)));
    var var_1 = Struct_2(global1.a);
    let var_2 = func_2(vec4<u32>(106833u, u_input.b, u_input.b, _wgslsmith_mod_u32(firstLeadingBit(u_input.a), ~u_input.b)));
    let var_3 = select(select(!vec2<bool>(all(vec3<bool>(var_1.a, global1.a, false)), true), select(select(vec2<bool>(true, var_1.a), !vec2<bool>(var_1.a, false), global1.a), vec2<bool>(true, var_1.a), global1.a), vec2<bool>(false, _wgslsmith_f_op_f32(-var_2.a) != _wgslsmith_div_f32(var_0.a, -1314f))), vec2<bool>(!any(select(vec3<bool>(false, global1.a, var_1.a), vec3<bool>(true, global1.a, false), vec3<bool>(global1.a, true, true))), all(select(select(vec2<bool>(global1.a, true), vec2<bool>(var_1.a, true), vec2<bool>(true, var_1.a)), !vec2<bool>(global1.a, true), vec2<bool>(var_1.a, false)))), any(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)] != 0u, true), vec2<bool>(true, true), var_1.a)));
    var var_4 = var_3;
    return vec4<i32>(_wgslsmith_sub_i32(-2147483647i, var_2.c), var_2.c, -1i, var_0.c);
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    global0 = array<u32, 10>();
    let var_0 = min(1u, ~1u);
    var var_1 = vec3<f32>(1898f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1175f))))), _wgslsmith_f_op_f32(f32(-1f) * -990f));
    global0 = array<u32, 10>();
    var var_2 = -2147483647i;
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-(~vec4<i32>(1i, 1i, 1i, 1i)) ^ func_1(), 4294967295u);
    let var_1 = vec3<i32>(~(~func_1().x), 503i, -2147483647i);
    global0 = array<u32, 10>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(1f, 211f, !select(false, false || global1.a, true))), -1032f, countOneBits(-13877i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(101643u, global0[_wgslsmith_index_u32(1u, 10u)]));
}

