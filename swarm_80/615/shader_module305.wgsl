struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 57302i);

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global1 = vec3<u32>(4996u, arg_0.x, 27015u);
    global0 = -vec2<i32>(u_input.c, ~19009i);
    global1 = reverseBits(vec3<u32>(firstLeadingBit(~global1.x) ^ 3444u, global1.x | 38775u, countOneBits(u_input.e.x) | 4294967295u));
    var var_0 = Struct_2(1f, !select(vec2<bool>(all(vec2<bool>(false, true)), select(true, false, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-402f, var_0.a))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, 832f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, 2122f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, var_0.b.x)), _wgslsmith_f_op_f32(sign(-395f))))));
    return abs(i32(-1i) * -2147483647i);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, func_3(u_input.e), ~0i, u_input.c), _wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.c, global0.x, u_input.c), vec4<i32>(u_input.d.x, 0i, global0.x, -843i)), ~vec4<i32>(u_input.c, 11824i, global0.x, 1i))), -vec4<i32>(global0.x, -1i >> (max(64315u, global1.x) % 32u), u_input.c, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-23209i, global0.x, global0.x), vec3<i32>(global0.x, 18352i, -26748i), vec3<bool>(false, arg_0, arg_1.b.x)), ~vec3<i32>(1i, global0.x, -31943i))));
    let var_1 = vec2<bool>(arg_1.b.x, arg_0);
    global1 = vec3<u32>(0u, ~(~u_input.b.x >> ((4294967295u ^ global1.x) % 32u)), _wgslsmith_mult_u32(4294967295u, global1.x & max(0u, global1.x))) & u_input.e;
    global0 = -vec2<i32>(2147483647i, -reverseBits(~1i));
    var var_2 = ~u_input.b;
    return true;
}

fn func_1() -> vec3<u32> {
    var var_0 = any(vec4<bool>(true, func_2(global0.x <= _wgslsmith_add_i32(global0.x, 1i), Struct_2(2149f, vec2<bool>(true, true))), true, true));
    global1 = vec3<u32>(1u, countOneBits(~_wgslsmith_mod_u32(min(4294967295u, 1u), _wgslsmith_mod_u32(global1.x, 0u))), min(_wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(global1.x), ~global1.x), max(5846u, u_input.a), firstTrailingBit(0u)), _wgslsmith_clamp_u32(select(~0u, max(60783u, u_input.b.x), true), 0u, 4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.e.x, 27457u, 1u), vec4<u32>(global1.x, 17216u, 1382u, 7745u)))));
    global0 = _wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(-2147483647i, 14400i)), u_input.d), u_input.d), -((vec2<i32>(global0.x, -1i) | vec2<i32>(-8911i, -2147483647i)) & vec2<i32>(45995i, -9380i)) >> (global1.yy % vec2<u32>(32u)));
    global1 = max(u_input.e, vec3<u32>(4294967295u, ~51280u, abs(~u_input.e.x | _wgslsmith_mult_u32(u_input.e.x, u_input.a))));
    let var_1 = Struct_1(u_input.e, u_input.d, firstLeadingBit(vec3<i32>(2147483647i, 1829i, 2147483647i)));
    return vec3<u32>(_wgslsmith_mult_u32(4294967295u, reverseBits(1281u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, 4294967295u, 0u, 4294967295u), ~vec4<u32>(var_1.a.x, u_input.b.x, global1.x, 12642u))), ~(min(abs(var_1.a.x), 1u) | u_input.a), var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_div_vec3_u32(u_input.e, ~(~u_input.e));
    global1 = min(abs(func_1()), firstTrailingBit(vec3<u32>(global1.x >> (firstLeadingBit(u_input.e.x) % 32u), ~0u, reverseBits(u_input.e.x))));
    global1 = ~u_input.e;
    var var_0 = Struct_1(vec3<u32>(32672u | ((18739u ^ global1.x) | (u_input.e.x & 1u)), u_input.b.x, 89191u), u_input.d, vec3<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(49540i, 15829i, global0.x, global0.x), vec4<i32>(-33271i, global0.x, 37139i, u_input.d.x)) << (~global1.x % 32u)), reverseBits(26827i), -u_input.d.x));
    var var_1 = _wgslsmith_f_op_f32(ceil(1000f)) != 849f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1940f * 142f)) + _wgslsmith_f_op_f32(f32(-1f) * -357f)), 1686f), var_0.c.x, abs(firstTrailingBit(max(vec4<i32>(2147483647i, var_0.b.x, u_input.d.x, u_input.d.x), vec4<i32>(global0.x, -3641i, 0i, var_0.c.x))) | vec4<i32>(_wgslsmith_add_i32(u_input.c, var_0.c.x), firstLeadingBit(u_input.c), u_input.c, _wgslsmith_add_i32(2147483647i, global0.x))), -2556f, 0u);
}

