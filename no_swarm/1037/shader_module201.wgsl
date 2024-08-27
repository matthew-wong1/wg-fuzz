struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(79044i, 42788i), vec2<i32>(-1i, 1i), vec2<i32>(29165i, -305i), vec2<i32>(0i, -9733i), vec2<i32>(0i, 2147483647i), vec2<i32>(20584i, 52074i), vec2<i32>(-1i, -2938i), vec2<i32>(14819i, 23568i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(13013i, 1i), vec2<i32>(-49580i, 0i), vec2<i32>(50108i, -34008i), vec2<i32>(1i, -6i), vec2<i32>(1i, 0i), vec2<i32>(-19913i, -9617i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -44823i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-25104i, 24511i), vec2<i32>(31489i, 9169i), vec2<i32>(-430i, -1i), vec2<i32>(17987i, 25362i), vec2<i32>(1i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-17576i, -15336i), vec2<i32>(-1i, 29988i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<bool> {
    global0 = array<vec2<i32>, 28>();
    let var_0 = Struct_2(vec2<u32>(21188u << (u_input.b.x % 32u), 1u), -42300i, i32(-1i) * -2147483647i, Struct_1(true), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, any(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, false))), countOneBits(-u_input.c.x) >= u_input.c.x));
    var var_1 = u_input.b.x;
    let var_2 = u_input.b;
    var var_3 = Struct_2(~(~(~countOneBits(var_0.a))), var_0.b >> ((var_2.x | firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), var_2.wz))) % 32u), countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, var_0.b, -69535i), vec4<i32>(2147483647i, 36485i, -2647i, var_0.b)), abs(~69624i))), Struct_1(((var_0.a.x == 1u) && var_0.e.x) & !(var_0.e.x == var_0.d.a)), !var_0.e);
    return vec4<bool>(true, var_3.e.x, false, false);
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<vec2<i32>, 28>();
    return func_3();
}

fn func_1() -> vec2<f32> {
    let var_0 = !vec2<bool>(false, !all(func_2(Struct_1(true))));
    var var_1 = ~u_input.c.x;
    let var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(select(18147u, u_input.b.x ^ u_input.b.x, true), 33185u), select(_wgslsmith_div_vec2_u32(~u_input.b.yx, u_input.b.xw), vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b.x), ~4294967295u), select(func_2(Struct_1(var_0.x)).yw, vec2<bool>(var_0.x, false), func_2(Struct_1(var_0.x)).xw)), ~u_input.b.zx), firstLeadingBit(0i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.d, countOneBits(~u_input.c.x)), u_input.a, max(_wgslsmith_add_i32(u_input.c.x, -u_input.d), u_input.c.x)), Struct_1(!(!(false & var_0.x))), vec4<bool>(false, true, var_0.x, var_0.x));
    var_1 = u_input.d;
    var var_3 = vec4<bool>(var_0.x, var_2.e.x, var_0.x, !var_2.e.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1067f, -1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-398f, -496f), vec2<f32>(1641f, 1033f), vec2<bool>(false, var_2.e.x)))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(u_input.c, u_input.c);
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-48014i, -1i & u_input.d, -u_input.d, max(-17617i, 2147483647i)), countOneBits(vec4<i32>(u_input.c.x, var_0.x, var_0.x, -1i))), u_input.c & vec4<i32>(u_input.a, _wgslsmith_sub_i32(-22958i, 7607i), -4960i, min(2147483647i, var_0.x))) | vec4<i32>(u_input.d, ~(-var_0.x), ~1i, 0i);
    var var_1 = var_0.yw;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_0.x));
    let var_3 = ~(~(~countOneBits(u_input.b.x))) | 25910u;
    return 21911u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(212f, 264f) - vec2<f32>(273f, 714f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()), vec2<f32>(-204f, -972f))) + _wgslsmith_f_op_vec2_f32(func_1())), u_input.b.x);
    let var_1 = countOneBits(u_input.a);
    let var_2 = vec3<i32>(-2147483647i, u_input.c.x, ~abs(-(-1i >> (var_0 % 32u))));
    let var_3 = _wgslsmith_div_i32(~(select(-1i, u_input.c.x, true) | _wgslsmith_mult_i32(var_1, -2147483647i)) >> (var_0 % 32u), u_input.a);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f)) + _wgslsmith_f_op_f32(f32(-1f) * -1685f)));
    let var_5 = Struct_1(true);
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(915f)))))) - 1000f);
    var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-2745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(420f, -654f))), all(select(vec2<bool>(true, var_5.a), vec2<bool>(false, var_5.a), vec2<bool>(var_5.a, true)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~25206u, reverseBits(u_input.b.x ^ _wgslsmith_sub_u32(var_0, 1u))), ~(~u_input.b), u_input.b.yw, -2147483647i);
}

