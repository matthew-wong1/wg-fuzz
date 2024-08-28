struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> u32 {
    let var_0 = u_input.b;
    var var_1 = ~(~_wgslsmith_mult_u32(u_input.d, u_input.d));
    var var_2 = false && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-917f)) * -777f), _wgslsmith_f_op_f32(f32(-1f) * -949f)) <= 1239f);
    return ~(_wgslsmith_div_u32(var_0, 36555u) >> (var_0 % 32u));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_1(any(!select(!vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), true)), _wgslsmith_f_op_f32(f32(-1f) * -283f));
    let var_1 = firstLeadingBit(firstTrailingBit(abs(u_input.c)));
    let var_2 = vec4<u32>(u_input.b, 1u, 0u, u_input.b) ^ (firstTrailingBit(_wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, u_input.d, 12110u, 4294967295u), vec4<u32>(u_input.a, u_input.d, u_input.d, 51691u)), vec4<u32>(u_input.a, u_input.b, u_input.a, 5837u))) >> (abs(vec4<u32>(~u_input.a, u_input.d | u_input.b, 6835u, ~u_input.d)) % vec4<u32>(32u)));
    let var_3 = var_0;
    var var_4 = Struct_2(reverseBits(i32(-1i) * -(~(-2147483647i))), ~vec3<u32>(~(~73137u), 8568u << (~u_input.d % 32u), min(var_2.x, ~u_input.b)));
    return ~(~36608u);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_2(u_input.c, ~vec3<u32>(func_2(), ~20428u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<u32>(u_input.a, 30061u, 60279u, u_input.a))) & vec3<u32>(~0u << (u_input.d % 32u), func_3(all(vec3<bool>(false, arg_0, true))), ~u_input.a));
    return Struct_1(true || any(select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, arg_0), !arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1362f, -665f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 48668i;
    var var_1 = 1u;
    var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(602f)))));
    let var_3 = func_1(true);
    let var_4 = !all(!(!(!vec4<bool>(true, var_3.a, false, false))));
    var var_5 = vec3<i32>(var_0, ~(~(-2456i) & (var_0 | 11082i)), reverseBits(1354i)) | ~vec3<i32>(max(u_input.e.x, 12212i) ^ 32907i, -30278i, -(var_0 & 1i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 899f, _wgslsmith_sub_u32(26094u, 22730u), _wgslsmith_add_vec4_u32(vec4<u32>(78705u, u_input.b, ~(~137389u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, 69330u, u_input.b, 0u), vec4<u32>(u_input.d, 23088u, u_input.a, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(539u, 4294967295u, 38567u, 1u), vec4<u32>(33879u, 16059u, u_input.a, u_input.a)))), vec4<u32>(func_2(), u_input.d, u_input.d, u_input.b)));
}

