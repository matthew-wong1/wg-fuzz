struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    return true;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> vec4<bool> {
    return !vec4<bool>(true, false, false, func_3(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) | true);
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = select(select(vec4<bool>(u_input.c.x >= -1432i, select(true, u_input.c.x == u_input.c.x, all(vec3<bool>(false, true, true))), true, ~1u <= u_input.b), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(arg_0.x, vec2<i32>(-2147483647i, 47426i), u_input.c.x, 1u)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, false, true), any(vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, any(vec4<bool>(false, true, true, true)), true)), !vec4<bool>(arg_0.x < -615f, func_2(1015f, vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.x, 4294967295u).x, true, arg_0.x <= arg_0.x), 128f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x)), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(abs(u_input.a) <= _wgslsmith_mult_u32(u_input.a, 28929u), !all(vec4<bool>(false, false, true, true)), all(vec2<bool>(true, false)), select(true, false, true)), func_2(_wgslsmith_div_f32(1053f, _wgslsmith_f_op_f32(arg_0.x - 982f)), ~vec2<i32>(-26329i, -46946i), i32(-1i) * -u_input.c.x, u_input.b)));
    var_0 = !vec4<bool>(var_0.x, any(vec2<bool>(var_0.x, false)) | true, 23813i >= -u_input.d, var_0.x);
    let var_1 = vec4<u32>(~firstTrailingBit(~11646u), ~u_input.b ^ u_input.a, min(35520u, u_input.a), 24150u);
    var_0 = select(vec4<bool>(false, any(vec3<bool>(var_0.x, false, false)) == all(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true || ((var_0.x & false) & true), var_0.x), !select(!(!vec4<bool>(false, true, var_0.x, true)), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, true, true))), !var_0.x != false), var_0.x);
    var var_2 = var_0.x;
    return all(var_0.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b), firstLeadingBit(vec4<u32>(39492u, u_input.b, 24899u, u_input.a))), vec4<u32>(select(u_input.a, 1u, true), min(1u, ~1u), _wgslsmith_mod_u32(u_input.b, ~21870u), 41300u), func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(f32(-1f) * -1210f), 1420f, _wgslsmith_f_op_f32(f32(-1f) * -1353f)))), u_input.c.x ^ u_input.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f)), 533f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1057f)), _wgslsmith_f_op_f32(464f + -518f)), _wgslsmith_f_op_f32(-767f - _wgslsmith_f_op_f32(1982f + -851f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2818f, 427f, 636f, 1478f) - vec4<f32>(-825f, 462f, -1328f, -256f)))), !(!func_3(vec4<u32>(173529u, u_input.b, u_input.a, u_input.a))) && true, true);
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, _wgslsmith_mod_u32(u_input.a, ~u_input.b), _wgslsmith_dot_vec4_u32(var_0.a, firstTrailingBit(var_0.a)), ~(~4294967295u)), ~(_wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(u_input.a, var_0.a.x, 4294967295u, 0u)) >> (vec4<u32>(var_0.a.x, u_input.b, var_0.a.x, 8884u) % vec4<u32>(32u)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), u_input.c.x), var_0.c, func_3(~(~vec4<u32>(u_input.b, var_0.a.x, 62549u, 0u))), true);
    var var_2 = var_1;
    let var_3 = vec3<bool>(!(!select(false, var_1.d, true) || false), true, all(select(func_2(var_0.c.x, -vec2<i32>(-6033i, var_2.b), 1i, var_0.a.x & var_0.a.x).wz, vec2<bool>(var_2.b == u_input.d, false | var_1.e), var_2.d)));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)), _wgslsmith_f_op_vec4_f32(floor(var_2.c)));
    var var_5 = !var_2.d;
    var var_6 = Struct_2(var_1, Struct_1(vec4<u32>(1u, min(abs(var_1.a.x), var_2.a.x), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_1.a.x, 1u), var_2.a)), _wgslsmith_dot_vec4_u32(var_2.a & vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, 36243u), vec4<u32>(var_0.a.x, 4294967295u, var_1.a.x, var_0.a.x) & vec4<u32>(u_input.b, var_1.a.x, 0u, 7893u))), _wgslsmith_div_i32(var_1.b, -28758i), _wgslsmith_f_op_vec4_f32(-var_1.c), true, !var_1.e), vec3<bool>(var_2.d, false, true), vec3<bool>(var_3.x, !var_0.d, !var_1.e), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(var_2.a.x, ~var_1.a.x, func_2(151f, u_input.c.ww, 17375i, 4294967295u).x)));
}

