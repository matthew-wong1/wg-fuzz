struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    global0 = vec4<i32>(-2147483647i, arg_1, _wgslsmith_clamp_i32(i32(-1i) * -countOneBits(0i), global0.x, u_input.c), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i, u_input.c), vec2<i32>(arg_0.b.x, u_input.b.x) & vec2<i32>(arg_1, arg_2.b.x)), vec2<i32>(-1i >> (u_input.d.x % 32u), _wgslsmith_div_i32(arg_0.b.x, arg_1))) << (select(1u, 1u, all(select(arg_3.a.c, arg_3.a.c, vec2<bool>(arg_3.a.c.x, arg_3.a.c.x)))) % 32u));
    global0 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_mult_i32(-2147483647i, arg_1), firstTrailingBit(firstTrailingBit(u_input.c)), countOneBits(-36310i), 1i), u_input.b, firstTrailingBit(firstTrailingBit(-u_input.b)));
    var var_0 = min(abs(abs(max(~vec3<i32>(28834i, arg_0.b.x, -2147483647i), select(arg_0.b, vec3<i32>(global0.x, 2147483647i, global0.x), vec3<bool>(arg_3.a.c.x, arg_3.a.c.x, true))))), vec3<i32>(13721i, _wgslsmith_dot_vec2_i32(u_input.b.yw, global0.zz), ~reverseBits(u_input.a.x)) << (~vec3<u32>(0u, ~arg_3.a.a, arg_3.a.a) % vec3<u32>(32u)));
    let var_1 = vec3<f32>(527f, _wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-4315f + arg_0.a.x))), _wgslsmith_f_op_f32(-840f * -1118f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(select(941f, arg_0.a.x, true))))));
    global0 = _wgslsmith_mod_vec4_i32(vec4<i32>(max(arg_1, (i32(-1i) * -47827i) >> (min(u_input.d.x, arg_3.a.b) % 32u)), ~min(firstTrailingBit(2147483647i), arg_0.b.x), arg_1, -2147483647i | (_wgslsmith_add_i32(11186i, -6302i) & arg_2.b.x)), ~vec4<i32>(-19468i, ~(-arg_1), ~(-2147483647i), arg_2.b.x));
    return arg_3.a.b << (_wgslsmith_mod_u32(firstLeadingBit(1u), ~0u) % 32u);
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global0 = u_input.b ^ -u_input.b;
    global0 = vec4<i32>(-27684i, -2147483647i, -((i32(-1i) * -global0.x) | 1i), _wgslsmith_dot_vec4_i32(~abs(-vec4<i32>(20958i, 0i, -2147483647i, u_input.c)), u_input.b));
    var var_0 = firstLeadingBit(vec4<u32>(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(24310u, 20703u, arg_0.b), ~u_input.d), ~_wgslsmith_add_u32(u_input.d.x, 22572u), any(select(vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), vec4<bool>(false, false, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.c.x)))), arg_0.b, arg_0.b, func_3(Struct_3(vec2<f32>(1145f, -1799f), -global0.zwx, u_input.d.x, vec2<u32>(arg_0.b, u_input.e) >> (vec2<u32>(u_input.e, u_input.d.x) % vec2<u32>(32u))), global0.x, Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1785f, -1631f), vec2<f32>(234f, -585f))), -vec3<i32>(global0.x, -1i, 9358i), u_input.e, vec2<u32>(0u, 4294967295u)), Struct_2(arg_0))));
    var var_1 = global0.xyw;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -371f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1015f, 1000f))), -523f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1000f, 753f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2164f + -1421f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-280f, -838f), 173f)), _wgslsmith_div_f32(-117f, -237f), -761f), vec4<bool>(any(select(vec3<bool>(arg_0.c.x, true, true), vec3<bool>(arg_0.c.x, arg_0.c.x, true), arg_0.c.x)), arg_0.c.x, arg_0.c.x, true))));
    return select(((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 33779u, u_input.e, u_input.e), vec4<u32>(0u, 0u, u_input.d.x, var_0.x)) << (abs(vec4<u32>(56701u, var_0.x, 1u, 10830u)) % vec4<u32>(32u))) ^ countOneBits(vec4<u32>(u_input.d.x, var_0.x, 0u, 18081u) << (vec4<u32>(9224u, 28879u, 114842u, u_input.e) % vec4<u32>(32u)))) & vec4<u32>(~1u, ~_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(61816u, 0u)), ~(~1u), arg_0.b), vec4<u32>(~1u, u_input.d.x, 61526u, 21801u), !vec4<bool>(arg_0.c.x, true, true, var_2.x == -590f));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    global0 = abs(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-global0.x, 20412i >> (u_input.e % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-77632i, 36792i, u_input.c), vec3<i32>(-2147483647i, 0i, global0.x)), global0.x), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, u_input.a.x, global0.x, u_input.b.x)), ~u_input.b))));
    var var_0 = vec3<i32>(u_input.c, _wgslsmith_div_i32(global0.x, _wgslsmith_div_i32(u_input.c, -_wgslsmith_mod_i32(-2147483647i, -10671i))), -26810i);
    var var_1 = arg_3;
    var_0 = ~abs(vec3<i32>(2147483647i, var_0.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, -1i, var_0.x, -1i), u_input.b), ~vec4<i32>(global0.x, 33635i, global0.x, -2147483647i))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, arg_1)))), ~global0.yxz, ~abs(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(0u, arg_2.b))), u_input.d.yx);
    return vec4<i32>(-1i, 1i, -2147483647i, var_0.x) >> (func_4(Struct_1(abs(func_3(var_2, global0.x, Struct_3(var_2.a, var_2.b, 59233u, vec2<u32>(arg_2.b, var_2.d.x)), Struct_2(Struct_1(u_input.d.x, u_input.e, vec2<bool>(false, false))))), 0u, arg_2.c)) % vec4<u32>(32u));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_mod_vec4_i32(-(~vec4<i32>(-293i, 39396i, ~1i, -global0.x)), -firstTrailingBit(u_input.b) << (abs(~(~vec4<u32>(0u, u_input.d.x, 56866u, u_input.e))) % vec4<u32>(32u)));
    global0 = func_2(!all(vec2<bool>(true, true)), 1000f, Struct_1(min(~(~u_input.d.x), firstLeadingBit(_wgslsmith_div_u32(1u, u_input.d.x))), ~48969u, vec2<bool>(true, true)), true);
    let var_0 = Struct_1(u_input.e, _wgslsmith_mod_u32(u_input.d.x, ~(~(u_input.d.x << (u_input.d.x % 32u)))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(select(true, true, true), true)), vec2<bool>(select(true, any(vec2<bool>(true, false)), all(vec3<bool>(false, true, true))), true), select(vec2<bool>(true, true), vec2<bool>(false, u_input.c <= global0.x), vec2<bool>(true, true))));
    global0 = abs(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global0.x, -1142i, 2147483647i), select(u_input.c, u_input.a.x, true))), ~(-countOneBits(-80467i)), 29439i, global0.x));
    var var_1 = 26210u;
    return -2259f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))))) - 186f);
    let var_1 = abs(abs(-_wgslsmith_mod_vec4_i32(u_input.b, u_input.b)) ^ -countOneBits(min(u_input.b, u_input.b)));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(249f + 1294f)) * vec2<f32>(_wgslsmith_f_op_f32(943f - 1197f), -1505f)), global0.xww, ~(~func_3(Struct_3(vec2<f32>(-312f, 814f), global0.wyy, 57939u, vec2<u32>(19281u, u_input.d.x)), var_1.x, Struct_3(vec2<f32>(-538f, 1000f), global0.xww, u_input.e, u_input.d.zx), Struct_2(Struct_1(46403u, 22555u, vec2<bool>(true, true))))), _wgslsmith_div_vec2_u32(vec2<u32>(19711u, 4294967295u >> (u_input.d.x % 32u)), ~abs(vec2<u32>(u_input.d.x, 4294967295u)))), -1000f, Struct_1(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.e, u_input.e), vec4<u32>(u_input.e, 16520u, 53131u, 14751u))), vec4<u32>(u_input.e, u_input.e, u_input.d.x, u_input.d.x)), 22877u >> (u_input.e % 32u), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), true)), Struct_1(4294967295u, 12530u, select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, false))), true)));
    let var_3 = ~(var_2.a.c >> (0u % 32u));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2583f - 1197f), _wgslsmith_f_op_f32(abs(1396f)))))))));
    var var_4 = ~(-reverseBits(var_1.yzw) ^ ((vec3<i32>(var_1.x, -44292i, 2147483647i) & var_1.xww) | ~vec3<i32>(13824i, 2147483647i, 2147483647i))) ^ vec3<i32>(min(~var_1.x, ~(-1i)), ~global0.x, ~_wgslsmith_clamp_i32(var_1.x, var_2.a.b.x << (1664u % 32u), -19347i));
    var var_5 = Struct_4(Struct_3(var_2.a.a, vec3<i32>(global0.x, _wgslsmith_clamp_i32(var_2.a.b.x, u_input.b.x, 1i) ^ 0i, var_4.x), _wgslsmith_sub_u32(~var_2.d.b, var_3), var_2.a.d), _wgslsmith_f_op_f32(-var_2.b), var_2.c, Struct_1(~_wgslsmith_mult_u32(~var_3, _wgslsmith_mod_u32(1u, var_3)), abs(~(~u_input.e)), !var_2.d.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.a.x, var_5.a.a.x, 375f, 470f)), vec4<f32>(-1577f, var_2.b, -1510f, -511f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_5.b, 550f, 1000f, var_5.a.a.x))))), !vec4<bool>(var_5.c.c.x, var_5.c.c.x, var_5.d.c.x, var_5.d.c.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.a.x, _wgslsmith_f_op_f32(abs(-629f)), _wgslsmith_div_f32(1225f, var_2.a.a.x), _wgslsmith_f_op_f32(ceil(564f))))), 0u, ~var_3);
}

