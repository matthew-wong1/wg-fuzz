struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> vec4<u32> {
    global0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(20091u, 1u), vec2<u32>(52445u, 0u)), ~0u) & _wgslsmith_clamp_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(u_input.c, 1u))), vec2<u32>(~9583u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global0.x, 0u), vec4<u32>(1u, u_input.c, u_input.b, 0u))), min(reverseBits(vec2<u32>(1u, u_input.c)), vec2<u32>(u_input.c, u_input.b))), vec2<u32>(_wgslsmith_clamp_u32(abs(u_input.b >> (global0.x % 32u)), 0u, min(u_input.c, 1u)), u_input.c));
    var var_0 = Struct_3(-(~(-vec4<i32>(39889i, u_input.a, u_input.a, u_input.a))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, u_input.b, global0.x, global0.x), vec4<u32>(1u, global0.x, u_input.c, 4294967295u)), vec4<u32>(u_input.b, u_input.c, global0.x, 15999u) ^ vec4<u32>(0u, global0.x, u_input.c, 14239u)), vec4<u32>(9500u, 4294967295u, abs(u_input.b), ~4294967295u)), global0.x, 0u));
    global0 = max(~vec2<u32>(~16641u & var_0.b.x, firstLeadingBit(var_0.b.x >> (50106u % 32u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(46548u, 0u)));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 0u, max(min(13306u, var_0.b.x), ~24070u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 22539u, 0u, 4692u), vec4<u32>(u_input.b, var_0.b.x, 0u, var_0.b.x)) << (4294967295u % 32u)), firstTrailingBit(~vec4<u32>(u_input.c, 13713u, var_0.b.x, u_input.c) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, var_0.b.x) % vec4<u32>(32u)))), ~reverseBits(~(vec4<u32>(global0.x, u_input.b, 4294967295u, 4294967295u) >> (vec4<u32>(13264u, 32783u, var_0.b.x, u_input.b) % vec4<u32>(32u)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = vec2<u32>(~global0.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(~func_3(vec2<f32>(arg_1.a.x, arg_2.b))), vec4<u32>(func_3(vec2<f32>(619f, 2058f)).x, ~global0.x, min(global0.x, 37222u) >> (0u % 32u), countOneBits(~14708u))));
    global0 = vec2<u32>(4294967295u, 58429u);
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(38566u, ~firstLeadingBit(35345u), global0.x), reverseBits(vec3<u32>(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, arg_1.a.x) - arg_1.a.xy)).x, global0.x, 16407u)));
    let var_1 = Struct_2(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -1000f), ~vec2<i32>(countOneBits(_wgslsmith_add_i32(u_input.a, 0i)), arg_1.b.x), -_wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.a, min(-37715i, -13810i)), vec2<i32>(1i, arg_1.c.x)));
    let var_2 = Struct_3(arg_2.a, vec3<u32>(4294967295u, 29142u, firstLeadingBit(28686u)));
    return _wgslsmith_div_f32(294f, var_1.a.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    global0 = ~firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, u_input.c), _wgslsmith_div_vec2_u32(arg_0, vec2<u32>(arg_1.b.x, u_input.b))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, false, false), Struct_2(vec4<f32>(-1000f, -1000f, -1528f, -1031f), arg_2.zx, vec2<i32>(-60134i, u_input.a)), Struct_1(vec4<i32>(u_input.a, -1i, arg_1.a.x, -30203i), -887f, arg_1.a.zxz))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1095f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)))))));
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, -17772i, abs(u_input.a), -max(arg_1.a.x, 0i)), -arg_1.a), -1509f, vec3<i32>(arg_1.a.x, arg_2.x, ~(~reverseBits(arg_1.a.x))));
    let var_2 = var_1.a.wwy;
    var var_3 = ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(-19136i, 14559i ^ var_2.x), var_2.x) >= -(-arg_2.x | var_1.a.x);
    return any(vec4<bool>(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), !(!(-2147483647i <= arg_1.a.x)), true, any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(firstLeadingBit(4294967295u) ^ select(min(11696u, u_input.b), ~u_input.b, func_1(vec2<u32>(13869u, global0.x), Struct_3(vec4<i32>(u_input.a, u_input.a, u_input.a, -11658i), vec3<u32>(37905u, global0.x, 33143u)), vec3<i32>(u_input.a, u_input.a, 8696i))), u_input.c) ^ ~(~vec2<u32>(1u, 4294967295u));
    global0 = abs(firstTrailingBit(~(~vec2<u32>(global0.x, 62084u)) ^ ~vec2<u32>(4294967295u, 4294967295u)));
    let var_0 = Struct_3(vec4<i32>(-1i ^ firstLeadingBit(u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(16251i, u_input.a, 3812i), vec3<i32>(u_input.a, -20608i, -1i)), countOneBits(u_input.a) & -5829i, 2147483647i) >> ((vec4<u32>(~4294967295u, _wgslsmith_add_u32(global0.x, 0u), abs(global0.x), 95146u) ^ vec4<u32>(u_input.c, select(global0.x, 1u, true), u_input.b, _wgslsmith_div_u32(global0.x, global0.x))) % vec4<u32>(32u)), countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 46193u), vec4<u32>(22999u, 3309u, global0.x, u_input.c)), 4000u, global0.x)));
    var var_1 = var_0.a;
    global0 = ~vec2<u32>(13133u, var_0.b.x);
    let var_2 = Struct_1(vec4<i32>(-2147483647i, ~var_0.a.x, ~(-2147483647i), 25186i & var_0.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-314f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(903f, 944f)) + _wgslsmith_f_op_f32(f32(-1f) * -638f))))), ~min(vec3<i32>(0i, _wgslsmith_div_i32(var_0.a.x, var_0.a.x), -18217i), vec3<i32>(0i, -869i, var_0.a.x)));
    var_1 = _wgslsmith_add_vec4_i32(reverseBits(var_0.a), vec4<i32>(u_input.a >> (~(~51495u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(var_1.x, -2147483647i, -1i), 4319i ^ var_2.c.x, ~1i), -select(var_0.a, vec4<i32>(-17387i, -2147483647i, var_0.a.x, 0i), vec4<bool>(false, false, false, true))), ~var_2.a.x, var_2.c.x));
    let var_3 = _wgslsmith_mult_u32(firstTrailingBit(abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, global0.x, 124554u, global0.x)), vec4<u32>(1u, 26066u, 85455u, var_0.b.x)))), ~_wgslsmith_sub_u32(1u, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u) & vec2<u32>(var_0.b.x, var_0.b.x), var_0.b.xy), abs(vec2<u32>(_wgslsmith_add_u32(var_0.b.x, u_input.c), u_input.b | global0.x))), -1357f, _wgslsmith_div_i32(var_2.c.x, 57316i), vec3<i32>(-2147483647i, u_input.a, var_2.a.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b, var_2.b))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_2.b) + vec2<f32>(var_2.b, var_2.b))))))));
}

