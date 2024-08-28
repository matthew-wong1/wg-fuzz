struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(countOneBits(countOneBits(u_input.e.yzw ^ ~vec3<i32>(-2147483647i, u_input.e.x, u_input.a.x))), ~min(-u_input.e.x, _wgslsmith_div_i32(1i, _wgslsmith_div_i32(u_input.a.x, u_input.e.x))), u_input.d, _wgslsmith_div_f32(152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -559f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1000f)))))));
    var var_1 = firstTrailingBit(u_input.a.x);
    var_1 = var_0.b | 29275i;
    var var_2 = firstTrailingBit(2147483647i);
    var var_3 = -((firstLeadingBit(var_0.a.x) << (~4294967295u % 32u)) & 1i);
    return -406f;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1793f, 883f, arg_2.d, -484f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1365f, 680f, arg_2.d, -871f), vec4<f32>(arg_3.d, 613f, 1039f, -1177f))))))), vec4<f32>(450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.d))), arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d))))));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d - _wgslsmith_f_op_f32(abs(-1085f))) * _wgslsmith_f_op_f32(-180f - var_0.x)))));
    let var_3 = arg_3;
    let var_4 = 16331u;
    return vec3<i32>(arg_3.b << ((~max(var_3.c, var_3.c) ^ _wgslsmith_mod_u32(1u, 54128u << (0u % 32u))) % 32u), 33606i, 0i);
}

fn func_2() -> bool {
    var var_0 = Struct_1(abs(func_4(~vec3<u32>(u_input.b, u_input.d, u_input.b), firstLeadingBit(1i), Struct_1(-vec3<i32>(u_input.a.x, u_input.e.x, 55518i), u_input.c.x, 52261u, _wgslsmith_div_f32(1327f, 652f)), Struct_1(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x) & vec3<i32>(-1290i, u_input.e.x, u_input.a.x), u_input.e.x, u_input.d, _wgslsmith_f_op_f32(func_3())))), u_input.e.x | _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.e.xz, u_input.c), -1i), firstTrailingBit(abs(vec2<i32>(u_input.e.x, -45882i)))), 875u & (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(784u, u_input.d), vec2<u32>(u_input.b, 19749u)), ~1u) & ~(u_input.b >> (u_input.d % 32u))), _wgslsmith_f_op_f32(func_3()));
    var_0 = Struct_1(vec3<i32>(u_input.a.x, abs(~2797i), var_0.b | 2147483647i), u_input.c.x, _wgslsmith_mod_u32(4294967295u, 14891u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d, 1984f)));
    var_1 = var_0.d;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.d)), var_0.d));
    return true;
}

fn func_1() -> StorageBuffer {
    var var_0 = u_input.e.x;
    var_0 = u_input.c.x;
    var var_1 = vec4<bool>(true && any(vec2<bool>(true, true)), all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))) || false, false, !(!func_2()));
    let var_2 = var_1.x;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(213f, -1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -360f)))));
    return StorageBuffer(-1245f, 1i, vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-var_3), var_3, -1481f), _wgslsmith_sub_u32(1u >> (u_input.b % 32u), _wgslsmith_add_u32(0u, u_input.d)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(1000f - var_3), -655f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3, -925f, 683f)))), all(!select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, false, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.x | _wgslsmith_mult_i32(abs(-(~(-1i))), _wgslsmith_dot_vec2_i32(-(~u_input.c), vec2<i32>(u_input.e.x, -25635i)));
    var var_1 = var_0;
    let x = u_input.a;
    s_output = func_1();
}

