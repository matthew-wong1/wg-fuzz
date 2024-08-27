struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
    d: bool,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 17>;

var<private> global2: bool;

var<private> global3: array<i32, 18>;

var<private> global4: u32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_3 {
    global3 = array<i32, 18>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1010f, -1172f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) * _wgslsmith_f_op_f32(round(-571f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1946f, -1000f) + vec2<f32>(-1725f, -732f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1425f, -1253f), vec2<f32>(500f, -684f))))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-340f, 684f), vec2<f32>(790f, -1652f))) * vec2<f32>(268f, 371f)))));
    return Struct_3(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))), Struct_2(abs(reverseBits(vec3<u32>(u_input.c, 52534u, u_input.c) & vec3<u32>(u_input.c, u_input.c, 33124u))), select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), abs(min(_wgslsmith_mult_u32(0u, 0u), 1u))), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(1076f + var_0.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.b.x)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.x, -763f)))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(max(var_0.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.a)))))), _wgslsmith_f_op_vec2_f32(-var_0.b), vec2<bool>(false, true));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_5 {
    let var_0 = select(vec3<u32>(u_input.c, ~_wgslsmith_mult_u32(0u, arg_0.b.a.x) | ~(arg_1.b.c ^ 1u), arg_0.b.a.x << (arg_1.b.c % 32u)), ~(~abs(~vec3<u32>(arg_1.b.a.x, arg_0.b.a.x, arg_0.b.a.x))), select(vec3<bool>(any(vec3<bool>(false, arg_0.b.b.x, arg_3.x)), _wgslsmith_f_op_f32(-arg_0.c.a.x) > arg_2.x, !(arg_0.d.x == 991f)), !(!select(arg_3.wzy, arg_3.xzy, false)), select(!vec3<bool>(false, arg_1.e.x, arg_1.e.x), vec3<bool>(all(arg_3.yy), all(vec2<bool>(arg_0.b.b.x, arg_1.a.x)), arg_3.x), select(vec3<bool>(false, false, arg_3.x), arg_3.yxx, arg_3.zyy))));
    return Struct_5(Struct_4(max(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 18u)], _wgslsmith_mult_i32(54743i, u_input.a), ~u_input.a), (vec3<i32>(u_input.a, -37224i, 2147483647i) & vec3<i32>(0i, -1417i, global3[_wgslsmith_index_u32(0u, 18u)])) | ~vec3<i32>(global3[_wgslsmith_index_u32(57713u, 18u)], 2147483647i, u_input.a)), arg_1.b.c, Struct_2(_wgslsmith_add_vec3_u32(var_0, ~vec3<u32>(u_input.c, 60307u, var_0.x)), !(!arg_1.b.b), ~(~4306u)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zy + arg_2.yy)) + vec2<f32>(func_2().c.a.x, -917f))), ~countOneBits(~(~vec4<u32>(4294967295u, var_0.x, 45805u, 1017u))), Struct_2(~(~(~vec3<u32>(arg_0.b.c, 21036u, 6633u))), vec2<bool>(global3[_wgslsmith_index_u32(~arg_0.b.a.x, 18u)] < -2147483647i, true), select(~min(arg_1.b.a.x, 43420u), _wgslsmith_mod_u32(u_input.c >> (129036u % 32u), ~var_0.x), firstLeadingBit(2147483647i) != _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(arg_1.b.a.x, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], 12469i))), arg_0);
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = func_3(Struct_3(arg_0, Struct_2(vec3<u32>(u_input.c, 46308u, ~u_input.c), arg_0, 77864u), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-949f, -1496f) + vec2<f32>(-1033f, 707f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(239f, 325f), vec2<f32>(-418f, -176f), vec2<bool>(arg_0.x, arg_0.x)))), vec2<f32>(1358f, -896f)), vec2<f32>(1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-245f, 874f)))), !arg_0), func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1754f, -272f, -1731f) - vec3<f32>(613f, 385f, -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-482f, 1029f, -1000f), vec3<f32>(-523f, 850f, -115f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-394f, -623f, 1185f), vec3<f32>(1007f, 1050f, -589f)))))), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x || true));
    let var_1 = min(var_0.c.a, firstTrailingBit(abs(~var_0.a.c.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.e.x))) - var_0.d.c.b.x) + var_0.a.e.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = arg_0;
    let var_1 = Struct_4(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~(-2147483647i), ~global3[_wgslsmith_index_u32(66267u, 18u)], _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.c, 18u)], global3[_wgslsmith_index_u32(u_input.c, 18u)])), _wgslsmith_sub_i32(-2147483647i, u_input.a) << (4294967295u % 32u)), -2147483647i, u_input.a), reverseBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 40436u, arg_1.a.x, arg_1.a.x), vec4<u32>(5641u, 81831u, 6390u, 6993u)))), Struct_2(vec3<u32>(~max(arg_1.c, u_input.b), u_input.b, max(~arg_1.c, ~arg_1.c)), arg_1.b, ~_wgslsmith_dot_vec2_u32(arg_1.a.yz | vec2<u32>(u_input.b, 24777u), ~arg_1.a.yy)), !any(select(vec2<bool>(true, true), arg_1.b, vec2<bool>(arg_1.b.x, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0 + arg_0), 761f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) - func_3(Struct_3(arg_1.b, Struct_2(vec3<u32>(0u, 1u, 4294967295u), vec2<bool>(false, arg_1.b.x), u_input.c), global1[_wgslsmith_index_u32(u_input.c, 17u)], vec2<f32>(arg_0, var_0), vec2<bool>(arg_1.b.x, arg_1.b.x)), Struct_3(vec2<bool>(false, true), Struct_2(arg_1.a, arg_1.b, u_input.b), global1[_wgslsmith_index_u32(arg_1.c, 17u)], vec2<f32>(var_0, arg_0), arg_1.b), vec3<f32>(-657f, arg_0, -520f), vec4<bool>(true, arg_1.b.x, arg_1.b.x, true)).a.e) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, -522f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 864f))))));
    global1 = array<Struct_1, 17>();
    var var_2 = var_1.c;
    let var_3 = Struct_5(var_1, abs(vec4<u32>(~23147u, 7142u, var_1.c.c, 0u)) >> (vec4<u32>(0u, arg_1.c, (arg_1.a.x ^ arg_1.c) & 1u, 4294967295u) % vec4<u32>(32u)), func_3(func_2(), Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, var_1.d), vec2<bool>(true, arg_1.b.x)), Struct_2(~vec3<u32>(4294967295u, 16038u, 0u), func_3(Struct_3(var_1.c.b, Struct_2(vec3<u32>(1u, 4294967295u, u_input.b), var_1.c.b, arg_1.c), Struct_1(var_1.e, var_1.e), var_1.e, vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false), Struct_2(arg_1.a, arg_1.b, 1u), global1[_wgslsmith_index_u32(69113u, 17u)], vec2<f32>(1168f, 652f), var_2.b), vec3<f32>(378f, arg_0, var_1.e.x), vec4<bool>(var_1.d, false, true, true)).a.c.b, abs(1u)), global1[_wgslsmith_index_u32(~min(0u, 1u), 17u)], var_1.e, func_3(Struct_3(vec2<bool>(var_1.d, var_2.b.x), var_1.c, global1[_wgslsmith_index_u32(4872u, 17u)], var_1.e, var_1.c.b), func_3(Struct_3(vec2<bool>(var_2.b.x, true), arg_1, global1[_wgslsmith_index_u32(17866u, 17u)], vec2<f32>(-1511f, arg_0), var_1.c.b), Struct_3(arg_1.b, Struct_2(var_2.a, vec2<bool>(false, true), var_2.a.x), global1[_wgslsmith_index_u32(arg_1.a.x, 17u)], var_1.e, var_1.c.b), vec3<f32>(-575f, arg_0, 1173f), vec4<bool>(var_2.b.x, var_1.d, false, false)).d, vec3<f32>(arg_0, -1492f, var_0), vec4<bool>(true, arg_1.b.x, var_1.d, true)).d.b.b), vec3<f32>(_wgslsmith_f_op_f32(-398f + _wgslsmith_f_op_f32(-arg_0)), 1000f, _wgslsmith_f_op_f32(trunc(969f))), vec4<bool>(var_2.b.x || func_3(Struct_3(arg_1.b, Struct_2(var_2.a, var_2.b, 0u), global1[_wgslsmith_index_u32(55519u, 17u)], var_1.e, var_1.c.b), Struct_3(vec2<bool>(false, true), Struct_2(vec3<u32>(arg_1.a.x, arg_1.a.x, 4294967295u), arg_1.b, var_1.c.a.x), Struct_1(var_1.e, vec2<f32>(arg_0, var_1.e.x)), var_1.e, vec2<bool>(var_1.c.b.x, false)), vec3<f32>(-505f, -702f, var_0), vec4<bool>(false, false, false, true)).d.a.x, !select(true, true, var_2.b.x), false, true)).a.c, func_3(func_3(Struct_3(!var_1.c.b, arg_1, func_2().c, var_1.e, func_3(Struct_3(arg_1.b, Struct_2(arg_1.a, var_1.c.b, u_input.b), Struct_1(vec2<f32>(var_1.e.x, 574f), var_1.e), var_1.e, var_1.c.b), Struct_3(var_2.b, arg_1, global1[_wgslsmith_index_u32(arg_1.c, 17u)], vec2<f32>(var_1.e.x, -314f), var_1.c.b), vec3<f32>(-491f, 622f, 2110f), vec4<bool>(arg_1.b.x, arg_1.b.x, false, false)).d.e), Struct_3(vec2<bool>(var_1.c.b.x, arg_1.b.x), var_1.c, global1[_wgslsmith_index_u32(35556u, 17u)], _wgslsmith_f_op_vec2_f32(round(var_1.e)), select(arg_1.b, vec2<bool>(arg_1.b.x, true), arg_1.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-143f, 348f, 1236f), vec3<f32>(var_0, var_1.e.x, -159f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, var_1.e.x, arg_0) * vec3<f32>(arg_0, arg_0, -1919f))), !select(vec4<bool>(false, arg_1.b.x, var_2.b.x, var_2.b.x), vec4<bool>(false, false, arg_1.b.x, false), arg_1.b.x)).d, Struct_3(var_2.b, func_2().b, Struct_1(var_1.e, vec2<f32>(142f, arg_0)), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(-834f - var_1.e.x)), func_3(Struct_3(vec2<bool>(true, true), var_1.c, global1[_wgslsmith_index_u32(u_input.c, 17u)], vec2<f32>(2591f, var_0), vec2<bool>(false, arg_1.b.x)), func_3(Struct_3(arg_1.b, Struct_2(vec3<u32>(119279u, 4294967295u, 23320u), vec2<bool>(true, arg_1.b.x), var_2.c), Struct_1(var_1.e, vec2<f32>(var_1.e.x, var_1.e.x)), vec2<f32>(var_1.e.x, 1414f), var_1.c.b), Struct_3(var_2.b, var_1.c, global1[_wgslsmith_index_u32(0u, 17u)], var_1.e, vec2<bool>(false, var_2.b.x)), vec3<f32>(var_0, 1417f, arg_0), vec4<bool>(true, true, arg_1.b.x, var_1.d)).d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, -237f, var_1.e.x) - vec3<f32>(1166f, -1731f, var_0)), !vec4<bool>(false, true, var_2.b.x, arg_1.b.x)).a.c.b), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.e.x), 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_3(func_3(Struct_3(vec2<bool>(var_2.b.x, true), Struct_2(vec3<u32>(arg_1.c, var_2.a.x, 4294967295u), vec2<bool>(arg_1.b.x, false), 30249u), Struct_1(var_1.e, vec2<f32>(-708f, arg_0)), var_1.e, vec2<bool>(false, var_1.c.b.x)), Struct_3(var_1.c.b, Struct_2(arg_1.a, vec2<bool>(arg_1.b.x, true), var_2.a.x), Struct_1(var_1.e, vec2<f32>(arg_0, var_1.e.x)), var_1.e, vec2<bool>(true, true)), vec3<f32>(1686f, var_1.e.x, -839f), vec4<bool>(true, false, var_2.b.x, true)).d, func_2(), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.e.x, 1340f, 1000f), vec3<f32>(var_1.e.x, -1582f, -1145f))), !vec4<bool>(true, var_1.d, false, true)).d.d.x), !vec4<bool>(true, true, false, all(vec3<bool>(var_1.c.b.x, false, arg_1.b.x)))).d);
    return vec2<u32>(~((59587u >> (_wgslsmith_mod_u32(var_2.c, 24033u) % 32u)) << (~u_input.c % 32u)), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~(~vec2<u32>(u_input.b, 0u)) & func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false))) * _wgslsmith_f_op_f32(895f - 1893f)), func_2().b), ~(~func_2().b.a.zx) | _wgslsmith_add_vec2_u32(~select(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 13545u), vec2<bool>(true, false)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1810u, 40880u), vec2<u32>(u_input.b, 48199u))));
    let var_1 = vec2<u32>(~4294967295u, func_3(func_2(), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-449f, -562f, -1051f) - vec3<f32>(-865f, -714f, 2014f))), vec4<bool>(true, false, _wgslsmith_sub_u32(48416u, u_input.b) > u_input.c, _wgslsmith_f_op_f32(select(261f, -1354f, false)) > _wgslsmith_f_op_f32(-592f * 146f))).b.x);
    global2 = any(vec2<bool>(all(vec4<bool>(false, false, false, true)) | all(vec3<bool>(false, false, false)), true)) | !(abs(reverseBits(var_0.x)) == var_0.x);
    var var_2 = Struct_5(Struct_4(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, u_input.a, global3[_wgslsmith_index_u32(54261u, 18u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, global3[_wgslsmith_index_u32(var_1.x, 18u)], -25469i))), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -16583i), vec3<i32>(global3[_wgslsmith_index_u32(var_1.x, 18u)], global3[_wgslsmith_index_u32(15978u, 18u)], -14691i)))), ~func_4(-1441f, Struct_2(vec3<u32>(var_1.x, var_1.x, var_0.x), vec2<bool>(true, true), 4294967295u)).x, Struct_2(~vec3<u32>(u_input.c, u_input.b, var_1.x), vec2<bool>(any(vec3<bool>(false, false, true)), true), abs(var_1.x)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), u_input.a != 720i)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-341f - 293f), 857f), _wgslsmith_div_vec2_f32(vec2<f32>(-252f, 865f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1902f, -431f)))))), vec4<u32>(1u ^ ~_wgslsmith_mod_u32(var_0.x, u_input.c), var_1.x, select(30996u, ~0u, !any(vec3<bool>(false, true, true))), 1u), func_3(func_3(Struct_3(func_3(Struct_3(vec2<bool>(false, false), Struct_2(vec3<u32>(u_input.c, var_0.x, 0u), vec2<bool>(true, false), var_1.x), Struct_1(vec2<f32>(-676f, -1000f), vec2<f32>(104f, 1000f)), vec2<f32>(883f, -687f), vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false), Struct_2(vec3<u32>(var_0.x, var_0.x, 20345u), vec2<bool>(true, false), 27125u), Struct_1(vec2<f32>(1620f, -1073f), vec2<f32>(1480f, -1000f)), vec2<f32>(341f, -386f), vec2<bool>(true, false)), vec3<f32>(833f, -791f, 1015f), vec4<bool>(true, true, false, false)).d.e, func_2().b, global1[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(166f, -784f) * vec2<f32>(952f, 1061f)), vec2<bool>(true, true)), func_3(Struct_3(vec2<bool>(true, false), Struct_2(vec3<u32>(var_0.x, 3433u, 4294967295u), vec2<bool>(false, false), u_input.b), Struct_1(vec2<f32>(-615f, 1712f), vec2<f32>(-1238f, -533f)), vec2<f32>(282f, 990f), vec2<bool>(true, true)), func_3(Struct_3(vec2<bool>(false, true), Struct_2(vec3<u32>(var_1.x, var_1.x, var_0.x), vec2<bool>(false, false), 93716u), global1[_wgslsmith_index_u32(4294967295u, 17u)], vec2<f32>(709f, 515f), vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true), Struct_2(vec3<u32>(var_1.x, 0u, 4294967295u), vec2<bool>(true, true), var_0.x), global1[_wgslsmith_index_u32(u_input.c, 17u)], vec2<f32>(-521f, -1865f), vec2<bool>(false, true)), vec3<f32>(857f, 305f, 1395f), vec4<bool>(true, true, true, true)).d, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-381f, 1000f, 813f), vec3<f32>(-1328f, 962f, 805f))), vec4<bool>(true, true, true, true)).d, vec3<f32>(-1157f, _wgslsmith_f_op_f32(-533f + -1697f), -113f), vec4<bool>(true, true, true, true)).d, func_3(func_3(Struct_3(vec2<bool>(true, true), Struct_2(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec2<bool>(true, true), 55513u), global1[_wgslsmith_index_u32(var_0.x, 17u)], vec2<f32>(-1190f, -1741f), vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false), Struct_2(vec3<u32>(var_1.x, 62123u, 0u), vec2<bool>(false, false), 6257u), global1[_wgslsmith_index_u32(var_1.x, 17u)], vec2<f32>(871f, 775f), vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1478f, -1000f, 369f)), vec4<bool>(true, true, true, true)).d, func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(376f, -1553f, 926f)), vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true)).d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, 1219f, -1408f)), vec4<bool>(true, true, true, true)).d.b, func_3(Struct_3(vec2<bool>(true, true), Struct_2(vec3<u32>(var_1.x, u_input.c, 1u), vec2<bool>(true, true), func_2().b.c), func_3(func_2(), func_2(), vec3<f32>(-707f, -1147f, -115f), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true)).d.c, vec2<f32>(func_3(Struct_3(vec2<bool>(true, false), Struct_2(vec3<u32>(var_0.x, 25930u, var_1.x), vec2<bool>(true, false), var_1.x), global1[_wgslsmith_index_u32(9831u, 17u)], vec2<f32>(-1035f, 362f), vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true), Struct_2(vec3<u32>(41879u, u_input.c, var_1.x), vec2<bool>(true, true), u_input.b), Struct_1(vec2<f32>(504f, -2131f), vec2<f32>(-914f, -292f)), vec2<f32>(182f, -630f), vec2<bool>(false, false)), vec3<f32>(-709f, -411f, 1150f), vec4<bool>(false, true, true, true)).d.c.b.x, 831f), func_2().b.b), func_2(), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(517f, 813f, -125f))))))), vec4<bool>(!all(vec3<bool>(true, true, true)), true, true, func_3(Struct_3(vec2<bool>(true, true), Struct_2(vec3<u32>(0u, 11741u, var_0.x), vec2<bool>(false, false), u_input.c), global1[_wgslsmith_index_u32(var_0.x, 17u)], vec2<f32>(505f, 1970f), vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false), Struct_2(vec3<u32>(23154u, 20432u, var_1.x), vec2<bool>(true, false), var_0.x), Struct_1(vec2<f32>(265f, 854f), vec2<f32>(-563f, -971f)), vec2<f32>(-200f, 188f), vec2<bool>(false, true)), vec3<f32>(812f, -398f, -597f), vec4<bool>(true, false, true, true)).a.e.x != _wgslsmith_f_op_f32(815f + -754f))).d);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -870f));
    let x = u_input.a;
    s_output = StorageBuffer(-880f, vec2<i32>(-12294i, _wgslsmith_dot_vec3_i32(~var_2.a.a, vec3<i32>(-58916i, 23016i, global3[_wgslsmith_index_u32(0u, 18u)]))) << (_wgslsmith_div_vec2_u32(var_1, _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.d.b.a.x, var_0.x), vec2<u32>(var_2.a.c.c, 44922u))) % vec2<u32>(32u)), ((u_input.b << (~var_0.x % 32u)) | ~max(var_2.d.b.c, var_2.a.b)) & (_wgslsmith_add_u32(_wgslsmith_mult_u32(var_2.a.b, 2390u), 53165u) << (0u % 32u)));
}

