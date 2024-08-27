struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_3(vec3<i32>(17440i >> (_wgslsmith_div_u32(u_input.c.x, 68115u << (u_input.d % 32u)) % 32u), -1i << (1u % 32u), 2147483647i), ~(~countOneBits(~vec4<u32>(u_input.d, 40572u, 0u, u_input.d))));
    let var_1 = var_0.b.x & (var_0.b.x ^ 0u);
    let var_2 = var_0;
    let var_3 = ~firstTrailingBit(var_2.a.x);
    let var_4 = ~(-1i);
    return true;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-665f - -1000f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(534f, 1000f), _wgslsmith_f_op_f32(floor(825f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -493f))), _wgslsmith_f_op_f32(-110f + -155f), 437f));
    let var_1 = !select(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true), !vec2<bool>(true, u_input.a == 1i), !vec2<bool>(-7630i <= u_input.b.x, func_3(var_0.x, u_input.b.zz)));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + -291f), -766f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) - -1141f), _wgslsmith_div_f32(270f, _wgslsmith_f_op_f32(-989f - _wgslsmith_f_op_f32(trunc(-513f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - -686f)) + -1308f), -571f));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(ceil(547f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(var_0.x, 745f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-803f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -575f))))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f - _wgslsmith_f_op_f32(var_0.x + 1447f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-733f - var_0.x))))));
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f * var_0.x)), var_0.x, true)), var_0.x), _wgslsmith_f_op_f32(abs(var_0.x)), -146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, -994f)), 141f)))));
    return Struct_3(vec3<i32>(-select(u_input.a >> (0u % 32u), u_input.a, arg_0.x == 4294967295u), -u_input.b.x, _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(u_input.a, u_input.a), 1i | (u_input.b.x | 7403i), u_input.b.x)), firstLeadingBit(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, arg_0.x, 51597u, u_input.d), vec4<u32>(arg_0.x, 4294967295u, 1u, arg_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(65553u, arg_0.x, 57958u, 4294967295u) & vec4<u32>(45075u, u_input.c.x, u_input.c.x, 21237u), _wgslsmith_clamp_vec4_u32(vec4<u32>(26188u, arg_0.x, 7217u, 15046u), vec4<u32>(arg_0.x, 46507u, 0u, 14599u), vec4<u32>(51871u, arg_0.x, u_input.c.x, u_input.c.x))))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_3(vec3<i32>(-1i) * -vec3<i32>(select(u_input.a, u_input.a, arg_2.b.x), ~arg_1, select(u_input.b.x, 23381i, true)), abs(abs(min(vec4<u32>(4294967295u, arg_0, arg_0, arg_3.x), arg_2.a)) & (arg_2.a << (vec4<u32>(u_input.c.x, arg_2.a.x, 50940u, arg_0) % vec4<u32>(32u)))));
    var_0 = func_2(var_0.b.xxy);
    let var_1 = u_input.b.yx;
    var_0 = Struct_3(~(~(vec3<i32>(-1i) * -vec3<i32>(var_0.a.x, -5127i, var_1.x))), var_0.b);
    var var_2 = u_input.c;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(func_1(7392u, u_input.a, Struct_2(vec4<u32>(u_input.c.x, u_input.d, 1u, 1u), vec2<bool>(false, false)), vec2<u32>(u_input.d, 4294967295u)), u_input.d <= 4294967295u, false)));
    var var_1 = all(select(vec4<bool>(true, true, false, !var_0), !select(vec4<bool>(false, var_0, var_0, var_0), select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, false)), true), true));
    var_1 = true;
    let var_2 = func_2(u_input.c);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-824f, -1998f))), 596f, 1f), abs(~var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2242f), var_2.b.x);
}

