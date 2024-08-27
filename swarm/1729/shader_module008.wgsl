struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9>;

var<private> global1: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec3<i32>(-3958i, -1i, -32794i), vec3<f32>(324f, 1851f, 532f), vec3<bool>(true, true, true)), Struct_4(vec3<i32>(36141i, 2147483647i, -1i), vec3<f32>(-492f, -298f, 438f), vec3<bool>(false, true, false)), Struct_4(vec3<i32>(11633i, -62447i, -25361i), vec3<f32>(-1457f, 532f, 605f), vec3<bool>(false, true, true)), Struct_4(vec3<i32>(7198i, 8455i, -34257i), vec3<f32>(2158f, 1538f, -539f), vec3<bool>(true, true, true)), Struct_4(vec3<i32>(1i, 48946i, -22180i), vec3<f32>(1939f, 2102f, 323f), vec3<bool>(true, false, true)), Struct_4(vec3<i32>(30510i, 42035i, 2147483647i), vec3<f32>(-1100f, 119f, -601f), vec3<bool>(false, true, false)), Struct_4(vec3<i32>(19874i, -1i, 27019i), vec3<f32>(-1635f, -841f, -561f), vec3<bool>(false, true, true)), Struct_4(vec3<i32>(-25571i, 0i, 11907i), vec3<f32>(-1651f, -409f, -672f), vec3<bool>(false, true, true)), Struct_4(vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<f32>(-2392f, -961f, -1669f), vec3<bool>(true, true, true)), Struct_4(vec3<i32>(8882i, -1i, -24361i), vec3<f32>(-2282f, -2595f, -107f), vec3<bool>(true, false, false)), Struct_4(vec3<i32>(16801i, 16249i, 7815i), vec3<f32>(-300f, 299f, -572f), vec3<bool>(false, true, false)), Struct_4(vec3<i32>(i32(-2147483648), -57952i, i32(-2147483648)), vec3<f32>(2307f, 946f, 756f), vec3<bool>(false, true, true)), Struct_4(vec3<i32>(12477i, 1i, 2147483647i), vec3<f32>(-1000f, 1000f, -266f), vec3<bool>(false, true, true)), Struct_4(vec3<i32>(-1i, 2147483647i, 1i), vec3<f32>(-807f, 424f, 719f), vec3<bool>(true, false, false)), Struct_4(vec3<i32>(-5806i, -18203i, 253i), vec3<f32>(556f, -2312f, -279f), vec3<bool>(false, false, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    let var_0 = countOneBits(_wgslsmith_mod_u32(38396u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, u_input.c.x), reverseBits(u_input.c.x)))) << ((u_input.a >> (1u % 32u)) % 32u);
    let var_1 = Struct_2(-873f, -59140i);
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, var_1.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, -24594i)) & -2147483647i, min(firstLeadingBit(-20158i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.b), vec2<i32>(0i, 2147483647i)))), -(i32(-1i) * -23317i), -1i), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, -654f, 1000f, var_1.a), vec4<f32>(1296f, var_1.a, var_1.a, var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(823f, 1353f, -1380f, var_1.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1000f, var_1.a, 993f)))), ~(-(vec2<i32>(u_input.b, -1i) ^ vec2<i32>(var_1.b, 0i))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_1.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(-127f - var_1.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2487f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-602f, -488f), var_1.a))), vec3<i32>(_wgslsmith_div_i32(-u_input.b, -u_input.b), u_input.b, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_1.b, -15628i, 50601i)), vec3<i32>(43250i, u_input.b, u_input.b)))));
    var_2 = Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.b.b.x, 15170i, -(~var_1.b)), global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(53487u, var_0)), 9u)]), var_2.b);
    let var_3 = Struct_3(var_2.b.d, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_2.b.c)), _wgslsmith_mult_vec2_i32(var_2.b.b, var_2.a.xy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_2.b.c.x, var_1.a, var_1.a))), ~vec3<i32>(_wgslsmith_sub_i32(-26022i, var_1.b), var_2.a.x, -var_1.b)));
    return true;
}

fn func_2(arg_0: bool) -> vec4<f32> {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(max(vec4<u32>(24667u, u_input.a, u_input.c.x, u_input.a) | vec4<u32>(0u, u_input.a, 1u, 46152u), vec4<u32>(72267u, u_input.c.x, 4294967295u, u_input.c.x) & vec4<u32>(u_input.a, u_input.c.x, 6345u, u_input.a))), abs(vec4<u32>(~u_input.a, ~0u, 2977u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(23743u, u_input.c.x))))), 9u)], vec3<f32>(-453f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-374f + _wgslsmith_f_op_f32(floor(148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 200f))), _wgslsmith_f_op_f32(abs(1243f))), select(select(vec3<bool>(!arg_0, arg_0 || true, !arg_0), select(vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, false)), vec3<bool>(arg_0, arg_0, arg_0)), arg_0), vec3<bool>(false, true, arg_0), arg_0));
    var var_1 = Struct_4(-(global0[_wgslsmith_index_u32(reverseBits(u_input.c.x), 9u)] & vec3<i32>(countOneBits(2147483647i), ~(-17213i), u_input.b)), vec3<f32>(1254f, 1372f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1117f)), _wgslsmith_f_op_f32(f32(-1f) * -829f)) + var_0.b.x)), select(vec3<bool>(true, func_3(), !(u_input.b == u_input.b)), var_0.c, !(!var_0.c.x)));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x & abs(0u)), 32149u), 15u)];
    let var_2 = _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x)));
    global0 = array<vec3<i32>, 9>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f + var_2)), _wgslsmith_f_op_f32(floor(413f)), _wgslsmith_f_op_f32(sign(-1898f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * 221f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-689f, 621f, _wgslsmith_f_op_f32(step(-1893f, -662f)), -748f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -1366f, var_1.b.x, 1144f) * vec4<f32>(var_1.b.x, var_0.b.x, var_2, 456f)), vec4<f32>(var_0.b.x, 1000f, 1194f, var_0.b.x))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    let var_0 = countOneBits(vec4<i32>(92921i, countOneBits(arg_2.a.x & -1i), -1i, _wgslsmith_add_i32(~arg_1.d.x, -u_input.b))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.c, _wgslsmith_mod_vec2_u32(vec2<u32>(59275u, u_input.a), u_input.c)), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.a, 93385u)), u_input.c), _wgslsmith_mult_u32(1u, ~(0u | u_input.a)), u_input.c.x) % vec4<u32>(32u));
    var var_1 = vec3<bool>(false, any(vec3<bool>(true, true && all(vec4<bool>(true, true, true, false)), true)), true && all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false)))));
    var_1 = vec3<bool>(var_1.x, var_1.x, var_1.x);
    var var_2 = arg_2;
    var var_3 = u_input.c.x == _wgslsmith_dot_vec4_u32(min(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, 45663u), vec4<u32>(17329u, 45931u, 1u, u_input.a)), vec4<u32>(_wgslsmith_clamp_u32(75409u, 78299u, 4294967295u), ~u_input.a, u_input.a, reverseBits(93264u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(12336u | u_input.a, max(44346u, u_input.a), ~1u, u_input.c.x ^ u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 62913u, 76328u), ~vec4<u32>(0u, u_input.c.x, 98069u, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a)));
    return Struct_4(vec3<i32>(_wgslsmith_mult_i32(37076i, ~arg_2.a.x & 2147483647i), _wgslsmith_div_i32(2147483647i, arg_0), abs(var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.yzx + vec3<f32>(var_2.b.a.x, 1316f, arg_1.a.x)) + arg_1.c.wyw) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b.a.yzz) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-711f, arg_2.b.c.x, var_2.b.c.x) + vec3<f32>(arg_2.b.a.x, -1003f, arg_1.c.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_2(!var_1.x)).xxy)), vec3<bool>(select(func_3() && !var_1.x, true, var_1.x), var_1.x | var_1.x, false || var_1.x));
}

fn func_1() -> i32 {
    var var_0 = func_4(-42926i, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(326f, _wgslsmith_f_op_f32(select(294f, 188f, false)), _wgslsmith_f_op_f32(floor(-1589f)), _wgslsmith_f_op_f32(f32(-1f) * -193f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(592f, -1436f, 953f, 1557f) + vec4<f32>(-987f, -257f, 446f, -2430f))), _wgslsmith_sub_vec2_i32(-(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.c.x, u_input.a) % vec2<u32>(32u))), ~vec2<i32>(-36911i, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-804f, -333f)))), -1789f, 1208f, _wgslsmith_div_f32(-1476f, _wgslsmith_f_op_f32(f32(-1f) * -1652f))), global0[_wgslsmith_index_u32(reverseBits(4294967295u) ^ u_input.c.x, 9u)]), Struct_3(~vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), u_input.b >> (85491u % 32u), u_input.b >> (u_input.c.x % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1584f, 747f, 1626f, 1361f))) + _wgslsmith_f_op_vec4_f32(func_2(true))), firstLeadingBit(-vec2<i32>(-36494i, u_input.b)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1100f, -844f, 967f, 477f))))), vec3<i32>(u_input.b, -20723i, 24343i) >> (~vec3<u32>(12326u, 0u, 25430u) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.b)), _wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(var_0.b.x, var_0.b.x, 273f), var_0.c.x))) - vec3<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, 294f)), _wgslsmith_f_op_f32(abs(-1000f)), var_0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.b - var_0.b), vec3<f32>(var_0.b.x, -783f, var_0.b.x))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-179f, 1130f, 347f)))), var_0.c.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(var_0.c.x, var_0.c.x, false))))), var_0.b, func_3())), var_0.b.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1613f))));
    global0 = array<vec3<i32>, 9>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), _wgslsmith_mult_i32(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, -1i), var_0.a), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-334f, var_0.b.x, -678f, 877f), vec4<f32>(-1942f, var_1.x, 1649f, -729f))), vec2<i32>(2147483647i, 1i) | vec2<i32>(u_input.b, -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-123f, 120f, -1415f, 450f)), vec3<i32>(2147483647i, 1i, 2147483647i) ^ vec3<i32>(65984i, -13573i, var_0.a.x)), Struct_3(firstLeadingBit(vec3<i32>(u_input.b, var_0.a.x, u_input.b)), Struct_1(vec4<f32>(-1430f, -745f, -1341f, var_0.b.x), vec2<i32>(2147483647i, -1i), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_1.x), vec3<i32>(u_input.b, u_input.b, 49926i)))).a.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-var_0.a.x, ~u_input.b), var_0.a.x << (~19205u % 32u))));
    var var_3 = _wgslsmith_mod_u32(4294967295u, select(firstLeadingBit(~1u), max(1u, ~u_input.a) ^ ~u_input.a, func_3()));
    return i32(-1i) * -10009i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(415f, _wgslsmith_f_op_f32(abs(-1414f)), 711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1327f)))), vec2<i32>(max(~u_input.b, -func_1()), ~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-483f, -323f, 1217f, -1142f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(852f, -1407f, -533f, -966f), vec4<f32>(820f, -718f, -238f, 3162f)))), vec4<f32>(_wgslsmith_f_op_f32(min(-162f, 2094f)), _wgslsmith_f_op_f32(abs(1115f)), 1f, _wgslsmith_f_op_f32(trunc(-238f))))), -(~_wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(u_input.a, 9u)], vec3<i32>(-1i, u_input.b, -1i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))) - var_0.c.x);
    global0 = array<vec3<i32>, 9>();
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(961f, _wgslsmith_div_f32(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-126f, -1134f, false)) * -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x * 2056f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + 776f))))), -(~u_input.b));
    var var_3 = any(func_4(_wgslsmith_sub_i32(select(-2147483647i, var_2.b, true), u_input.b), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.c.x)), -340f, var_0.a.x, -1000f), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1278f, -1000f, -394f, -776f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, -439f, var_2.a) * vec4<f32>(969f, 1000f, -2673f, -304f))), global0[_wgslsmith_index_u32(firstLeadingBit(~10211u), 9u)]), Struct_3(_wgslsmith_div_vec3_i32(var_0.d, var_0.d), var_0)).c);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, firstTrailingBit(u_input.a), 1i);
}

