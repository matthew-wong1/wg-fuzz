struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec3<i32> {
    let var_0 = min(select(~vec4<i32>(countOneBits(-2147483647i), 1303i, u_input.c.x, ~u_input.a), -(vec4<i32>(-1i) * -vec4<i32>(0i, -1i, -2147483647i, -30867i)), !vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, any(vec4<bool>(true, true, false, true)))), select(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -23931i, 0i, 0i), vec4<i32>(26398i, u_input.a, 0i, 15905i)), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, 2147483647i), _wgslsmith_mult_i32(-1i, 2147483647i), ~u_input.c.x, -2147483647i), true) ^ abs(abs(vec4<i32>(-1i, u_input.a, 17392i, u_input.c.x))));
    var var_1 = _wgslsmith_div_vec3_u32(u_input.b, ~vec3<u32>(_wgslsmith_add_u32(countOneBits(arg_1.x), u_input.b.x), arg_1.x, 16179u));
    let var_2 = min(_wgslsmith_dot_vec3_i32(-firstLeadingBit(var_0.xwz) << (vec3<u32>(arg_1.x, u_input.b.x, ~arg_1.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, u_input.c.x, 0i)), _wgslsmith_div_vec3_i32(u_input.c, u_input.c)) << (u_input.b % vec3<u32>(32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(~u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-23446i, -1i, 19017i), vec3<i32>(1i, 38678i, u_input.c.x))), u_input.c.xx));
    var_1 = ~countOneBits(~vec3<u32>(~u_input.b.x, 60714u, ~2605u));
    var var_3 = u_input.c.zx;
    return -var_0.zxx;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = u_input.c << (u_input.b % vec3<u32>(32u));
    var var_1 = ~var_0.x;
    var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(var_0, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a, var_0.x), vec3<i32>(14599i, u_input.a, 0i), var_0)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-30597i, u_input.a, -1i), vec3<i32>(2147483647i, 0i, var_0.x), arg_2), max(var_0, var_0)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<i32>(0i, 19414i, 0i)), u_input.c), min(vec3<i32>(u_input.a, -1i, -1i) & vec3<i32>(var_0.x, var_0.x, 0i), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1920f, arg_1.b, arg_1.b, arg_1.b)), ~vec3<u32>(u_input.b.x, u_input.b.x, 53190u))), _wgslsmith_div_vec3_i32(-vec3<i32>(0i, 0i, var_0.x), var_0 << (arg_0 % vec3<u32>(32u))) ^ u_input.c));
    var_1 = _wgslsmith_dot_vec2_i32(u_input.c.xz, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, ~_wgslsmith_dot_vec2_i32(var_0.xz, u_input.c.xy)), var_0.xx, vec2<i32>(-(0i >> (arg_0.x % 32u)), var_0.x)));
    var var_2 = reverseBits(max(vec2<i32>(abs(u_input.a), var_0.x) << (_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, 23092u)), vec2<u32>(44454u, 11033u)) % vec2<u32>(32u)), var_0.yx));
    return u_input.a & 2147483647i;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1373f * _wgslsmith_f_op_f32(-299f - _wgslsmith_f_op_f32(arg_2.x * 161f))) * 1227f), -583f));
    let var_1 = arg_1;
    return 1i | func_2(abs(u_input.b), var_1, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(-select(vec4<i32>(25043i, u_input.c.x, u_input.a, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(22659i, 2147483647i, u_input.c.x, u_input.a), vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x)), any(vec2<bool>(false, true))) << (((firstLeadingBit(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x)) >> (~vec4<u32>(6058u, u_input.b.x, 54984u, 4294967295u) % vec4<u32>(32u))) >> ((select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(11014u, u_input.b.x, 4294967295u, u_input.b.x), vec4<bool>(false, true, true, true)) << ((vec4<u32>(u_input.b.x, 76258u, u_input.b.x, 4294967295u) << (vec4<u32>(u_input.b.x, u_input.b.x, 25360u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec4<i32>(abs(u_input.a), ~11879i, u_input.a >> (u_input.b.x % 32u), u_input.a >> (5697u % 32u)), vec4<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a), ~u_input.a, u_input.a | u_input.a), true) | vec4<i32>(-_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), ~u_input.a, i32(-1i) * -70330i, ~0i), abs(vec4<i32>(~28907i ^ func_1(8174u, Struct_1(u_input.b.x, 2424f), vec2<f32>(1000f, -1430f), u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -45184i, u_input.c.x, -1480i) & vec4<i32>(u_input.a, u_input.c.x, 11561i, -19967i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x)), 5366i, -_wgslsmith_div_i32(-1i, u_input.a))));
    var var_1 = min(vec3<i32>(_wgslsmith_sub_i32(-14891i, -_wgslsmith_add_i32(-64671i, u_input.c.x)), -51674i, ~13817i), vec3<i32>(-50733i, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, 0i), ~var_0.zx), ~u_input.c.x));
    let var_2 = u_input.b.x;
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(u_input.b.xx), firstLeadingBit(vec2<u32>(abs(4294967295u), var_2))), select(~(~(~u_input.b.yx)), vec2<u32>(~reverseBits(var_2), u_input.b.x), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    var var_4 = u_input.b.x;
    let var_5 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, _wgslsmith_div_u32(var_3.x, 0u)), vec3<u32>(~u_input.b.x, ~u_input.b.x, var_3.x)), u_input.b) | u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(756i, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(837f, _wgslsmith_f_op_f32(trunc(538f))))), -1235f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1068f, -1482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(124f))))), 1f), func_2(u_input.b, Struct_1(29749u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-865f - 148f), 1211f))), !(any(vec4<bool>(false, true, true, false)) & false)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -369f));
}

