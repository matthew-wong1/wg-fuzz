struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(arg_1, _wgslsmith_dot_vec3_i32(u_input.a.zxw, vec3<i32>(-1i & min(arg_1.b.x, arg_1.b.x), -firstTrailingBit(-40561i), _wgslsmith_add_i32(-2147483647i ^ arg_1.b.x, -u_input.e.x))), ~vec2<u32>(33517u, _wgslsmith_add_u32(abs(u_input.c.x), 1u)));
    let var_1 = vec4<bool>(var_0.c.x != ~(~min(1u, 1u)), true, (all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))) || true) && all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, false), any(vec3<bool>(false, false, true)))), any(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))));
    let var_2 = u_input.b.x;
    let var_3 = u_input.c;
    var var_4 = -1103f;
    return var_1.x;
}

fn func_2() -> bool {
    var var_0 = select(vec4<bool>(all(vec3<bool>(true, true, true)), false, true, func_3(21345u, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -201f), u_input.e, -2431f))), !vec4<bool>(false, true, 8419i == select(0i, -1i, false), func_3(u_input.c.x, Struct_1(-606f, u_input.e, 667f))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), u_input.b.x == 21171u), !any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, false))));
    var_0 = vec4<bool>(!var_0.x, false, false, var_0.x);
    var var_1 = Struct_3(~u_input.b.x, max(_wgslsmith_mod_vec3_u32(min(vec3<u32>(4294967295u, 39337u, u_input.b.x), vec3<u32>(61991u, 5304u, 0u)) << (max(u_input.c.wyw, vec3<u32>(u_input.c.x, u_input.c.x, u_input.d)) % vec3<u32>(32u)), ~u_input.b.xwy), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 34019u, 5347u), u_input.c.yyw)), !(any(!vec2<bool>(var_0.x, true)) | func_3(u_input.b.x, Struct_1(-1620f, vec2<i32>(9280i, u_input.a.x), 1132f))), Struct_1(_wgslsmith_f_op_f32(sign(-273f)), u_input.a.yz, 369f), Struct_2(Struct_1(492f, min(u_input.e, u_input.a.zz), 549f), _wgslsmith_sub_i32(_wgslsmith_add_i32(28588i, firstTrailingBit(u_input.a.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -20755i), vec4<i32>(u_input.e.x, u_input.e.x, -33541i, u_input.a.x))), u_input.c.xx));
    var var_2 = var_1.e.a.b.x;
    var_1 = Struct_3(4294967295u, var_1.b, select(4294967295u > firstLeadingBit(abs(var_1.e.c.x)), var_0.x, all(!vec3<bool>(false, true, var_1.c))), Struct_1(954f, u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d.c))))), var_1.e);
    return all(var_0.yxx);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    let var_0 = vec4<bool>(false, any(!vec4<bool>(false, func_2(), true, u_input.d < u_input.d)), any(!vec4<bool>(true, true, true, func_3(u_input.d, arg_0))), true);
    let var_1 = Struct_3(4952u >> (firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(21269u, u_input.b.x, u_input.c.x, u_input.c.x), u_input.c), ~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 19465u))) % 32u), vec3<u32>(u_input.d, u_input.b.x, ~u_input.c.x) ^ _wgslsmith_sub_vec3_u32(u_input.b.zyx, max(select(u_input.c.yyy, vec3<u32>(u_input.b.x, u_input.b.x, u_input.c.x), false), vec3<u32>(1u, u_input.d, u_input.b.x))), var_0.x, arg_0, Struct_2(arg_0, 0i, firstLeadingBit(max(vec2<u32>(27863u, u_input.b.x), ~u_input.b.xz))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1281f, -282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2350f - _wgslsmith_f_op_f32(arg_1.x + -948f))), -991f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, 294f, -685f, -455f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.c, arg_0.a, 1323f, arg_0.a), vec4<f32>(arg_1.x, arg_0.a, arg_1.x, arg_1.x)))))));
    let var_3 = Struct_2(var_1.e.a, abs(_wgslsmith_mult_i32(arg_0.b.x, reverseBits(u_input.e.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(9992u, var_1.a, u_input.d, var_1.b.x), vec4<u32>(4294967295u, 50923u, u_input.d, 76690u)) % 32u))), vec2<u32>(0u, u_input.c.x));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(var_2.x, 767f)), _wgslsmith_f_op_f32(select(1405f, _wgslsmith_f_op_f32(-261f * _wgslsmith_f_op_f32(-arg_0.a)), var_1.c))) + arg_1.x);
    return ~var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.www;
    var var_1 = u_input.c.xxx;
    var var_2 = -_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~max(vec4<i32>(0i, var_0.x, 2147483647i, 1i), u_input.a), u_input.a), firstTrailingBit(countOneBits(select(u_input.a, u_input.a, true))));
    var var_3 = Struct_3(_wgslsmith_sub_u32(~func_1(Struct_1(552f, u_input.e, 896f), _wgslsmith_div_vec3_f32(vec3<f32>(1182f, 1285f, -348f), vec3<f32>(521f, 763f, 1244f))), ~0u), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(u_input.d), ~var_1.x, _wgslsmith_dot_vec2_u32(u_input.b.yw, var_1.yy)), u_input.b.yxy), vec3<u32>(~_wgslsmith_add_u32(u_input.d, 0u), ~(u_input.b.x ^ 41226u), var_1.x), u_input.c.xyz), u_input.a.x > -u_input.a.x, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -952f) * _wgslsmith_f_op_f32(select(-2954f, 866f, true))))), var_0.xy, _wgslsmith_f_op_f32(f32(-1f) * -621f)), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-596f, -277f)), -253f)), abs(var_0.xz) & vec2<i32>(34936i, var_2.x), 2659f), var_0.x, ~min(var_1.zy, ~var_1.xy)));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_3.d.c)), _wgslsmith_f_op_f32(var_3.e.a.a - 627f)), vec2<f32>(_wgslsmith_f_op_f32(floor(801f)), _wgslsmith_f_op_f32(-var_3.e.a.c)), true));
    var var_5 = var_3.e.a;
    var_2 = vec4<i32>(countOneBits(29450i), -3024i, -(~u_input.a.x), _wgslsmith_div_i32(firstTrailingBit(1i & countOneBits(var_2.x)), i32(-1i) * -27175i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2020f + var_3.d.a), _wgslsmith_f_op_f32(sign(var_4.x))) - _wgslsmith_f_op_vec2_f32(ceil(var_4))))), vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(1269u, u_input.d, u_input.d)), 0u, 47340u, ~4294967295u), var_5.c);
}

