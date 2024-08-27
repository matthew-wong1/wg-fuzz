struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    global0 = 2147483647i;
    global0 = ~max(-44505i, 2147483647i);
    let var_0 = _wgslsmith_sub_u32(~firstTrailingBit(11183u), u_input.d) << (max(u_input.d, ~countOneBits(u_input.d)) % 32u);
    var var_1 = vec3<u32>(0u, ~var_0, var_0);
    global0 = _wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.a.x, ~(-11736i))), ~u_input.b.zx);
    return !global1.a.x;
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-select(u_input.a.x, 2649i, arg_0.b.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-103960i, u_input.a.x, u_input.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, -2147483647i), u_input.a.wzx))) >> (abs(vec2<u32>(58585u, 6364u)) % vec2<u32>(32u)), select(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a.x), vec2<i32>(77124i, u_input.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.c, u_input.b.x))), u_input.b.zw, true) >> (~vec2<u32>(u_input.d, 95456u) % vec2<u32>(32u)));
    var_0 = 26389i;
    let var_1 = arg_0.a;
    global1 = arg_0.b;
    global0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(abs(countOneBits(vec2<i32>(u_input.b.x, -22991i))), -firstLeadingBit(vec2<i32>(3621i, u_input.a.x)));
    return all(vec4<bool>(true, true, all(select(!global1.a, global1.a, u_input.d >= 58407u)), _wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1, -222f)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(select(vec2<bool>(true, true), select(!select(vec2<bool>(true, global1.a.x), vec2<bool>(global1.a.x, false), vec2<bool>(global1.a.x, arg_0.x)), select(global1.a, select(vec2<bool>(true, true), global1.a, arg_0.zz), arg_0.x), func_3(Struct_2(arg_0.x, Struct_1(vec2<bool>(true, arg_0.x)), true), -1576f)), !(!arg_0.yy)));
    var var_1 = !select(select(vec4<bool>(true, !global1.a.x, true, true), !(!vec4<bool>(arg_0.x, arg_0.x, global1.a.x, global1.a.x)), !arg_0.x), !(!vec4<bool>(arg_0.x, true, var_0.a.x, false)), false);
    let var_2 = _wgslsmith_f_op_f32(-286f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(864f, 444f))))));
    let var_3 = true;
    let var_4 = Struct_2(all(vec4<bool>(1u == arg_1.x, arg_0.x, global1.a.x, true)), var_0, false);
    return Struct_1(vec2<bool>(any(vec4<bool>(true, true, all(vec3<bool>(true, var_3, true)), true)), !(~arg_1.x > ~arg_1.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_4(vec3<bool>(func_2(), func_3(arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1066f))))), global1.a.x), min(_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(79256u, 4294967295u, arg_1.x), vec3<u32>(arg_1.x, 53459u, u_input.d)), arg_1.zxx), select(firstLeadingBit(select(arg_1.yzx, vec3<u32>(1u, arg_1.x, 36542u), arg_0.x)), ~arg_1.zwz, true)));
    let var_1 = abs(_wgslsmith_clamp_i32(u_input.b.x << (1u % 32u), (-50043i << (arg_1.x % 32u)) & reverseBits(u_input.b.x), u_input.a.x)) << (arg_1.x % 32u);
    let var_2 = Struct_2(any(func_4(select(select(vec3<bool>(global1.a.x, true, true), vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_2.b.a.x, arg_0.x, false)), vec3<bool>(arg_2.b.a.x, true, false), vec3<bool>(var_0.a.x, var_0.a.x, arg_0.x)), vec3<u32>(arg_1.x, arg_1.x ^ 18272u, u_input.d << (4294967295u % 32u))).a), var_0, false);
    global1 = var_2.b;
    var var_3 = u_input.d;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(select(global1.a, !global1.a, global1.a), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(1u, u_input.d, u_input.d, 17240u))), vec4<u32>(19227u, 4294967295u, _wgslsmith_mult_u32(u_input.d, u_input.d), ~_wgslsmith_add_u32(17168u, u_input.d))), Struct_2(true, Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, global1.a.x), global1.a)), false && !global1.a.x));
    global0 = -47284i;
    global0 = u_input.a.x;
    global0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.xxw, vec3<i32>(u_input.c, 95622i, -1i)) & ~u_input.b.yzz, _wgslsmith_div_vec3_i32(u_input.a.xwz, -vec3<i32>(u_input.c, -1i, 0i))), _wgslsmith_dot_vec4_i32(-u_input.a & -u_input.b, -u_input.b)) ^ -17943i;
    let var_0 = global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~max(49626u, reverseBits(~32658u)));
}

