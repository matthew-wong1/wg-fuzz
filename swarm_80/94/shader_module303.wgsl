struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = u_input.c;
    let var_1 = min(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mult_i32(6995i, 0i), 0i, -43708i), firstLeadingBit(var_0 & -firstTrailingBit(var_0)));
    let var_2 = -vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(var_0), _wgslsmith_sub_vec3_i32(vec3<i32>(5797i, -2147483647i, var_1.x), u_input.c)), var_0), u_input.d.x);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1608f))));
    var_3 = 295f;
    return countOneBits(firstLeadingBit(abs(countOneBits(vec2<u32>(0u, u_input.a.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b.x;
    let var_1 = Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), _wgslsmith_div_u32(var_0, var_0)), ~u_input.b.wx) | func_3(Struct_2(Struct_1(vec4<bool>(false, true, false, true), u_input.c.x, vec4<u32>(21296u, 4294967295u, var_0, 1u), true, u_input.b), Struct_1(vec4<bool>(true, true, false, true), u_input.c.x, u_input.b, false, u_input.b))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), _wgslsmith_dot_vec3_i32(-u_input.c, reverseBits(u_input.c)), vec4<u32>(1u, var_0, u_input.b.x, 1u), true, ~(u_input.b << (u_input.b % vec4<u32>(32u)))), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), 6041i, vec4<u32>(var_0, 1u, var_0, u_input.a.x) << (~vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, var_0) % vec4<u32>(32u)), false, vec4<u32>(~var_0, u_input.a.x, 1u, 1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-999f, -578f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1825f) + -846f))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), reverseBits(-1i), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.a.x, 64342u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.a.x, 84578u, 1u)), true, u_input.b), Struct_1(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true), 4294967295u < var_0), firstLeadingBit(~u_input.c.x), u_input.b, all(vec2<bool>(true, true)), firstTrailingBit(u_input.b) >> (min(vec4<u32>(u_input.b.x, var_0, var_0, 1u), vec4<u32>(u_input.b.x, 18920u, 4294967295u, var_0)) % vec4<u32>(32u)))), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, false, true));
    var var_2 = var_1.c;
    var var_3 = ~(~(reverseBits(select(var_1.d.a.c, u_input.b, var_1.e.x)) ^ ~vec4<u32>(var_1.d.b.c.x, 4294967295u, var_0, var_0)));
    var var_4 = ~var_3.zzw;
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_5 {
    var var_0 = arg_3.b;
    var var_1 = Struct_5(vec4<bool>(arg_2, true, arg_3.d, arg_0.b.b.d));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.c)), arg_0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 399f), vec2<f32>(arg_0.c, arg_0.c))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, -281f)))), arg_0.d.a.a.xw))));
    var var_3 = false && arg_2;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1482f)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(639f + arg_0.c))))), _wgslsmith_div_f32(-406f, _wgslsmith_f_op_f32(-var_2.x)), true));
    return Struct_5(!vec4<bool>(true, false, select(!var_1.a.x, any(arg_3.a), true), !arg_3.a.x));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = 136397u >> ((1u | firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, 4294967295u))) % 32u);
    var_0 = _wgslsmith_mod_u32(92774u, ~abs(~25097u) | _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(73491u, arg_0.x, arg_0.x, 0u) & u_input.b), ~vec4<u32>(1u, 69261u, arg_0.x, 0u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1785f) - _wgslsmith_f_op_f32(f32(-1f) * -1090f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1748f, 1089f)) + _wgslsmith_f_op_f32(-1162f - -2244f)))));
    let var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = func_4(Struct_3(u_input.b.yz, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2))) * _wgslsmith_f_op_f32(trunc(-204f))), Struct_2(func_2().b, Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), u_input.c.xz), vec4<u32>(73415u, u_input.b.x, arg_0.x, 1u), true, firstTrailingBit(u_input.b))), vec4<bool>(true, true, true, true)), vec4<i32>(abs(countOneBits(~28861i)), ~_wgslsmith_dot_vec3_i32(~u_input.c, vec3<i32>(u_input.d.x, 17671i, u_input.d.x)), u_input.d.x >> (arg_0.x % 32u), 27288i), any(func_2().a.a.xzw), func_2().a);
    return Struct_1(func_2().b.a, _wgslsmith_clamp_i32(u_input.c.x, -_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c.x, u_input.d.x), u_input.c.x), u_input.d.x), u_input.b, u_input.c.x != _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.c.x, -32493i, u_input.d.x), vec4<i32>(0i, u_input.c.x, u_input.c.x, 21625i))), 1i), max(u_input.b, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(func_1(vec2<u32>(u_input.b.x, _wgslsmith_div_u32(var_0, var_0))), Struct_1(vec4<bool>(func_4(Struct_3(vec2<u32>(u_input.a.x, 21020u), Struct_2(Struct_1(vec4<bool>(false, true, false, true), 2147483647i, vec4<u32>(var_0, 0u, u_input.b.x, u_input.a.x), false, u_input.b), Struct_1(vec4<bool>(false, false, true, true), u_input.c.x, vec4<u32>(15903u, var_0, 4294967295u, 92654u), true, vec4<u32>(var_0, u_input.b.x, 23317u, var_0))), -413f, Struct_2(Struct_1(vec4<bool>(true, true, false, false), u_input.c.x, vec4<u32>(24022u, u_input.a.x, 1u, u_input.b.x), false, vec4<u32>(1u, var_0, 9452u, 0u)), Struct_1(vec4<bool>(true, true, false, true), u_input.c.x, vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, 1u), true, u_input.b)), vec4<bool>(true, true, false, false)), vec4<i32>(u_input.c.x, -1i, 2054i, 6887i), true, func_2().b).a.x, select(true, false, u_input.d.x < -24250i), true, any(func_1(u_input.a).a)), -7058i, u_input.b, true, ~abs(u_input.b)));
    var var_2 = vec3<bool>(true, var_1.b.d, (true && var_1.b.a.x) && !(!(var_1.b.e.x < 1u)));
    let var_3 = var_1.a;
    var var_4 = var_0;
    var_2 = var_3.a.xwz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zxw, -func_1(func_1(vec2<u32>(39365u, var_3.c.x) ^ vec2<u32>(u_input.b.x, 97225u)).e.wy).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-607f, -1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(828f, -1507f)))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(1253f * 1000f), _wgslsmith_f_op_f32(step(722f, 1000f)))))));
}

