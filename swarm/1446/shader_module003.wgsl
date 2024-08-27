struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1985f, _wgslsmith_f_op_f32(845f + 237f)), 1f, false)))));
    return Struct_1(abs(_wgslsmith_add_vec2_i32(~u_input.a.zy, vec2<i32>(u_input.e, u_input.e) >> (u_input.c.zy % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_add_u32(0u, u_input.d.x), u_input.d.x) % vec2<u32>(32u))), !(-1019f == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(405f))))), vec4<i32>(~abs(_wgslsmith_clamp_i32(55582i, u_input.e, -39971i)), u_input.e, _wgslsmith_sub_i32(15978i, _wgslsmith_div_i32(-u_input.a.x, abs(u_input.b.x))), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = true;
    var var_1 = arg_0.b;
    let var_2 = ~vec2<u32>(50670u, _wgslsmith_div_u32(0u, 74799u));
    var var_3 = Struct_1(~_wgslsmith_clamp_vec2_i32(func_2().a, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, 65223i, arg_0.c.x, -26990i), vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.a.x, u_input.a.x)), ~(-1i)), ~u_input.a.zy), !arg_1, vec4<i32>(9017i, reverseBits(1i), u_input.b.x, ~select(_wgslsmith_dot_vec4_i32(arg_0.c, arg_0.c), countOneBits(-1i), true)));
    var var_4 = _wgslsmith_dot_vec3_u32(reverseBits(~(~firstLeadingBit(vec3<u32>(1u, 4294967295u, var_2.x)))), ~(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 5294u, var_2.x), u_input.d)) ^ min(u_input.d, u_input.d)));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> i32 {
    global0 = ~_wgslsmith_div_u32(4437u, ~(~41263u)) & ~(0u << (arg_2 % 32u));
    let var_0 = ~13544u << (_wgslsmith_clamp_u32(abs(_wgslsmith_clamp_u32(u_input.d.x, 27210u | u_input.c.x, u_input.d.x >> (u_input.d.x % 32u))), arg_2, 16981u) % 32u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -110f);
    var var_2 = func_3(func_2(), arg_0.b);
    var_2 = arg_0;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.yx, true, reverseBits(-(~(~vec4<i32>(u_input.e, u_input.a.x, -1i, -7605i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.e, 2147483647i)), ~(u_input.b ^ u_input.a.xy)), _wgslsmith_mult_i32(reverseBits(~var_0.a.x), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(u_input.e, 7976i, var_0.a.x), _wgslsmith_div_i32(30190i, func_1(Struct_1(vec2<i32>(var_0.a.x, u_input.a.x), var_0.b, vec4<i32>(u_input.e, 32355i, var_0.c.x, var_0.c.x)), u_input.a, 33243u)))), var_0.c.wx, ~((~vec4<u32>(u_input.c.x, 45090u, u_input.c.x, 4294967295u) | _wgslsmith_div_vec4_u32(vec4<u32>(15843u, 11937u, u_input.c.x, u_input.d.x), vec4<u32>(0u, u_input.c.x, 1u, u_input.d.x))) & ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(19458u, u_input.c.x, u_input.d.x, 33756u))), _wgslsmith_sub_i32(u_input.e >> (u_input.d.x % 32u), -1i));
}

