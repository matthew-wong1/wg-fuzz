struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    return _wgslsmith_dot_vec3_u32(~(~reverseBits(vec3<u32>(u_input.a, 7487u, 40340u))) & ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 15964u), vec3<u32>(u_input.a, 47963u, 83849u)), vec3<u32>(u_input.a, u_input.a, 1u)), ~_wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.a, 1u, u_input.a)), ~(~vec3<u32>(u_input.a, 0u, 2553u))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = min(-1i, _wgslsmith_dot_vec2_i32(select(min(vec2<i32>(-1i, 1i), ~arg_0), arg_0, select(select(vec2<bool>(true, false), vec2<bool>(false, arg_1.x), vec2<bool>(true, arg_1.x)), vec2<bool>(arg_1.x, false), true)), vec2<i32>(-1i, arg_0.x)));
    let var_1 = -_wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, arg_0.x, arg_0.x, var_0) & vec4<i32>(arg_0.x, arg_0.x, var_0, -51028i)) & (vec4<i32>(0i, 7358i, -6696i, -32724i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), countOneBits(vec4<i32>(-arg_0.x, var_0, -30431i, 2147483647i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-372f, _wgslsmith_f_op_f32(f32(-1f) * -699f), -431f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-303f, 2721f, -1220f) + vec3<f32>(-905f, 325f, -752f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1583f, 607f, 1671f), vec3<f32>(-343f, 1143f, 2967f))), vec3<bool>(all(arg_1), var_0 <= var_0, false)))));
    let var_3 = Struct_3(!(!vec2<bool>(true, all(vec2<bool>(arg_1.x, false)))), !vec3<bool>(arg_1.x, true, arg_1.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)), ~u_input.a | 4294967295u, 0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, 0u), u_input.a)) << (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 4023u, 4294967295u), ~vec4<u32>(4294967295u, u_input.a, u_input.a, 1u)), vec4<u32>(u_input.a, u_input.a, 78858u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)) % vec4<u32>(32u)));
    let var_4 = countOneBits(max(_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(37187u, 10559u, var_3.c.x, 4294967295u)), vec4<u32>(min(0u, u_input.a), 1u, u_input.a, u_input.a)), var_3.c));
    return !select(vec2<bool>(true, all(var_3.b)), vec2<bool>(true, -255f >= var_2.x), vec2<bool>(_wgslsmith_mult_i32(arg_0.x, 0i) >= select(arg_0.x, var_0, false), any(var_3.b)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_3(select(!(!select(arg_1.b.zx, vec2<bool>(arg_0.x, true), false)), !select(!vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, true), arg_0.xy), arg_0.xx), select(vec3<bool>(!(!arg_1.a.x), all(vec2<bool>(arg_1.a.x, arg_1.b.x)), !all(arg_0)), !arg_1.b, all(vec2<bool>(arg_0.x, any(arg_1.b)))), reverseBits(arg_1.c));
    let var_1 = Struct_2((arg_2.x == -33900i) == (true == (arg_2.x <= arg_2.x)), Struct_1(arg_2.x << (_wgslsmith_mult_u32(4294967295u, 0u) % 32u)), Struct_1(arg_2.x), _wgslsmith_add_i32(arg_2.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(1714i, _wgslsmith_clamp_i32(-16817i, -33224i, arg_2.x)), firstLeadingBit(arg_2.x))), vec3<bool>(true, true, var_0.a.x));
    var var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~arg_2.ywy, vec3<i32>(~var_1.c.a, firstLeadingBit(var_1.c.a), arg_2.x)) | countOneBits(vec3<i32>(-50751i, var_1.b.a, select(50907i, -19204i, false))), arg_2.wxx);
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2391f * 1260f) + _wgslsmith_f_op_f32(f32(-1f) * -503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(773f - -1449f) * -984f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1034f + 1210f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(360f, 1722f, 571f)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(436f - 155f), 584f, _wgslsmith_f_op_f32(ceil(802f)))), vec3<f32>(284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)), _wgslsmith_f_op_f32(-326f * _wgslsmith_div_f32(681f, -546f)))));
    return var_3.c;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = func_4(vec3<bool>(!arg_0.x, !select(any(vec3<bool>(false, arg_0.x, arg_0.x)), arg_0.x & arg_0.x, true), !(func_2() != (54817u << (u_input.a % 32u)))), Struct_3(func_3(countOneBits(vec2<i32>(-14168i, 11764i)) << (vec2<u32>(15265u, u_input.a) % vec2<u32>(32u)), vec2<bool>(true, true)), vec3<bool>(any(!vec4<bool>(false, true, arg_0.x, arg_0.x)), false, arg_0.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) | ~vec4<u32>(u_input.a, 1u, 27026u, u_input.a), vec4<u32>(u_input.a, u_input.a, select(0u, u_input.a, false), _wgslsmith_mod_u32(u_input.a, 61400u)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-20343i, 1i, 28463i, 0i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(18023u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(39410u, u_input.a, 4294967295u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(53716i, 1i, min(6874i, -34633i), abs(-1i)), (vec4<i32>(-54550i, 0i, -2147483647i, -32223i) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.a, 54334u, 0u, 0u) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(~_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(62514u, ~u_input.a), 23779u, countOneBits(firstTrailingBit(4294967295u))) % vec4<u32>(32u)));
    let var_1 = 281f;
    var var_2 = ~_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-46576i, -32176i, -2147483647i) | vec3<i32>(var_0.a, -2147483647i, var_0.a), max(vec3<i32>(-2147483647i, -16390i, var_0.a), vec3<i32>(1i, var_0.a, -6280i))), _wgslsmith_clamp_vec3_i32(abs(~vec3<i32>(var_0.a, var_0.a, 61837i)), -vec3<i32>(14327i, -29891i, var_0.a) & ~vec3<i32>(var_0.a, var_0.a, -609i), abs(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 1i, var_0.a), vec3<i32>(1i, 1i, 0i)))));
    var var_3 = ~(-17274i);
    var_2 = abs(vec3<i32>(-1i) * -max(abs(vec3<i32>(12954i, -26151i, -1i)), vec3<i32>(-1i, var_0.a, var_2.x)));
    return var_1;
}

fn func_5(arg_0: f32) -> Struct_2 {
    var var_0 = 1045f;
    var var_1 = reverseBits(~_wgslsmith_mod_u32(~58110u, u_input.a)) >> ((u_input.a ^ u_input.a) % 32u);
    var_1 = _wgslsmith_mod_u32(4294967295u, 48220u);
    var var_2 = 9831u;
    return Struct_2(true || !func_3(-vec2<i32>(1i, 61449i), vec2<bool>(true, true)).x, func_4(vec3<bool>(false, true, true), Struct_3(vec2<bool>(select(true, true, true), true), vec3<bool>(true, false, true), ~(~vec4<u32>(426u, u_input.a, u_input.a, 1u))), -(~vec4<i32>(2147483647i, -35792i, 2147483647i, 13183i))), func_4(!vec3<bool>(true, u_input.a != 15614u, true), Struct_3(vec2<bool>(true, true), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), ~reverseBits(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))), vec4<i32>(-28195i, ~0i, _wgslsmith_clamp_i32(32432i, -1i, 50035i) & 0i, 1i)), -18035i, select(vec3<bool>((76412u == u_input.a) == true, true, true), vec3<bool>(true, true, false), all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(636f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true))), _wgslsmith_f_op_f32(ceil(-1815f))))));
    var var_2 = ~var_0;
    var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1313f, 442f), vec2<f32>(737f, -1200f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, 1u, vec2<u32>(~u_input.a, u_input.a));
}

