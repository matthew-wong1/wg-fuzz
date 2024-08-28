struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> f32 {
    let var_0 = true;
    let var_1 = ~(~max(vec2<u32>(31346u, arg_0.a.x), ~arg_0.a.yz) >> (vec2<u32>(reverseBits(~0u), arg_0.a.x) % vec2<u32>(32u)));
    var var_2 = select(abs(min(arg_0.a, arg_0.a)), arg_0.a, (var_1.x >= 145655u) & arg_1.x);
    var_2 = vec4<u32>(~_wgslsmith_add_u32(select(firstLeadingBit(var_2.x), abs(4294967295u), true), arg_0.b), ~(~(~var_1.x)), reverseBits(~reverseBits(_wgslsmith_add_u32(var_1.x, 4294967295u))), ~arg_2.x);
    var_2 = abs(arg_2);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -929f))))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    var var_0 = arg_3.x;
    let var_1 = Struct_1(vec4<u32>(u_input.b.x & (u_input.c.x >> (1u % 32u)), _wgslsmith_sub_u32(max(u_input.c.x, u_input.a.x), min(u_input.b.x, 4294967295u)), u_input.c.x, _wgslsmith_sub_u32(~1u, 1u)) & vec4<u32>(u_input.c.x, 11833u, ~u_input.a.x, 48210u), 1u);
    var_0 = 1306f;
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = true;
    return _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(20370u, var_1.a.x, 4294967295u, 38954u)), _wgslsmith_add_vec4_u32(var_1.a, var_1.a)) >> (u_input.a.x % 32u)), 0u >> (1u % 32u), ~_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(u_input.b.x | var_1.b, ~4294967295u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_mod_i32(firstTrailingBit(-(~_wgslsmith_add_i32(-1i, 0i))), -2147483647i);
    var var_1 = arg_0;
    var_1 = Struct_1(~(vec4<u32>(~u_input.b.x, ~4294967295u, var_1.a.x, countOneBits(11845u)) << (var_1.a % vec4<u32>(32u))), max(arg_0.b & 18748u, 4294967295u));
    var_1 = arg_1;
    var var_2 = arg_1;
    return ~(_wgslsmith_mod_i32(-59500i, ~var_0) << (arg_2 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = 4273i;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -602f), _wgslsmith_f_op_f32(-345f + -785f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-797f, 172f) - vec2<f32>(-1125f, 751f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-175f, 795f) - vec2<f32>(1000f, 959f)))) * vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(1u, u_input.c.x, u_input.a.x, u_input.c.x), 0u), vec4<bool>(true, false, false, true), vec4<u32>(u_input.a.x, 0u, 37435u, 1962u))), _wgslsmith_f_op_f32(2255f * 206f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2283f, 1000f))));
    var var_2 = ~(~func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -1953f)), ~1114i, _wgslsmith_clamp_i32(35688i, -1i, 1i), vec3<f32>(var_1.x, 691f, -179f)) << (~(1u << (~u_input.a.x % 32u)) % 32u));
    let var_3 = ~0u;
    let var_4 = Struct_1(vec4<u32>(_wgslsmith_add_u32(var_3, 25343u), var_3, var_3, ~reverseBits(_wgslsmith_mult_u32(u_input.b.x, u_input.a.x))), _wgslsmith_mod_u32(~(~(~var_3)), var_3));
    var_2 = u_input.c.x;
    var var_5 = select(func_3(Struct_1(_wgslsmith_div_vec4_u32(var_4.a, var_4.a), var_4.b), var_4, min(u_input.a.x, ~1u), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)) <= -(2147483647i << ((var_3 & var_3) % 32u)), true, all(vec3<bool>(true, !all(vec4<bool>(true, true, true, false)), false)));
    var_0 = 1803i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(var_4.b, 35730u, 19264u)) << (abs(vec3<u32>(var_3, var_4.b, 1u)) % vec3<u32>(32u)), u_input.c), -21491i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1200f, var_1.x), var_1))))) + _wgslsmith_f_op_vec2_f32(-var_1)));
}

