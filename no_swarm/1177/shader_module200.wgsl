struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

var<private> global2: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = u_input.b.x >> (4294967295u % 32u);
    var var_1 = false;
    global2 = !(!arg_1.a.x != (-1i <= (firstTrailingBit(u_input.b.x) >> (max(u_input.c.x, arg_1.b.b.x) % 32u))));
    let var_2 = 1u;
    var_1 = arg_1.a.x;
    return arg_3;
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = u_input.b.x;
    global2 = !select(!(max(1u, u_input.a) > ~u_input.a), false, true | all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)));
    let var_1 = u_input.b;
    var_0 = _wgslsmith_div_i32(u_input.b.x, arg_0.x);
    let var_2 = u_input.b.x;
    return ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.a << (u_input.a % 32u), 4294967295u));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    var var_0 = firstLeadingBit(vec4<u32>(~18874u, func_3(func_2(_wgslsmith_f_op_f32(-arg_1.x), Struct_3(vec4<bool>(arg_2, false, true, true), Struct_1(vec2<bool>(arg_2, true), vec2<u32>(u_input.c.x, u_input.a), arg_2, -3718i), u_input.b.x, arg_0), 3993i, -vec3<i32>(0i, 11973i, u_input.b.x))), _wgslsmith_div_u32(u_input.c.x, ~31948u), 4294967295u));
    let var_1 = Struct_3(!vec4<bool>(!(30893i > u_input.b.x), select(arg_0 < arg_0, arg_2, false != arg_2), !all(vec2<bool>(arg_2, arg_2)), !arg_2), Struct_1(!(!(!vec2<bool>(arg_2, true))), ~vec2<u32>(87131u, 58551u), arg_2, max(-u_input.b.x, ~u_input.b.x) & -firstLeadingBit(u_input.b.x)), u_input.b.x, -1000f);
    let var_2 = ~(~(~abs(~var_0.yxy)));
    global0 = -1088f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1941f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(229f + arg_0)) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, var_1.d)))))));
}

fn func_4(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = Struct_3(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.b.x <= -1591i), vec4<bool>(!all(vec2<bool>(true, true)), true & all(vec4<bool>(true, false, false, false)), abs(-23941i) == u_input.b.x, true), (u_input.a < u_input.c.x) == true), Struct_1(vec2<bool>(true, _wgslsmith_add_u32(0u, u_input.c.x) > (u_input.a | u_input.a)), select(~_wgslsmith_div_vec2_u32(vec2<u32>(32906u, u_input.c.x), vec2<u32>(u_input.a, 85454u)), firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.c, u_input.c)), vec2<bool>(true, true)), true, u_input.b.x), -2147483647i, -204f);
    global1 = false;
    global1 = !all(select(!select(var_0.a, var_0.a, vec4<bool>(true, false, true, false)), var_0.a, ~1i < u_input.b.x));
    let var_1 = var_0.b.b.x;
    var var_2 = var_0.b.b.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -1105f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b ^ vec2<i32>(41100i, u_input.b.x), u_input.b, _wgslsmith_add_vec2_i32(vec2<i32>(41955i, u_input.b.x), u_input.b)), _wgslsmith_div_vec2_i32(~vec2<i32>(55753i, -24275i), abs(vec2<i32>(u_input.b.x, u_input.b.x))))) & vec2<i32>(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(-2147483647i, 10393i, u_input.b.x), vec3<i32>(10274i, 33779i, u_input.b.x), false), ~min(vec3<i32>(15378i, -2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 26835i))), ~((u_input.b.x & 0i) << (u_input.a % 32u)));
    let var_1 = Struct_1(vec2<bool>(true, true), ~vec2<u32>(~_wgslsmith_mult_u32(1u, 6196u), ~u_input.a << (~u_input.c.x % 32u)), false, u_input.b.x);
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(min(232f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(-1000f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1860f, -692f, -555f) - vec3<f32>(1145f, -605f, 851f)), select(var_1.c, true, false))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1679f)), _wgslsmith_div_f32(-949f, -1125f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec3_i32(-max(vec3<i32>(var_1.d, -2147483647i, u_input.b.x), vec3<i32>(var_0.x, u_input.b.x, var_1.d)), vec3<i32>(2147483647i, -43708i, -35375i))), abs(min(~vec4<u32>(46540u, u_input.c.x, u_input.a, var_1.b.x), vec4<u32>(33238u, 1u, 0u, var_1.b.x)) ^ (abs(vec4<u32>(18503u, 2259u, 0u, var_1.b.x)) << (~vec4<u32>(u_input.a, u_input.c.x, 35743u, 1u) % vec4<u32>(32u)))));
}

