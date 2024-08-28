struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-761f, arg_0.b.x, arg_1.b, arg_0.b.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b, arg_1.b, 490f, arg_1.b))))))), u_input.c.x, -_wgslsmith_mod_vec2_i32(u_input.c.xy, u_input.c.yy), !all(arg_0.c.zz));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(var_0.a.wwx)))) + var_0.a.yzz);
    return _wgslsmith_div_i32(u_input.b.x, -708i);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = 141i;
    var var_1 = _wgslsmith_mod_i32(u_input.a, -max(countOneBits(arg_3.x), var_0));
    let var_2 = u_input.d;
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(trunc(arg_2)), -2147483647i, vec2<i32>(_wgslsmith_mult_i32(arg_3.x, -25849i), 78302i), true);
    var_1 = 1i;
    return Struct_2(!vec4<bool>(var_3.d, any(!vec4<bool>(var_3.d, var_3.d, true, false)), true, false || all(vec4<bool>(false, arg_0, true, arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.a.wz + arg_2.zx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a.wy) - _wgslsmith_f_op_vec2_f32(-var_3.a.zz))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1358f, var_3.a.x)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.wy), var_3.a.ww, !vec2<bool>(arg_0, var_3.d))))), vec3<f32>(517f, arg_2.x, -1413f), Struct_1(~func_3(Struct_1(arg_1, arg_2.wx, vec4<bool>(false, true, var_3.d, false), arg_0, 0i), Struct_4(vec4<bool>(var_3.d, true, arg_0, true), arg_2.x, -48195i, -7061i)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2048f), _wgslsmith_f_op_f32(var_3.a.x + var_3.a.x)))), vec4<bool>(any(!vec2<bool>(true, arg_0)), u_input.c.x <= ~var_3.c.x, false, arg_0), var_3.d, firstLeadingBit(arg_1 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(28302u, 36258u, 0u, var_2.x), vec4<u32>(u_input.d.x, 36847u, u_input.d.x, 2478u)) % 32u))), var_3.a.yw);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec3<bool>) -> i32 {
    let var_0 = 1u;
    var var_1 = vec4<u32>(max(u_input.d.x, countOneBits(u_input.d.x) << (0u % 32u)), 4294967295u, abs(u_input.d.x), 16966u);
    var_1 = max(vec4<u32>(u_input.d.x, ~4294967295u, var_1.x, 1u), firstTrailingBit(vec4<u32>(1u, _wgslsmith_add_u32(u_input.d.x, ~var_1.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, var_1.x), ~0u), 50070u)));
    var_1 = firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_0, u_input.d.x), vec4<u32>(31745u, 1u, var_0, 78012u)), select(vec4<u32>(var_0, u_input.d.x, 68614u, 5789u) | vec4<u32>(var_0, var_0, var_0, var_1.x), firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, var_0, u_input.d.x)), func_2(false, arg_2.a, vec4<f32>(arg_2.b.b.x, arg_2.b.e.x, arg_2.b.e.x, -1413f), vec4<i32>(arg_2.b.d.a, -2147483647i, 56905i, arg_2.b.d.e)).a))) << (~select(~(~vec4<u32>(0u, var_0, 4294967295u, 10179u)), ~vec4<u32>(16673u, 4294967295u, 21278u, u_input.d.x) << (min(vec4<u32>(u_input.d.x, 31637u, var_0, u_input.d.x), vec4<u32>(u_input.d.x, 2795u, u_input.d.x, 0u)) % vec4<u32>(32u)), arg_2.b.a) % vec4<u32>(32u));
    var var_2 = arg_3.x;
    return u_input.b.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(u_input.c.x, _wgslsmith_add_i32(~countOneBits(-2147483647i), arg_1.a)), 2147483647i, func_4(false, _wgslsmith_mod_vec3_i32(abs(~vec3<i32>(-21311i, 4433i, u_input.b.x)), u_input.c >> (arg_0.wwx % vec3<u32>(32u))), Struct_3(arg_1.e, func_2(true, ~14730i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, 471f, arg_1.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.e, u_input.c.x, u_input.a, arg_1.e), vec4<i32>(arg_1.a, 2147483647i, 1i, arg_1.e), vec4<i32>(arg_1.a, u_input.a, arg_1.a, 7729i)))), !arg_1.c.zxz));
    let var_1 = ~0u;
    let var_2 = u_input.c;
    let var_3 = Struct_4(vec4<bool>(all(arg_1.c.yyy), any(select(arg_1.c.wz, vec2<bool>(arg_1.c.x, arg_2), arg_1.c.wy)), true, (arg_1.d || func_2(arg_1.d, arg_1.a, vec4<f32>(arg_1.b.x, 1314f, arg_1.b.x, -280f), vec4<i32>(var_2.x, 2147483647i, var_2.x, var_0.x)).d.d) | (true | arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_2(true, countOneBits(-1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 991f, 669f, 1639f) * vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, -357f)), abs(vec4<i32>(25485i, 74653i, 15099i, arg_1.a))).c.x, _wgslsmith_f_op_f32(sign(arg_1.b.x))))), var_2.x, ~arg_1.a);
    let var_4 = Struct_4(!(!(!(!var_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(682f))))), ~max(6658i, ~(-2147483647i)), func_2(arg_2, 1i, vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(sign(1194f)), 825f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.b + -1893f)))), firstLeadingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c.x, var_3.c, var_3.c, var_2.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_3.d, var_2.x, var_2.x), vec4<i32>(40199i, 0i, u_input.a, var_0.x), vec4<i32>(0i, var_3.d, var_2.x, 0i))))).d.e);
    return vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.d.x) | 1u, _wgslsmith_clamp_u32(25124u, ~u_input.d.x, _wgslsmith_sub_u32(20608u, u_input.d.x))) | ~arg_0.x, _wgslsmith_mod_u32(abs(reverseBits(arg_0.x)), 0u), ~_wgslsmith_add_u32(~19607u, firstTrailingBit(u_input.d.x)) | _wgslsmith_div_u32(var_1, ~48019u << (arg_0.x % 32u)), _wgslsmith_mult_u32(~(~4294967295u), ~arg_0.x));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> bool {
    var var_0 = 0i;
    var var_1 = Struct_3(arg_0, Struct_2(func_2(select(true, u_input.c.x >= 0i, any(vec3<bool>(false, true, false))), 4474i, vec4<f32>(1f, 1f, 1f, 1f), vec4<i32>(reverseBits(arg_0), -21396i, firstLeadingBit(2067i), _wgslsmith_dot_vec2_i32(vec2<i32>(-42235i, 8097i), vec2<i32>(11267i, arg_0)))).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1240f, -602f) - vec2<f32>(-456f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1220f, 1443f) - vec2<f32>(1950f, 1566f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, -577f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1198f, -822f)))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, arg_2.x, -6354i) >> (vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(u_input.c.x, 0i, u_input.a, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(694f, 1926f) + vec2<f32>(492f, 1343f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1211f, -280f))), vec4<bool>(true, true, true, true), select(any(vec4<bool>(true, false, true, true)), all(vec3<bool>(false, false, false)), true), arg_0), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1584f, -831f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1423f)))))));
    var var_2 = ~select(((vec3<u32>(0u, 0u, arg_1.x) | arg_1.yzy) | arg_1.yyz) | ~arg_1.ywx, ~(~arg_1.xwx), var_1.b.a.yxw);
    let var_3 = ~_wgslsmith_dot_vec3_u32(arg_1.yzy, arg_1.zwz);
    let var_4 = var_1.b;
    return var_4.a.x || true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), func_5(-2147483647i & u_input.c.x, func_1(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 4294967295u), Struct_1(u_input.b.x, vec2<f32>(394f, 228f), vec4<bool>(true, false, true, false), true, 0i), false), abs(vec3<i32>(u_input.a, u_input.c.x, 7251i))), !any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(718f + 1000f))) < 1112f), _wgslsmith_f_op_f32(f32(-1f) * -606f), -12772i, _wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.c.x));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(0i, 13948i, -24176i)) << (vec3<u32>(_wgslsmith_sub_u32(39044u, 28710u), 57961u, u_input.d.x) % vec3<u32>(32u)), -u_input.c), vec2<f32>(888f, -696f), !(!func_2(false, i32(-1i) * -5947i, vec4<f32>(179f, -655f, var_0.b, var_0.b), -vec4<i32>(var_0.d, 2147483647i, var_0.c, var_0.d)).d.c), true, (0i & abs(-var_0.c)) & _wgslsmith_mult_i32(-var_0.d, -20858i));
    let var_2 = 215f == var_0.b;
    var var_3 = !var_0.a.yxx;
    var_1 = Struct_1(-39356i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1079f, -578f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(994f, var_1.b.x))), var_0.a.x)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_1.b.x))), !var_0.a.xw)), !vec4<bool>(select(var_3.x, any(var_0.a.wzz), var_1.d), true, !var_1.d, all(vec2<bool>(var_1.c.x, false))), (abs(1u) << (select(u_input.d.x, 70607u, true) % 32u)) > ~(_wgslsmith_mod_u32(u_input.d.x, 40009u) ^ min(u_input.d.x, u_input.d.x)), (var_1.a & 1i) | _wgslsmith_sub_i32(func_4(var_2, vec3<i32>(-2147483647i, var_0.c, u_input.a), Struct_3(-6106i, Struct_2(vec4<bool>(var_3.x, false, var_0.a.x, var_3.x), var_1.b, vec3<f32>(113f, -258f, -1947f), Struct_1(0i, vec2<f32>(-1362f, var_0.b), var_0.a, var_3.x, -1i), vec2<f32>(var_1.b.x, 288f))), select(vec3<bool>(false, true, true), vec3<bool>(false, var_2, true), var_0.a.xwy)), _wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(13065i, u_input.a))));
    var var_4 = Struct_1(-1i, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b * var_0.b))))), _wgslsmith_div_f32(var_0.b, -1115f)), vec4<bool>(true, 55241u == u_input.d.x, (u_input.d.x < ~u_input.d.x) | var_3.x, var_0.a.x), true, -var_1.a >> (~min(u_input.d.x, u_input.d.x & u_input.d.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, -(~(~(~vec4<i32>(var_0.d, 2147483647i, 0i, 1i)))), -((-vec4<i32>(var_1.e, var_1.e, var_0.d, 2147483647i) & (vec4<i32>(-2147483647i, 38900i, var_4.a, -2147483647i) & vec4<i32>(var_4.e, 0i, 40808i, u_input.c.x))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 19002u), u_input.d), 35019u, 84799u, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~firstTrailingBit(vec4<i32>(12171i, var_1.a, 2147483647i, -1i) | vec4<i32>(var_0.c, -63792i, -1i, 11680i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, u_input.b.x, -2147483647i, u_input.a)), countOneBits(vec4<i32>(-46991i, var_0.c, -16840i, var_1.a) << (vec4<u32>(1u, 4294967295u, 4674u, u_input.d.x) % vec4<u32>(32u))))));
}

