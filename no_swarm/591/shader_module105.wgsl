struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    var var_0 = vec3<bool>(true, all(select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, true, arg_1), any(vec4<bool>(false, true, arg_1, arg_1))), !select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, arg_1, true)), arg_1)), true && arg_1);
    let var_1 = vec4<bool>(all(!select(var_0.xx, !var_0.zx, !var_0.yz)), all(vec3<bool>(false, any(vec3<bool>(var_0.x, true, var_0.x)), arg_1)), !any(vec2<bool>(any(vec3<bool>(arg_1, var_0.x, true)), true)), select(false, var_0.x, true));
    var var_2 = Struct_1(-34801i, 10619u, vec4<i32>(u_input.a.x, ~(-56994i), u_input.a.x, _wgslsmith_dot_vec2_i32(abs(reverseBits(u_input.a.yx)), ~(vec2<i32>(u_input.a.x, -2147483647i) ^ u_input.a.xx))));
    var var_3 = Struct_1(arg_0.x, firstLeadingBit(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_2.b, 66814u), vec2<u32>(u_input.b.x, var_2.b)), select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yy, var_1.zw))), vec4<i32>(~u_input.a.x, i32(-1i) * -17947i, _wgslsmith_clamp_i32(max(1i, 8360i), arg_0.x, min(-11405i, 1i)), 0i));
    var var_4 = var_3.c.x | ~arg_0.x;
    return u_input.b.x;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_i32(arg_0 & -_wgslsmith_div_i32(arg_0, u_input.a.x), _wgslsmith_add_i32(firstTrailingBit(-arg_0), _wgslsmith_add_i32(2147483647i, -2147483647i) >> (func_3(vec4<i32>(1i, u_input.a.x, arg_0, -27845i), arg_1.x) % 32u))), _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), u_input.b), ~4294967295u), -min(vec4<i32>(u_input.a.x, arg_0, -3322i, -31783i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -8466i, u_input.a.x, 1i), vec4<i32>(14926i, u_input.a.x, -15512i, arg_0), vec4<i32>(-2147483647i, arg_0, u_input.a.x, u_input.a.x)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, u_input.a.x), vec4<i32>(u_input.a.x, arg_0, 4335i, arg_0), vec4<i32>(arg_0, arg_0, u_input.a.x, -2147483647i)))));
    let var_1 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b), vec3<u32>(26831u, _wgslsmith_mod_u32(u_input.b.x, var_0.b), ~u_input.b.x) ^ _wgslsmith_add_vec3_u32(vec3<u32>(63613u, 109995u, u_input.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 24141u, 0u), u_input.b)));
    var var_2 = Struct_1(~(-(-arg_0 & 6405i)), var_0.b, _wgslsmith_sub_vec4_i32(var_0.c, min(~vec4<i32>(var_0.a, -25651i, u_input.a.x, 64184i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, 54263i, arg_0), var_0.c)) | vec4<i32>(_wgslsmith_mod_i32(-48122i, -1i), -2147483647i, 19963i, _wgslsmith_clamp_i32(-10819i, 18346i, 22939i))));
    let var_3 = _wgslsmith_mod_vec4_i32(~var_0.c, ~(~max(-vec4<i32>(-2147483647i, -2147483647i, arg_0, var_0.c.x), ~vec4<i32>(u_input.a.x, 8674i, 17726i, u_input.a.x))));
    return global0[_wgslsmith_index_u32(var_2.b, 6u)];
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    let var_0 = 1180f;
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 6u)];
    var var_2 = global0[_wgslsmith_index_u32(36659u, 6u)];
    return func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(~(var_2.a << (4294967295u % 32u)), var_2.a, var_2.a, -var_1.a), ~var_2.c >> (~vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, var_2.b) % vec4<u32>(32u))), vec4<bool>(-4191i > var_2.c.x, false, _wgslsmith_f_op_f32(step(1f, 2374f)) <= 1487f, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), 4294967295u == u_input.b.x), vec2<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    global0 = array<Struct_1, 6>();
    let var_1 = Struct_1(-_wgslsmith_dot_vec2_i32(arg_0.c.zx, arg_1.c.xx), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b, select(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 18539u), true)), _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(1u, arg_1.b)), ~_wgslsmith_mult_u32(u_input.b.x, 64714u)), arg_1.b ^ ~(arg_1.b << (1u % 32u)), 60455u >> (_wgslsmith_mult_u32(1u << (arg_1.b % 32u), firstTrailingBit(20640u)) % 32u)), -vec4<i32>(~12527i, -48425i, _wgslsmith_clamp_i32(u_input.a.x, ~u_input.a.x, -u_input.a.x), min(arg_0.c.x, -2147483647i) >> (countOneBits(52716u) % 32u)));
    let var_2 = arg_1.a;
    let var_3 = u_input.b.zx;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    let var_0 = func_4(func_1(), global0[_wgslsmith_index_u32(u_input.b.x, 6u)]);
    var var_1 = _wgslsmith_f_op_f32(-1000f - -347f);
    let var_2 = global0[_wgslsmith_index_u32(23377u, 6u)];
    global0 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.xzy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(774f * -1020f), _wgslsmith_f_op_f32(max(-196f, -1082f))))), (func_3(countOneBits(vec4<i32>(var_0.a, u_input.a.x, var_2.a, -2147483647i)), true) & ~max(4294967295u, var_2.b)) << ((~_wgslsmith_sub_u32(u_input.b.x, 4294967295u) ^ 34028u) % 32u), ~(vec3<u32>(~var_0.b, var_2.b, u_input.b.x) << (~(~u_input.b) % vec3<u32>(32u))), u_input.b.x | ~reverseBits(1u));
}

