struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(-27950i, firstTrailingBit(~2147483647i)) >> ((_wgslsmith_clamp_u32(min(3884u, arg_0.x), countOneBits(u_input.a.x), ~4294967295u) << (abs(~arg_0.x) % 32u)) % 32u), ~(~((30921i << (u_input.a.x % 32u)) << (4294967295u % 32u))), -58594i, 2147483647i);
    let var_1 = Struct_3(Struct_1(firstLeadingBit(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f))), -34096i);
    let var_2 = ~u_input.a;
    var var_3 = var_1.a.b;
    var var_4 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_add_vec3_u32(~vec3<u32>(10204u, 1u, 1u), vec3<u32>(arg_0.x, _wgslsmith_add_u32(4294967295u, var_1.a.a), arg_0.x << (34237u % 32u)))), _wgslsmith_mult_vec3_u32(~(~reverseBits(vec3<u32>(u_input.a.x, var_1.a.a, 7u))), vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(var_2.x), _wgslsmith_add_u32(var_1.a.a, var_2.x)), ~(~0u), 4294967295u)));
    return 24858u;
}

fn func_2() -> vec3<bool> {
    let var_0 = -1i;
    var var_1 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(116386u, 4294967295u, u_input.a.x) | 12197u, 4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 10018u, u_input.a.x), u_input.a)), _wgslsmith_div_u32(func_3(u_input.a, false), u_input.a.x)) | u_input.a.xw;
    var_1 = u_input.a.xx >> (u_input.a.xx % vec2<u32>(32u));
    var_1 = u_input.a.zw >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f - 1753f))) - -871f));
    return vec3<bool>(true, any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))) == true, any(vec4<bool>(all(vec2<bool>(true, false)), countOneBits(4294967295u) < _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_1.x, u_input.a.x, var_1.x, var_1.x)), true, true)));
}

fn func_1() -> vec4<i32> {
    var var_0 = !vec3<bool>(!all(vec2<bool>(true, true)), true, any(vec4<bool>(true, 59748u < u_input.a.x, true, true)));
    var_0 = select(!(!vec3<bool>(false, true, var_0.x)), !vec3<bool>(var_0.x, true, true), true);
    let var_1 = i32(-1i) * -28393i;
    var_0 = !select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), true | var_0.x), !select(func_2(), vec3<bool>(true, true, var_0.x), !vec3<bool>(true, true, var_0.x)), var_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1013f, _wgslsmith_f_op_f32(-1533f + -386f))))));
    return -vec4<i32>(firstLeadingBit(abs(-var_1)), var_1, -2147483647i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-22374i, 28669i, -27795i)) << (firstLeadingBit(vec3<u32>(u_input.a.x, 37618u, 1u)) % vec3<u32>(32u)), reverseBits(-vec3<i32>(-2147483647i, -27404i, 40144i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -413f;
    let var_1 = -max(abs(~vec4<i32>(30119i, 27720i, 3390i, 0i)), firstLeadingBit(-vec4<i32>(-1i, 2147483647i, -2147483647i, 0i))) | (-vec4<i32>(2147483647i, ~32418i, ~1i, 1i) << (u_input.a % vec4<u32>(32u)));
    let var_2 = vec2<f32>(-390f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0));
    var var_3 = firstLeadingBit(var_1 ^ func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-10160i, _wgslsmith_f_op_f32(var_0 * var_2.x), func_1().wxw, var_1.ww);
}

