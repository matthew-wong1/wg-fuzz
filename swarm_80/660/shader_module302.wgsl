struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec2<i32> {
    var var_0 = arg_0.x >> (~(~0u) % 32u);
    let var_1 = Struct_1(vec2<i32>(7200i, arg_1.x), _wgslsmith_div_u32(arg_0.x, arg_0.x), u_input.a.wz);
    var_0 = var_1.c.x << (var_1.b % 32u);
    var_0 = 1u;
    let var_2 = -250f;
    return var_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(arg_0.a, func_3(u_input.a, _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0.a.x, -8605i), abs(arg_0.a)))), arg_0.c.x, vec2<u32>(~u_input.a.x, reverseBits(~u_input.a.x)));
    var var_1 = Struct_1(arg_0.a, arg_0.b, arg_0.c);
    let var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.x, 8052u), vec2<u32>(4294967295u, 1u)), abs(vec2<u32>(11787u, 32293u))), ~(vec2<u32>(arg_0.c.x, ~arg_0.c.x) >> ((vec2<u32>(arg_0.c.x, 37371u) >> (~var_1.c % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_3 = _wgslsmith_add_vec4_i32(firstLeadingBit(abs(~(vec4<i32>(25992i, -2147483647i, var_0.a.x, var_1.a.x) | vec4<i32>(18950i, arg_0.a.x, 34911i, arg_0.a.x)))), select(select(-vec4<i32>(arg_0.a.x, var_0.a.x, -1i, -6448i) << (_wgslsmith_add_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 34824i, 1i, -8057i), vec4<i32>(var_1.a.x, 2147483647i, 34784i, arg_0.a.x)) << (u_input.a % vec4<u32>(32u)), true), abs(select(vec4<i32>(var_0.a.x, 2147483647i, var_0.a.x, 11814i), select(vec4<i32>(-16276i, var_1.a.x, 15355i, arg_0.a.x), vec4<i32>(-1i, 2147483647i, -2147483647i, arg_0.a.x), arg_2.x), arg_2.x)), !(!select(vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(false, arg_2.x, true, false), arg_2.x))));
    let var_4 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))))))));
    return ~(firstTrailingBit(~_wgslsmith_mult_u32(1u, var_1.b)) ^ _wgslsmith_mod_u32(var_1.c.x, ~_wgslsmith_add_u32(arg_0.c.x, u_input.a.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    var var_0 = Struct_1(-_wgslsmith_clamp_vec2_i32(vec2<i32>(abs(0i), -2147483647i >> (arg_0.x % 32u)), vec2<i32>(-2147483647i, -2147483647i), firstLeadingBit(vec2<i32>(55065i, -1i))), func_2(Struct_1(vec2<i32>(1i, 1i), 4294967295u, vec2<u32>(arg_1, arg_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(275f, -947f) * vec2<f32>(346f, 804f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) ^ _wgslsmith_mod_u32(32065u, _wgslsmith_div_u32(arg_0.x, arg_0.x) << (42080u % 32u)), vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, 1u)), 91071u));
    var var_1 = -21576i;
    return reverseBits(44146i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(34400i, 0i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<i32>(min(-50674i, _wgslsmith_mod_i32(-1i, 7105i)), 62304i)), 18588u & u_input.a.x, u_input.a.yx);
    let var_1 = -375f;
    var_0 = Struct_1(vec2<i32>(max(var_0.a.x, _wgslsmith_sub_i32(var_0.a.x, var_0.a.x)) ^ 2147483647i, func_1(~firstTrailingBit(vec3<u32>(1u, 4294967295u, 27655u)), countOneBits(firstLeadingBit(4294967295u)))), ~(~1u), vec2<u32>(~_wgslsmith_mod_u32(countOneBits(0u), select(var_0.b, 6251u, true)), func_2(Struct_1(~vec2<i32>(var_0.a.x, -38700i), ~u_input.a.x, u_input.a.yy >> (vec2<u32>(var_0.b, u_input.a.x) % vec2<u32>(32u))), vec2<f32>(153f, -1121f), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var_0 = Struct_1(select(vec2<i32>(0i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(-1i, var_0.a.x)))), var_0.a ^ ~var_0.a, vec2<bool>(true, false)), u_input.a.x, ~u_input.a.zw);
    var var_2 = _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(-54946i);
}

