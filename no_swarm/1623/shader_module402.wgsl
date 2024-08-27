struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(0u, 47754u, u_input.e.x, 39944u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, u_input.a, 1u), vec4<u32>(0u, 0u, u_input.c, 4294967295u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), true)), firstLeadingBit(vec4<u32>(~11252u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.a, u_input.a, 18940u), vec4<u32>(u_input.c, u_input.a, 20719u, u_input.c)), 4294967295u, u_input.a & 16656u))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.d, u_input.b, _wgslsmith_sub_i32(u_input.b, -34030i), u_input.d)), vec4<i32>(0i, 18807i, u_input.b, u_input.d) ^ vec4<i32>(29709i, -1963i << (u_input.c % 32u), 1i, 1i)), _wgslsmith_f_op_f32(abs(423f)));
    var var_1 = var_0.b.yy;
    var_1 = _wgslsmith_mod_vec2_i32(max(vec2<i32>(-37486i, u_input.d), abs(vec2<i32>(reverseBits(-24816i), ~(-14151i)))), _wgslsmith_clamp_vec2_i32(~(~var_0.b.yz) & _wgslsmith_clamp_vec2_i32(vec2<i32>(25048i, 2147483647i), var_0.b.zz, max(vec2<i32>(-22276i, u_input.d), vec2<i32>(var_0.b.x, u_input.b))), _wgslsmith_mult_vec2_i32(~(vec2<i32>(u_input.d, 14764i) >> (u_input.e % vec2<u32>(32u))), vec2<i32>(-var_0.b.x, -357i)), _wgslsmith_div_vec2_i32(var_0.b.xy, vec2<i32>(-68331i, var_1.x))));
    var_1 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(var_0.b.yw, ~var_0.b.ww);
    let var_2 = var_0.b;
    return ~(~_wgslsmith_mult_i32(var_0.b.x, 10899i)) >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_div_u32(var_0.a, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 6547u), vec3<u32>(u_input.c, u_input.c, u_input.a)), abs(u_input.e.x), var_0.a << (0u % 32u)), vec4<u32>(reverseBits(77459u), u_input.a, ~u_input.c, var_0.a), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)))), ~vec4<u32>(u_input.a, min(var_0.a, 25989u), ~22538u, _wgslsmith_mult_u32(3125u, 79862u))) % 32u);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1 >> (_wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(22344u & arg_2.x, arg_2.x)) % 32u), _wgslsmith_div_vec4_i32(-firstLeadingBit(vec4<i32>(arg_0.x, arg_3.x, -16889i, arg_3.x)), vec4<i32>(_wgslsmith_mod_i32(~arg_3.x, func_3()), _wgslsmith_sub_i32(arg_3.x, -28758i) & (-2147483647i << (arg_2.x % 32u)), ~arg_3.x >> (arg_2.x % 32u), _wgslsmith_div_i32(8033i, -49128i))), _wgslsmith_f_op_f32(select(1927f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-113f, -365f)), _wgslsmith_f_op_f32(sign(-133f)))), all(vec4<bool>(false, false, false, true)) && !(u_input.b >= arg_0.x))));
    let var_1 = vec4<bool>((_wgslsmith_f_op_f32(round(499f)) == var_0.c) | true, select(any(vec4<bool>(true, true, true, all(vec2<bool>(true, true)))), all(vec2<bool>(true, false)), all(vec3<bool>(true, true, true))), u_input.c >= _wgslsmith_mult_u32(reverseBits(1u), var_0.a), -917f >= _wgslsmith_f_op_f32(-var_0.c));
    var_0 = Struct_1(38605u, vec4<i32>(u_input.b, max(arg_3.x >> (~1u % 32u), 1i), ~((arg_0.x << (arg_2.x % 32u)) >> (29642u % 32u)), -1i), var_0.c);
    var var_2 = var_0.c;
    var var_3 = Struct_3(Struct_2(var_0.c, -21322i, _wgslsmith_div_vec2_i32((arg_0.zy ^ arg_0.zy) | arg_0.zy, vec2<i32>(u_input.d, arg_3.x)), Struct_1(1u, _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(arg_3.x, 30925i, 2147483647i, var_0.b.x)), var_0.b >> (vec4<u32>(u_input.c, u_input.e.x, arg_1, 66764u) % vec4<u32>(32u))), 218f)));
    return var_3.a.d;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    let var_0 = vec3<i32>(48264i, _wgslsmith_mult_i32(arg_2.a.c.x, -2147483647i), -firstTrailingBit(~abs(arg_2.a.b)));
    var var_1 = u_input.b & (i32(-1i) * -32082i);
    var var_2 = arg_1.d;
    var_1 = arg_1.c.x;
    let var_3 = u_input.b;
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(step(-801f, arg_1.d.c)), -u_input.b, vec2<i32>(1i & _wgslsmith_sub_i32(arg_2.a.c.x, var_3), 2147483647i), arg_2.a.d));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<u32>) -> i32 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(-291f)), 1712f, _wgslsmith_f_op_f32(select(820f, -1190f, false)), _wgslsmith_f_op_f32(1311f * -419f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1347f, 2011f, 772f, -1572f)))))), Struct_2(-630f, _wgslsmith_clamp_i32(0i, u_input.b, reverseBits(u_input.d)), -vec2<i32>(-42936i, ~arg_0), func_2(~(~vec3<i32>(arg_0, u_input.d, u_input.d)), arg_2.x, arg_2.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(-21969i, 44329i), countOneBits(vec2<i32>(45594i, -2147483647i))))), Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1512f + -280f)), ~19040i, vec2<i32>(-45222i, 25741i), Struct_1(reverseBits(4294967295u), min(vec4<i32>(u_input.d, u_input.d, 1i, arg_0), vec4<i32>(-1i, u_input.d, 0i, -37377i)), 227f))));
    let var_1 = 34079u;
    return 1i;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_1(abs(arg_1.x), vec4<i32>(-26418i, 24421i, 14233i, -39786i), _wgslsmith_f_op_f32(1111f - 941f));
    var var_1 = arg_0;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.c)))), 0i, vec2<i32>(arg_0.a.d.b.x, arg_0.a.d.b.x), Struct_1(115546u, func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.d.c, -638f, var_1.a.a, var_1.a.d.c), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1153f, 1595f, 3340f, arg_0.a.d.c))))), var_1.a, arg_0).a.d.b, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(-var_0.c))))));
    var var_3 = arg_0;
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1094f), arg_0.a.b, max(-_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.b, var_2.b), var_3.a.c, vec2<i32>(arg_0.a.d.b.x, var_3.a.d.b.x)), ~var_0.b.xz ^ vec2<i32>(arg_0.a.b, var_0.b.x)), func_2(var_1.a.d.b.xyy, select(abs(1u), _wgslsmith_sub_u32(var_1.a.d.a, var_2.d.a), true), vec2<u32>(~1u, countOneBits(1u)), abs(~arg_0.a.d.b.xx))));
    return vec2<bool>(all(!vec2<bool>(-930f <= var_0.c, all(vec2<bool>(false, false)))), !any(vec4<bool>(true, any(vec2<bool>(true, true)), true, all(vec4<bool>(false, false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1206f - -1000f), 1007f), _wgslsmith_add_i32(u_input.b, ~(-2147483647i)), vec2<i32>(-1i, func_1(19317i, u_input.e.x, vec3<u32>(u_input.a, 1u, u_input.a))), Struct_1(4294967295u, firstLeadingBit(vec4<i32>(u_input.b, 11304i, u_input.b, u_input.b)), -389f))), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 36333u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.e.x), vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(u_input.e.x, 6190u, 35188u)), vec3<u32>(u_input.a, 24222u, 4294967295u) | max(vec3<u32>(u_input.e.x, 1u, u_input.a), vec3<u32>(4294967295u, u_input.e.x, u_input.e.x)))));
    var var_1 = var_0.x;
    var_0 = select(!vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>((u_input.a >= func_2(vec3<i32>(-1i, -1i, 4462i), u_input.c, u_input.e, vec2<i32>(0i, u_input.b)).a) | !var_0.x, -min(0i, u_input.d) < u_input.b));
    var_1 = true;
    let var_2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -226f, -377f, 1901f), vec4<f32>(1660f, 730f, -1000f, -376f))), func_4(vec4<f32>(2010f, 589f, 1728f, 954f), Struct_2(1943f, u_input.d, vec2<i32>(-2147483647i, u_input.d), Struct_1(1u, vec4<i32>(2147483647i, u_input.d, u_input.d, u_input.d), -962f)), Struct_3(Struct_2(1276f, -1i, vec2<i32>(u_input.b, 1i), Struct_1(4294967295u, vec4<i32>(2147483647i, -41624i, u_input.b, 200i), -520f)))).a, func_4(vec4<f32>(-1251f, 1434f, -136f, 1182f), Struct_2(-378f, u_input.d, vec2<i32>(u_input.d, u_input.d), Struct_1(u_input.e.x, vec4<i32>(-2147483647i, 1i, 1i, u_input.b), -1690f)), Struct_3(Struct_2(-669f, u_input.d, vec2<i32>(-1i, -2147483647i), Struct_1(u_input.e.x, vec4<i32>(u_input.d, -795i, u_input.b, -26776i), -476f))))).a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(216f * 797f))), -510f, -844f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(314f + _wgslsmith_f_op_f32(ceil(-1180f)))), ~(1i & _wgslsmith_div_i32(u_input.b, u_input.d)), (_wgslsmith_sub_vec2_i32(vec2<i32>(-16612i, u_input.d), vec2<i32>(2147483647i, -435i)) ^ vec2<i32>(67532i, u_input.b)) & ((vec2<i32>(u_input.b, 84034i) & vec2<i32>(u_input.b, u_input.d)) | vec2<i32>(-1i, 14554i)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, 13725u), max(vec3<u32>(16991u, u_input.a, 4294967295u), vec3<u32>(18520u, 4294967295u, 37974u))), min(vec4<i32>(0i, -1i, 1i, 11576i), vec4<i32>(u_input.d, u_input.d, 2147483647i, -23282i)) | -vec4<i32>(1i, -18067i, u_input.b, u_input.d), _wgslsmith_f_op_f32(max(-902f, _wgslsmith_f_op_f32(ceil(130f)))))), func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(241f)), _wgslsmith_f_op_f32(floor(-1960f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -316f))), 1f), Struct_2(_wgslsmith_div_f32(-999f, _wgslsmith_f_op_f32(floor(307f))), 2147483647i, vec2<i32>(firstLeadingBit(-1i), firstLeadingBit(1i)), func_2(abs(vec3<i32>(u_input.d, u_input.b, u_input.d)), 1u, vec2<u32>(0u, 9076u), ~vec2<i32>(-2147483647i, u_input.b))), Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(-1595f)), u_input.d, vec2<i32>(30227i, 2147483647i), func_4(vec4<f32>(644f, 736f, -484f, 1434f), Struct_2(-2562f, u_input.b, vec2<i32>(u_input.b, u_input.b), Struct_1(51608u, vec4<i32>(2147483647i, u_input.d, u_input.d, -38910i), 1667f)), Struct_3(Struct_2(587f, u_input.d, vec2<i32>(u_input.b, u_input.d), Struct_1(u_input.c, vec4<i32>(1i, u_input.d, 1361i, 1i), 887f)))).a.d)))).a.d;
    var_0 = vec2<bool>(!var_0.x, !var_0.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(620f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, -1817f))) * 737f) + var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, 1000f, var_2.c) + vec3<f32>(-557f, 772f, -1447f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-920f, var_3, var_2.c)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3, -786f, var_2.c)))))), vec2<i32>(~0i, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, 964f, var_2.c, -735f), vec4<f32>(352f, var_3, var_3, -629f), vec4<bool>(var_0.x, var_0.x, false, false))) - vec4<f32>(var_3, var_3, var_2.c, var_2.c)), Struct_2(var_3, _wgslsmith_add_i32(1i, 22426i), firstLeadingBit(var_2.b.wz), func_4(vec4<f32>(var_3, -173f, var_3, 1000f), Struct_2(2198f, -3174i, vec2<i32>(var_2.b.x, u_input.d), Struct_1(4294967295u, vec4<i32>(var_2.b.x, u_input.d, -2147483647i, 2147483647i), -961f)), Struct_3(Struct_2(-401f, var_2.b.x, vec2<i32>(u_input.d, -1i), Struct_1(1u, var_2.b, var_2.c)))).a.d), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-589f, var_3, var_3, var_3), vec4<f32>(-674f, -1276f, var_2.c, 879f)), func_4(vec4<f32>(1054f, var_3, var_3, var_2.c), Struct_2(var_2.c, u_input.d, vec2<i32>(2147483647i, 74473i), Struct_1(u_input.c, vec4<i32>(-27732i, u_input.b, -4043i, 0i), var_2.c)), Struct_3(Struct_2(var_2.c, var_2.b.x, var_2.b.xy, var_2))).a, func_4(vec4<f32>(614f, 1077f, 971f, var_3), Struct_2(var_2.c, 2147483647i, var_2.b.wy, Struct_1(36002u, vec4<i32>(0i, -47910i, u_input.d, u_input.b), 1177f)), Struct_3(Struct_2(var_3, var_2.b.x, vec2<i32>(-22314i, u_input.b), var_2))))).a.b));
}

