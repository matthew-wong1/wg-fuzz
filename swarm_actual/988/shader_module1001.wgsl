struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    var var_0 = vec3<u32>(firstTrailingBit(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 17001u, u_input.d.x), countOneBits(vec3<u32>(5559u, 0u, u_input.b)))), ~(_wgslsmith_div_u32(47082u, select(u_input.a, u_input.b, false)) << (((60315u & u_input.b) | ~u_input.b) % 32u)), 0u);
    var var_1 = Struct_2(1u);
    let var_2 = max(u_input.c.zyy, min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x & -1i, u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, 31713i, u_input.c.x), vec3<i32>(arg_2.x, u_input.c.x, -13110i))), arg_2.xyw), u_input.c.xxx));
    var_1 = Struct_2(select(countOneBits(1u) | ~var_0.x, ~var_1.a, all(vec2<bool>(true, true))));
    var_1 = Struct_2(var_1.a);
    return i32(-1i) * -u_input.c.x;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(45642u, _wgslsmith_mod_u32(4294967295u, arg_0.d))), u_input.d);
    return arg_3;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.d >> (~_wgslsmith_mod_vec2_u32(u_input.d, reverseBits(vec2<u32>(26661u, 4294967295u))) % vec2<u32>(32u));
    let var_1 = 1488f;
    let var_2 = any(vec4<bool>(true, true, true, true));
    var_0 = ~u_input.d;
    var var_3 = select(vec4<i32>(_wgslsmith_div_i32(u_input.c.x, ~select(u_input.c.x, u_input.c.x, false)), -5222i, ~_wgslsmith_mod_i32(0i, ~u_input.c.x), 4800i), _wgslsmith_mod_vec4_i32(select(~(u_input.c | vec4<i32>(-39074i, 21287i, 0i, u_input.c.x)), u_input.c, _wgslsmith_f_op_f32(-224f - 558f) == _wgslsmith_div_f32(var_1, -605f)), firstTrailingBit(func_4(Struct_3(vec4<i32>(u_input.c.x, 32811i, 2147483647i, u_input.c.x), true, vec2<bool>(true, true), var_0.x, vec3<bool>(var_2, var_2, true)), func_3(vec2<f32>(-1000f, -2299f), var_1, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.x), _wgslsmith_f_op_f32(var_1 * 777f), u_input.c))), select(select(select(select(vec4<bool>(true, true, var_2, var_2), vec4<bool>(var_2, false, var_2, false), vec4<bool>(false, false, var_2, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, var_2, var_2, var_2)), !vec4<bool>(var_2, var_2, var_2, var_2), all(select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, var_2), var_2))), select(select(select(vec4<bool>(true, true, true, var_2), vec4<bool>(var_2, true, true, var_2), true), vec4<bool>(false, true, var_2, false), any(vec4<bool>(var_2, false, true, true))), vec4<bool>(var_2, true, any(vec4<bool>(true, var_2, true, var_2)), select(var_2, var_2, true)), vec4<bool>(var_2, true, var_2, !var_2)), true));
    return Struct_3(~_wgslsmith_add_vec4_i32(u_input.c, -max(u_input.c, u_input.c)), var_2, select(vec2<bool>(var_2, var_2), !(!select(vec2<bool>(false, true), vec2<bool>(var_2, var_2), vec2<bool>(var_2, false))), all(select(!vec3<bool>(true, var_2, true), !vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, false, var_2)))), 0u, vec3<bool>(var_2, any(vec2<bool>(false, var_2)), var_2));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    var var_0 = false;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-432f))), 760f, arg_1.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a)), -113f)))));
    var_0 = arg_0.b;
    var var_2 = Struct_4(var_1, func_2(), ~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.d, arg_0.d), u_input.d, u_input.d), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0.d), vec2<u32>(arg_0.d, u_input.a), vec2<u32>(0u, arg_0.d))) << ((vec2<u32>(~1u, firstTrailingBit(6237u)) << (min(u_input.d, u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_3 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(724f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(988f, var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-233f, 2012f, var_2.b.b)), var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-928f + 414f)), _wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1383f), -1087f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-702f, -225f, true)), _wgslsmith_f_op_f32(-1384f + -549f), _wgslsmith_div_f32(731f, -682f)) * vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<i32>(-26146i, u_input.c.x, 3587i, 1i), true, vec2<bool>(true, false), u_input.b, vec3<bool>(true, true, true)), Struct_1(860f, u_input.c.x, -531f, u_input.c.x))), -140f, _wgslsmith_f_op_f32(trunc(259f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(357f))))), -458f, _wgslsmith_f_op_f32(sign(1176f))), func_2().e));
    var var_1 = ~117206u;
    var_1 = u_input.b;
    var var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, 348f, 754f, -1218f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 163f, 934f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(round(563f)), 117f, 551f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(sign(var_0.x))))), func_2(), select(vec2<u32>((u_input.a ^ 0u) << (~82399u % 32u), u_input.a), min(u_input.d & u_input.d, _wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(4294967295u, 1u))) | min(u_input.d, reverseBits(u_input.d)), func_2().e.x && true));
    var var_3 = Struct_3(vec4<i32>(~u_input.c.x, -3705i, var_2.b.a.x, var_2.b.a.x), true, func_2().c, _wgslsmith_mod_u32(u_input.d.x, u_input.b), var_2.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_2.a.x, var_2.a.x))), _wgslsmith_f_op_vec4_f32(floor(var_2.a)))) + var_2.a), ~u_input.c.zx);
}

