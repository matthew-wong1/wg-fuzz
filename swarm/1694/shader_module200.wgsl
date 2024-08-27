struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(15207u, vec2<u32>(39970u, 10533u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_mult_u32(u_input.a.x, abs(~8901u)), min(global0.b, vec2<u32>(~global0.b.x, abs(19884u))));
    var var_1 = -((2147483647i ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(13353i, 0i, 1i), vec3<i32>(0i, -1i, 2147483647i)) << (1u % 32u))) << (_wgslsmith_clamp_u32(min(90277u & u_input.c, u_input.a.x), ~var_0.b.x, _wgslsmith_add_u32(u_input.c, u_input.c)) % 32u));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(1486f, _wgslsmith_f_op_f32(-1714f + -677f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-180f, -2004f)), 1f))), 711f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-246f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1481f))), 670f))));
    var var_3 = var_0;
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~abs(0u & var_0.b.x), ~_wgslsmith_dot_vec2_u32(~var_0.b, vec2<u32>(80687u, u_input.a.x))), ~(~global0.a));
    return min(_wgslsmith_mod_vec4_i32(-vec4<i32>(-36003i, 2147483647i, _wgslsmith_add_i32(-1i, -40274i), -1i), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(var_4, u_input.b.x, 7382u, global0.a) % vec4<u32>(32u)))), ~(-(vec4<i32>(-1i, -6852i, -2147483647i, 0i) >> ((u_input.a ^ vec4<u32>(1u, 0u, 53291u, 1u)) % vec4<u32>(32u)))));
}

fn func_2() -> f32 {
    global0 = Struct_1(_wgslsmith_mod_u32(~abs(1u), u_input.a.x), u_input.b.xz);
    let var_0 = vec4<u32>(min(~u_input.c, 4294967295u << (~global0.a % 32u)), min(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(global0.a, global0.a, u_input.a.x), vec3<u32>(u_input.b.x, 4294967295u, 1u)), abs(u_input.a.zyz))), 55329u | (102600u ^ ~global0.b.x)), global0.a, 4294967295u);
    var var_1 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(func_3()), vec4<i32>(25632i, func_3().x, abs(reverseBits(-39532i)), firstLeadingBit(min(-30135i, -1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -1i, -12924i >> (u_input.b.x % 32u), abs(0i), ~12513i), ~(~vec4<i32>(12604i, 1i, 2147483647i, -27019i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 64531i, 7303i, 0i), firstTrailingBit(vec4<i32>(0i, -15647i, -2147483647i, -1i))))) << ((var_0 << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = Struct_1(36340u, vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(var_0.zww, vec3<u32>(global0.a, u_input.a.x, var_0.x)), ~vec3<u32>(global0.a, 37741u, 4294967295u)), select(vec3<u32>(var_0.x, 4294967295u, global0.b.x), u_input.a.ywx, true)), 1u));
    let var_3 = var_0.x;
    return 346f;
}

fn func_1() -> Struct_1 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-2096f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1783f * _wgslsmith_f_op_f32(step(954f, -908f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f)))));
    let var_2 = Struct_2(vec3<i32>(-15688i, min(5153i, 0i), _wgslsmith_clamp_i32(max(select(7169i, 35631i, false), _wgslsmith_dot_vec4_i32(vec4<i32>(25352i, -2147483647i, 13274i, -54719i), vec4<i32>(45917i, -2147483647i, -2147483647i, 0i))), _wgslsmith_dot_vec3_i32(vec3<i32>(17152i, -60213i, 1i), vec3<i32>(-2147483647i, 1i, -4855i)), ~(~0i))), Struct_1(u_input.c, firstLeadingBit(u_input.b.yy)), vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), firstLeadingBit(-vec3<i32>(1i, 1i, 1i)), vec3<i32>(46205i, 0i, -25895i >> (~4294967295u % 32u))), Struct_1(_wgslsmith_sub_u32(global0.b.x, ~29979u), ~u_input.a.zw));
    var var_3 = var_2.a.x;
    var_0 = select(var_2.a.x ^ max(45414i, _wgslsmith_sub_i32(_wgslsmith_div_i32(49774i, 1i), var_2.d.x)), 0i, all(!select(vec3<bool>(true, false, var_2.c.x), vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), true)));
    return Struct_1(~0u, vec2<u32>(u_input.a.x, ~firstTrailingBit(u_input.b.x << (59921u % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: f32) -> u32 {
    var var_0 = arg_1;
    let var_1 = vec3<bool>(all(vec3<bool>(true, true, true)), u_input.c == ~0u, any(vec3<bool>(false, true, true)));
    var var_2 = Struct_1(global0.a, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.b & ~vec2<u32>(1u, arg_0.a), max(vec2<u32>(u_input.a.x, 4263u), ~vec2<u32>(0u, u_input.a.x))), u_input.a.yy));
    global0 = Struct_1(firstLeadingBit(_wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_2.x, arg_0.b.x), firstLeadingBit(countOneBits(u_input.b.x)))), _wgslsmith_add_vec2_u32(arg_0.b, vec2<u32>(func_1().b.x, ~global0.b.x)));
    global0 = Struct_1(~(~(~func_1().b.x)), vec2<u32>(_wgslsmith_add_u32(max(arg_2.x, u_input.a.x), ~global0.a), abs(~arg_0.b.x)) & var_2.b);
    return _wgslsmith_mod_u32(firstLeadingBit(12650u) >> (firstLeadingBit(func_1().a) % 32u), 34647u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1403f, 665f, -1020f), vec4<f32>(1000f, -1586f, -443f, 2145f)))))), firstLeadingBit(vec4<u32>(countOneBits(42225u), _wgslsmith_mod_u32(global0.b.x, 15393u), global0.a, u_input.a.x & 14925u)), -319f), ~(vec2<u32>(func_4(Struct_1(6695u, u_input.b.yx), vec4<f32>(331f, -217f, 1245f, 1070f), u_input.a, -178f), ~u_input.c) << (abs(vec2<u32>(4832u, global0.b.x)) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_div_f32(-391f, _wgslsmith_f_op_f32(f32(-1f) * -394f));
    global0 = var_0;
    let var_2 = ~u_input.a.xy;
    global0 = func_1();
    global0 = Struct_1(u_input.a.x, abs(~abs(~vec2<u32>(var_2.x, var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(max(-1i, -5673i), 1i), -3956i, -93733i), ~vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1382f))), var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) + -1610f)), var_1), func_4(var_0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) * var_1), _wgslsmith_f_op_f32(max(1986f, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f - var_1)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1200f, var_1)), 1500f, any(vec3<bool>(false, true, true))))), ~(~u_input.a), var_1));
}

