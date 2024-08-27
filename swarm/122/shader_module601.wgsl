struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -449f), -(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -17650i, arg_1.x), arg_1.wzx) | reverseBits(_wgslsmith_mod_i32(arg_1.x, -1i))), -241f, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1273f), vec2<f32>(arg_0, arg_0))) + vec2<f32>(_wgslsmith_f_op_f32(259f - arg_0), _wgslsmith_div_f32(arg_0, arg_0))), abs(~arg_1.xw), vec4<i32>(firstTrailingBit(arg_1.x), ~_wgslsmith_sub_i32(arg_1.x, 0i), ~arg_1.x, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - -627f), -245f))));
    global0 = array<vec3<bool>, 29>();
    var var_1 = firstTrailingBit(-firstTrailingBit(_wgslsmith_sub_vec4_i32(~arg_1, arg_1)));
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    return var_0;
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    let var_0 = true;
    let var_1 = select(u_input.a, ~countOneBits(~(~vec2<u32>(arg_1, arg_1))), select(!select(vec2<bool>(var_0, true), vec2<bool>(true, var_0), all(vec4<bool>(false, false, true, var_0))), vec2<bool>(false, var_0), vec2<bool>(!any(global0[_wgslsmith_index_u32(1u, 29u)]), !(!var_0))));
    global0 = array<vec3<bool>, 29>();
    var var_2 = 0u;
    var var_3 = -(_wgslsmith_sub_i32(arg_0, _wgslsmith_clamp_i32(arg_0 << (41246u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, 5194i)), arg_0)) ^ (i32(-1i) * -(27442i & arg_0)));
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0.c, arg_0.d.c).d.a.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(996f + arg_0.d.d)) + func_2(_wgslsmith_div_f32(-740f, arg_0.a), -vec4<i32>(2147483647i, arg_0.d.c.x, arg_0.b, -20879i)).a)) * _wgslsmith_div_f32(arg_0.d.d, 736f));
    global0 = array<vec3<bool>, 29>();
    var var_1 = _wgslsmith_add_vec2_i32(reverseBits(select(-vec2<i32>(-14443i, arg_0.d.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.b, arg_0.d.b.x), arg_0.d.c.zw), vec2<bool>(true, true))), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-14152i, arg_0.d.b.x), vec2<i32>(1i, arg_0.d.c.x))), arg_0.b)) << (_wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(reverseBits(u_input.a), ~u_input.a), vec2<u32>(_wgslsmith_add_u32(select(u_input.a.x, arg_1, true), 0u), firstTrailingBit(41260u))) % vec2<u32>(32u));
    global0 = array<vec3<bool>, 29>();
    var var_2 = all(!vec2<bool>(all(vec2<bool>(true, false)) | true, ~u_input.a.x == ~arg_1));
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(-758f, vec4<i32>(1i, 1i, 1i, 1i) | (vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(35685u, 22589u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), select(max(abs(4294967295u), 0u & min(u_input.a.x, 0u)), u_input.a.x, !func_3(max(-1i, 5650i), ~u_input.a.x)));
    var_0 = Struct_2(var_0.a, 78336i, -639f, func_4(Struct_2(867f, -2147483647i, 172f, var_0.d), ~38969u).d);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.d.d, 109f))), _wgslsmith_f_op_f32(var_0.d.a.x + -654f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.a.x - var_0.a))))));
    let var_2 = false | any(!global0[_wgslsmith_index_u32(max(0u << (u_input.a.x % 32u), u_input.a.x >> (28325u % 32u)), 29u)]);
    var var_3 = var_2;
    return func_2(var_0.a, var_0.d.c).d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, -1000f), _wgslsmith_f_op_vec2_f32(trunc(arg_1.d.a))) - arg_0.a) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.a.x, arg_0.d, -2791f, 598f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(413f, arg_0.a.x, arg_0.d, var_0.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(891f, -1000f, var_0.x, 218f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.d, arg_0.d, arg_0.a.x, var_0.x) - vec4<f32>(394f, arg_0.a.x, var_0.x, var_0.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_1.c, var_0.x, var_0.x) - vec4<f32>(arg_0.d, 667f, 459f, arg_1.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1047f, var_0.x, 321f, var_0.x) + vec4<f32>(arg_0.d, arg_0.d, 868f, -657f)))))));
    global0 = array<vec3<bool>, 29>();
    let var_2 = arg_1;
    var var_3 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.a.x, u_input.a.x, 1995u), ~vec3<u32>(1u, u_input.a.x, 1u), global0[_wgslsmith_index_u32(u_input.a.x, 29u)]) & ~vec3<u32>(abs(0u), ~u_input.a.x, max(1u, 4294967295u)), ~vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(98350u, 0u), _wgslsmith_div_u32(u_input.a.x, 31522u) | ~5847u));
    return _wgslsmith_f_op_f32(-892f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.d.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-1007f, ~((i32(-1i) * -24508i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 7853i, -4864i, -37280i), vec4<i32>(-6417i, 248i, -2147483647i, -1i))) << (u_input.a.x % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(), Struct_2(-1055f, 2147483647i, -1364f, Struct_1(vec2<f32>(-1337f, -533f), vec2<i32>(1i, -1i), vec4<i32>(1i, 25284i, -3719i, 1i), 164f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-844f * _wgslsmith_f_op_f32(floor(464f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-433f - 911f), 1449f)), all(vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1047f, 2347f))) * vec2<f32>(_wgslsmith_f_op_f32(-227f - -1173f), 1f)), countOneBits(-vec2<i32>(-12568i, 0i) << (vec2<u32>(16208u, u_input.a.x) % vec2<u32>(32u))), ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-36683i, -1i, 1i, -1i), vec4<i32>(-2147483647i, -17553i, 19496i, 0i), vec4<i32>(-63911i, 0i, -9149i, 40663i)) | vec4<i32>(1i, 1i, 0i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1348f, 978f, false))))));
    var var_1 = ~(~reverseBits(vec3<u32>(u_input.a.x, 1u, u_input.a.x) & vec3<u32>(u_input.a.x, 23627u, 84078u)) & ~vec3<u32>(4294967295u, ~4294967295u, 7694u));
    global0 = array<vec3<bool>, 29>();
    let var_2 = vec3<i32>(((abs(var_0.d.b.x) >> (abs(var_1.x) % 32u)) ^ var_0.d.c.x) << ((53524u & countOneBits(~u_input.a.x)) % 32u), ~var_0.d.c.x, var_0.d.b.x);
    var var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), var_0.d.d), -firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(69046i, var_0.b), vec2<i32>(21050i, 15091i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b, var_2.x), var_0.d.b, vec2<i32>(0i, -22665i)))), 368f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1495f) * func_4(var_0, u_input.a.x).c)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_0.b, var_2.x), var_0.d.c) << (vec4<u32>(countOneBits(var_1.x), u_input.a.x, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.x), vec2<u32>(u_input.a.x, 42779u))) % vec4<u32>(32u))).d);
    var_1 = vec3<u32>(~(~u_input.a.x & var_1.x), var_1.x, 50225u);
    var_3 = var_0;
    global0 = array<vec3<bool>, 29>();
    var var_4 = ~(~var_2.x) > (i32(-1i) * -(~(~(-55427i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-340f, _wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(trunc(-953f))), var_3.c, -337f), 1u, reverseBits(vec3<u32>(var_1.x, 1u, min(~var_1.x, var_1.x & u_input.a.x))));
}

