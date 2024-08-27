struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_3;
    let var_1 = -_wgslsmith_clamp_i32(arg_0.a, -1i, _wgslsmith_mod_i32(arg_0.a, -2147483647i));
    let var_2 = arg_0;
    let var_3 = firstLeadingBit(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-15880i, arg_0.a), vec2<i32>(-12099i, 1188i)), -var_2.a) & (_wgslsmith_div_i32(var_1, -var_1) << (min(_wgslsmith_div_u32(4294967295u, 16003u), u_input.a) % 32u)));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.a));
    return _wgslsmith_div_u32(25448u, 1u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~arg_1.a.x;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(floor(1f)), -1000f, arg_0.x);
    var var_2 = 97839u;
    var_2 = 1u;
    var_2 = firstLeadingBit(1u);
    return (max(_wgslsmith_clamp_u32(22474u, u_input.a, 4294967295u), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, var_0))) ^ min(var_0, 48475u)) << (_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_1.c.x, 1u, 0u, u_input.a) << (arg_1.c % vec4<u32>(32u))) | vec4<u32>(~4773u, 39949u, _wgslsmith_mod_u32(var_0, 1u), ~0u), vec4<u32>(arg_1.a.x << ((0u | u_input.a) % 32u), var_0, ~(~u_input.a), _wgslsmith_sub_u32(_wgslsmith_mod_u32(111734u, arg_1.c.x), func_3(Struct_5(1i, var_1, arg_0.wxy), 4294967295u, vec3<bool>(arg_1.b.x, false, true), Struct_3(vec3<f32>(-204f, var_1.b, var_1.a)))))) % 32u);
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_2(33663u & (_wgslsmith_mult_u32(u_input.a >> (79560u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(45304u, 95417u))) >> (func_2(_wgslsmith_f_op_vec4_f32(select(arg_2, vec4<f32>(arg_2.x, -1780f, -458f, -908f), false)), Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<bool>(true, false, false), vec4<u32>(36432u, u_input.a, u_input.a, u_input.a))) % 32u)));
    var_0 = Struct_2(u_input.a);
    let var_1 = vec2<u32>(23996u, 0u);
    let var_2 = Struct_1(vec2<u32>(var_1.x, u_input.a) << (~firstLeadingBit(var_1) % vec2<u32>(32u)), select(vec3<bool>(false, false | all(vec3<bool>(true, true, true)), true), vec3<bool>(all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, true)), select(true, true, true)), !select(true, select(true, false, true), 863f < arg_2.x)), ~(((vec4<u32>(4294967295u, u_input.a, 38742u, var_0.a) ^ vec4<u32>(var_0.a, var_0.a, 10905u, var_0.a)) | vec4<u32>(var_1.x, 0u, var_0.a, 50935u)) >> (vec4<u32>(min(0u, u_input.a), 10077u, 77410u >> (u_input.a % 32u), _wgslsmith_mod_u32(0u, u_input.a)) % vec4<u32>(32u))));
    var var_3 = 52708u;
    return Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1551f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + _wgslsmith_f_op_f32(arg_2.x * arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec2<i32>(-1i) * -vec2<i32>(select(56828i, 41791i, false), ~(-17220i))) & -countOneBits(vec2<i32>(-1i, ~(-1i)));
    var var_1 = func_1(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1774f)) * 1429f), 1434f, _wgslsmith_f_op_f32(758f + -1841f)), var_0.x >> (1u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(-257f, _wgslsmith_f_op_f32(223f + -1000f))), 1000f) + vec4<f32>(1000f, _wgslsmith_div_f32(-1884f, _wgslsmith_f_op_f32(floor(-826f))), 1016f, 632f)));
    var_1 = func_1(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(203f, 436f, false)) * _wgslsmith_f_op_f32(select(-1000f, var_1.a.x, false)))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, var_1.a.x) + _wgslsmith_f_op_f32(-376f + var_1.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))), -2147483647i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -598f, var_1.a.x, var_1.a.x)) + vec4<f32>(var_1.a.x, -1211f, 510f, 1378f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.a - var_1.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.x, var_1.a.x, -229f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 715f, 181f) * vec3<f32>(-1941f, -285f, var_1.a.x))), var_1.a, true & (var_0.x < 1i))))), _wgslsmith_f_op_f32(sign(-829f)), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(var_0.x, var_0.x, 35790i, var_0.x), select(vec4<i32>(0i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, -18639i, -19037i, var_0.x), true), any(vec3<bool>(true, false, false))), select(-vec4<i32>(var_0.x, var_0.x, var_0.x, 0i), vec4<i32>(var_0.x, var_0.x, -74743i, var_0.x), vec4<bool>(true, true, true, true))) | countOneBits(var_0.x), u_input.a);
}

