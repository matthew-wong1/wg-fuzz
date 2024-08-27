struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = -1i;
    let var_1 = arg_1.c.a;
    let var_2 = Struct_4(~vec3<u32>(11832u, (55775u ^ arg_1.b) >> (4294967295u % 32u), ~(~4294967295u)));
    var var_3 = Struct_3(Struct_2(10525u, 12226u, arg_1.c, _wgslsmith_add_u32(~2594u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.c.b.ww, var_2.a.zx), arg_2.a.c.b.zw))), firstLeadingBit(vec4<i32>(var_1, var_1, 0i, arg_2.b.x)), _wgslsmith_sub_u32(46935u, select(var_2.a.x, arg_2.a.b, true)), arg_2.a.c.c);
    let var_4 = Struct_3(Struct_2(select(abs(arg_1.b), 4294967295u, arg_0), ~firstLeadingBit(21043u), arg_1.c, ~arg_2.a.b), ~countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_3.b.x, var_3.a.c.a, 41024i), max(var_3.b, arg_2.b))), ~(~(~(~arg_2.a.a))), arg_1.c.c);
    return ~(arg_1.c.d ^ _wgslsmith_sub_vec4_u32(select(arg_1.c.b, arg_2.a.c.b, arg_0), vec4<u32>(1u, 23141u, arg_1.d, ~arg_1.a)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = Struct_4(vec3<u32>(1u, _wgslsmith_mult_u32(arg_1.b.x, max(4294967295u, 28537u) & arg_2.b.x), arg_1.b.x >> (~(arg_1.b.x | arg_2.b.x) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.c, 1828f)) + arg_1.c);
    var_0 = arg_3;
    var_0 = Struct_4(firstTrailingBit(arg_1.b.yxx));
    var_0 = arg_3;
    return arg_2.b;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_2(14796u, _wgslsmith_mult_u32(27083u << (arg_0 % 32u), _wgslsmith_mult_u32(arg_0, ~firstTrailingBit(0u))), Struct_1(~max(~(-1i), firstLeadingBit(u_input.a.x)), func_4(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, 0u)) | countOneBits(vec3<u32>(4294967295u, 14645u, arg_0)), Struct_1(1i, ~vec4<u32>(arg_0, arg_0, arg_0, arg_0), _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), vec4<u32>(4294967295u, 0u, 41958u, 1u) ^ vec4<u32>(16743u, arg_0, arg_0, 31972u)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(-8956i, -14320i)), func_3(false, Struct_2(arg_0, arg_0, Struct_1(1i, vec4<u32>(arg_0, 4609u, 0u, 1u), -645f, vec4<u32>(0u, 70738u, arg_0, 4294967295u)), arg_0), Struct_3(Struct_2(arg_0, 17592u, Struct_1(0i, vec4<u32>(2730u, 4294967295u, 0u, arg_0), 153f, vec4<u32>(arg_0, 34308u, 0u, arg_0)), arg_0), vec4<i32>(1i, -59886i, u_input.a.x, u_input.a.x), arg_0, -1000f)), _wgslsmith_f_op_f32(676f + -2505f), vec4<u32>(arg_0, arg_0, 45238u, arg_0)), Struct_4(~vec3<u32>(13866u, arg_0, 19707u))), _wgslsmith_f_op_f32(ceil(arg_1.x)), reverseBits(vec4<u32>(func_4(vec3<u32>(45148u, arg_0, 80217u), Struct_1(u_input.a.x, vec4<u32>(arg_0, 10375u, arg_0, arg_0), arg_1.x, vec4<u32>(arg_0, 7025u, arg_0, arg_0)), Struct_1(-6026i, vec4<u32>(0u, 0u, arg_0, 126801u), arg_1.x, vec4<u32>(arg_0, arg_0, arg_0, 15438u)), Struct_4(vec3<u32>(arg_0, 25084u, 1u))).x, ~1u, 5392u, arg_0))), arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.xx))))));
    var_0 = Struct_2(~_wgslsmith_dot_vec4_u32(var_0.c.d, ~var_0.c.d), var_0.d << (_wgslsmith_sub_u32(~arg_0, 83301u) % 32u), var_0.c, arg_0);
    let var_2 = var_0.c;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-619f - var_0.c.c));
    return u_input.a.x;
}

fn func_1() -> vec4<i32> {
    return _wgslsmith_div_vec4_i32(~vec4<i32>(-7934i, u_input.a.x, -func_2(7983u, vec4<f32>(-165f, -1585f, -1134f, 748f)), ~_wgslsmith_clamp_i32(-14731i, u_input.a.x, -10640i)), vec4<i32>(~firstLeadingBit(_wgslsmith_sub_i32(-395i, u_input.a.x)), abs(u_input.a.x), reverseBits(_wgslsmith_mod_i32(-2147483647i, firstLeadingBit(u_input.a.x))), max(_wgslsmith_sub_i32(~1i, countOneBits(u_input.a.x)), firstLeadingBit(_wgslsmith_mult_i32(-12995i, 11553i)))));
}

fn func_5(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = 1369f;
    let var_1 = Struct_3(Struct_2(40085u, ~1u, Struct_1(~func_1().x, _wgslsmith_add_vec4_u32(select(vec4<u32>(25406u, 14397u, 1u, 57393u), vec4<u32>(1u, 0u, 6255u, 1u), vec4<bool>(true, true, true, false)), ~vec4<u32>(0u, 0u, 0u, 1u)), _wgslsmith_f_op_f32(580f + _wgslsmith_div_f32(-513f, -343f)), vec4<u32>(0u, ~85423u, 1u, 65285u)), countOneBits(4294967295u)), vec4<i32>(1i, -35211i, 0i, ~u_input.a.x), 1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 356f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = 35140u;
    var_2 = ~_wgslsmith_mult_u32(19535u, var_1.a.a);
    let var_3 = Struct_4(~var_1.a.c.b.wxy);
    return Struct_3(var_1.a, _wgslsmith_sub_vec4_i32(arg_0, -_wgslsmith_sub_vec4_i32(vec4<i32>(-4546i, u_input.a.x, 29301i, 40804i), var_1.b)), var_3.a.x | ~var_1.a.b, _wgslsmith_f_op_f32(floor(-200f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(firstTrailingBit(-(func_1() | _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 11967i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_1 = func_5(vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(-42124i, var_0.a.c.a), u_input.a.x << (66846u % 32u)), max(u_input.a.x, func_2(var_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.c, -547f, var_0.d, -1000f)))), _wgslsmith_mod_i32(-1i >> (func_3(false, Struct_2(0u, var_0.a.a, Struct_1(u_input.a.x, vec4<u32>(var_0.a.c.b.x, 4294967295u, var_0.c, 32741u), var_0.a.c.c, vec4<u32>(var_0.c, var_0.c, var_0.a.c.d.x, 65456u)), var_0.a.b), Struct_3(var_0.a, var_0.b, 1u, var_0.d)).x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -10533i), select(u_input.a.xy, vec2<i32>(2147483647i, -28315i), vec2<bool>(true, false)))), -firstTrailingBit(2147483647i))).a;
    let var_2 = _wgslsmith_f_op_f32(max(904f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-417f)))) + _wgslsmith_f_op_f32(var_0.a.c.c + _wgslsmith_f_op_f32(var_1.c.c - var_1.c.c))))));
    var var_3 = !select(select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), false), vec4<bool>(true, true, true, true), !all(vec3<bool>(false, false, false))), vec4<bool>(!all(vec3<bool>(false, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), false), any(vec3<bool>(true, false, any(vec2<bool>(true, true)))));
    var_3 = !(!vec4<bool>(any(vec2<bool>(var_3.x, false)), !var_3.x && var_3.x, any(vec2<bool>(var_3.x, var_3.x)), var_3.x));
    var_0 = func_5(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.a.x), firstTrailingBit(vec4<i32>(1i, -4533i, var_1.c.a, u_input.a.x)), -var_0.b) >> (vec4<u32>(~var_1.a, var_0.c | 23554u, var_1.c.b.x, 62677u) % vec4<u32>(32u)), -var_0.b));
    var_0 = Struct_3(var_0.a, vec4<i32>(~(_wgslsmith_mod_i32(-1367i, var_1.c.a) >> (_wgslsmith_mult_u32(24895u, var_0.a.d) % 32u)), var_1.c.a | -2147483647i, -_wgslsmith_div_i32(u_input.a.x, u_input.a.x ^ u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(~62090i, _wgslsmith_dot_vec2_i32(u_input.a.yy, var_0.b.wx)), var_0.a.c.a ^ ~2147483647i)), var_0.a.d, var_1.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c.c, vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.c), -865f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-542f, 1132f)), vec4<i32>(39100i, _wgslsmith_add_i32(~_wgslsmith_div_i32(10174i, 1i), -var_0.a.c.a), var_0.b.x, -1198i), ~u_input.a);
}

