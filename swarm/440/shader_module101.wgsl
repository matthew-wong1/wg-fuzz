struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> Struct_5 {
    var var_0 = arg_0;
    let var_1 = u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    var_0 = arg_1.a.x;
    var_0 = 191f;
    return arg_1;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = Struct_4(774f, vec4<i32>(abs(_wgslsmith_sub_i32(u_input.a.x, min(1i, -1i))), 20286i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, 2147483647i, -2147483647i), vec4<i32>(u_input.b.x, 1i, 12732i, 1i)) ^ 0i, ~u_input.b.x));
    var_0 = Struct_4(-947f, -(~select(var_0.b, var_0.b, var_0.b.x >= -44384i)));
    let var_1 = select(select(vec3<bool>(all(vec3<bool>(arg_1.x, true, arg_1.x)), any(select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), false)), true), vec3<bool>(true, true, true), select(select(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), arg_1.x), select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(false, true, true)), true), vec3<bool>(arg_1.x, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(arg_1.x, arg_1.x, false)), !vec3<bool>(arg_1.x, true, arg_1.x), true))), vec3<bool>(arg_1.x, false, arg_1.x), !select(!vec3<bool>(true, arg_1.x, false), vec3<bool>(true, true, true), arg_1.x));
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(31419u, arg_0.x, arg_0.x, 19455u)), vec4<u32>(1u, arg_0.x, 36953u, 24746u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 11189u, 55077u), vec4<u32>(arg_0.x, 8612u, 0u, 1u)) >> (vec4<u32>(arg_0.x, arg_0.x, 1u, 1u) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x), vec4<u32>(11994u, 17961u, 0u, arg_0.x), vec4<u32>(37838u, arg_0.x, arg_0.x, arg_0.x)), ~vec4<u32>(2886u, 4294967295u, arg_0.x, 4294967295u))), ((~vec4<u32>(arg_0.x, arg_0.x, 75933u, 31696u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 29997u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 0u, arg_0.x, 4294967295u))) & ~reverseBits(vec4<u32>(arg_0.x, 0u, arg_0.x, 0u))) | ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 12911u, arg_0.x, arg_0.x), ~vec4<u32>(4294967295u, arg_0.x, arg_0.x, 4294967295u)));
    var var_3 = !vec3<bool>(var_1.x, all(vec4<bool>(!arg_1.x, !arg_1.x, true, any(vec4<bool>(false, arg_1.x, var_1.x, arg_1.x)))), (true && all(vec2<bool>(arg_1.x, false))) | !(!arg_1.x));
    return reverseBits(-countOneBits(firstLeadingBit(var_0.b.x))) & u_input.a.x;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = vec2<bool>(arg_2, true);
    let var_1 = ~select(min(~vec4<u32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), min(~vec4<u32>(0u, arg_1.c, 6018u, arg_1.c), vec4<u32>(61720u, arg_1.c, 20986u, 3813u) >> (vec4<u32>(85400u, 1u, 0u, 77472u) % vec4<u32>(32u)))), vec4<u32>(~arg_1.c ^ _wgslsmith_div_u32(arg_1.c, 0u), firstLeadingBit(arg_1.c ^ arg_1.c), arg_1.c, 0u), vec4<bool>(false, arg_1.c >= 0u, any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), arg_2)), true));
    var var_2 = Struct_2(select(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.b.x, -99991i), vec4<i32>(arg_0, u_input.a.x, arg_1.d.x, 0i)), select(arg_0, u_input.a.x, arg_2), 2147483647i), select(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, arg_0), arg_1.a), vec3<i32>(33990i, 17177i, 56226i), !vec3<bool>(false, var_0.x, var_0.x))), arg_1.d.x, all(!select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, arg_2), vec3<bool>(arg_2, true, false)))), firstLeadingBit(~(select(var_1, vec4<u32>(0u, 1050u, arg_1.c, 12495u), false) >> ((vec4<u32>(1u, 1u, var_1.x, 1u) | vec4<u32>(arg_1.c, arg_1.c, 2097u, 1u)) % vec4<u32>(32u)))), vec4<u32>(var_1.x, _wgslsmith_sub_u32(25788u, arg_1.c), ~var_1.x, var_1.x));
    var_2 = Struct_2((2147483647i >> (arg_1.c % 32u)) << (_wgslsmith_sub_u32(~firstLeadingBit(97853u), var_2.b.x) % 32u), abs(firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 3878u, var_1.x), var_1), ~var_2.b))), ~(vec4<u32>(var_1.x, var_1.x, arg_1.c, 1u) | (vec4<u32>(5840u, var_1.x, 4294967295u, arg_1.c) >> (var_1 % vec4<u32>(32u)))) & _wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(var_2.c.x, 12951u, 1u, 1u)), var_1, ~vec4<u32>(var_2.b.x, arg_1.c, var_2.c.x, arg_1.c)));
    var_0 = select(vec2<bool>(select(var_0.x, true != any(vec4<bool>(false, true, false, false)), true), any(vec2<bool>(false, arg_2))), vec2<bool>(true, true), arg_2 | (-17782i < ~(-arg_0)));
    return all(!(!(!select(vec4<bool>(true, arg_2, var_0.x, false), vec4<bool>(true, false, true, var_0.x), false))));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    let var_0 = func_4(-24365i, Struct_1(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, arg_1, 0i) >> (vec3<u32>(39806u, 0u, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(-u_input.a.x, -913i), ~arg_1), ~9380u, vec4<i32>(~firstTrailingBit(1034i), reverseBits(func_3(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false))), 1i & select(arg_1, -18327i, false), reverseBits(43778i))), select(!(!select(true, false, true)), false, true));
    let var_1 = Struct_1(select(u_input.b, vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(40139i, i32(-1i) * -4195i), firstLeadingBit(1i)), vec3<bool>(false, _wgslsmith_f_op_f32(-arg_0.a.x) >= -134f, any(vec3<bool>(var_0, true, true)))), u_input.b.yx & countOneBits(countOneBits(u_input.b.yx)), 0u, ~countOneBits(vec4<i32>(_wgslsmith_add_i32(arg_1, -26699i), 1i, 3837i << (1u % 32u), _wgslsmith_add_i32(-43490i, -1i))));
    var var_2 = firstLeadingBit(min(~(~_wgslsmith_mod_u32(var_1.c, 1u)), ~(~1u)));
    let var_3 = arg_2;
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x - var_3.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1594f))))));
    return Struct_2(~(~(var_1.a.x & _wgslsmith_sub_i32(u_input.a.x, -1i))), _wgslsmith_mult_vec4_u32(abs(~(vec4<u32>(var_1.c, 17488u, var_1.c, 83114u) & vec4<u32>(var_1.c, 4294967295u, var_1.c, var_1.c))), ~_wgslsmith_add_vec4_u32(vec4<u32>(32872u, 42778u, 24168u, var_1.c), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 37290u, var_1.c, var_1.c), vec4<u32>(48278u, 17141u, 32939u, var_1.c)))), vec4<u32>(var_1.c, ~1u, var_1.c, ~(~(var_1.c ^ 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1776f)) * _wgslsmith_div_f32(-301f, 1609f)), 107f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1239f, -1287f) * -274f)))));
    let var_1 = 68571u;
    let var_2 = Struct_3(_wgslsmith_mult_vec3_i32(u_input.b, -min(vec3<i32>(-11141i, 0i, u_input.a.x), min(u_input.b, vec3<i32>(8092i, u_input.b.x, 40176i)))), func_2(Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, 1000f)))), min(-u_input.a.x, -(61607i << (var_1 % 32u))), func_1(var_0.x, Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1153f, -489f, -537f, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-1285f, var_0.x), false)))))), Struct_1(u_input.b, ~(vec2<i32>(0i, -10318i) | _wgslsmith_add_vec2_i32(u_input.b.zx, u_input.a)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1, var_1, var_1), vec3<u32>(var_1, var_1, var_1), false), ~vec3<u32>(1u, var_1, 112695u)) >> (~(~22732u) % 32u), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, -1i) | vec4<i32>(-45246i, 0i, -20268i, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, 126i, -1i) >> (vec4<u32>(var_1, var_1, var_1, var_1) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.b.x, -686i, -6205i, u_input.b.x))))), vec4<u32>(reverseBits(1u), var_1 & var_1, _wgslsmith_div_u32(4294967295u, var_1), ~17997u));
    let var_3 = Struct_3(u_input.b, var_2.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-927f, var_2.c.x))))), Struct_1(u_input.b, vec2<i32>(-1i, i32(-1i) * -2147483647i), reverseBits(~(~var_2.b.c.x)), -(~abs(vec4<i32>(u_input.a.x, 0i, 2147483647i, u_input.b.x)))), vec4<u32>(~var_1 << (_wgslsmith_clamp_u32(4294967295u, var_2.b.b.x, var_1) % 32u), ~_wgslsmith_clamp_u32(30303u, 79626u, 59853u), 1u, var_1) | _wgslsmith_mult_vec4_u32(min(~vec4<u32>(var_1, 955u, 4294967295u, 4294967295u), firstTrailingBit(var_2.e)), ~(~vec4<u32>(4294967295u, 44061u, var_1, var_1))));
    let var_4 = abs(func_2(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_3.c.x)))), Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1046f, var_0.x, 803f, 1144f)))), -1i, Struct_5(func_1(var_3.c.x, func_1(var_3.c.x, Struct_5(vec4<f32>(var_3.c.x, 950f, var_2.c.x, var_0.x)))).a)).b.x);
    let var_5 = func_1(_wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(-var_2.c.x)), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, 582f, -380f, var_3.c.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(762f, -2120f, var_0.x, -954f))))));
    var var_6 = !(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var_6 = vec2<bool>(var_6.x, select(!(!var_6.x), var_6.x, !(!all(vec2<bool>(var_6.x, var_6.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(3525i, _wgslsmith_mult_vec3_i32(var_3.d.a, vec3<i32>(var_3.b.a, 0i, max(~u_input.b.x, u_input.b.x >> (var_1 % 32u)))));
}

