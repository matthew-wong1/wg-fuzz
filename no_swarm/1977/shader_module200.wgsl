struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = Struct_1(u_input.c.x);
    var var_1 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b) | vec4<i32>(-1i, u_input.b, u_input.a.x, u_input.b), ~vec4<i32>(u_input.a.x, 0i, 2147483647i, -2147483647i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(14696i, u_input.b, 5543i, -7195i), vec4<i32>(u_input.b, u_input.a.x, u_input.b, -15919i) >> (vec4<u32>(var_0.a, arg_0, 0u, var_0.a) % vec4<u32>(32u))), vec4<i32>((1824i & u_input.b) << (~u_input.c.x % 32u), ~firstLeadingBit(-27102i), u_input.a.x, 0i));
    let var_2 = var_0;
    var_1 = u_input.a.x;
    var_1 = select(u_input.b, _wgslsmith_dot_vec3_i32(u_input.a & ~vec3<i32>(u_input.a.x, -2147483647i, 11855i), vec3<i32>(firstTrailingBit(3393i), u_input.a.x, u_input.b)), true) ^ -1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-775f * _wgslsmith_f_op_f32(min(-1858f, -841f)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1998f * -366f) + _wgslsmith_f_op_f32(floor(138f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(310f * -292f)), _wgslsmith_f_op_f32(trunc(-568f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, -946f, arg_2.x)))))));
    return _wgslsmith_f_op_f32(floor(2246f));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = any(!select(select(vec2<bool>(false, arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), arg_1), vec2<bool>(true, arg_1)), !vec2<bool>(arg_1, false), !vec2<bool>(arg_1, arg_1)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_1(~0u), vec3<u32>(49272u, 16640u, 4294967295u), !select(vec2<bool>(arg_1, true), vec2<bool>(true, var_0), false), arg_2)), _wgslsmith_f_op_f32(arg_0.x + -1247f), any(select(!vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(var_0, false, false), vec3<bool>(false, true, true), vec3<bool>(var_0, false, true)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, 444f), _wgslsmith_f_op_f32(step(-895f, arg_0.x)))))), 354f);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, 829f, _wgslsmith_f_op_f32(-var_1.x)))));
    var var_2 = true && all(vec3<bool>((-2147483647i >= u_input.a.x) || true, arg_1, all(select(vec2<bool>(true, arg_1), vec2<bool>(true, var_0), var_0))));
    var_2 = false;
    return true == all(select(select(select(vec3<bool>(false, true, arg_1), vec3<bool>(true, arg_1, arg_1), var_0), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(var_0, var_0, false), arg_1)), vec3<bool>(any(vec4<bool>(arg_1, true, false, true)), !var_0, !var_0), vec3<bool>(true, true, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(38162u, u_input.c.x)) * _wgslsmith_f_op_f32(step(154f, 579f)))))), -217f);
    let var_1 = var_0.x;
    var var_2 = u_input.a.x;
    let var_3 = ~(~32082u);
    let var_4 = var_0.x;
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-455f, -526f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(f32(-1f) * -1357f))))), ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_5, u_input.c.x, var_5, 4294967295u), abs(vec4<u32>(var_5, u_input.c.x, 1u, 1u)), func_2(vec4<f32>(1217f, var_0.x, -263f, var_0.x), false, Struct_1(34296u), Struct_1(7069u))), reverseBits(~vec4<u32>(var_5, 4294967295u, var_5, var_3))));
}

