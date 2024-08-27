struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    var var_0 = !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), true), !vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), false));
    let var_1 = 0i;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(697f * -1591f), 1f), -840f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2291f), _wgslsmith_f_op_f32(-924f - _wgslsmith_f_op_f32(f32(-1f) * -2463f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1390f))));
    let var_3 = Struct_1(_wgslsmith_mult_i32(~arg_1.x & countOneBits(firstTrailingBit(arg_1.x)), max(2147483647i, u_input.a) | -22094i));
    var_0 = !select(!vec4<bool>(true, var_0.x & var_0.x, true, true), select(!select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, true, false, true), false), vec4<bool>(true, var_0.x, true, all(var_0.zww)), !(!vec4<bool>(var_0.x, var_0.x, true, var_0.x))), select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x)), !vec4<bool>(false, true, var_0.x, var_0.x)), !vec4<bool>(true, true, var_0.x, false), any(!vec2<bool>(var_0.x, true))));
    return ~12358u;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = vec3<u32>(arg_0.x, 31684u, arg_0.x);
    var_0 = vec3<u32>(arg_0.x, reverseBits(8791u), 0u);
    var_0 = vec3<u32>(select(arg_0.x, arg_0.x, false), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 24124u) >> (countOneBits(vec3<u32>(arg_0.x, var_0.x, var_0.x)) % vec3<u32>(32u)), vec3<u32>(1u, 4294967295u >> (0u % 32u), arg_0.x)) >> (~(func_3(-20634i, u_input.b) ^ (35060u ^ arg_0.x)) % 32u), _wgslsmith_mult_u32(var_0.x, 46054u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))));
    var_0 = select(vec3<u32>(arg_0.x, arg_0.x, _wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, arg_0.x, 0u, var_0.x), vec4<u32>(4294967295u, 42077u, 4294967295u, 21459u))) ^ var_0.x), abs(vec3<u32>(_wgslsmith_add_u32(var_0.x, 4294967295u), var_0.x, func_3(_wgslsmith_mod_i32(-87557i, -19302i), max(u_input.e, u_input.e)))), false);
    return _wgslsmith_mult_i32(~u_input.d.x >> (4294967295u % 32u), _wgslsmith_div_i32(u_input.b.x, u_input.d.x));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = Struct_1(-3734i);
    var_1 = Struct_1(firstTrailingBit(func_2(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 77866u), ~vec2<u32>(33550u, 0u)))));
    var_1 = Struct_1(var_1.a);
    var var_2 = Struct_1(u_input.b.x);
    return Struct_1(-33893i);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f * 1120f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1677f, 1119f) * vec2<f32>(-174f, 686f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-350f, 1055f), vec2<f32>(849f, 1406f))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(1587f)), _wgslsmith_f_op_f32(trunc(140f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(select(2147483647i, reverseBits(-u_input.a), any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))))), _wgslsmith_div_u32(reverseBits(1u), 1u));
}

