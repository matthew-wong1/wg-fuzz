struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = ~u_input.b.x;
    var var_2 = Struct_2(select(!(!select(vec3<bool>(var_0.c.a, arg_0.c.a, false), vec3<bool>(false, false, false), vec3<bool>(false, false, arg_1.a))), select(!vec3<bool>(true, var_0.c.a, true), select(!vec3<bool>(true, arg_1.a, false), select(vec3<bool>(arg_0.c.a, true, var_0.c.a), vec3<bool>(false, var_0.c.a, arg_1.a), vec3<bool>(true, var_0.c.a, var_0.c.a)), select(vec3<bool>(var_0.c.a, var_0.c.a, arg_1.a), vec3<bool>(var_0.c.a, arg_1.a, true), true)), vec3<bool>(arg_1.a, any(vec3<bool>(false, false, true)), any(vec3<bool>(arg_1.a, arg_0.c.a, true)))), select(vec3<bool>(all(vec4<bool>(false, true, arg_0.c.a, arg_1.a)), var_0.c.a, !arg_1.a), select(!vec3<bool>(arg_0.c.a, true, true), vec3<bool>(arg_0.c.a, false, false), select(vec3<bool>(var_0.c.a, var_0.c.a, arg_1.a), vec3<bool>(var_0.c.a, var_0.c.a, var_0.c.a), arg_1.a)), !arg_0.c.a)), arg_0.c);
    return _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, 1i), ~(-2147483647i), -2147483647i) << (firstTrailingBit(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.c.b, 58489u), firstTrailingBit(var_0.a))) % 32u);
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(true, ~(1u & u_input.b.x));
    var var_1 = u_input.b.x;
    let var_2 = Struct_3(_wgslsmith_add_u32(var_0.b, 43293u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-394f, -1682f, -1443f, -1783f) - vec4<f32>(477f, 1332f, -1335f, -959f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 206f, 609f, -734f)), vec4<f32>(439f, -342f, 549f, -455f), true)))), var_0);
    return vec4<i32>(firstTrailingBit(~(i32(-1i) * -1i)), 62993i, _wgslsmith_dot_vec3_i32(-(~min(u_input.a.zxw, u_input.a.wwz)), vec3<i32>(func_3(Struct_3(0u, var_2.b, Struct_1(var_2.c.a, 1u)), Struct_1(var_2.c.a, 0u)), -2147483647i, _wgslsmith_dot_vec3_i32(u_input.a.yyy, u_input.a.www))), abs(_wgslsmith_div_i32(u_input.a.x, u_input.a.x)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(134f * 888f)) + _wgslsmith_f_op_f32(floor(-748f))))) - -1252f);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-645f)), -162f));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1880f, -289f) * _wgslsmith_f_op_f32(f32(-1f) * -806f)) + _wgslsmith_f_op_f32(806f * _wgslsmith_div_f32(-1436f, 497f))))));
    var var_1 = -_wgslsmith_clamp_vec4_i32(u_input.a, -func_2(), vec4<i32>(i32(-1i) * -1i, u_input.a.x | u_input.a.x, u_input.a.x, ~9079i) << (~vec4<u32>(0u, 0u, 1u, 1u) % vec4<u32>(32u)));
    let var_2 = -firstLeadingBit(select(-select(u_input.a, vec4<i32>(39732i, var_1.x, u_input.a.x, u_input.a.x), true), u_input.a, any(vec4<bool>(true, true, true, true))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(func_1(), ~u_input.a.x);
    let var_1 = Struct_1(all(vec3<bool>(true, true | (-2147483647i <= u_input.a.x), (u_input.a.x | u_input.a.x) <= (u_input.a.x ^ u_input.a.x))), 19762u >> ((u_input.b.x >> (u_input.b.x % 32u)) % 32u));
    var_0 = 14590i;
    var_0 = func_3(Struct_3(84565u, vec4<f32>(_wgslsmith_f_op_f32(2169f * _wgslsmith_f_op_f32(f32(-1f) * -1622f)), 1f, -720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1281f)))), var_1), Struct_1(!(!var_1.a), _wgslsmith_mod_u32(~var_1.b | u_input.b.x, 1u | (var_1.b >> (1u % 32u)))));
    let var_2 = Struct_1(any(select(vec3<bool>(all(vec4<bool>(var_1.a, true, false, var_1.a)), !var_1.a, !var_1.a), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), true))), var_1.b);
    var_0 = reverseBits(-24101i);
    let var_3 = ~_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~u_input.b, firstLeadingBit(vec2<u32>(u_input.b.x, var_2.b))), ~u_input.b.x & 33141u), var_2.b);
    var_0 = abs(abs(~(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-166f, 1000f, -218f, _wgslsmith_f_op_f32(-664f + -1706f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1180f, 322f, 295f, -518f) + vec4<f32>(-288f, 426f, 848f, -257f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-529f, 167f)), -854f, _wgslsmith_f_op_f32(f32(-1f) * -1920f)))), 5141u);
}

