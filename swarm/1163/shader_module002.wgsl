struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(arg_1.a, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a.x, -37107i, u_input.d), ~arg_1.a)), u_input.c.x, _wgslsmith_div_i32(_wgslsmith_div_i32(reverseBits(u_input.d), arg_1.c & arg_3), 1i), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 492f, _wgslsmith_div_f32(arg_1.d.x, 489f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1475f, 1175f, arg_1.d.x) + arg_1.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, 1768f, arg_1.d.x))))), ~1u), abs(21147i), select(select(vec3<bool>(select(true, false, arg_2), !arg_0, true), select(!vec3<bool>(arg_2, true, arg_0), vec3<bool>(true, true, true), vec3<bool>(arg_0, true, false)), select(select(vec3<bool>(false, arg_2, false), vec3<bool>(false, true, false), arg_2), !vec3<bool>(arg_2, false, arg_0), true)), vec3<bool>(arg_2, true, arg_0 != !arg_0), arg_0), _wgslsmith_f_op_vec3_f32(floor(arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1247f, 647f)), arg_1.d.x))));
    let var_1 = Struct_2(var_0.a, 38959i, select(vec3<bool>(true, arg_0, false), select(select(var_0.c, var_0.c, var_0.c), var_0.c, any(select(var_0.c.yx, var_0.c.yx, vec2<bool>(false, arg_2)))), var_0.c), vec3<f32>(var_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(642f, var_0.e, false)) * var_0.a.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1353f * _wgslsmith_f_op_f32(var_0.e * var_0.d.x)) * 740f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(max(var_0.d.x, arg_1.d.x)), true)) - -1521f)));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.b, ~select(-arg_1.a.x, -1i, select(var_1.c.x, var_0.c.x, var_1.c.x)), ~1i), vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(arg_1.a | vec3<i32>(0i, -1i, 12393i), vec3<i32>(-1i, var_1.b, var_0.a.c))), -reverseBits(max(-2147483647i, arg_1.c)), i32(-1i) * -25015i, arg_3));
    var_2 = firstLeadingBit(var_0.b) >> (23099u % 32u);
    var_2 = -2549i;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f - -609f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(176f))))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-488f)), _wgslsmith_f_op_f32(abs(-329f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, Struct_1(vec3<i32>(u_input.d, u_input.d, 1i), 58853u, u_input.d, vec3<f32>(2957f, -509f, -936f), u_input.b.x), all(vec4<bool>(false, false, false, false)), u_input.d)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-461f)) * -635f))) * 414f);
    return ~u_input.a.x;
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    var var_0 = Struct_1(-(firstTrailingBit(~vec3<i32>(-38876i, -61010i, 10840i)) << (~_wgslsmith_mult_vec3_u32(u_input.c, arg_0) % vec3<u32>(32u))), (_wgslsmith_clamp_u32(abs(25077u), countOneBits(u_input.b.x), u_input.a.x | arg_0.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x), u_input.a)) >> (arg_0.x % 32u), -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1182f, 1750f, -1934f))), func_2());
    let var_1 = Struct_1(abs(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -1i, var_0.a.x), vec3<i32>(var_0.a.x, u_input.d, -13706i)) | firstTrailingBit(select(var_0.a, vec3<i32>(var_0.c, var_0.c, u_input.d), vec3<bool>(false, true, true)))), ~(~arg_0.x), -var_0.a.x, var_0.d, u_input.c.x);
    let var_2 = abs(-min(~(vec3<i32>(var_0.c, 35381i, u_input.d) << (arg_0 % vec3<u32>(32u))), countOneBits(~var_1.a)));
    let var_3 = ~(~(~var_2.xy));
    var var_4 = true;
    return _wgslsmith_clamp_i32(1i, min(9174i, -3472i), -var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(7790i, func_1(firstLeadingBit(~vec3<u32>(u_input.b.x, 0u, 0u))), select(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.d, -24927i, u_input.d), ~vec3<i32>(u_input.d, 25260i, -1i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(35060i, 2147483647i, 2147483647i), vec3<i32>(var_0, -48913i, -33664i)), select(vec3<i32>(u_input.d, -2147483647i, var_0), vec3<i32>(var_0, var_0, var_0), false), _wgslsmith_clamp_vec3_i32(vec3<i32>(-9385i, 0i, -40809i), vec3<i32>(u_input.d, 2147483647i, u_input.d), vec3<i32>(-2147483647i, 25241i, -52430i)))), max(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d, var_0, -12527i), -vec3<i32>(var_0, -35539i, u_input.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, var_0, u_input.d), -vec3<i32>(-66881i, var_0, var_0), ~vec3<i32>(0i, u_input.d, 30872i))), true));
}

