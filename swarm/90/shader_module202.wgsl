struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    return 1488f;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(func_3(4294967295u));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1403f)), _wgslsmith_div_f32(260f, -1643f)), 1f))), u_input.d, 1u, abs(-reverseBits(vec3<i32>(u_input.d, u_input.d, -12041i)) | ~reverseBits(vec3<i32>(-4630i, 28646i, u_input.d))), Struct_1(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true)));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(514f, 712f, true))))))));
    var_0 = -696f;
    let var_2 = abs(countOneBits(vec4<u32>(~(u_input.c.x & 4294967295u), _wgslsmith_mult_u32(~7357u, 42949u | u_input.b.x), _wgslsmith_add_u32(u_input.c.x, var_1.c), ~1u)));
    return Struct_3(var_1.d);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec2<i32>) -> u32 {
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    return 1u;
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_2(391f, _wgslsmith_add_i32(4482i, ~_wgslsmith_mult_i32(arg_1.d.x, u_input.d) >> (u_input.c.x % 32u)), ~(~(~u_input.a)) | func_4(func_2(), Struct_3(-vec3<i32>(63727i, -2147483647i, 1i)), arg_1, vec2<i32>(-1i, _wgslsmith_mult_i32(2234i, 34725i))), _wgslsmith_add_vec3_i32(-select(~vec3<i32>(arg_1.d.x, arg_1.a, u_input.d), -vec3<i32>(arg_1.d.x, -7208i, 0i), select(arg_1.c.a.xyz, vec3<bool>(false, arg_0, arg_1.c.a.x), false)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.d, arg_1.a), min(vec3<i32>(u_input.d, arg_1.d.x, 1i), vec3<i32>(-21926i, 0i, arg_1.d.x))), vec3<i32>(-u_input.d, 0i, ~u_input.d), (arg_1.d.x > 1i) & true)), Struct_1(select(vec4<bool>(true, true, any(vec3<bool>(false, arg_0, true)), true), select(vec4<bool>(arg_0, false, arg_0, true), !arg_1.c.a, false), arg_1.c.a.x)));
    return -min(32916i, _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(u_input.d, 2147483647i)) << ((var_0.c ^ max(var_0.c, 1u)) % 32u));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> i32 {
    global0 = array<vec2<f32>, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a)), arg_1.a, -311f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-169f, 294f, arg_1.a), vec3<f32>(arg_1.a, arg_1.a, 1623f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, arg_1.a)), select(arg_1.e.a.wyz, arg_1.e.a.xxw, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-715f, arg_1.a, 200f) - vec3<f32>(arg_1.a, arg_1.a, 1167f)), vec3<f32>(arg_1.a, arg_1.a, arg_1.a))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -458f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1346f, arg_1.a, arg_1.a)), vec3<f32>(arg_1.a, 320f, arg_1.a))), select(vec3<bool>(true, true, true), arg_1.e.a.xzy, !(!arg_1.e.a.x)))));
    global0 = array<vec2<f32>, 12>();
    var var_1 = Struct_3(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.d.x, arg_1.b, 64595i), func_2().a)));
    var var_2 = Struct_2(-119f, i32(-1i) * -reverseBits(28034i), u_input.a, vec3<i32>((_wgslsmith_div_i32(var_1.a.x, -2147483647i) & (var_1.a.x << (1u % 32u))) << ((_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.c.xz) | ~0u) % 32u), -u_input.d, 1i), arg_1.e);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~(~(i32(-1i) * -9868i)), 54163i, arg_1.b, -3019i), _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(var_1.a.x, arg_1.b, -2147483647i, 1i)), firstLeadingBit(vec4<i32>(var_2.d.x, -257i, 9223i, u_input.d)) << (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 49892u, var_2.c, arg_1.c), u_input.c)) % vec4<u32>(32u)), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.d, var_1.a.x, -1i, -2147483647i)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    let var_0 = u_input.c;
    var var_1 = Struct_4(0i, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1389f - 202f))), -719f, -1396f, _wgslsmith_f_op_f32(-348f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(512f + 183f))))), arg_0, max(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(arg_2, u_input.d)), vec2<i32>(arg_2, 3962i)) << (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), vec2<i32>(0i, func_1(arg_1.x && false, Struct_4(arg_2, vec4<f32>(1839f, -1401f, 650f, -500f), Struct_1(arg_0.a), vec2<i32>(u_input.d, u_input.d))))));
    let var_2 = reverseBits(_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_2, arg_2, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, -43658i, -1i), vec3<i32>(arg_2, arg_2, 15140i), vec3<i32>(-1i, 1i, -2147483647i))), _wgslsmith_sub_vec3_i32(-(vec3<i32>(arg_2, 33982i, -2147483647i) & vec3<i32>(-2147483647i, 1i, -14193i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, var_1.d.x, -11160i), vec3<i32>(u_input.d, -10529i, var_1.a)))));
    return -(~0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.d & u_input.d);
    let var_1 = _wgslsmith_f_op_f32(-586f * 1061f);
    global0 = array<vec2<f32>, 12>();
    var var_2 = vec3<i32>(func_6(Struct_1(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), !vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true), func_5(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), Struct_2(_wgslsmith_f_op_f32(var_1 - -876f), func_1(false, Struct_4(28356i, vec4<f32>(var_1, var_1, var_1, var_1), Struct_1(vec4<bool>(false, true, false, false)), vec2<i32>(2147483647i, -1i))), _wgslsmith_sub_u32(u_input.b.x, 4294967295u), vec3<i32>(-15607i, 44793i, -6742i), Struct_1(vec4<bool>(false, true, true, false))))), -2147483647i, firstTrailingBit(u_input.d));
    let var_3 = 0i;
    var var_4 = ~(~(~u_input.b.zz)) ^ u_input.c.yz;
    var_2 = -(vec3<i32>(-1i) * -(~_wgslsmith_mod_vec3_i32(vec3<i32>(35935i, -2147483647i, 2147483647i), vec3<i32>(var_0, var_0, var_2.x))));
    let var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_2.x, -2008f);
}

