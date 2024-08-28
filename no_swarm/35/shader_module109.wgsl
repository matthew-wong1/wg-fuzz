struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: f32,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec4<bool>(true, true, true, true), false, 0i, Struct_1(vec3<bool>(false, true, true), 2093i, vec3<u32>(96208u, 57545u, 31868u), vec2<u32>(0u, 2228u)), vec3<bool>(false, false, false)), Struct_3(vec4<bool>(false, false, false, false), false, 45488i, Struct_1(vec3<bool>(false, true, false), -32580i, vec3<u32>(14474u, 0u, 0u), vec2<u32>(0u, 0u)), vec3<bool>(false, true, true)), Struct_3(vec4<bool>(true, true, false, false), true, -1i, Struct_1(vec3<bool>(true, false, false), 38874i, vec3<u32>(4294967295u, 4294967295u, 0u), vec2<u32>(30151u, 2998u)), vec3<bool>(false, true, true)), Struct_3(vec4<bool>(true, false, true, false), true, 1i, Struct_1(vec3<bool>(true, true, false), 2461i, vec3<u32>(4294967295u, 4294967295u, 0u), vec2<u32>(1u, 0u)), vec3<bool>(false, false, true)), Struct_3(vec4<bool>(true, true, true, true), true, 14620i, Struct_1(vec3<bool>(true, false, true), 29775i, vec3<u32>(3691u, 32025u, 1u), vec2<u32>(0u, 4294967295u)), vec3<bool>(true, false, true)), Struct_3(vec4<bool>(false, false, true, true), false, -1i, Struct_1(vec3<bool>(true, false, false), 4709i, vec3<u32>(1u, 10255u, 36975u), vec2<u32>(25208u, 29621u)), vec3<bool>(true, false, false)), Struct_3(vec4<bool>(true, false, true, false), false, 3050i, Struct_1(vec3<bool>(false, true, false), -1i, vec3<u32>(4294967295u, 2622u, 4294967295u), vec2<u32>(52937u, 1u)), vec3<bool>(false, false, true)), Struct_3(vec4<bool>(false, true, true, true), true, -1i, Struct_1(vec3<bool>(true, true, false), -1i, vec3<u32>(0u, 0u, 23709u), vec2<u32>(0u, 17668u)), vec3<bool>(true, true, true)), Struct_3(vec4<bool>(false, true, true, false), true, 83050i, Struct_1(vec3<bool>(false, false, false), 0i, vec3<u32>(110838u, 1u, 4294967295u), vec2<u32>(29930u, 4294967295u)), vec3<bool>(true, false, false)), Struct_3(vec4<bool>(false, false, true, true), false, 0i, Struct_1(vec3<bool>(true, false, true), 0i, vec3<u32>(4294967295u, 44145u, 4294967295u), vec2<u32>(40000u, 4294967295u)), vec3<bool>(false, true, true)), Struct_3(vec4<bool>(false, false, true, true), true, 25389i, Struct_1(vec3<bool>(false, false, false), -473i, vec3<u32>(0u, 0u, 7697u), vec2<u32>(21222u, 39588u)), vec3<bool>(false, false, false)));

var<private> global1: Struct_3 = Struct_3(vec4<bool>(false, true, false, false), true, -19418i, Struct_1(vec3<bool>(false, false, false), -597i, vec3<u32>(47886u, 0u, 26640u), vec2<u32>(1u, 4294967295u)), vec3<bool>(false, false, true));

var<private> global2: vec4<u32> = vec4<u32>(26883u, 1u, 1u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    global0 = array<Struct_3, 11>();
    let var_0 = Struct_5(Struct_2(1000f, firstTrailingBit(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(20200i, 11961i, global1.d.b)), countOneBits(vec3<i32>(27069i, 0i, global1.c)), abs(vec3<i32>(global1.d.b, 0i, global1.d.b))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -605f, -1027f) * vec3<f32>(-1322f, -366f, 202f)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1349f, 1653f, -537f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(190f, -896f, -790f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(451f, -1252f, -529f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1140f, 517f, 186f))))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(563f, -220f)), 410f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1104f, 1151f) - vec2<f32>(388f, 834f))))), 349f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-991f)) - _wgslsmith_f_op_f32(f32(-1f) * -2143f)), 214f))));
    var var_1 = countOneBits(vec4<u32>(~(~0u), global2.x, global1.d.c.x, select(_wgslsmith_add_u32(12218u, countOneBits(global1.d.d.x)), u_input.a.x, true && any(vec3<bool>(false, true, global1.a.x)))));
    global1 = Struct_3(global1.a, (-_wgslsmith_add_i32(var_0.a.b.x, global1.d.b) >> ((abs(global1.d.c.x) >> (abs(4294967295u) % 32u)) % 32u)) < 1i, global1.d.b, Struct_1(vec3<bool>(any(global1.a.wx) | all(global1.a), false, true), var_0.a.b.x, min(_wgslsmith_mult_vec3_u32(var_1.wxw, u_input.a.xyz), var_1.yyz) << (global2.xxx % vec3<u32>(32u)), global2.wy), !(!global1.a.xyz));
    let var_2 = !global1.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, 818f), _wgslsmith_f_op_vec2_f32(-var_0.b.zy)), vec2<f32>(1252f, _wgslsmith_f_op_f32(1739f + var_0.c.x))) + _wgslsmith_f_op_vec2_f32(-var_0.c)));
}

fn func_2() -> Struct_3 {
    global2 = u_input.a;
    let var_0 = global1.c;
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -881f), _wgslsmith_f_op_f32(f32(-1f) * -1516f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-335f, 452f)))), _wgslsmith_f_op_vec2_f32(func_3()));
    var var_2 = 1u ^ select(abs(~0u), abs(~(~1u)), global1.b);
    global0 = array<Struct_3, 11>();
    return Struct_3(!select(global1.a, !vec4<bool>(global1.a.x, global1.a.x, global1.b, true), vec4<bool>(false, u_input.a.x > global2.x, all(global1.e.yx), !global1.e.x)), true, ~(-(~(-588i))), Struct_1(global1.a.wxy, _wgslsmith_add_i32(_wgslsmith_add_i32(71597i, ~1i), -23615i & global1.c), _wgslsmith_mult_vec3_u32(global2.xxx, vec3<u32>(global2.x, ~5296u, _wgslsmith_mod_u32(4261u, 1u))), global2.yy >> (max(firstLeadingBit(vec2<u32>(global1.d.c.x, 0u)), vec2<u32>(39921u, 20146u)) % vec2<u32>(32u))), global1.d.a);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_1 {
    var var_0 = Struct_1(func_2().e, abs(1i), vec3<u32>(0u | countOneBits(_wgslsmith_clamp_u32(4908u, 540u, u_input.a.x)), 65735u, _wgslsmith_mod_u32(1u, global1.d.d.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(select(vec2<u32>(global2.x, global2.x), global1.d.d, global1.d.a.x)), vec2<u32>(global2.x, 18491u), global1.d.d), _wgslsmith_mult_vec2_u32(vec2<u32>(~82805u, 11632u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(1u, 4294967295u) << (vec2<u32>(arg_1.d.d.x, u_input.a.x) % vec2<u32>(32u))))));
    global2 = ~min(abs(vec4<u32>(global1.d.c.x, ~u_input.a.x, arg_1.d.d.x, _wgslsmith_clamp_u32(arg_0, 41298u, var_0.c.x))), vec4<u32>(8153u, global1.d.d.x, 11580u, ~arg_0) ^ ~u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(arg_3.b, vec3<f32>(-2268f, 290f, arg_3.b.x), global1.d.a)))))));
    var_0 = arg_1.d;
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(48809u, ~(0u & ~arg_0), 23677u, 1u ^ ~func_2().d.c.x), u_input.a);
    return func_2().d;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = false & global1.d.a.x;
    var var_1 = u_input.a.wy;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_1)), 169f)), !((func_2().d.b & (global1.c >> (38409u % 32u))) != 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), global0[_wgslsmith_index_u32(abs(var_1.x), 11u)], func_2().e.zz);
    var var_3 = ~_wgslsmith_sub_i32(global1.d.b, i32(-1i) * -firstLeadingBit(arg_3.x));
    var var_4 = arg_0;
    return Struct_3(select(!(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, var_2.b)), select(global1.a, select(global1.a, vec4<bool>(true, true, true, true), vec4<bool>(var_4.a.x, true, global1.e.x, true)), func_2().a), true), all(var_2.d.a), -4283i, var_2.d.d, !(!select(var_4.a, vec3<bool>(true, arg_0.a.x, var_2.b), !var_4.a)));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = -min(vec2<i32>(~(~global1.d.b), -_wgslsmith_div_i32(global1.d.b, -2147483647i)), select(-max(vec2<i32>(global1.d.b, global1.c), vec2<i32>(-9552i, arg_1.d.b)), vec2<i32>(57003i, 0i), func_2().a.yw));
    global1 = Struct_3(select(vec4<bool>(var_0.x <= -1i, false, arg_1.a.x, true), vec4<bool>(true, true, true, true), vec4<bool>(global1.c >= 1i, any(vec2<bool>(arg_1.a.x, true)), ~arg_0.x != global1.d.d.x, any(func_5(Struct_1(global1.e, 43680i, global1.d.c, vec2<u32>(global1.d.c.x, global2.x)), 298f, vec3<bool>(global1.d.a.x, arg_1.b, global1.b), var_0).a))), -var_0.x == ~(-(~0i)), arg_1.d.b, func_4(_wgslsmith_dot_vec3_u32(~arg_0, ~_wgslsmith_mult_vec3_u32(u_input.a.xzy, arg_1.d.c)), Struct_3(func_5(global1.d, _wgslsmith_f_op_f32(step(717f, -153f)), func_2().a.wzz, _wgslsmith_mult_vec2_i32(vec2<i32>(global1.d.b, arg_1.d.b), var_0)).a, false, ~29612i, arg_1.d, !func_5(Struct_1(arg_1.d.a, 9737i, vec3<u32>(0u, u_input.a.x, global1.d.d.x), u_input.a.xz), -1175f, vec3<bool>(false, false, false), vec2<i32>(-2147483647i, arg_1.d.b)).e), func_5(Struct_1(select(global1.e, global1.d.a, true), var_0.x, ~global1.d.c, ~arg_1.d.c.xx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(max(-1379f, arg_2.x))), global1.a.www, var_0).e, Struct_5(Struct_2(-531f, vec3<i32>(-1i, arg_1.d.b, 11267i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-923f, 549f, -1099f) + vec3<f32>(arg_2.x, -316f, arg_2.x)))), arg_2.wx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(arg_2.x - arg_2.x)), arg_2.x)), global1.d.a);
    global2 = vec4<u32>(~max(~125343u, 1u), countOneBits(80182u), 80136u, global1.d.c.x) & u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3()).x;
    global0 = array<Struct_3, 11>();
    return global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(global2.x, global2.x ^ ~(arg_0.x | 80465u)), _wgslsmith_mod_u32(u_input.a.x, global1.d.c.x >> ((arg_0.x << (1u % 32u)) % 32u))), 11u)];
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> i32 {
    global1 = func_6(global1.d.c, func_5(func_4(~_wgslsmith_add_u32(global1.d.d.x, 0u), func_2(), global1.d.a, Struct_5(arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 664f, 1041f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-288f, -996f), vec2<f32>(180f, 320f), true)), _wgslsmith_f_op_f32(arg_1 * arg_2.a), arg_2.a)), _wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(-arg_2.a)), vec3<bool>(true, true, true), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(arg_2.b.xx, vec2<i32>(21684i, global1.d.b)), select(arg_2.b.zx, arg_2.b.yy, true), firstLeadingBit(vec2<i32>(-13904i, global1.c)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(select(-1384f, -1860f, true)), arg_2.a))))));
    global1 = global0[_wgslsmith_index_u32(u_input.a.x, 11u)];
    global0 = array<Struct_3, 11>();
    global1 = func_5(Struct_1(!(!(!global1.e)), _wgslsmith_mod_i32(abs(-2147483647i), -global1.d.b) >> (u_input.a.x % 32u), vec3<u32>(92525u, ~_wgslsmith_add_u32(global1.d.c.x, global1.d.d.x), _wgslsmith_div_u32(firstLeadingBit(0u), 85967u)), select(global1.d.c.xz, vec2<u32>(countOneBits(u_input.a.x), _wgslsmith_add_u32(u_input.a.x, 4294967295u)), func_4(global2.x, global0[_wgslsmith_index_u32(0u, 11u)], vec3<bool>(arg_0, false, global1.a.x), Struct_5(Struct_2(719f, arg_2.b), vec3<f32>(-1448f, arg_1, arg_1), vec2<f32>(310f, arg_2.a), arg_2.a, arg_2.a)).b <= arg_2.b.x)), _wgslsmith_f_op_f32(exp2(arg_2.a)), !func_2().e, vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(global1.d.b << (global1.d.d.x % 32u)), arg_2.b.x), global1.d.b));
    global0 = array<Struct_3, 11>();
    return i32(-1i) * -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    let var_1 = -abs(vec2<i32>(-44805i, 0i) ^ vec2<i32>(func_1(false, -714f, Struct_2(1000f, vec3<i32>(global1.c, -1i, global1.d.b))), func_6(u_input.a.zxz, Struct_3(global1.a, global1.e.x, global1.c, Struct_1(global1.a.xyx, global1.c, vec3<u32>(global1.d.d.x, 4294967295u, u_input.a.x), global1.d.d), global1.e), vec4<f32>(2330f, -990f, 1000f, -884f)).d.b));
    global0 = array<Struct_3, 11>();
    global1 = func_5(Struct_1(vec3<bool>(true, true, func_5(Struct_1(vec3<bool>(true, var_0.x, global1.d.a.x), global1.c, vec3<u32>(global1.d.d.x, global1.d.c.x, u_input.a.x), vec2<u32>(53478u, global1.d.c.x)), 230f, vec3<bool>(false, var_0.x, global1.b), var_1 | vec2<i32>(-2147483647i, 0i)).b), 1i, u_input.a.yyy, ~vec2<u32>(1u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(740f)))), vec3<bool>(!var_0.x, !(any(vec2<bool>(false, var_0.x)) && func_5(global1.d, 144f, var_0.www, var_1).d.a.x), (var_0.x | true) && true), ~_wgslsmith_sub_vec2_i32(-firstLeadingBit(vec2<i32>(0i, 39865i)), var_1));
    let var_2 = ~vec4<u32>(_wgslsmith_add_u32((global1.d.d.x << (4294967295u % 32u)) | reverseBits(global1.d.c.x), 31112u), func_2().d.c.x, func_4(_wgslsmith_div_u32(func_4(8609u, global0[_wgslsmith_index_u32(global1.d.c.x, 11u)], vec3<bool>(global1.b, true, false), Struct_5(Struct_2(-859f, vec3<i32>(var_1.x, 0i, 32267i)), vec3<f32>(114f, -1528f, 285f), vec2<f32>(-1150f, 498f), 195f, -239f)).d.x, func_4(4294967295u, Struct_3(global1.a, var_0.x, var_1.x, global1.d, vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(var_0.x, false, var_0.x), Struct_5(Struct_2(1292f, vec3<i32>(var_1.x, -2147483647i, 0i)), vec3<f32>(1072f, -247f, 1000f), vec2<f32>(-574f, 1000f), 2368f, -1669f)).c.x), func_5(global1.d, -142f, func_6(global2.yzx, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], vec4<f32>(987f, -1000f, -249f, -571f)).d.a, vec2<i32>(var_1.x, 1i)), global1.a.xzx, Struct_5(Struct_2(-297f, vec3<i32>(global1.c, -2147483647i, 1i)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(355f, 459f, -1541f), vec3<f32>(286f, 1000f, 136f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(361f, -862f), vec2<f32>(1000f, 1370f))), _wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(886f * 2329f))).d.x, global2.x);
    let var_3 = _wgslsmith_div_u32(global2.x, u_input.a.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-300f * -521f), _wgslsmith_f_op_f32(select(114f, -551f, global1.b)), _wgslsmith_f_op_f32(290f * 1045f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(120f, -1015f, -614f))))), vec3<f32>(1f, 1f, 1f), global1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(firstLeadingBit(~global2.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(74770u, var_3, 4294967295u), ~4427u)), -func_2().d.b, -1000f);
}

