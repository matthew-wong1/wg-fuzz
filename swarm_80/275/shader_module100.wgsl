struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = 0u;
    var var_1 = ~abs(u_input.c.zy);
    var_1 = ~vec2<u32>(var_1.x & ~(~1u), var_1.x);
    let var_2 = arg_0.a;
    var var_3 = firstLeadingBit(reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -19145i, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a)), abs(vec3<i32>(1i, u_input.a, u_input.a)), countOneBits(vec3<i32>(-13669i, -10980i, u_input.a))), ~(~vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    return 6643u;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    let var_0 = vec2<u32>(abs(0u ^ max(53078u, u_input.c.x)), 1u);
    let var_1 = min(vec2<u32>(79248u, arg_1), u_input.c.yz);
    let var_2 = ~vec4<u32>(~_wgslsmith_mod_u32(var_0.x, 0u), func_3(Struct_1(true, u_input.b), ~18720u), ~_wgslsmith_dot_vec2_u32(arg_0, _wgslsmith_div_vec2_u32(var_0, var_0)), abs(var_1.x));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -154f), true);
    let var_4 = arg_1;
    return firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c ^ countOneBits(u_input.c), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.x, var_2.x, 0u), vec3<u32>(9567u, 65404u, arg_0.x), _wgslsmith_mult_vec3_u32(u_input.c, var_2.xxw)))) ^ 1u;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(23687u, u_input.c.x), arg_0.x, abs(func_2(vec2<u32>(104053u, 1u), arg_0.x, ~vec3<i32>(u_input.a, u_input.a, 4863i))), u_input.c.x) ^ select(vec4<u32>(arg_0.x, 15877u, arg_0.x, u_input.c.x), _wgslsmith_sub_vec4_u32(~min(vec4<u32>(4294967295u, arg_0.x, 14908u, 35450u), vec4<u32>(u_input.b, 1u, 1u, u_input.b)), vec4<u32>(~0u, abs(arg_0.x), u_input.c.x, 4294967295u >> (arg_0.x % 32u))), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))));
    let var_1 = 0u;
    return ~vec3<u32>(34057u, 51105u, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, reverseBits(~_wgslsmith_sub_u32(~0u, firstLeadingBit(15610u))));
    let var_1 = (_wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(_wgslsmith_mod_i32(0i, 1i), ~(-32081i), _wgslsmith_mult_i32(-4917i, -1i))) | vec3<i32>(2147483647i, 0i, ~firstTrailingBit(u_input.a))) >> (func_1(vec2<u32>(max(countOneBits(26482u), var_0.b), ~1u), _wgslsmith_f_op_f32(f32(-1f) * -1714f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, -310f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1511f, 476f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(863f * -133f)), true || (var_0.a | false)))) % vec3<u32>(32u));
    var var_2 = 0u;
    var_2 = var_0.b;
    var_2 = 38072u << (_wgslsmith_mult_u32(17319u, countOneBits(countOneBits(u_input.c.x)) >> (func_3(var_0, var_0.b) % 32u)) % 32u);
    var_2 = _wgslsmith_add_u32(func_1(~vec2<u32>(8722u >> (var_0.b % 32u), func_2(u_input.c.zx, u_input.c.x, var_1)), 841f, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1304f))), _wgslsmith_f_op_f32(f32(-1f) * -1014f))).x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b, 1u, u_input.b, var_0.b), select(vec4<u32>(29037u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(4294967295u, var_0.b, 20399u, 4294967295u), vec4<bool>(false, true, var_0.a, var_0.a))), _wgslsmith_sub_u32(~var_0.b, ~var_0.b)));
    var_2 = ~(~abs(u_input.b & 0u));
    var_2 = func_1(_wgslsmith_clamp_vec2_u32(countOneBits(~vec2<u32>(u_input.b, var_0.b)), _wgslsmith_mod_vec2_u32((u_input.c.yz ^ u_input.c.zx) & _wgslsmith_div_vec2_u32(vec2<u32>(40387u, u_input.b), u_input.c.xy), vec2<u32>(_wgslsmith_sub_u32(1u, u_input.c.x), 3824u)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(4294967295u, u_input.b)), ~_wgslsmith_sub_u32(75731u, var_0.b))), 1158f, vec2<f32>(_wgslsmith_f_op_f32(abs(1102f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1239f - 436f))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

