struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(min(abs(firstLeadingBit(u_input.a.zyw)), arg_0.a), vec3<u32>(_wgslsmith_clamp_u32(arg_0.e.x, ~abs(10383u), 4294967295u), ~arg_0.a.x, arg_0.e.x), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.x, _wgslsmith_add_u32(0u, u_input.d.x), arg_0.e.x), ~vec3<u32>(arg_0.a.x, arg_0.e.x, 4294967295u))));
    let var_1 = Struct_4(~(vec2<i32>(1i, 1i) & (~vec2<i32>(2147483647i, -12148i) | reverseBits(vec2<i32>(arg_1, arg_1)))), ~arg_1, vec3<i32>(-2147483647i, arg_1, arg_1), ~select(vec2<u32>(firstTrailingBit(var_0.x), 1u), ~var_0.zx, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(arg_0.d.x - -1000f)))));
    let var_2 = arg_0.d.xy;
    var var_3 = var_1.e;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_1.e.a) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.a)), var_3.a) + 634f), _wgslsmith_f_op_f32(-198f + arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + 752f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.e.a)), -1000f))));
    return var_1.e.a;
}

fn func_2() -> vec3<f32> {
    var var_0 = vec2<bool>(true, false);
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f - 284f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-379f)) - -681f), _wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(6194u, 0u, u_input.c), _wgslsmith_f_op_f32(-391f + 1563f), var_0.x | true, _wgslsmith_f_op_vec4_f32(vec4<f32>(615f, 224f, -401f, 829f) + vec4<f32>(359f, -813f, 321f, -535f)), countOneBits(u_input.d.xx)), _wgslsmith_add_i32(~(-1i), _wgslsmith_sub_i32(31877i, 2147483647i)))))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_mod_u32(6123u, 1u), ~107463u, 1u, ~1u)) >> (abs(~(vec4<u32>(u_input.c, 1u, u_input.d.x, u_input.b) << (vec4<u32>(u_input.b, 12691u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 1877f) + _wgslsmith_f_op_vec3_f32(func_2()).x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_0)))))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -789f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-844f, -168f, 1000f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(528f, 331f, -2837f))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, -311f, -303f))))));
    var var_1 = ~vec3<u32>(reverseBits(countOneBits(33859u)), max(abs(_wgslsmith_div_u32(0u, arg_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 14314u), _wgslsmith_div_vec2_u32(arg_0, arg_0))), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, arg_0.x, arg_0.x, 1u), u_input.a, vec4<bool>(true, false, true, true)), ~u_input.a));
    var var_2 = Struct_4(-_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 0i) >> (vec2<u32>(30943u, u_input.c) % vec2<u32>(32u)), vec2<i32>(-2147483647i, 2147483647i)) << (u_input.a.zz % vec2<u32>(32u)), 1i, vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-21819i, -19438i), vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, firstLeadingBit(14619i)), abs(min(vec2<i32>(0i, -3883i), vec2<i32>(2147483647i, 50383i)))), firstLeadingBit(_wgslsmith_clamp_i32(32385i, ~1i, 2963i))), u_input.a.xy, Struct_1(935f));
    let var_3 = select(select(vec2<bool>(true, !any(vec4<bool>(false, true, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec4<bool>(true, true, true, false))), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), select(vec2<bool>(all(vec2<bool>(false, true)), var_2.e.a != var_2.e.a), vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true))), vec2<bool>(any(vec2<bool>(true, true)), true == (_wgslsmith_div_u32(1u, var_1.x) >= arg_0.x)), vec2<bool>(!(!all(vec4<bool>(false, false, true, true))), any(vec4<bool>(true, true, true, true)) & true));
    var_1 = ~vec3<u32>(u_input.a.x, ~4294967295u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(95636u, 4294967295u), var_2.d)));
    return Struct_2(vec3<u32>(var_1.x, 4294967295u, firstTrailingBit(_wgslsmith_div_u32(89766u, var_1.x))) & ~(~reverseBits(u_input.a.wxz)), var_2.e.a, false, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(513f, _wgslsmith_f_op_f32(-var_2.e.a), var_2.e.a, 433f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1150f, -132f, -951f, var_2.e.a), vec4<f32>(var_2.e.a, var_2.e.a, var_2.e.a, var_2.e.a), var_3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2451f, var_2.e.a, var_2.e.a, var_2.e.a) - vec4<f32>(var_2.e.a, 1314f, var_2.e.a, var_2.e.a))))))), _wgslsmith_mult_vec2_u32(var_2.d, vec2<u32>(u_input.c, ~41391u) | var_2.d));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(arg_0.d.xwx));
    let var_1 = true;
    var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2()).x))), 1282f, _wgslsmith_div_f32(var_0.x, -828f));
    let var_2 = u_input.d.x;
    let var_3 = Struct_3(_wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_2, 1u), vec2<u32>(4294967295u, var_2))), arg_0.e));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~1u, 11139u), vec2<u32>(100875u, u_input.c) >> (~vec2<u32>(2764u, 26346u) % vec2<u32>(32u)))), false));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(26866u, 78242u, u_input.d.x), vec3<u32>(4294967295u, u_input.b, u_input.a.x) | u_input.d) >> (~u_input.d % vec3<u32>(32u)), abs(u_input.a.wzx)) ^ ~u_input.c;
    let var_2 = select(vec2<bool>(!func_1(firstLeadingBit(u_input.d.yx)).c, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))), select(vec2<bool>(all(vec4<bool>(true, true, true, true)), -766f == _wgslsmith_f_op_f32(-var_0)), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !all(vec4<bool>(false, true, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec2<bool>(true, true));
    let var_3 = abs(vec3<u32>(0u, u_input.c, u_input.a.x));
    let var_4 = (_wgslsmith_mult_u32(6153u, u_input.b) & 21358u) | 29858u;
    var var_5 = _wgslsmith_mult_u32(var_3.x, var_3.x | _wgslsmith_clamp_u32(60465u, var_3.x, var_3.x & max(50805u, 5258u)));
    var var_6 = Struct_2(abs(vec3<u32>(var_4, abs(4294967295u), ~var_3.x) >> (func_1(vec2<u32>(var_3.x, 96990u) << (vec2<u32>(u_input.b, var_1) % vec2<u32>(32u))).a % vec3<u32>(32u))), -564f, func_1(~_wgslsmith_mult_vec2_u32(~u_input.a.yz, u_input.a.xz)).c, vec4<f32>(var_0, var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, 727f, var_0))))), -473f), select(vec2<u32>(_wgslsmith_mult_u32(0u, 61969u), ~0u) & u_input.d.xz, abs(vec2<u32>(~var_1, min(var_4, var_1))), !var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(16876u, var_1), vec2<u32>(61169u, var_3.x)) & vec2<u32>(var_6.a.x, var_3.x), _wgslsmith_clamp_vec2_u32(u_input.d.zy, u_input.a.zy, vec2<u32>(4294967295u, 0u)) | vec2<u32>(var_4, var_3.x))).a.xx, ~(~(~var_6.e)) ^ ~vec2<u32>(var_6.e.x, var_3.x), _wgslsmith_mod_u32(func_1(firstLeadingBit(~var_6.e)).e.x, firstTrailingBit(~0u)), _wgslsmith_clamp_i32(10881i, 1i, 1i), ~abs(abs(vec3<i32>(2147483647i, 437i, 0i))));
}

