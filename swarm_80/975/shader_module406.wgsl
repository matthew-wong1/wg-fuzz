struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = 0i & u_input.c;
    let var_1 = firstLeadingBit(reverseBits(min(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, !vec4<bool>(true, false, arg_0, false)), u_input.a)));
    var var_2 = u_input.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -396f))) - _wgslsmith_f_op_f32(min(-254f, _wgslsmith_f_op_f32(select(580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1346f * 841f) * _wgslsmith_div_f32(1898f, 1119f)), true)))));
    var var_4 = Struct_1(-(~_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c), ~vec4<i32>(59452i, 1i, 0i, -2147483647i))), min(62488u, ~4294967295u), u_input.b.x, var_1.x, ~u_input.a.wzx);
    return ~(~(-vec4<i32>(var_4.c, -2147483647i, u_input.b.x, u_input.b.x))) | var_4.a;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_1(func_3(false), firstLeadingBit(u_input.a.x), reverseBits(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_sub_i32(-2147483647i, u_input.b.x))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a.zyy, _wgslsmith_mod_vec3_u32(u_input.a.yyy, u_input.a.wxw)), abs(_wgslsmith_add_u32(0u, 30296u))), ~(~reverseBits(u_input.a.wzy))), Struct_1(vec4<i32>(~u_input.b.x, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(0i, abs(-2147483647i)), 67431i), reverseBits(u_input.a.x), -11077i, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(10958u, ~u_input.a.x, u_input.a.x ^ 4294967295u, u_input.a.x)), u_input.a.zyy), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(1f, 1f, 1f, 1f)));
    let var_1 = 23143u;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-700f * -1165f), -222f, _wgslsmith_f_op_f32(min(var_0.c.x, -563f)), var_0.c.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, var_0.c.x, 651f), vec4<f32>(var_0.c.x, var_0.c.x, 1249f, 1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.c.x, 1019f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_div_f32(var_0.c.x, var_0.c.x), false)) - _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-var_0.c.x))), 810f, -553f));
    var var_3 = Struct_4(vec3<i32>(func_3(all(vec2<bool>(true, true))).x, -2147483647i, 1i), Struct_1(vec4<i32>(-_wgslsmith_div_i32(var_0.a.a.x, u_input.b.x), ~(~16876i), _wgslsmith_mult_i32(var_0.b.a.x ^ u_input.b.x, 1i), ~(-29134i)), _wgslsmith_dot_vec3_u32(var_0.b.e, reverseBits(~u_input.a.xzx)), var_0.a.c, ~min(_wgslsmith_sub_u32(1211u, u_input.a.x), var_1), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(18384u, u_input.a.x, 4294967295u), u_input.a.zzy), vec3<u32>(var_1, var_1, 82777u) << (vec3<u32>(u_input.a.x, 54992u, var_1) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 60458u), vec3<u32>(4294967295u, 83093u, 1u)))), max(max(u_input.b.zx, select(select(var_0.b.a.zy, vec2<i32>(-2147483647i, 2147483647i), vec2<bool>(true, false)), vec2<i32>(-7066i, u_input.b.x), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), u_input.b.yx >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_1, var_1), ~u_input.a.yz) % vec2<u32>(32u))), Struct_2(var_0.a.a, select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(var_1 <= var_1, var_0.b.d == var_1, any(vec3<bool>(false, true, false)), true)), var_0.a, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.zwy, min(u_input.a.zyx, vec3<u32>(62567u, var_0.b.b, u_input.a.x))), vec3<u32>(1u, abs(var_1), 36879u), vec3<u32>(min(var_0.a.d, 31347u), u_input.a.x, 0u)), var_0.a), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d, var_1, var_0.a.b, 1u), vec4<u32>(var_0.a.b, var_0.a.d, u_input.a.x, 84463u) >> (u_input.a % vec4<u32>(32u)))));
    var var_4 = var_0;
    return Struct_4(~vec3<i32>(countOneBits(-35431i), var_3.d.c.a.x, select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.x, -2147483647i, var_4.a.c), u_input.b), _wgslsmith_mod_i32(var_4.b.c, -1533i), var_3.d.b.x == true)), var_4.b, abs(firstLeadingBit(vec2<i32>(i32(-1i) * -1i, -28805i))), var_3.d, u_input.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = true;
    var var_1 = arg_1.a.zwy;
    let var_2 = ~u_input.b.x > ~_wgslsmith_sub_i32(abs(abs(var_1.x)), 2147483647i);
    var var_3 = Struct_3(func_2().b, Struct_1(~(~vec4<i32>(arg_2.a.x, arg_1.c, u_input.b.x, 1i) | ~vec4<i32>(-50907i, -1i, -1i, var_1.x)), 0u, arg_0.d.a.x, 4294967295u, arg_0.b.e), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-312f, -509f, -1000f, 334f))))))));
    var var_4 = Struct_3(func_2().b, func_2().b, var_3.c);
    return 572f;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(), func_2().b, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(82921u, u_input.a.x, 1u, 4294967295u) % vec4<u32>(32u)), 4294967295u, _wgslsmith_dot_vec2_i32(vec2<i32>(-64i, -63382i), vec2<i32>(0i, u_input.c)), _wgslsmith_sub_u32(u_input.a.x, arg_0), countOneBits(u_input.a.zyw)))) + -516f) * _wgslsmith_f_op_f32(trunc(210f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-340f, 1f), _wgslsmith_f_op_f32(-1f))));
    let var_1 = func_2().d.c;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-186f * -903f), -1017f, _wgslsmith_sub_i32(-60301i, -2147483647i) > _wgslsmith_sub_i32(u_input.c, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f)))), 947f);
    let var_2 = false;
    return func_2().d;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = var_0.e.a.zz;
    let var_2 = Struct_4(u_input.b, Struct_1(var_0.a, 0u, var_0.e.c ^ _wgslsmith_dot_vec3_i32(u_input.b, arg_3.c.a.yyz), var_0.c.b, abs(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(var_0.c.e, vec3<u32>(4294967295u, var_0.c.b, arg_3.d.x)), vec3<u32>(u_input.a.x, arg_3.e.d, 22745u)))), -_wgslsmith_mult_vec2_i32(vec2<i32>(-var_0.e.a.x, -u_input.b.x), func_1(arg_3.d.x).c.a.xx), func_1(~(~min(var_0.e.e.x, 1u))), var_0.c.e.x);
    var_0 = Struct_2(vec4<i32>(u_input.b.x, (var_0.a.x << (u_input.a.x % 32u)) ^ (i32(-1i) * -2147483647i), min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.c, 26105i, -55283i), arg_3.a.xww), 1i), firstTrailingBit(~arg_3.e.c)) ^ _wgslsmith_mod_vec4_i32(var_0.a, reverseBits(arg_3.a << (u_input.a % vec4<u32>(32u)))), !(!vec4<bool>(!arg_2, any(var_0.b), true, false)), Struct_1(~(vec4<i32>(0i, var_0.e.a.x, 0i, var_2.a.x) << (u_input.a % vec4<u32>(32u))) | (vec4<i32>(arg_3.a.x, 14680i, var_2.a.x, -40063i) << (vec4<u32>(arg_3.e.e.x, 1u, 4294967295u, arg_3.c.e.x) % vec4<u32>(32u))), 84643u, -reverseBits(1i), 1u, ~func_1(~var_0.d.x).c.e), vec3<u32>(4119u, firstLeadingBit(func_2().b.b), var_0.c.e.x), func_2().d.e);
    var var_3 = Struct_2(func_1(~u_input.a.x).e.a, select(vec4<bool>(_wgslsmith_f_op_f32(select(1000f, arg_1, false)) > arg_1, arg_2, false && var_0.b.x, (arg_1 <= arg_1) && false), func_1(4294967295u).b, true), var_0.e, vec3<u32>(u_input.a.x, max(1u, u_input.a.x), firstLeadingBit(arg_3.d.x)) & _wgslsmith_mod_vec3_u32(~min(vec3<u32>(var_0.c.e.x, var_2.e, var_0.d.x), var_2.d.c.e), arg_3.d), Struct_1(var_0.a, 34545u & ~_wgslsmith_mult_u32(4294967295u, arg_3.d.x), ~var_2.b.c << (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x | 0u) % 32u), var_2.b.d >> (0u % 32u), ~var_2.d.e.e));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(1i <= ~u_input.c, 730f, true, func_1(u_input.a.x ^ 90433u));
    let x = u_input.a;
    s_output = StorageBuffer(-701f, -(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), vec4<i32>(1i, u_input.c, 1344i, u_input.b.x))) & abs(-u_input.c)));
}

