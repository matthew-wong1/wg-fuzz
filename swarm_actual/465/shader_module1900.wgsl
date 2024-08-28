struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = ~u_input.a.yw;
    let var_1 = _wgslsmith_sub_u32((var_0.x << (~_wgslsmith_clamp_u32(79725u, var_0.x, 46035u) % 32u)) >> (1u % 32u), 1u);
    var var_2 = ~_wgslsmith_sub_i32(~(-1i), _wgslsmith_add_i32(countOneBits(-50647i) >> (abs(var_0.x) % 32u), -22650i));
    var var_3 = Struct_1(select(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, u_input.b.x), -54404i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x), reverseBits(vec3<i32>(u_input.c.x, 0i, u_input.b.x))), select(true, false, true)), vec4<bool>(var_1 >= 78179u, any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), false, all(vec3<bool>(true, true, true))), u_input.b.x);
    var_3 = Struct_1(_wgslsmith_add_i32(var_3.c, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-11755i, -2147483647i), 32320i), u_input.c.x)), vec4<bool>(all(var_3.b.xzy), arg_0 > ~(16610u | arg_0), all(vec2<bool>(false, true)), !all(var_3.b.xxz)), 75298i);
    return 1f;
}

fn func_4(arg_0: f32) -> vec2<bool> {
    var var_0 = Struct_3(true, u_input.e >> (~u_input.a.x % 32u), Struct_1(u_input.c.x, vec4<bool>(true, false, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), true), -40891i), u_input.a | max(firstLeadingBit(~u_input.a), ~vec4<u32>(0u, 4294967295u, 1u, 8989u)));
    var var_1 = -504f;
    var_1 = _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(415f - _wgslsmith_f_op_f32(1267f + 422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), !var_0.c.b.x)))));
    let var_2 = ~(~_wgslsmith_mod_u32(firstTrailingBit(52687u), var_0.d.x));
    var_1 = _wgslsmith_f_op_f32(arg_0 - arg_0);
    return var_0.c.b.zz;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> bool {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_add_u32(~u_input.e, u_input.d);
    let var_2 = select(vec2<i32>(_wgslsmith_mod_i32(15624i, _wgslsmith_div_i32(abs(u_input.b.x), _wgslsmith_add_i32(1i, 1i))), u_input.c.x), abs(u_input.c), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~50378u)) - 1971f)));
    let var_3 = Struct_1(-var_2.x, arg_1.c.b, select(0i, 63368i, var_0.c.b.x));
    var var_4 = arg_1;
    return u_input.d != 4294967295u;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2034f, 2640f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(585f, 272f) * -106f), _wgslsmith_f_op_f32(f32(-1f) * -1224f)))));
    let var_1 = select(vec3<bool>(all(arg_0.c.b), arg_1.x, arg_1.x), arg_0.c.b.zzw, true);
    let var_2 = true;
    var var_3 = Struct_1(firstLeadingBit(-22696i), arg_0.c.b, _wgslsmith_sub_i32(-(~arg_0.c.a) << (u_input.a.x % 32u), u_input.c.x));
    let var_4 = Struct_3(~(~(~59952u)) == _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~u_input.a.x, 16528u, firstLeadingBit(26765u)), ~55277u | arg_0.b), _wgslsmith_add_u32(~4294967295u, ~u_input.a.x | _wgslsmith_dot_vec4_u32(~arg_0.d, ~arg_0.d)), Struct_1(-1i & -_wgslsmith_add_i32(85997i, arg_0.c.c), !select(select(arg_0.c.b, arg_0.c.b, false), arg_0.c.b, all(vec4<bool>(var_2, false, arg_1.x, true))), -26075i), u_input.a);
    return Struct_2(u_input.a.yz, arg_0.c);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = func_5(Struct_3(true, countOneBits(11094u), Struct_1(arg_0.x | ~(-2147483647i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, true, true)), i32(-1i) * -7144i), abs(select(~u_input.a, vec4<u32>(u_input.a.x, 30443u, 4294967295u, u_input.a.x), any(vec4<bool>(false, false, false, false))))), !select(vec2<bool>(all(vec3<bool>(true, false, false)), arg_0.x < 17612i), vec2<bool>(func_2(vec4<bool>(false, false, true, false), Struct_3(true, 32002u, Struct_1(arg_0.x, vec4<bool>(true, false, true, false), -1i), u_input.a)), 10075u >= u_input.e), false));
    let var_1 = firstTrailingBit(26100i);
    var var_2 = Struct_1(-(~arg_0.x), vec4<bool>(-u_input.c.x != var_1, !(!(!var_0.b.b.x)), ~select(var_0.a.x, var_0.a.x, var_0.b.b.x) > ~(~u_input.e), !var_0.b.b.x), _wgslsmith_add_i32(5279i, var_0.b.c));
    let var_3 = Struct_3(true, u_input.d, var_0.b, vec4<u32>(var_0.a.x, ~4294967295u, ~0u, _wgslsmith_mod_u32(81072u, ~4294967295u >> (u_input.a.x % 32u))));
    let var_4 = var_3;
    return Struct_1(u_input.c.x ^ 1i, !var_4.c.b, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(737f, -1000f), -451f))), 1000f));
    let var_1 = func_1(vec2<i32>(firstLeadingBit(u_input.b.x), 1i));
    var var_2 = Struct_1(min(var_1.a, func_1(u_input.c).a), func_1(u_input.c).b, -28087i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-821f, var_0, var_0, 658f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-236f, _wgslsmith_f_op_f32(777f - -1381f), _wgslsmith_f_op_f32(sign(var_0)), -924f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1779f, -1484f, 158f, var_0), vec4<f32>(174f, var_0, var_0, var_0))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, 299f, var_0), var_2.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -326f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(324f, 396f, var_0) - vec3<f32>(var_0, 745f, -1319f))))), _wgslsmith_dot_vec4_i32(((vec4<i32>(-19357i, 1i, var_2.c, var_2.c) >> (vec4<u32>(0u, 59014u, 0u, 0u) % vec4<u32>(32u))) << (~u_input.a % vec4<u32>(32u))) ^ vec4<i32>(func_5(Struct_3(var_1.b.x, u_input.d, var_1, u_input.a), vec2<bool>(var_2.b.x, var_2.b.x)).b.c, var_1.a, -2147483647i, var_2.c), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(var_2.c, 5511i, 1823i, var_2.c)), u_input.b) << (vec4<u32>(~u_input.a.x, u_input.d << (1u % 32u), 5168u, ~u_input.e) % vec4<u32>(32u))), 4294967295u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(trunc(344f))), var_0)), _wgslsmith_f_op_f32(-var_0))));
}

