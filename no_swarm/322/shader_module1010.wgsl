struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 29135i;

var<private> global1: Struct_2 = Struct_2(-585f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = u_input.d;
    global0 = -5309i;
    var var_1 = max(41966u, firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 0u))) >= u_input.a.x;
    var var_2 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(~u_input.a.x, ~u_input.d, 4294967295u), ~(~(~u_input.a)));
    var_1 = false;
    return ~(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, 32942i), vec3<i32>(u_input.c, 1i, u_input.b))) | ~(select(vec3<i32>(u_input.b, u_input.c, 0i), vec3<i32>(u_input.b, u_input.c, u_input.b), vec3<bool>(true, false, true)) & _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.b, 2147483647i), vec3<i32>(1i, u_input.b, u_input.c))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(u_input.b, u_input.b)), u_input.b) >> (vec2<u32>(104973u, ~(_wgslsmith_add_u32(u_input.a.x, arg_0.x) & _wgslsmith_mod_u32(35864u, arg_0.x))) % vec2<u32>(32u));
    var var_1 = false;
    global1 = Struct_2(115f);
    global1 = Struct_2(arg_1);
    return Struct_1(22719u);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(~(~(~u_input.a.x)));
    var var_1 = all(select(vec2<bool>(all(vec2<bool>(true, true)), false), vec2<bool>(select(true, true, true), true), !(any(vec3<bool>(false, false, false)) | (5057i <= u_input.c))));
    let var_2 = !vec3<bool>(true, !any(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, true, true)));
    var var_3 = global1.a;
    global0 = _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c, (u_input.c & u_input.c) ^ (i32(-1i) * -2147483647i)) & u_input.c, _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b, 0i), vec3<i32>(u_input.c, u_input.b, -20620i)) << (~(~10017u) % 32u), 1i ^ u_input.c));
    return _wgslsmith_f_op_f32(-1527f + _wgslsmith_f_op_f32(global1.a * global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_add_vec3_i32(~func_1(Struct_2(-647f)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 0i, 0i), vec3<i32>(-5422i, 1i, u_input.b)) | reverseBits(vec3<i32>(u_input.c, -1i, u_input.b))) & firstLeadingBit(firstLeadingBit(vec3<i32>(0i, 74833i, u_input.b))), _wgslsmith_add_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -15197i, u_input.c), vec3<i32>(u_input.b, 2147483647i, 11356i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(4536i, u_input.b, u_input.b))), ~select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 1i, -2147483647i), vec3<i32>(u_input.b, u_input.b, 22535i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -56399i), vec3<i32>(u_input.c, u_input.b, -25765i)), vec3<bool>(true, true, true))), Struct_1(~u_input.d), func_2(vec3<u32>(u_input.a.x, u_input.d, u_input.a.x), -1886f), ~(~2683u));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))));
    var var_2 = Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, 62217i, 1i) << (firstLeadingBit(~vec3<u32>(95449u, var_0.e, var_0.e)) % vec3<u32>(32u)), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-13546i, -21026i, u_input.c) ^ var_0.b, vec3<i32>(-25740i, var_0.a.x, u_input.b) | var_0.b))), vec3<i32>(-1i, _wgslsmith_add_i32(u_input.b, var_0.b.x), ~_wgslsmith_div_i32(0i, 2147483647i)) ^ vec3<i32>(2147483647i, i32(-1i) * -u_input.b, 40i), func_2(vec3<u32>(u_input.a.x, 4294967295u, _wgslsmith_mult_u32(0u, 4294967295u)) & (abs(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) >> ((vec3<u32>(1u, 4294967295u, u_input.d) ^ u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-1386f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a))))), func_2(vec3<u32>(~29348u, 0u, var_0.e) & (min(vec3<u32>(76882u, 37973u, u_input.d), u_input.a) | ~vec3<u32>(16756u, 21340u, 0u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a * global1.a)))))), ~0u);
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1085f, var_1.a.a, -166f, -357f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(869f, global1.a, 828f, var_1.a.a), vec4<f32>(global1.a, var_1.a.a, var_1.a.a, -1388f), true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.a.a, -2054f, global1.a) * vec4<f32>(global1.a, -678f, global1.a, var_1.a.a)))))));
    let var_4 = ~(25378u & u_input.d);
    var var_5 = Struct_1(_wgslsmith_mult_u32(u_input.d, var_2.c.a));
    var var_6 = var_1.a;
    let var_7 = countOneBits(var_4);
    var var_8 = ~abs(vec3<u32>(abs(var_7 ^ 50439u), _wgslsmith_clamp_u32(abs(var_7), abs(var_7), _wgslsmith_sub_u32(23989u, u_input.d)), var_4));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a, abs(~(~_wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(var_2.e, var_5.a)))), u_input.d, vec2<f32>(_wgslsmith_f_op_f32(trunc(-728f)), _wgslsmith_f_op_f32(-var_1.a.a)));
}

