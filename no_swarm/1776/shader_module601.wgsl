struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_3(-955f);
    var var_1 = select(vec4<bool>(!(reverseBits(arg_0) < 1i), true, select(true, (4294967295u > u_input.a.x) | all(vec3<bool>(true, true, false)), any(vec3<bool>(false, true, false))), any(vec2<bool>(true, true))), !vec4<bool>(any(vec2<bool>(true, false)), !(arg_0 >= -14887i), false, true), true);
    var var_2 = Struct_2(1273f);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0, -25211i), ~(~(-11594i)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1031f)))))));
    return select(vec2<bool>(!var_1.x && !(!var_1.x), !var_1.x), var_1.yy, !var_1.wy);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(vec2<i32>(-1i, -1i), 28605i, select(func_3(~(-2147483647i), abs(u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(max(-540f, -279f)), _wgslsmith_f_op_f32(step(-627f, 150f)), _wgslsmith_f_op_f32(step(328f, 793f)))), vec2<bool>(true, true), firstTrailingBit(u_input.a.x) <= ~69049u), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(~u_input.a.x), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 48766u, u_input.a.x), vec3<u32>(6453u, u_input.a.x, u_input.a.x)) >> (51930u % 32u), u_input.a.x), ~vec4<u32>(u_input.a.x & u_input.a.x, 1u, u_input.a.x, u_input.a.x ^ 47263u), ~countOneBits(vec4<u32>(0u, u_input.a.x, 4294967295u, 4294967295u)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 3442u)), vec4<u32>(67111u, 15590u, 0u, 1u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-425f)))));
    let var_1 = vec3<i32>(-22289i, 0i, _wgslsmith_clamp_i32(reverseBits(~1i), 1i, var_0.a.x));
    var var_2 = select(vec3<u32>(firstTrailingBit(1u), 4294967295u, ~reverseBits(u_input.a.x)), ~u_input.a, vec3<bool>(true, true, _wgslsmith_f_op_f32(var_0.e + -176f) > -235f));
    var_2 = ~u_input.a;
    let var_3 = var_0.d.wx;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.e))));
}

fn func_1() -> vec3<f32> {
    let var_0 = func_2();
    var var_1 = Struct_2(187f);
    let var_2 = countOneBits(vec2<u32>(firstTrailingBit(4294967295u), 82958u));
    let var_3 = abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~_wgslsmith_div_u32(87024u, 1u), var_2.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(54227u, 1u, 1u), vec3<u32>(68852u, 4294967295u, var_2.x))), ~(~vec4<u32>(4294967295u, 4294967295u, 0u, 1u))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.a, var_0.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(666f, var_1.a))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a)), -718f))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a - var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1463f + _wgslsmith_f_op_f32(sign(-1912f))) * -1828f) - _wgslsmith_div_f32(-1847f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, 2200f)))), -1166f);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    let var_0 = firstLeadingBit(u_input.a.zz);
    var var_1 = countOneBits(_wgslsmith_div_vec2_i32(~(~select(arg_1.a, arg_1.a, arg_1.c)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a.x, -arg_1.b), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, arg_1.a.x), arg_1.a))));
    var_1 = _wgslsmith_clamp_vec2_i32(arg_1.a, countOneBits(-arg_1.a), max(arg_1.a, select(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.a, arg_1.a), reverseBits(arg_1.a)), arg_1.a, vec2<bool>(true, true))));
    var var_2 = !vec3<bool>(!(firstTrailingBit(arg_1.d.x) == (9271u << (arg_1.d.x % 32u))), true, arg_1.c.x);
    let var_3 = ~_wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, -1i, arg_1.b), vec3<i32>(var_1.x, arg_1.a.x, 1i)), select(arg_1.a.x, var_1.x, false), ~(-1i)), ~(-(~vec3<i32>(0i, var_1.x, arg_1.a.x))), -(~(-vec3<i32>(25961i, var_1.x, arg_1.b))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) - _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(trunc(arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = 0i;
    var var_2 = vec2<bool>(any(vec4<bool>(true, true, true, true)), !(!any(vec2<bool>(true, true))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(481f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f - _wgslsmith_f_op_f32(-811f + 372f)))), 1000f);
    let var_4 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 570f, var_3.x) + _wgslsmith_f_op_vec3_f32(func_1()))), Struct_4(select(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(-42307i, -64622i)), !any(vec2<bool>(var_2.x, var_2.x))), _wgslsmith_mod_i32(1i, -select(-1i, -31377i, var_2.x)), !vec2<bool>(all(vec2<bool>(var_2.x, true)), false), ~abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 10961u) | vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(var_3.x * -994f)), -1000f);
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(2147483647i));
}

