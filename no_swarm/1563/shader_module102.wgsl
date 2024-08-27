struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_add_i32(~arg_2.x, arg_2.x);
    global0 = array<vec3<bool>, 16>();
    var var_1 = ~(u_input.a.x ^ arg_0.x) | ~u_input.a.x;
    var var_2 = u_input.b;
    var_1 = ~arg_1.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -857f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(838f)), _wgslsmith_f_op_f32(max(-1000f, 1000f))) * -2554f)));
}

fn func_3() -> i32 {
    global0 = array<vec3<bool>, 16>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec3_u32(u_input.b.xzx, vec3<u32>(24414u, 22431u, 4294967295u) ^ ~vec3<u32>(u_input.a.x, 21278u, 1u)), ~select(abs(vec2<u32>(29713u, 24717u)), u_input.b.wy, vec2<bool>(true, true)), _wgslsmith_add_vec3_i32(max(vec3<i32>(-1i, 1i, -33446i), vec3<i32>(10658i, -28853i, 11032i)), vec3<i32>(1i, 1i, 1i)) << (u_input.a.zzx % vec3<u32>(32u)))), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 44979i), vec2<i32>(13588i, 1i)), -2147483647i), firstTrailingBit(-vec2<i32>(33424i, 15820i))), vec4<i32>(abs(i32(-1i) * -4043i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, 2147483647i), 39445i), 47163i, -17994i), select(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, false), vec4<bool>(true, true, true, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(true, any(vec3<bool>(false, false, false)))), vec4<i32>(_wgslsmith_add_i32(-(-68573i >> (1u % 32u)), _wgslsmith_clamp_i32(-1i, 1i, -43341i) << (u_input.a.x % 32u)), abs(_wgslsmith_clamp_i32(2147483647i, 1i, ~(-1i))), _wgslsmith_add_i32(-abs(25793i), -_wgslsmith_add_i32(1i, 31271i)), min(-13791i, -2147483647i)), -2147483647i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(751f + var_0.a), _wgslsmith_f_op_f32(-var_0.a)))))) * -1425f);
    global0 = array<vec3<bool>, 16>();
    var var_2 = var_0.a;
    return 9333i;
}

fn func_2(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_mod_i32(-41456i, func_3());
    return _wgslsmith_f_op_f32(max(-484f, 1f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a.wyx, u_input.b.ww, vec3<i32>(-57684i, 0i, 1i))))))), vec3<u32>(~select(u_input.a.x ^ u_input.a.x, u_input.b.x | u_input.a.x, true), ~(~(1u >> (u_input.b.x % 32u))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, 1u) | u_input.b.x, u_input.b.x, ~u_input.b.x)), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(30570u, 18740u)), u_input.b.wz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(551f * -667f), all(vec3<bool>(true, false, false))))) + -1463f));
}

