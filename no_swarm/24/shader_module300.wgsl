struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = ~(~vec4<u32>(~u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b), 1u, ~1u)) << (vec4<u32>(u_input.b, ~_wgslsmith_add_u32(60784u, arg_0.x) | 62566u, 4294967295u, select(24975u, arg_0.x, true)) % vec4<u32>(32u));
    let var_1 = Struct_1(vec3<bool>(true | any(vec3<bool>(true, false, false)), false, false), _wgslsmith_add_i32(-1i, u_input.a.x), ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, 30725u, 52453u), vec4<u32>(arg_0.x, arg_0.x, 3903u, var_0.x)), reverseBits(~arg_0.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_0.x, arg_0.x), ~arg_0, ~vec3<u32>(4294967295u, arg_0.x, var_0.x)) >> (reverseBits(select(arg_0, vec3<u32>(0u, 51438u, 48814u), vec3<bool>(true, false, true))) % vec3<u32>(32u)), abs(arg_0)));
    var var_2 = Struct_2(~vec4<u32>(firstLeadingBit(58982u), ~_wgslsmith_clamp_u32(u_input.b, arg_0.x, u_input.b), 1u, _wgslsmith_clamp_u32(reverseBits(67545u), reverseBits(13011u), var_0.x)), vec2<bool>(true != any(vec3<bool>(false, var_1.a.x, true)), (_wgslsmith_f_op_f32(round(-992f)) >= _wgslsmith_f_op_f32(f32(-1f) * -398f)) | true));
    var var_3 = 22114i ^ _wgslsmith_div_i32(max(firstTrailingBit(var_1.b), _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, -2147483647i) >> (_wgslsmith_div_u32(var_2.a.x, u_input.b) % 32u)), u_input.a.x);
    var_0 = _wgslsmith_add_vec4_u32(select(abs(var_2.a), vec4<u32>(reverseBits(31686u), select(53261u, 4294967295u, var_2.b.x), arg_0.x, var_1.c) & firstTrailingBit(vec4<u32>(48116u, 21652u, 4294967295u, var_1.d.x)), var_1.a.x), var_2.a ^ (var_2.a | var_2.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-383f - 435f) + _wgslsmith_f_op_f32(950f - -433f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -655f))))), 481f);
}

fn func_2() -> Struct_1 {
    var var_0 = ~vec3<u32>(~1u, countOneBits(1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(44089u, u_input.b), vec2<u32>(u_input.b, 79565u)), vec2<u32>(u_input.b, u_input.b) & vec2<u32>(0u, 4294967295u)) | min(42708u, u_input.b));
    let var_1 = vec2<f32>(-622f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~abs(vec3<u32>(u_input.b, u_input.b, var_0.x)))), -836f));
    var_0 = vec3<u32>(_wgslsmith_div_u32(u_input.b, _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, min(54135u, var_0.x)), 1u)), firstTrailingBit(4294967295u), ~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(41706u, var_0.x), ~24868u)));
    var_0 = vec3<u32>(~firstTrailingBit(0u) >> (78324u % 32u), ~(select(var_0.x, 4294967295u, true) >> (reverseBits(0u) % 32u)), ~(~4294967295u)) << (~firstLeadingBit(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 0u, 33162u)))) % vec3<u32>(32u));
    var_0 = ~vec3<u32>(abs(71509u), var_0.x, var_0.x) | min(firstTrailingBit(~vec3<u32>(0u, 4294967295u, 29839u)), firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 0u, 1u), vec3<u32>(var_0.x, 1u, u_input.b)))));
    return Struct_1(vec3<bool>(all(vec3<bool>(true, true, select(false, true, false))), any(vec2<bool>(true, true)), abs(select(0u, 21276u, true)) > ~reverseBits(var_0.x)), -countOneBits(1i), ~select(countOneBits(var_0.x), 21878u, true), reverseBits(vec3<u32>(20156u, 7208u, 1u)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_2(vec4<u32>(countOneBits(arg_1.c), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.d.x, arg_1.c), ~arg_1.c), 1u, ~9082u ^ _wgslsmith_sub_u32(arg_1.d.x, abs(46047u))), func_2().a.xx);
    let var_1 = vec4<u32>(1u, 1u, ~1u, 52924u & var_0.a.x);
    var var_2 = -_wgslsmith_mult_vec3_i32(select(vec3<i32>(-7251i, -arg_1.b, ~(-1i)), firstTrailingBit(vec3<i32>(-1i, u_input.a.x, 2147483647i)), vec3<bool>(true, any(vec4<bool>(arg_1.a.x, var_0.b.x, true, false)), arg_1.a.x)), _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-36218i, -41186i, 31782i), vec3<i32>(arg_1.b, arg_1.b, -25185i))), vec3<i32>(_wgslsmith_sub_i32(18432i, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), 0i << (u_input.b % 32u)), vec3<i32>(7959i, u_input.a.x << (var_1.x % 32u), 5888i)));
    let var_3 = Struct_1(arg_1.a, ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_2.zy, _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(var_2.x, arg_1.b))), 52246i), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 5525u) >> (var_1.ww % vec2<u32>(32u)), var_1.ww | arg_1.d.yy), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~var_0.a.zw, var_1.wz ^ vec2<u32>(4294967295u, var_0.a.x)), arg_1.d.zx, var_0.a.wz)), var_0.a.zxx);
    var_2 = firstTrailingBit(vec3<i32>(var_2.x, ~abs(_wgslsmith_add_i32(var_3.b, u_input.a.x)), ~(-_wgslsmith_mod_i32(-4491i, 50837i))));
    return !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))) >= -1000f, true, var_3.a.x, any(var_3.a.zy));
}

fn func_1() -> Struct_1 {
    var var_0 = select(!vec4<bool>(any(vec3<bool>(false, true, true)), true, (21114u >> (u_input.b % 32u)) >= _wgslsmith_mod_u32(23832u, u_input.b), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true), vec4<bool>(true, true, true, u_input.a.x != u_input.a.x), vec4<bool>(true, true, 18249i == u_input.a.x, true)), true), true);
    var_0 = !select(vec4<bool>(select(false, var_0.x, true) && (u_input.b < 4294967295u), var_0.x, all(vec3<bool>(true, var_0.x, true)), var_0.x), !func_4(1313f, func_2(), _wgslsmith_f_op_f32(max(1486f, -1453f))), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(true, var_0.x, true, true)));
    let var_1 = func_2();
    let var_2 = 1u;
    let var_3 = Struct_2(select(select(~firstLeadingBit(vec4<u32>(u_input.b, 4141u, u_input.b, u_input.b)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(70366u, 4294967295u, var_2, u_input.b), vec4<u32>(u_input.b, 25580u, var_1.c, var_1.c)), vec4<u32>(var_1.c, var_1.c, 0u, var_2), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(40460u, 28231u, var_2, 1u)), ~(~vec4<u32>(1u, 0u, 22782u, u_input.b))), select(!select(vec4<bool>(var_0.x, var_0.x, var_1.a.x, var_1.a.x), vec4<bool>(false, false, var_1.a.x, false), vec4<bool>(var_1.a.x, var_1.a.x, false, false)), vec4<bool>(any(vec4<bool>(var_1.a.x, var_0.x, false, true)), !var_1.a.x, !var_0.x, false), !func_4(-949f, Struct_1(var_1.a, var_1.b, 4544u, vec3<u32>(12887u, u_input.b, var_1.d.x)), 1000f).x)), vec2<bool>(var_0.x, select(_wgslsmith_f_op_f32(ceil(2735f)) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.a.x, false)));
    return Struct_1(var_1.a, -u_input.a.x, func_2().c, min(~var_3.a.xxy, vec3<u32>(~(~u_input.b), min(22949u, var_2), _wgslsmith_mult_u32(var_1.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(27107u, u_input.b, 11006u, 4294967295u), vec4<u32>(4294967295u, var_3.a.x, 1u, 39403u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(919f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(377f * 568f)) - 361f))));
    var var_1 = select(vec2<i32>(-19054i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -94557i, 46752i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 0i, 40335i), vec3<i32>(u_input.a.x, -1i, 36521i)))), -_wgslsmith_add_vec2_i32(max(u_input.a, u_input.a), vec2<i32>(i32(-1i) * -38512i, u_input.a.x)), vec2<bool>(true, !select(true, false, true) != false));
    var var_2 = func_1();
    var_1 = _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(1i, _wgslsmith_mod_i32(func_2().b, 34495i)), u_input.a) & -u_input.a;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-190f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(112f)) - _wgslsmith_f_op_f32(f32(-1f) * -275f)))), 283f);
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(var_2.d.xx, ~vec2<u32>(0u, u_input.b)), func_1().d.yy), _wgslsmith_add_u32(10112u, firstTrailingBit(26866u)) << (var_2.c % 32u), i32(-1i) * -4855i, vec3<f32>(var_3.x, var_3.x, var_3.x));
}

