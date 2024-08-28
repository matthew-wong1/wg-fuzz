struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(1552f - -482f);
    var_0 = _wgslsmith_f_op_f32(248f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-437f)), 1205f, true)));
    var_0 = -1345f;
    let var_1 = arg_0.a;
    var var_2 = u_input.c.x;
    return !((21503i > var_1.a) & (_wgslsmith_dot_vec2_i32(abs(u_input.a), u_input.a) >= reverseBits(u_input.b)));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = -2147483647i;
    var var_1 = func_3(Struct_2(Struct_1(-31762i, firstTrailingBit(max(u_input.c, u_input.c))), arg_0));
    let var_2 = u_input.c.yy;
    var var_3 = Struct_2(Struct_1(_wgslsmith_mult_i32(max(-u_input.a.x, select(u_input.b, u_input.a.x, true)), u_input.a.x >> (abs(u_input.c.x) % 32u)), _wgslsmith_mult_vec3_u32(reverseBits(firstTrailingBit(u_input.c)), ~u_input.c)), max(_wgslsmith_div_u32(~2093u, ~_wgslsmith_div_u32(u_input.c.x, 0u)), 0u));
    let var_4 = select(vec3<bool>(true, all(vec2<bool>(all(vec2<bool>(false, true)), var_2.x < var_2.x)), true), !select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), 47174u != _wgslsmith_div_u32(u_input.c.x, 95611u)), true);
    return Struct_2(var_3.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(countOneBits(~u_input.c.x), firstTrailingBit(firstTrailingBit(42291u))), _wgslsmith_mult_u32(33533u, ~(~arg_0))));
}

fn func_1() -> bool {
    var var_0 = func_2(u_input.c.x, ~_wgslsmith_div_i32(u_input.a.x, -abs(u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -2234f, 650f, 920f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-152f, 1046f, -758f, 1184f) - vec4<f32>(1420f, 624f, -218f, -821f)))))));
    var var_2 = var_0.a;
    var var_3 = func_2(var_0.a.b.x & 0u, ~((i32(-1i) * -32693i) & firstLeadingBit(_wgslsmith_mult_i32(var_2.a, u_input.a.x)))).a;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_1.x), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1281f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(526f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(866f + var_1.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, 371f, 931f))))))));
    return true;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_1(firstLeadingBit(-2147483647i), arg_1);
    let var_1 = vec2<bool>(false, false & all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_2 = reverseBits(vec3<i32>(~arg_0, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -1i, var_0.a) ^ vec3<i32>(arg_2, u_input.b, 53836i), countOneBits(vec3<i32>(u_input.a.x, arg_2, 0i))), vec3<i32>(-1i) * -vec3<i32>(arg_0, 0i, -2147483647i)), _wgslsmith_mod_i32(var_0.a, arg_2)));
    var_0 = func_2(~var_0.b.x, -(i32(-1i) * -68666i)).a;
    var var_3 = func_2(9462u, var_2.x).a;
    return func_2(4294967295u, 1i);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(~select(select(9523i, 0i, true), 1892i, !arg_2), 1i), select(arg_3.x, _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_add_i32(func_4(-8098i, vec3<u32>(4294967295u, u_input.c.x, 38262u), u_input.a.x, vec4<f32>(-1667f, 377f, 1709f, -977f)).a.a, func_4(-2147483647i, arg_0.a.b, arg_3.x, vec4<f32>(-921f, -520f, -1259f, -2084f)).a.a)), arg_2), ~select(-36498i, arg_0.a.a, true));
    let var_1 = _wgslsmith_add_i32(~arg_0.a.a, -arg_0.a.a) & -(_wgslsmith_mod_i32(-12053i, abs(var_0.x)) | 0i);
    var var_2 = abs(-11623i);
    var_2 = ~var_0.x;
    var_2 = -1i;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), false), vec3<bool>(true, true, true), !any(vec3<bool>(true, true, true))));
    var var_1 = countOneBits(u_input.c.x);
    let var_2 = func_5(func_4(_wgslsmith_mod_i32(15878i >> (u_input.c.x % 32u), select(~u_input.a.x, u_input.b, func_1())), ~u_input.c, abs(reverseBits(-54473i)) ^ reverseBits(u_input.a.x & -20189i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))))), ~vec2<u32>(~_wgslsmith_div_u32(u_input.c.x, 34661u), ~u_input.c.x), true, abs(~vec3<i32>(-u_input.b, u_input.a.x, -u_input.b)));
    var var_3 = func_4(var_2.a, ~vec3<u32>(_wgslsmith_add_u32(~u_input.c.x, 2620u), 0u >> (func_4(var_2.a, var_2.b, u_input.a.x, vec4<f32>(1000f, -749f, 477f, -1519f)).b % 32u), var_2.b.x), ~(~33629i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(545f, 1192f, -846f, -1136f))) + vec4<f32>(521f, 1000f, -377f, 1614f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1391f, 862f, -1087f, 1458f) + vec4<f32>(-1194f, 964f, 1532f, 1667f))))))).a;
    var var_4 = ~max(~firstTrailingBit(1u), _wgslsmith_sub_u32(u_input.c.x, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(-((var_3.a >> (select(1u, 22100u, true) % 32u)) ^ (func_5(Struct_2(var_2, u_input.c.x), vec2<u32>(0u, 59433u), true, vec3<i32>(0i, 39533i, 75429i)).a | _wgslsmith_div_i32(u_input.b, u_input.a.x))));
}

