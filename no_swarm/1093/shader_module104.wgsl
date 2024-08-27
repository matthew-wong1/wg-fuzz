struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-318f - _wgslsmith_f_op_f32(1565f - 527f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(3242f * 803f))), -363f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-980f, 1090f, 349f, -789f), vec4<f32>(2356f, 1000f, 1007f, 2634f), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1453f, 617f, 603f, 2133f), vec4<f32>(-1000f, 1454f, 683f, 893f))))))));
    let var_1 = vec4<i32>(select(2147483647i, i32(-1i) * -u_input.a.x, select(13421u == ~u_input.c.x, 945f > _wgslsmith_f_op_f32(round(-1139f)), true)), 45136i, reverseBits(max(u_input.b.x, ~(-u_input.b.x))), firstLeadingBit(_wgslsmith_dot_vec3_i32(countOneBits(u_input.b.wxx), abs(u_input.b.xwz))) << (u_input.c.x % 32u));
    global0 = u_input.c.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.zwz), _wgslsmith_f_op_f32(-var_0.x), -670i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0), var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1402f, 2439f, var_0.x, -925f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(-233f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1000f - -573f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zy) - _wgslsmith_f_op_vec2_f32(-var_0.zy)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(385f, var_0.x))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.d.wxx, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-575f, 894f, var_2.e.x), var_2.a))))) * _wgslsmith_f_op_vec3_f32(abs(var_2.d.xyz))), _wgslsmith_f_op_f32(abs(-664f)), min(var_1.x, -(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, var_1.x, var_2.c), vec4<i32>(2147483647i, var_2.c, 45288i, -2147483647i)) & 1i)), vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)) * _wgslsmith_f_op_f32(exp2(var_2.e.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(809f - var_0.x))), -498f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1495f, var_2.d.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-963f, var_0.x))) - vec2<f32>(-2883f, var_2.e.x)))));
    return 842f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec4<f32> {
    global0 = u_input.c.x;
    let var_0 = 20280u;
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 1851f), u_input.b.wzz, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(func_3())), arg_0.x, -8132i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1604f, arg_0.x, 919f, -950f) + arg_0))), arg_0.xz), !select(select(vec4<bool>(false, true, false, arg_1.x), !vec4<bool>(true, false, arg_1.x, arg_1.x), var_0 <= var_0), !(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), select(vec4<bool>(false, false, true, true), !vec4<bool>(true, arg_1.x, true, false), !vec4<bool>(false, arg_1.x, false, false))), Struct_2(Struct_1(arg_0.xxy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-590f)))), abs(u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, -889f, arg_0.x, 999f), vec4<f32>(arg_0.x, 429f, arg_0.x, arg_0.x))) - arg_0), _wgslsmith_f_op_vec2_f32(arg_0.ww + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-918f, arg_0.x))))));
    global1 = i32(-1i) * -var_1.e.a.c;
    global0 = u_input.c.x;
    return arg_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32) -> Struct_3 {
    var var_0 = ~_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(~5984u, _wgslsmith_div_u32(1u, arg_1.x)), _wgslsmith_clamp_u32(15021u, arg_2, u_input.c.x) >> (5225u % 32u)));
    let var_1 = -197f;
    global1 = u_input.b.x;
    let var_2 = all(vec2<bool>(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), !any(vec3<bool>(true, true, true))));
    var var_3 = i32(-1i) * -(~u_input.a.x);
    return Struct_3(vec4<u32>(~(~u_input.c.x), _wgslsmith_div_u32(~u_input.d, 80826u), ~arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 36991u, arg_2) | vec3<u32>(0u, u_input.c.x, 41783u), _wgslsmith_mod_vec3_u32(arg_1, reverseBits(arg_1)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(arg_0.x * -641f), all(select(select(vec2<bool>(false, false), vec2<bool>(true, var_2), vec2<bool>(true, var_2)), select(vec2<bool>(true, false), vec2<bool>(var_2, true), vec2<bool>(var_2, false)), false)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(719f, -1598f, arg_0.x))), _wgslsmith_f_op_f32(trunc(var_1)), 0i, _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, var_1, arg_0.x, arg_0.x)), !vec2<bool>(true, var_2))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.x)))))), arg_1.x, Struct_2(Struct_1(arg_0.wzy, var_1, _wgslsmith_dot_vec3_i32(-u_input.b.xyw, _wgslsmith_sub_vec3_i32(u_input.a.wyw, u_input.a.zwx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_0, vec2<bool>(false, false))).zy))));
}

fn func_1(arg_0: f32) -> bool {
    global1 = 17562i;
    global0 = 0u;
    global0 = ~(~(29187u >> (u_input.c.x % 32u)));
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1536f, arg_0, arg_0, -797f), vec4<f32>(-706f, arg_0, -277f, -1559f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(2094f, arg_0, -529f, arg_0), vec4<f32>(arg_0, -973f, arg_0, -510f)))))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_add_vec3_u32(reverseBits(abs(~vec3<u32>(4294967295u, 4294967295u, 36874u))), vec3<u32>(1u, _wgslsmith_mod_u32(u_input.d, 31482u), 53335u)), 66481u);
    var_0 = Struct_3(min(vec4<u32>(var_0.a.x, u_input.c.x, 64636u << ((u_input.c.x | var_0.d) % 32u), _wgslsmith_mod_u32(1u, u_input.c.x) >> (~1u % 32u)), vec4<u32>(u_input.d, var_0.d, 4294967295u, _wgslsmith_div_u32(u_input.d >> (u_input.c.x % 32u), 89775u & u_input.d))), _wgslsmith_f_op_f32(-arg_0), var_0.c, 1u, Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.c.a.d, var_0.e.a.d)) + _wgslsmith_f_op_vec4_f32(var_0.c.a.d + var_0.c.a.d)), _wgslsmith_div_vec3_u32(var_0.a.wxx, ~vec3<u32>(1u, var_0.a.x, var_0.a.x)), ~65237u << (func_4(var_0.e.a.d, var_0.a.yyy, u_input.d).d % 32u)).e.a));
    return all(vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))), true, !((0u > var_0.d) || true)));
}

fn func_5(arg_0: bool) -> i32 {
    global1 = 32824i;
    global1 = u_input.a.x << ((~27052u & ~firstLeadingBit(u_input.c.x)) % 32u);
    let var_0 = -1316f;
    var var_1 = Struct_3(_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(4294967295u, 38577u, u_input.d, u_input.d)), ~(~vec4<u32>(29181u, 45790u, 0u, u_input.c.x))), var_0, func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1108f, -1221f, var_0) - vec4<f32>(var_0, -553f, var_0, 1003f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, -645f, var_0, -1000f), vec4<f32>(var_0, var_0, 693f, var_0))))), ~select(vec3<u32>(u_input.c.x, u_input.d, u_input.c.x) << (vec3<u32>(u_input.d, u_input.d, 64456u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(0u, u_input.c.x, 36216u)), vec3<bool>(true, true, arg_0)), select(select(u_input.c.x, ~u_input.d, arg_0), _wgslsmith_clamp_u32(u_input.c.x, ~u_input.c.x, countOneBits(u_input.d)), true)).e, _wgslsmith_mult_u32(u_input.d, u_input.c.x), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 590f, var_0)), var_0, 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(171f, var_0, 890f, var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, 1413f), vec2<f32>(-1069f, 1000f))))));
    global0 = ((_wgslsmith_add_u32(var_1.a.x, ~u_input.d) & ~(~0u)) << (_wgslsmith_div_u32(69977u, var_1.a.x) % 32u)) >> (~u_input.c.x % 32u);
    return abs(var_1.e.a.c);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = !select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), true);
    let var_1 = 40713i;
    global0 = _wgslsmith_mult_u32(40994u, u_input.c.x);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.e.x, 682f) - _wgslsmith_f_op_f32(max(arg_1.a.e.x, 218f)))))), vec3<i32>(-1i, -22116i, var_1), arg_1.a, vec4<bool>(u_input.c.x >= _wgslsmith_mod_u32(70393u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.c.x, 21392u), vec4<u32>(43864u, 84666u, u_input.d, 5319u))), var_0.x, !var_0.x, ~_wgslsmith_add_i32(u_input.a.x, var_1) > func_4(_wgslsmith_div_vec4_f32(arg_1.a.d, arg_1.a.d), vec3<u32>(arg_2.x, arg_2.x, arg_2.x), ~8322u).c.a.c), Struct_2(arg_1.a));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(-975f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.e.x) + _wgslsmith_f_op_f32(ceil(arg_1.a.b))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-948f - 1254f))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 2147483647i;
    global0 = 0u;
    let var_0 = func_6(~vec3<i32>(func_5(func_1(-1631f)), _wgslsmith_add_i32(countOneBits(-2147483647i), -33347i), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, abs(26721i))), Struct_2(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-980f, -562f, -757f, 1182f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, 968f, -377f, 1120f))), vec3<u32>(~u_input.d, 48459u, ~52109u), 30099u).e.a), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 1692u ^ u_input.c.x, 1u, 0u), vec4<u32>(_wgslsmith_clamp_u32(12697u, 0u, 4294967295u), u_input.d >> (32770u % 32u), 1u, reverseBits(13797u)))));
    var var_1 = !(!vec3<bool>(var_0.d.x, true, var_0.d.x));
    var_1 = var_0.d.xzw;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

