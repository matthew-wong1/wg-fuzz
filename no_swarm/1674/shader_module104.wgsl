struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(~firstLeadingBit(~vec3<u32>(0u, 22564u, u_input.a)), _wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(0u, u_input.a, 11343u))), ~vec3<u32>(0u, u_input.a, 4294967295u) >> (reverseBits(vec3<u32>(1u, u_input.a, u_input.a)) % vec3<u32>(32u)))), vec4<bool>(!arg_0, !select(false, true, any(vec3<bool>(false, arg_0, arg_0))), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, arg_0, false, false)), vec4<bool>(arg_0, arg_0, true, arg_0), !vec4<bool>(false, arg_0, arg_0, arg_0))), _wgslsmith_clamp_i32(60397i, 1i, ~62104i) < -2603i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1463f))), 1069f);
    var_0 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, countOneBits(56149u), _wgslsmith_div_u32(var_0.a.x, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), var_0.a & vec3<u32>(0u, 41610u, var_0.a.x))), ~_wgslsmith_div_vec3_u32(var_0.a, vec3<u32>(82321u, 76922u, var_0.a.x))), !var_0.b, var_0.c, 1110f);
    var_0 = Struct_1(vec3<u32>(select(_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(u_input.a, u_input.a, var_0.a.x)), 1u, var_0.b.x || true), 0u, 57583u), vec4<bool>(all(var_0.b) | all(vec2<bool>(false, true)), true, -_wgslsmith_clamp_i32(-888i, -17728i, 1i) >= ((i32(-1i) * -2147483647i) >> (0u % 32u)), arg_0), var_0.d, _wgslsmith_f_op_f32(-var_0.d));
    var_0 = Struct_1(abs(~select(var_0.a | vec3<u32>(var_0.a.x, 1u, 1u), var_0.a, !var_0.b.xww)), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(select(var_0.d, _wgslsmith_f_op_f32(trunc(-281f)), !arg_0))) * _wgslsmith_f_op_f32(var_0.d * var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d)) * var_0.d));
    var_0 = Struct_1(var_0.a, var_0.b, var_0.d, _wgslsmith_f_op_f32(-var_0.d));
    return 1f;
}

fn func_2() -> vec3<i32> {
    let var_0 = 15836i;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(974f, _wgslsmith_f_op_f32(func_3(false))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-401f, _wgslsmith_f_op_f32(574f * -910f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1347f, -263f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-329f, -200f)))))));
    let var_2 = Struct_3(all(vec2<bool>(all(vec2<bool>(false, false)) || true, true)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-412f + -696f))), any(vec2<bool>(var_2.a, false))))));
    var var_3 = Struct_3(var_1.x >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - 451f))));
    return -_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_0, 1i), min(var_0, -var_0), -1i ^ _wgslsmith_sub_i32(var_0, var_0)), vec3<i32>(_wgslsmith_mod_i32(var_0, var_0), firstLeadingBit(-var_0), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 1i, var_0, 10951i), vec4<i32>(var_0, -1i, -2147483647i, 41953i)), -2501i)));
}

fn func_1() -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(countOneBits(0i), _wgslsmith_clamp_i32(18938i, 8997i, -1i)), 2147483647i, 1i), _wgslsmith_sub_vec3_i32(func_2(), vec3<i32>(1i, 1i, 1i)) | max(vec3<i32>(0i, 26183i, -6012i), vec3<i32>(-45365i, 2147483647i, -24089i))), firstLeadingBit(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(-47789i, 13004i), abs(1i), ~(~(-91902i)))), _wgslsmith_clamp_i32(61436i, ~2147483647i, 1i));
    global0 = array<vec4<u32>, 3>();
    var var_1 = Struct_1(vec3<u32>(countOneBits(max(u_input.a, u_input.a) | (4294967295u ^ u_input.a)), reverseBits(countOneBits(_wgslsmith_add_u32(u_input.a, u_input.a))), u_input.a), vec4<bool>(all(vec2<bool>(true, true)), true, true, !all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), -607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1193f, -1000f, false)))) - _wgslsmith_f_op_f32(f32(-1f) * -406f))));
    global0 = array<vec4<u32>, 3>();
    var var_2 = var_0.x;
    return ~reverseBits(var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(func_1(), _wgslsmith_add_u32(u_input.a, u_input.a)) ^ 46467u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)))), ~(~firstLeadingBit(vec2<u32>(9390u, 4294967295u))), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1855f, 1292f, 1169f, 815f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1043f, -881f, -1325f, 312f)))))));
}

