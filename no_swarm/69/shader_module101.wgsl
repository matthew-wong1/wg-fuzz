struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec2<u32>(62024u, 4294967295u)), Struct_1(vec2<u32>(103323u, 25172u)), 0i, vec2<f32>(-372f, 677f), 57343u));

var<private> global1: Struct_5 = Struct_5(Struct_2(Struct_1(vec2<u32>(12074u, 64413u)), Struct_1(vec2<u32>(0u, 19489u)), 7969i, vec2<f32>(-1052f, 1000f), 0u), vec3<u32>(0u, 3760u, 63130u), vec2<bool>(true, false), vec2<i32>(0i, -1i), vec2<bool>(false, false));

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(110f, 789f, 1666f, 2409f), vec4<f32>(1141f, -914f, 342f, -1406f), vec4<f32>(261f, 407f, 1884f, -185f), vec4<f32>(-1277f, 1053f, -417f, -324f), vec4<f32>(-121f, 1449f, 209f, 966f), vec4<f32>(1706f, 721f, -725f, 710f));

var<private> global3: Struct_5 = Struct_5(Struct_2(Struct_1(vec2<u32>(69418u, 14994u)), Struct_1(vec2<u32>(1u, 0u)), -1i, vec2<f32>(1731f, -478f), 4294967295u), vec3<u32>(1323u, 1u, 36344u), vec2<bool>(false, false), vec2<i32>(1i, -15474i), vec2<bool>(false, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(global1.b.x ^ ~arg_2.b.a.x, 1u)];
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(u_input.b, -2147483647i, -34347i), select(u_input.a, _wgslsmith_div_i32(16217i, -12584i), all(vec3<bool>(global3.e.x, true, true))), global1.a.c), vec3<i32>(_wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(arg_2.c, 0i, -71305i, -1i)), -arg_2.c, -_wgslsmith_sub_i32(global1.d.x, 0i))) << (~vec3<u32>(global1.b.x, 1u, global3.b.x ^ u_input.c) % vec3<u32>(32u));
    let var_2 = -113f;
    let var_3 = 17415u;
    var var_4 = true;
    return 36655i;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: bool) -> Struct_1 {
    let var_0 = global1.a.a;
    global3 = Struct_5(Struct_2(global3.a.b, arg_1.a.b, arg_0.x, _wgslsmith_f_op_vec2_f32(-global3.a.d), reverseBits(4294967295u)), firstTrailingBit(vec3<u32>(var_0.a.x, ~abs(global1.a.e), ~u_input.c)), global1.e, ~vec2<i32>(func_3(-23783i, global2[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_0.a.x, 1u)], vec4<i32>(-44247i, -1015i, 12741i, global1.d.x)), -arg_1.d.x) ^ vec2<i32>(global1.a.c, func_3(-11989i, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.d.x, 858f, -1983f, -1108f), vec4<f32>(global1.a.d.x, -1000f, arg_1.a.d.x, -942f)), arg_1.a, ~vec4<i32>(arg_0.x, 29559i, arg_1.d.x, global1.a.c))), global3.c);
    global3 = arg_1;
    var var_1 = Struct_4(false, global1.a.d.x, Struct_1(~firstTrailingBit(vec2<u32>(global1.a.e, 4294967295u))), select(1452u, var_0.a.x, arg_2), -1655f);
    let var_2 = Struct_5(Struct_2(global3.a.b, Struct_1(vec2<u32>(_wgslsmith_sub_u32(u_input.c, 54137u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.e, global3.b.x, global3.b.x), vec3<u32>(1u, global1.b.x, 7871u)))), global1.d.x >> (~1u % 32u), global1.a.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u | global3.b.x, ~var_1.c.a.x), vec2<u32>(~global1.a.b.a.x, 77880u | arg_1.b.x))), global3.b, vec2<bool>(arg_2, _wgslsmith_f_op_f32(max(1404f, _wgslsmith_f_op_f32(-var_1.b))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-608f, var_1.e, global1.c.x)) - arg_1.a.d.x)), _wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(reverseBits(arg_0.xx), arg_0.yy ^ arg_0.yz), arg_0.zy), select(global1.c, !arg_1.c, select(vec2<bool>(true, true), vec2<bool>(global1.e.x | false, true), vec2<bool>(false, global3.b.x != 0u))));
    return Struct_1(~vec2<u32>(_wgslsmith_mod_u32(var_2.b.x, 261u), 4294967295u) ^ firstTrailingBit(max(global3.a.b.a, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global3.a.b.a.x), vec2<u32>(var_2.a.e, 1u)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = arg_2.a;
    global0 = array<Struct_2, 1>();
    let var_1 = vec3<i32>(u_input.e.x | min(firstTrailingBit(1i), global1.d.x), countOneBits(global3.d.x), 63828i);
    var var_2 = Struct_1(reverseBits(vec2<u32>(~global3.a.a.a.x, _wgslsmith_add_u32(firstLeadingBit(12777u), 51960u))));
    var var_3 = arg_2.e;
    return Struct_2(func_2(var_1, Struct_5(Struct_2(func_2(vec3<i32>(var_1.x, -2147483647i, u_input.b), Struct_5(Struct_2(Struct_1(global3.a.a.a), Struct_1(vec2<u32>(4294967295u, 4294967295u)), 9379i, vec2<f32>(global3.a.d.x, 618f), 0u), vec3<u32>(arg_1, 1u, global1.b.x), global1.c, vec2<i32>(-13504i, 0i), global3.e), false), global3.a.a, var_1.x, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a.d.x, -901f), vec2<f32>(1118f, global3.a.d.x))), 28138u), global3.b, global1.e, _wgslsmith_div_vec2_i32(global3.d, -var_1.xy), vec2<bool>(global1.e.x | global3.e.x, false)), arg_2.a), func_2(vec3<i32>(1i, ~_wgslsmith_add_i32(global3.a.c, global3.a.c), u_input.d.x), Struct_5(Struct_2(global1.a.b, func_2(var_1, Struct_5(Struct_2(Struct_1(var_2.a), Struct_1(vec2<u32>(1u, 4294967295u)), var_1.x, vec2<f32>(-565f, global3.a.d.x), arg_2.c.a.x), vec3<u32>(24451u, u_input.c, u_input.c), global3.e, global3.d, vec2<bool>(false, arg_2.a)), true), global1.a.c, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.d.x, -1475f))), 4294967295u << (global1.b.x % 32u)), ~global3.b, global1.e, ~(-u_input.e.yy), global3.e), !global3.e.x && select(global3.d.x > -28693i, false && global1.c.x, true)), -12090i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global1.a.d, vec2<f32>(arg_2.e, global1.a.d.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1273f, -274f))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(430f, 1626f))))), ~14071u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_mult_vec3_i32(u_input.d, u_input.d), Struct_5(Struct_2(func_2(-u_input.e, Struct_5(global3.a, vec3<u32>(38013u, 54395u, 63806u), global3.c, vec2<i32>(-2147483647i, 2147483647i), global1.c), arg_0.d.x < -286f), arg_0.b, -69386i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, global1.a.d.x)), global1.a.a.a.x), ~(~global3.b), vec2<bool>(arg_1.a, true), ~_wgslsmith_div_vec2_i32(~u_input.e.xx, abs(vec2<i32>(11135i, 17867i))), arg_3), !arg_1.a);
    var var_1 = _wgslsmith_f_op_f32(global1.a.d.x - 1000f);
    global2 = array<vec4<f32>, 6>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.d.x, -1017f))))));
    var var_3 = _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -927f)))))));
    return Struct_2(func_4(_wgslsmith_div_vec2_u32(~var_0.a << (arg_0.b.a % vec2<u32>(32u)), ~(~var_0.a)), 1u, arg_1).b, var_0, 51382i, vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(step(arg_1.b, -180f))), global3.a.a.a.x);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = vec2<i32>(global1.a.c, u_input.a);
    let var_1 = Struct_3(!global1.c.x, global1.a.a);
    global3 = Struct_5(func_5(func_4(reverseBits(vec2<u32>(global1.b.x, 0u)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, global3.b.x), global3.b.xz, vec2<u32>(global3.b.x, 4294967295u)), 4294967295u, Struct_4(global3.a.c >= u_input.e.x, global1.a.d.x, func_2(vec3<i32>(global3.d.x, global3.a.c, -2031i), Struct_5(global3.a, vec3<u32>(64875u, u_input.c, global3.a.e), global3.c, u_input.e.xz, global3.e), true), 2870u, _wgslsmith_f_op_f32(min(global1.a.d.x, global3.a.d.x)))), Struct_4(!global3.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1.a.d.x, global3.a.d.x)))), func_2(u_input.e, Struct_5(global1.a, vec3<u32>(var_1.b.a.x, 14315u, 0u), global3.e, global1.d, vec2<bool>(false, false)), true), var_1.b.a.x, global1.a.d.x), var_1.b, select(vec2<bool>(true, all(vec2<bool>(var_1.a, false))), !(!global3.e), all(!vec3<bool>(true, false, global3.e.x)))), ~_wgslsmith_sub_vec3_u32(global1.b, _wgslsmith_clamp_vec3_u32(global3.b ^ global3.b, vec3<u32>(var_1.b.a.x, 49626u, 37716u), ~vec3<u32>(1u, global3.a.a.a.x, 1u))), select(global1.c, vec2<bool>((false | global3.c.x) | global1.c.x, var_1.a), select(global1.e, !(!vec2<bool>(var_1.a, true)), !select(global1.e, vec2<bool>(global3.e.x, true), global3.e))), -vec2<i32>(1i, _wgslsmith_sub_i32(~u_input.b, global3.a.c << (0u % 32u))), select(global1.e, select(select(vec2<bool>(false, false), !global3.c, !vec2<bool>(global3.c.x, true)), !(!vec2<bool>(global1.e.x, false)), global3.c), !((global3.a.e <= arg_1) | select(true, false, true))));
    let var_2 = Struct_3(false, Struct_1(var_1.b.a));
    return select(vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(13265i, 25552i, global1.d.x), u_input.d), 0i) == -10063i, global3.e.x, !any(vec2<bool>(false, false)) || (-747f != global1.a.d.x), true), vec4<bool>(false, true, true, select(true, global3.e.x, 1u <= var_1.b.a.x)), !select(!vec4<bool>(false, var_2.a, true, var_2.a), vec4<bool>(true, true, !global1.e.x, all(vec3<bool>(true, var_1.a, var_1.a))), var_2.a));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = 108865u;
    let var_1 = Struct_3(global1.e.x, Struct_1(select(~vec2<u32>(global3.b.x, 4294967295u), global3.b.xz, !vec2<bool>(true, arg_0.x))));
    let var_2 = Struct_4(arg_0.x, global3.a.d.x, Struct_1(max(vec2<u32>(4294967295u, u_input.c), abs(vec2<u32>(4294967295u, 51161u)))), func_2(u_input.e, Struct_5(Struct_2(Struct_1(global1.a.b.a), Struct_1(arg_1.zy), -1i, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a.d.x, -299f))), 0u), firstLeadingBit(global3.b), select(!vec2<bool>(var_1.a, global3.c.x), select(vec2<bool>(global3.c.x, false), global3.e, false), vec2<bool>(true, false)), global3.d << (select(vec2<u32>(58451u, 9960u), var_1.b.a, false) % vec2<u32>(32u)), global1.e), global3.c.x).a.x, global3.a.d.x);
    var var_3 = Struct_3(true, func_2(_wgslsmith_add_vec3_i32(select(vec3<i32>(1i, 35364i, -1i), firstTrailingBit(vec3<i32>(-38710i, global3.a.c, global1.d.x)), global3.c.x), vec3<i32>(max(9733i, u_input.d.x), ~global3.d.x, global3.a.c)), Struct_5(Struct_2(Struct_1(vec2<u32>(4294967295u, var_1.b.a.x)), Struct_1(vec2<u32>(1u, 63622u)), -2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, var_2.b)), 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.x, var_1.b.a.x, 49210u), arg_1, global1.b), global1.e, global3.d << (~global3.b.xz % vec2<u32>(32u)), vec2<bool>(var_2.a, u_input.b == -2147483647i)), arg_0.x));
    global0 = array<Struct_2, 1>();
    return Struct_2(func_4(vec2<u32>(0u, arg_1.x), u_input.c, Struct_4(func_1(global1.a.d.x, 4750u, global3.a.d).x, 1505f, Struct_1(global1.b.zz >> (arg_1.yz % vec2<u32>(32u))), 4294967295u, _wgslsmith_f_op_f32(floor(global3.a.d.x)))).b, Struct_1(arg_1.zy), global1.a.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-659f, -344f) - _wgslsmith_f_op_vec2_f32(global1.a.d + global1.a.d)))))), func_5(func_5(func_4(vec2<u32>(0u, var_1.b.a.x), ~30555u, Struct_4(global1.c.x, var_2.b, Struct_1(var_2.c.a), global1.b.x, -1060f)), var_2, Struct_1(~vec2<u32>(arg_1.x, 1u)), !vec2<bool>(var_2.a, global1.c.x)), Struct_4(select(true, global3.e.x, true), _wgslsmith_div_f32(1201f, _wgslsmith_f_op_f32(1000f - arg_2)), var_3.b, var_1.b.a.x, _wgslsmith_f_op_f32(-1f)), global3.a.a, !global3.c).b.a.x);
}

fn func_7(arg_0: bool, arg_1: Struct_2) -> Struct_5 {
    let var_0 = select(~u_input.c, u_input.c | _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(global1.a.a.a.x, 0u), _wgslsmith_mult_u32(u_input.c, 0u), u_input.c), ~_wgslsmith_clamp_vec3_u32(global1.b, vec3<u32>(0u, 1u, arg_1.e), vec3<u32>(arg_1.b.a.x, 1u, 1u))), global3.c.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.d.x - arg_1.d.x))), _wgslsmith_f_op_f32(544f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1135f - global3.a.d.x) * _wgslsmith_f_op_f32(max(arg_1.d.x, global3.a.d.x)))), global1.a.d.x));
    global0 = array<Struct_2, 1>();
    global1 = Struct_5(Struct_2(func_6(vec4<bool>(all(vec3<bool>(arg_0, arg_0, global1.e.x)), global1.e.x, arg_0, global1.c.x & global1.e.x), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 29007u, global1.a.a.a.x), global3.b)), func_5(func_4(vec2<u32>(33161u, var_0), var_0, Struct_4(global1.e.x, global1.a.d.x, Struct_1(vec2<u32>(98083u, global3.a.b.a.x)), global1.a.a.a.x, global1.a.d.x)), Struct_4(true, 836f, arg_1.a, 1u, -715f), global1.a.a, select(vec2<bool>(global1.c.x, global1.e.x), vec2<bool>(global1.c.x, arg_0), vec2<bool>(false, true))).d.x).a, Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, global3.b.x), vec2<u32>(1u, global3.b.x))), ~max(1i, 1i), vec2<f32>(1478f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.d.x), _wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_mult_u32(var_0, min(reverseBits(global3.a.a.a.x), 1u))), abs(_wgslsmith_div_vec3_u32(global3.b, global3.b) >> (_wgslsmith_add_vec3_u32(global1.b, global3.b) % vec3<u32>(32u))) << (global1.b % vec3<u32>(32u)), !global3.c, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(select(-u_input.d.xx, -vec2<i32>(arg_1.c, u_input.a), select(vec2<bool>(true, global3.c.x), vec2<bool>(global1.e.x, global1.c.x), arg_0)), reverseBits(u_input.d.xx)), vec2<i32>(func_4(global1.b.zx, 17880u, Struct_4(global1.e.x, global3.a.d.x, Struct_1(vec2<u32>(4294967295u, var_0)), arg_1.b.a.x, 1000f)).c, -(~(-2147483647i)))), !global1.e);
    let var_2 = Struct_5(arg_1, global1.b, global1.e, global3.d, func_1(_wgslsmith_f_op_f32(-func_6(func_1(-1230f, 63388u, global1.a.d), global3.b, 1f).d.x), ~var_0 ^ 0u, var_1.zx).zw);
    return Struct_5(Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.c, 4294967295u), global3.b.xx), vec2<u32>(9249u, u_input.c) & global3.a.b.a)), global1.a.a, 44684i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.d - global3.a.d))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global1.a.d, var_1.yz)))), 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(84729u), ~var_2.b.x, var_2.b.x), ~(vec3<u32>(var_2.b.x, arg_1.b.a.x, var_0) | vec3<u32>(global1.b.x, 4294967295u, 11990u))) >> (global3.b % vec3<u32>(32u)), func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.d.x)))), 21333u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.d.x, -1000f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global3.a.d))))).xw, global3.d, !var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(!(!global3.e.x), func_6(select(func_1(247f, ~4294967295u, vec2<f32>(-1000f, 1000f)), vec4<bool>(global1.e.x, global3.e.x, false, true), vec4<bool>(true, true, true, true)), vec3<u32>(select(u_input.c, 4294967295u, global3.e.x) ^ ~global3.a.b.a.x, select(~35005u, abs(u_input.c), true), 6364u), 1f));
    let var_0 = max(~(~func_6(select(vec4<bool>(true, global3.e.x, true, true), vec4<bool>(global3.c.x, global1.c.x, true, false), global1.e.x), _wgslsmith_mult_vec3_u32(global3.b, global1.b), -214f).c), global3.a.c);
    var var_1 = func_2(vec3<i32>(-17321i, _wgslsmith_div_i32(~firstTrailingBit(33537i), -15729i), ~(~_wgslsmith_mult_i32(var_0, 2147483647i))), Struct_5(Struct_2(func_2(-vec3<i32>(-15665i, -8065i, u_input.a), func_7(global3.e.x, Struct_2(Struct_1(global1.a.b.a), Struct_1(vec2<u32>(0u, u_input.c)), 2147483647i, global3.a.d, 4294967295u)), false), Struct_1(~global1.b.xz), i32(-1i) * -25811i, global3.a.d, global3.a.a.a.x ^ ~4294967295u), global1.b, !func_7(global1.e.x, Struct_2(Struct_1(vec2<u32>(10161u, 1u)), global3.a.a, -6192i, vec2<f32>(949f, -835f), global1.a.a.a.x)).c, ~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), _wgslsmith_clamp_vec2_i32(global1.d, vec2<i32>(-1i, var_0), global1.d)), vec2<bool>(all(vec4<bool>(true, global1.c.x, false, global3.c.x)) || true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.a.d.x)), -976f))) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-2271f)), _wgslsmith_div_f32(-1769f, _wgslsmith_f_op_f32(-global3.a.d.x)))));
    global3 = func_7(!all(!vec3<bool>(global3.e.x, global3.e.x, global3.e.x)), global3.a);
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(global3.d.x, i32(-1i) * -2147483647i), vec2<i32>(-30377i, 0i) | (vec2<i32>(-55178i, global1.d.x) | -(vec2<i32>(u_input.b, global3.a.c) ^ vec2<i32>(0i, global1.a.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global3.a.d.x, -314f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 848f), _wgslsmith_f_op_f32(abs(global3.a.d.x))))), _wgslsmith_div_f32(global1.a.d.x, -182f), func_7(global3.c.x, global1.a).b, countOneBits(select(select(u_input.e, vec3<i32>(0i, 2147483647i, -79146i), vec3<bool>(global1.c.x, true, global3.e.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global3.a.c, 34920i, -7297i), vec3<i32>(global1.d.x, global1.a.c, -9826i), u_input.e), vec3<bool>(true, true, true))) << (abs(~vec3<u32>(global1.a.a.a.x, 13119u, global1.a.b.a.x)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u >> (reverseBits(global1.a.a.a.x) % 32u), _wgslsmith_add_u32(15697u, 3978u), u_input.c), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 69908u, 38153u, 63377u) ^ vec4<u32>(69302u, var_1.a.x, 1u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(global1.a.e, 4294967295u, global3.a.a.a.x, 5116u), vec4<u32>(global3.b.x, global1.b.x, var_1.a.x, var_1.a.x))), _wgslsmith_div_u32(reverseBits(16183u), _wgslsmith_mult_u32(0u, var_1.a.x)), ~4294967295u)));
}

