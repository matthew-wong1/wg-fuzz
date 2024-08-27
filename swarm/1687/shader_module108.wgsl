struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    return -12756i;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    var var_0 = ~u_input.c;
    var_0 = countOneBits(_wgslsmith_add_u32(select(58438u, ~arg_1.a, arg_0.x), ~select(~u_input.c, arg_1.a, arg_0.x)));
    var var_1 = ~(~15387i);
    let var_2 = Struct_1(_wgslsmith_mult_i32(abs(u_input.b) & ~u_input.b, _wgslsmith_clamp_i32(1i, select(~arg_1.d.x, ~arg_1.b, any(vec3<bool>(arg_0.x, false, true))), u_input.b)), any(vec2<bool>(any(arg_0.zy), arg_0.x)), select(~(~(-arg_1.d)), arg_1.d, true), _wgslsmith_add_i32(1i, arg_1.d.x));
    var var_3 = u_input.c;
    return any(!arg_0.xy);
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = 1i;
    var var_1 = Struct_3(Struct_1(u_input.b, true, firstTrailingBit(select(vec2<i32>(u_input.b, arg_1.b), -vec2<i32>(2147483647i, var_0), vec2<bool>(true, true))), u_input.b), select(select(vec4<bool>(arg_1.a != arg_1.a, false, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, true), true), true), select(vec4<bool>(true, select(false, false, true), true, true), vec4<bool>(all(vec3<bool>(true, false, true)), func_3(vec4<bool>(false, false, true, true), arg_1), false, any(vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true)), vec3<u32>(~arg_1.a, _wgslsmith_mod_u32(~1882u, max(u_input.d, 19278u)), arg_3.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_1.c.x)), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1422f, arg_2.x)) * arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x))))));
    var var_3 = Struct_1(-1i, any(vec2<bool>(_wgslsmith_div_f32(arg_2.x, 835f) <= _wgslsmith_f_op_f32(f32(-1f) * -1269f), true)), _wgslsmith_mult_vec2_i32(vec2<i32>(18734i, -17040i), var_1.a.c), _wgslsmith_div_i32(arg_1.b, ~(~var_0)) ^ var_0);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-692f * _wgslsmith_f_op_f32(step(-622f, -371f)))));
    return Struct_3(var_1.a, vec4<bool>(arg_3.x != var_1.c.x, -1186f <= _wgslsmith_f_op_f32(floor(arg_1.c.x)), any(var_1.b), var_1.a.b), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(61336u, Struct_2(_wgslsmith_add_u32(~abs(u_input.e), u_input.e | _wgslsmith_clamp_u32(88570u, 52854u, u_input.a)), _wgslsmith_mod_i32(15885i ^ _wgslsmith_mult_i32(u_input.b, -26827i), _wgslsmith_clamp_i32(u_input.b, -39723i, -15887i >> (u_input.c % 32u))), vec2<f32>(_wgslsmith_f_op_f32(max(-2267f, -1012f)), _wgslsmith_f_op_f32(f32(-1f) * -1693f)), vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), ~13452i) ^ vec2<i32>(func_1(vec3<f32>(1327f, 120f, 1715f), 938f), ~(-1i))), vec4<f32>(_wgslsmith_f_op_f32(249f - _wgslsmith_div_f32(965f, _wgslsmith_div_f32(192f, 1136f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1115f)))), -138f, _wgslsmith_f_op_f32(f32(-1f) * -2395f)), vec3<u32>(5966u, u_input.e, ~64983u));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1195f, -1000f, 552f) + vec3<f32>(1000f, -1402f, 1999f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, 741f, 817f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -620f, -1000f) + vec3<f32>(-744f, -118f, -881f)))), vec3<bool>(!all(vec2<bool>(var_0.a.b, var_0.a.b)), any(!vec4<bool>(true, var_0.a.b, true, false)), var_0.a.b))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1040f))), -161f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))), 1388f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-741f)) * _wgslsmith_f_op_f32(f32(-1f) * -1880f)));
    let var_2 = Struct_2(~abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.c.xz), var_0.c.x | var_0.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), _wgslsmith_add_i32(_wgslsmith_sub_i32(338i, 0i), 1i), ~(u_input.b & 1i), 1i), firstLeadingBit(countOneBits(vec4<i32>(-20716i, -1i, -60802i, var_0.a.c.x))) | select(~vec4<i32>(-2147483647i, u_input.b, var_0.a.c.x, var_0.a.c.x), ~vec4<i32>(2147483647i, var_0.a.d, var_0.a.d, var_0.a.d), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-585f * 1651f), _wgslsmith_f_op_f32(floor(1604f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1663f, var_1.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-422f, var_1.x), vec2<f32>(-889f, -675f), var_0.b.yz)), select(vec2<bool>(false, false), var_0.b.yz, var_0.b.zw))))), countOneBits(vec2<i32>(max(var_0.a.a, -1i), u_input.b)) ^ vec2<i32>(_wgslsmith_mod_i32(u_input.b, select(u_input.b, 34770i, var_0.b.x)), 28548i));
    let var_3 = _wgslsmith_f_op_f32(-120f - var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(var_0.a.a, 25759i, u_input.b)))), var_0.a.c ^ var_2.d);
}

