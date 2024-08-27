struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = arg_1.a;
    let var_1 = arg_1.c;
    var var_2 = ~max(~u_input.a, u_input.a);
    let var_3 = 4597i >> (reverseBits(max(var_2.x, ~77937u)) % 32u);
    var_2 = ~u_input.a | (u_input.a | u_input.a);
    return vec3<f32>(1072f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-553f + -261f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -740f)))) * _wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = !arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0 - arg_0), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(-arg_0.xy), Struct_2(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), 1169f, vec3<bool>(any(vec3<bool>(true, false, arg_1)), all(vec4<bool>(true, false, arg_1, arg_1)), true), u_input.d.zy)))));
    let var_2 = !vec3<bool>(select(arg_1, all(select(vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, false, arg_1))), false), _wgslsmith_f_op_f32(sign(1260f)) >= arg_0.x, arg_2 >= arg_2);
    var var_3 = firstLeadingBit(_wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_2, 45995u, 0u), vec3<u32>(35024u, arg_2, 7141u) | vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), ~(~vec3<u32>(arg_2, u_input.c, arg_2))));
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_0.x, arg_0.x, -992f))))));
    return _wgslsmith_dot_vec2_u32(~u_input.a.xz, _wgslsmith_mod_vec2_u32(~firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.a.zz, u_input.a.zz)), u_input.a.zx));
}

fn func_1() -> f32 {
    var var_0 = select(vec4<u32>(~1u, u_input.a.x, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1632f, 395f, -649f))), true, 130950u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, 29853u, 100190u), max(0u, 32932u), firstLeadingBit(u_input.a.x), 55498u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 5428u, u_input.a.x), vec4<u32>(u_input.b, 1u, 1u, 1u) ^ vec4<u32>(0u, u_input.b, u_input.b, 4294967295u)))), ~(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.b)) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 55669u, u_input.c, 40842u), firstTrailingBit(vec4<u32>(u_input.a.x, 7018u, 28884u, 0u)))), !any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))));
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(25337u, 4294967295u, ~1u, 0u), vec4<u32>(~reverseBits(0u), max(max(1u, ~u_input.c), var_0.x), 21392u, _wgslsmith_div_u32(39290u | _wgslsmith_mod_u32(1u, u_input.b), 59993u)));
    var_0 = vec4<u32>(var_0.x, ~(var_0.x << (22357u % 32u)), ~1u, u_input.c) >> (vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(min(min(vec3<u32>(u_input.a.x, 18573u, 1u), u_input.a), abs(u_input.a)), abs(var_0.zyw)), u_input.b, u_input.a.x) % vec4<u32>(32u));
    var_0 = ~vec4<u32>(~37697u, firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(28130u, 11949u), var_0.zy), u_input.a.yy) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a.x), max(var_0.yzz, var_0.xxy)) % 32u), ~u_input.c);
    var_0 = vec4<u32>(_wgslsmith_div_u32(13872u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 20036u), ~vec2<u32>(var_0.x, 43257u)) >> (45849u % 32u)), 7090u, 4294967295u, _wgslsmith_add_u32(reverseBits(u_input.c), u_input.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1536f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, arg_0.b))) + arg_1.b.x));
    let var_2 = _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), all(arg_0.c))), _wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(arg_0.a.x - -878f))), -435f, arg_0.c.x)));
    let var_3 = min(u_input.d.yzz, select(u_input.d.wyw ^ u_input.d.xzx, -_wgslsmith_sub_vec3_i32(u_input.d.xzx | vec3<i32>(-69645i, arg_1.c.x, arg_0.d.x), select(u_input.d.yxy, vec3<i32>(2147483647i, 0i, arg_0.d.x), arg_0.c)), firstTrailingBit(i32(-1i) * -1i) < countOneBits(-2147483647i)));
    var var_4 = Struct_3(select(select(!select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), vec4<bool>(arg_1.a.x, false, false, true), vec4<bool>(true, arg_0.c.x, true, arg_0.c.x)), select(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, arg_1.a.x, true, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_0.c.x, false, false)), select(!vec4<bool>(arg_0.c.x, true, true, arg_1.a.x), select(vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), vec4<bool>(false, arg_1.a.x, false, arg_1.a.x), vec4<bool>(false, arg_0.c.x, true, arg_0.c.x)), select(vec4<bool>(true, arg_0.c.x, true, false), vec4<bool>(true, arg_0.c.x, arg_1.a.x, false), false))), vec4<bool>(true, arg_0.c.x, -1i > arg_0.d.x, false), !select(!vec4<bool>(arg_0.c.x, true, arg_0.c.x, true), select(vec4<bool>(true, arg_0.c.x, true, arg_0.c.x), vec4<bool>(false, false, false, arg_1.a.x), vec4<bool>(true, false, false, true)), 0u != arg_1.d)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(abs(arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(var_3, u_input.d.xzz), 2147483647i & arg_1.c.x, ~arg_0.d.x, arg_1.c.x), _wgslsmith_div_vec4_i32(u_input.d, u_input.d)));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.xx, abs(~(~u_input.a.xz))));
    var_0 = 0u;
    let var_1 = ~u_input.a.zz;
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.d, u_input.a.x, var_1.x), u_input.a) >> (vec3<u32>(u_input.a.x, arg_1, 23052u) % vec3<u32>(32u))), u_input.a), var_1.x);
    var_0 = abs(firstTrailingBit(~_wgslsmith_clamp_u32(abs(4294967295u), abs(arg_0.d), ~u_input.c)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(Struct_2(vec3<f32>(-319f, _wgslsmith_f_op_f32(ceil(908f)), _wgslsmith_f_op_f32(floor(408f))), _wgslsmith_f_op_f32(func_1()), vec3<bool>(true, true, true), ~vec2<i32>(u_input.d.x, u_input.e) << (_wgslsmith_add_vec2_u32(u_input.a.yy, u_input.a.zz) % vec2<u32>(32u))), Struct_1(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(951f, -1736f, 1000f, -2261f))), u_input.d.zz, _wgslsmith_sub_u32(u_input.a.x | 37771u, _wgslsmith_div_u32(u_input.b, u_input.a.x)))), ~(~(15892u << (~u_input.a.x % 32u))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(step(-723f, -1312f)), select(vec3<bool>(true, true, true), !func_4(Struct_2(vec3<f32>(510f, -642f, 347f), -1764f, vec3<bool>(true, false, true), vec2<i32>(-13863i, u_input.d.x)), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-673f, -275f, -2582f, -694f), u_input.d.yy, u_input.c)).a, !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), firstLeadingBit(min(vec2<i32>(22625i, u_input.e), vec2<i32>(-2147483647i, -2147483647i)))), _wgslsmith_mod_i32(-u_input.d.x, firstTrailingBit(select(min(u_input.d.x, u_input.d.x), max(u_input.d.x, u_input.d.x), true))));
    var var_1 = ~(~2147483647i);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(max(var_0.b.yxz, vec3<f32>(_wgslsmith_f_op_f32(abs(-1331f)), func_4(Struct_2(vec3<f32>(var_0.b.x, var_0.b.x, -488f), var_0.b.x, vec3<bool>(true, var_0.a.x, var_0.a.x), var_0.c), var_0).b.x, 313f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)))), func_5(Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.b), var_0.c, _wgslsmith_div_u32(1u, _wgslsmith_add_u32(u_input.a.x, 1u))), _wgslsmith_clamp_u32(0u, ~1u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, var_0.d), var_0.d)), Struct_2(_wgslsmith_f_op_vec3_f32(min(var_0.b.yxx, var_0.b.wxy)), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x))), !vec3<bool>(var_0.a.x, false, var_0.a.x), select(-var_0.c, -vec2<i32>(-50621i, u_input.d.x), !vec2<bool>(var_0.a.x, false))), var_0.c.x << (_wgslsmith_mult_u32(4294967295u, 29179u >> (u_input.c % 32u)) % 32u)).a, var_0.c);
    var_1 = 48639i;
    var var_3 = 2147483647i;
    let var_4 = Struct_3(select(select(select(vec4<bool>(false, true, var_0.a.x, true), select(vec4<bool>(true, false, var_2.c.x, var_0.a.x), vec4<bool>(var_2.c.x, false, false, false), var_2.c.x), !vec4<bool>(var_0.a.x, false, var_0.a.x, false)), !select(vec4<bool>(var_0.a.x, false, true, true), vec4<bool>(true, true, var_0.a.x, var_2.c.x), true), !vec4<bool>(var_2.c.x, var_0.a.x, var_2.c.x, true)), vec4<bool>(var_0.a.x, true, var_2.c.x, var_0.a.x), select(!vec4<bool>(false, var_2.c.x, var_0.a.x, false), vec4<bool>(all(vec2<bool>(false, true)), true, true, true), vec4<bool>(func_4(Struct_2(vec3<f32>(var_0.b.x, -351f, var_2.a.x), -176f, var_2.c, var_0.c), var_0).a.x, var_0.a.x && false, !var_2.c.x, var_0.a.x))), var_0.b.x, _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_2.d.x, u_input.e, -17955i, -8255i)) ^ reverseBits(vec4<i32>(34004i, 1i, -1i, u_input.e)), vec4<i32>(-var_2.d.x, var_2.d.x, reverseBits(-1i), ~var_2.d.x)));
    var var_5 = vec4<u32>(var_0.d, 37403u, var_0.d ^ ~(firstTrailingBit(var_0.d) & ~u_input.a.x), ~(~func_2(var_2.a, var_2.c.x, firstLeadingBit(1576u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~select(min(u_input.a.xz, vec2<u32>(var_5.x, 35581u)), _wgslsmith_mult_vec2_u32(var_5.yy, vec2<u32>(0u, 1u)), var_0.b.x <= 1867f)));
}

