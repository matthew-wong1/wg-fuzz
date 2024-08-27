struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
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

var<private> global0: array<vec4<f32>, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: u32) -> vec4<f32> {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_mult_i32(-2147483647i & arg_0, _wgslsmith_sub_i32(-38032i, max(0i, (u_input.a.x ^ 2147483647i) & max(2147483647i, u_input.a.x))));
    global0 = array<vec4<f32>, 24>();
    let var_2 = var_1;
    let var_3 = var_0;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1406f * _wgslsmith_f_op_f32(trunc(-703f))) + _wgslsmith_f_op_f32(f32(-1f) * -1262f)), 489f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(662f + 855f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, -1000f, -1418f, -1722f)) + vec4<f32>(_wgslsmith_f_op_f32(-162f - 400f), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-656f * -1320f), _wgslsmith_f_op_f32(floor(1111f)))) + _wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(arg_1, 24u)]))));
}

fn func_3() -> vec3<bool> {
    return select(select(vec3<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), true);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a.x, ~max(-15456i, u_input.a.x)), -u_input.a.yz);
    var var_1 = select(vec3<bool>(!arg_1.x, false, arg_1.x), func_3(), vec3<bool>(true, true, any(vec2<bool>(arg_1.x, arg_1.x)) | arg_1.x));
    var_1 = arg_1.zyw;
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec2_f32(step(arg_0.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_2, arg_0.x), var_2) - arg_0.yx))));
    return Struct_1(abs(_wgslsmith_add_vec4_i32(vec4<i32>(abs(59490i), u_input.a.x, ~(-2147483647i), _wgslsmith_sub_i32(u_input.a.x, -4741i)), ~(~u_input.a))), vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(26527u, 1u, 56774u), vec3<u32>(6766u, 30504u, 0u))), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(0u, 0u, 46336u, 4294967295u), ~vec4<u32>(65972u, 12534u, 4294967295u, 1u)), countOneBits(vec4<u32>(4294967295u, 40987u, 4294967295u, 28693u))), ~63701u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(-33325i, (_wgslsmith_mod_i32(~31233i, u_input.a.x >> (79936u % 32u)) <= 1i) || !all(vec2<bool>(false, false)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-402f)) * _wgslsmith_f_op_f32(1491f + -1259f)))) - _wgslsmith_div_f32(-1089f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-345f, 324f)) * _wgslsmith_f_op_f32(f32(-1f) * -3642f))))));
    var_0 = Struct_5(-16507i, -abs(-u_input.a.x) == -26953i);
    var_0 = Struct_5(_wgslsmith_clamp_i32(firstLeadingBit(var_0.a) >> (1u % 32u), ~(-1i), -_wgslsmith_clamp_i32(u_input.a.x, var_0.a << (4294967295u % 32u), u_input.a.x)), false);
    global0 = array<vec4<f32>, 24>();
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(func_1(var_0.a, 32494u)), vec4<bool>(true, var_0.b, false, true), -396f);
    global0 = array<vec4<f32>, 24>();
    var var_3 = !select(vec3<bool>(!(var_0.b | var_0.b), var_0.b, any(select(vec4<bool>(false, var_0.b, false, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, true, true, false)))), !(!select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, var_0.b, var_0.b))), !(!(!vec3<bool>(var_0.b, false, var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -var_0.a, firstLeadingBit(-u_input.a.x), _wgslsmith_mult_i32(min(-1i, var_2.a.x), ~u_input.a.x)), countOneBits(-34887i), var_0.a, _wgslsmith_add_i32(-u_input.a.x, 1i)));
}

