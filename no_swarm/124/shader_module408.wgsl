struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    return !select(vec3<bool>(true, true, true), vec3<bool>((8721u & arg_1.a) != (4294967295u ^ arg_2.a), true, arg_0.x > arg_0.x), vec3<bool>(true, all(vec2<bool>(true, true)), false));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    var var_0 = !select(select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, true, arg_0), !vec3<bool>(false, true, arg_0)), !func_2(vec2<f32>(-712f, -1654f), Struct_2(arg_3), Struct_2(u_input.d.x)), !arg_0 != (arg_0 | arg_0)), select(vec3<bool>(u_input.b.x >= u_input.a.x, true, true), vec3<bool>(true, true, true), arg_0), ((arg_1 ^ -2147483647i) >> (u_input.d.x % 32u)) > _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_1, -7468i, 2147483647i), arg_2.a.x));
    let var_1 = Struct_1(-595f, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(9179u, 4294967295u, u_input.d.x)), ~u_input.d.x >> (~1u % 32u)), (arg_3 & (11821u >> (arg_3 % 32u))) ^ 13052u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-274f, -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-186f)) - -1000f)))), -(~(~2147483647i)));
    let var_2 = arg_2;
    var var_3 = var_1;
    var_0 = !vec3<bool>((all(vec4<bool>(true, var_0.x, arg_0, true)) | var_0.x) || (firstTrailingBit(var_3.b.x) >= (u_input.d.x | 93571u)), true, !all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(arg_2);
    var var_1 = all(!(!select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1)), func_2(vec2<f32>(arg_0.c, arg_0.a), var_0, var_0).zx, vec2<bool>(false, false))));
    var_1 = true && !((true & any(vec2<bool>(false, arg_1))) != func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(286f, 111f)), Struct_2(arg_0.b.x), var_0).x);
    let var_2 = var_0;
    var_1 = all(func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -821f)))), Struct_2(var_0.a), Struct_2(~var_0.a << (_wgslsmith_div_u32(arg_2, arg_2) % 32u))));
    return Struct_1(_wgslsmith_div_f32(func_1(arg_1, 0i, Struct_3(min(vec3<i32>(u_input.b.x, arg_0.d, arg_0.d), vec3<i32>(-2147483647i, -2147483647i, 0i))), 0u).a, 990f), vec2<u32>(countOneBits(2659u), ~(var_0.a & arg_2)) | ~_wgslsmith_add_vec2_u32(arg_0.b, vec2<u32>(var_0.a, var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1886f * 2793f)))), reverseBits(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-40653i, 12340i, arg_0.d, -32249i), vec4<i32>(arg_0.d, u_input.c.x, 1i, 1i)) ^ u_input.c.x, ~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_1(true, -1i, Struct_3(_wgslsmith_div_vec3_i32(min(u_input.c, vec3<i32>(24138i, u_input.b.x, u_input.c.x)), select(vec3<i32>(0i, u_input.c.x, -13477i), vec3<i32>(-50681i, u_input.a.x, u_input.b.x), true))), max(0u, u_input.d.x)), true, 35158u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.c, -826f)))))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, 341f, var_0.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -197f, -1434f) + vec3<f32>(var_0.c, var_0.a, 2085f)))))), ~vec4<i32>(1i, ~(-10529i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, -2147483647i, u_input.a.x, 25128i), select(vec4<i32>(u_input.a.x, u_input.b.x, u_input.c.x, -29178i), vec4<i32>(u_input.b.x, var_0.d, var_0.d, -1i), vec4<bool>(false, true, false, true))), u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(-324f - _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(round(var_0.c)))), _wgslsmith_f_op_f32(round(var_0.c)), -913f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(749f)) * var_0.a)))));
}

