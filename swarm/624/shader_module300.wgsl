struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_5) -> f32 {
    let var_0 = arg_3;
    var var_1 = ~(vec2<u32>(4294967295u, 68441u) | u_input.d.zx);
    var_1 = ~arg_1.xy;
    var_1 = _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1222u, 4294967295u), vec2<u32>(arg_0.c.x, 130749u), vec2<u32>(1u, arg_0.c.x))), vec2<u32>(4294967295u, 63162u), ~reverseBits(vec2<u32>(77302u, arg_0.c.x))), _wgslsmith_mult_vec2_u32(u_input.d.xx, u_input.d.zx));
    var var_2 = vec4<bool>(!var_0.a.b.x, ~u_input.d.x != 1u, false, !all(!(!vec3<bool>(arg_0.a.x, true, false))));
    return _wgslsmith_f_op_f32(1606f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(max(-172f, 207f)))) + _wgslsmith_div_f32(1069f, 850f)))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_5 {
    let var_0 = Struct_3(Struct_1(arg_0.x == _wgslsmith_add_i32(u_input.c, 1i), vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec2<bool>(false, false), -35901i, u_input.a.xwx), vec4<u32>(u_input.a.x, 4294967295u, u_input.d.x, u_input.a.x), Struct_1(true, vec2<bool>(false, false), 1357f, vec3<i32>(u_input.c, u_input.c, 0i), 1u), Struct_5(Struct_1(true, vec2<bool>(true, false), 598f, vec3<i32>(arg_0.x, arg_0.x, -4432i), u_input.d.x), Struct_3(Struct_1(true, vec2<bool>(false, true), -726f, vec3<i32>(12072i, u_input.c, 15473i), 17533u), Struct_1(false, vec2<bool>(true, false), 1191f, vec3<i32>(arg_0.x, -22398i, arg_0.x), u_input.d.x), Struct_1(true, vec2<bool>(true, true), 1555f, vec3<i32>(arg_0.x, u_input.c, -2147483647i), u_input.b), 0u), u_input.b))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(384f, 414f), _wgslsmith_f_op_f32(func_3(Struct_4(vec2<bool>(false, false), 17402i, u_input.d), vec4<u32>(51969u, u_input.b, u_input.d.x, 57546u), Struct_1(false, vec2<bool>(true, true), -1038f, vec3<i32>(u_input.c, 1i, arg_0.x), u_input.a.x), Struct_5(Struct_1(true, vec2<bool>(false, false), 373f, vec3<i32>(-59956i, 1i, 1i), u_input.d.x), Struct_3(Struct_1(true, vec2<bool>(true, false), 571f, vec3<i32>(arg_0.x, arg_0.x, arg_0.x), 33522u), Struct_1(true, vec2<bool>(false, true), 829f, vec3<i32>(u_input.c, u_input.c, 32818i), 7213u), Struct_1(false, vec2<bool>(false, false), 760f, vec3<i32>(u_input.c, arg_0.x, 0i), 31766u), 5227u), u_input.d.x)))))), ~(~abs(vec3<i32>(2280i, arg_0.x, u_input.c))), _wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.a.ww & u_input.d.zz)), Struct_1(any(vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(11850u >= u_input.b, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), 1684f, countOneBits(vec3<i32>(u_input.c, 93847i, 1i) ^ vec3<i32>(arg_0.x, 1i, u_input.c)) | _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0.x, arg_0.x), vec3<i32>(0i, 1i, arg_0.x)), vec3<i32>(-2147483647i, u_input.c, u_input.c) << (u_input.d % vec3<u32>(32u))), ~(u_input.d.x ^ 17083u) << (~u_input.b % 32u)), Struct_1(false, !select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), _wgslsmith_f_op_f32(trunc(1224f)), -select(~vec3<i32>(u_input.c, -1i, 2147483647i), ~vec3<i32>(arg_0.x, arg_0.x, arg_0.x), u_input.b > 42220u), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.a.x, 42443u), min(u_input.b & u_input.d.x, _wgslsmith_mod_u32(u_input.a.x, 25859u)))), ~(~_wgslsmith_mult_u32(~u_input.d.x, reverseBits(u_input.d.x))));
    return Struct_5(Struct_1(true, vec2<bool>(true, true), var_0.c.c, vec3<i32>(min(_wgslsmith_mod_i32(-34975i, -1i), u_input.c), -2147483647i, -2147483647i), firstTrailingBit(~_wgslsmith_div_u32(0u, 36857u))), var_0, 4294967295u);
}

fn func_1(arg_0: bool) -> vec3<bool> {
    let var_0 = func_2(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -38662i), vec2<i32>(30429i, u_input.c))));
    let var_1 = Struct_4(!vec2<bool>(!var_0.b.b.b.x, _wgslsmith_mult_u32(0u, 12656u) < (61701u ^ var_0.c)), var_0.a.d.x, vec3<u32>(1u, 1u, _wgslsmith_mod_u32(var_0.b.a.e, 52067u)));
    var var_2 = func_2(var_0.b.c.d.zx).b;
    var_2 = Struct_3(Struct_1(all(vec4<bool>(var_2.c.a, func_2(var_0.a.d.zy).a.a, true, true)), var_1.a, _wgslsmith_f_op_f32(1536f - 1000f), vec3<i32>(-7095i, 1i, min(2147483647i, var_2.a.d.x) | ~u_input.c), ~0u), func_2(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -7874i) << (~u_input.d.yy % vec2<u32>(32u)), vec2<i32>(35422i, var_0.a.d.x))).b.a, var_2.a, 11815u & _wgslsmith_mod_u32(u_input.b >> ((var_1.c.x | var_1.c.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 108922u, var_0.c, 1729u), vec4<u32>(var_1.c.x, 1u, 36236u, 1u)) ^ (var_1.c.x >> (u_input.d.x % 32u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1387f, -1000f, _wgslsmith_f_op_f32(-142f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.c - var_0.a.c), _wgslsmith_f_op_f32(-var_0.a.c))))));
    return !(!select(vec3<bool>(!var_1.a.x, func_2(var_2.c.d.zx).b.a.b.x, true), select(!vec3<bool>(var_2.b.b.x, true, false), select(vec3<bool>(true, var_2.a.a, var_0.b.c.a), vec3<bool>(arg_0, arg_0, arg_0), true), vec3<bool>(var_1.a.x, arg_0, var_1.a.x)), !select(vec3<bool>(false, var_0.b.a.b.x, true), vec3<bool>(arg_0, var_2.b.a, false), vec3<bool>(arg_0, false, var_2.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_mult_vec2_i32(-_wgslsmith_add_vec2_i32(~vec2<i32>(1i, u_input.c), vec2<i32>(-2147483647i, u_input.c) << (vec2<u32>(u_input.b, 33918u) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -15815i), vec2<i32>(1i, u_input.c) & vec2<i32>(u_input.c, u_input.c))), -select(_wgslsmith_div_vec2_i32(vec2<i32>(34620i, -2147483647i) & vec2<i32>(-2147483647i, u_input.c), vec2<i32>(55187i, u_input.c)), vec2<i32>(_wgslsmith_mult_i32(u_input.c, -1i), -1i), vec2<bool>(true, true)), true);
    var var_1 = func_1(true);
    let var_2 = false;
    let var_3 = Struct_4(func_2(abs(~vec2<i32>(var_0.x, u_input.c)) & ((vec2<i32>(var_0.x, -1i) >> (u_input.d.zz % vec2<u32>(32u))) << ((u_input.a.ww | u_input.d.zx) % vec2<u32>(32u)))).b.a.b, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, -3613i, var_0.x) ^ -vec3<i32>(var_0.x, -16356i, u_input.c)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c, 1i, u_input.c), vec3<i32>(var_0.x, var_0.x, 21762i)), min(vec3<i32>(u_input.c, -8897i, u_input.c), vec3<i32>(u_input.c, 10841i, var_0.x)) | -vec3<i32>(u_input.c, u_input.c, 0i))), vec3<u32>(0u, min(firstTrailingBit(1u), u_input.b), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, ~u_input.a.x, 58956u))));
    var var_4 = 0u;
    let var_5 = ~(~reverseBits(vec3<u32>(u_input.d.x << (0u % 32u), _wgslsmith_mod_u32(5351u, u_input.a.x), _wgslsmith_clamp_u32(u_input.d.x, u_input.a.x, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(994f - _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(49320i, 30905i), vec2<i32>(var_3.b, 0i)), vec2<i32>(0i, abs(-14321i))) >> (52044u % 32u));
}

