struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: u32;

var<private> global2: Struct_3;

var<private> global3: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(vec3<u32>(81745u, 286u, 0u)), Struct_5(vec3<u32>(1u, 0u, 1u)), Struct_5(vec3<u32>(0u, 40361u, 1356u)), Struct_5(vec3<u32>(4294967295u, 68203u, 1u)), Struct_5(vec3<u32>(56608u, 47091u, 0u)), Struct_5(vec3<u32>(15090u, 0u, 40146u)), Struct_5(vec3<u32>(12916u, 8710u, 61168u)), Struct_5(vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_5(vec3<u32>(1u, 61767u, 0u)), Struct_5(vec3<u32>(13618u, 1u, 4294967295u)), Struct_5(vec3<u32>(1u, 4294967295u, 0u)), Struct_5(vec3<u32>(55699u, 0u, 21768u)), Struct_5(vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_5(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_5(vec3<u32>(39457u, 15903u, 4294967295u)), Struct_5(vec3<u32>(1u, 22257u, 13170u)), Struct_5(vec3<u32>(4294967295u, 1u, 0u)), Struct_5(vec3<u32>(4294967295u, 4294967295u, 19161u)), Struct_5(vec3<u32>(75485u, 78423u, 53579u)), Struct_5(vec3<u32>(4294967295u, 13189u, 26970u)), Struct_5(vec3<u32>(4294967295u, 4434u, 1u)), Struct_5(vec3<u32>(10869u, 75648u, 1u)), Struct_5(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_5(vec3<u32>(4294967295u, 0u, 35866u)), Struct_5(vec3<u32>(40225u, 4294967295u, 4294967295u)), Struct_5(vec3<u32>(4294967295u, 38813u, 45441u)), Struct_5(vec3<u32>(44356u, 4294967295u, 45692u)), Struct_5(vec3<u32>(66400u, 0u, 2935u)), Struct_5(vec3<u32>(15696u, 51849u, 0u)), Struct_5(vec3<u32>(26043u, 3830u, 88532u)), Struct_5(vec3<u32>(4294967295u, 745u, 40358u)), Struct_5(vec3<u32>(5681u, 29556u, 4294967295u)));

var<private> global4: Struct_5;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    let var_0 = vec4<bool>(any(select(vec4<bool>(any(vec2<bool>(global2.b.b.x, false)), any(vec2<bool>(arg_0.a, false)), true, true), vec4<bool>(true, true | global2.b.b.x, arg_0.b.x, true), false)), (_wgslsmith_mod_u32(0u, ~0u) | ~min(u_input.a, 4294967295u)) == 21820u, true, arg_0.b.x);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -812f)), global2.a);
    var var_2 = _wgslsmith_div_u32(global4.a.x, ~0u);
    return abs(~(((vec4<i32>(-2147483647i, 42165i, arg_1, 2147483647i) & vec4<i32>(arg_0.e.x, 0i, arg_0.e.x, arg_1)) >> (firstTrailingBit(vec4<u32>(arg_0.c, 82085u, 1u, global2.b.c)) % vec4<u32>(32u))) >> (vec4<u32>(0u, u_input.c, max(arg_0.c, global4.a.x), abs(arg_0.d)) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    let var_0 = all(vec3<bool>(global2.b.b.x, select(all(vec4<bool>(true, false, true, false)), true, global2.b.b.x), false || global2.b.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1099f, global2.a, -170f))) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.a, -1759f, -147f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global2.a, global2.a))))));
    var var_2 = vec4<bool>(global2.b.b.x, true, true, !any(select(vec3<bool>(var_0, var_0, global2.b.a), vec3<bool>(global2.b.b.x, false, true), any(vec3<bool>(global2.b.a, true, var_0)))));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * 1822f)) - _wgslsmith_f_op_f32(sign(var_1.x))))), global0[_wgslsmith_index_u32(~(firstTrailingBit(~16369u) | 1u), 26u)]);
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(floor(var_1.x));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    global3 = array<Struct_5, 32>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_4(-func_3(global2.b, min(u_input.d, u_input.d)))), global0[_wgslsmith_index_u32(0u, 26u)]);
    global2 = Struct_3(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -292f)))), var_0.b.b);
    global3 = array<Struct_5, 32>();
    let var_1 = ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(49335u, global4.a.x, 39868u, 0u), vec4<u32>(0u, global2.b.d, 34198u, global4.a.x)) ^ firstTrailingBit(vec4<u32>(4294967295u, 1u, global2.b.d, 1u)), select(min(vec4<u32>(var_0.b.b.c, global4.a.x, 17277u, 10398u), vec4<u32>(u_input.c, 1u, var_0.b.b.d, 0u)), vec4<u32>(1u, 1u, 86199u, 0u), !vec4<bool>(var_0.b.b.a, true, true, true)), vec4<u32>(32456u, 80473u, 0u >> (u_input.b % 32u), _wgslsmith_div_u32(global4.a.x, global2.b.d))));
    return Struct_3(260f, Struct_1(true, !var_0.b.b.b, global4.a.x, 44398u, vec3<i32>(max(1i, -1i), global2.b.e.x & ~global2.b.e.x, var_0.b.b.e.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = !vec4<bool>(global2.b.b.x, !any(global2.b.b), !(true != any(vec3<bool>(false, global2.b.b.x, true))), 80204u >= u_input.a);
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(0i), _wgslsmith_dot_vec2_i32(global2.b.e.zz, vec2<i32>(global2.b.e.x, global2.b.e.x)), 2147483647i, firstLeadingBit(global2.b.e.x)), vec4<i32>(global2.b.e.x, -global2.b.e.x, firstTrailingBit(global2.b.e.x), -6859i) | select(vec4<i32>(u_input.d, -2147483647i, -25686i, 1i) & vec4<i32>(11630i, 32042i, -63918i, global2.b.e.x), vec4<i32>(2147483647i, global2.b.e.x, -1i, -13901i), !vec4<bool>(var_0.x, var_0.x, false, false))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global2.b.e.x, global2.b.e.x, 1i, 2147483647i)) | vec4<i32>(u_input.d, 19667i, u_input.d, -2147483647i), select(firstLeadingBit(vec4<i32>(-1i, -2617i, u_input.d, -27631i)), -vec4<i32>(u_input.d, -2147483647i, global2.b.e.x, -62060i), select(vec4<bool>(var_0.x, var_0.x, true, global2.b.b.x), vec4<bool>(global2.b.b.x, global2.b.b.x, true, false), vec4<bool>(false, false, true, global2.b.b.x)))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)) & ~vec4<i32>(-2698i, 30625i, -106258i, 1i), -(~vec4<i32>(u_input.d, u_input.d, global2.b.e.x, 74867i)))));
    global2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, global2.a, -1000f, global2.a) * vec4<f32>(1456f, -329f, global2.a, global2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.a, 689f, global2.a) - vec4<f32>(global2.a, global2.a, global2.a, global2.a)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -203f, global2.a, global2.a) - vec4<f32>(231f, global2.a, 1576f, global2.a)))))));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.a)), _wgslsmith_f_op_f32(-1039f + -1677f), global2.a, 762f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1777f, global2.a, 291f, -1941f)))))));
    global4 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(~47816u, _wgslsmith_clamp_u32(var_2.b.d, ~1u, _wgslsmith_add_u32(u_input.c, countOneBits(17592u))))), 32u)];
    return func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(290f * -241f) + 1005f), _wgslsmith_f_op_f32(var_2.a - _wgslsmith_div_f32(global2.a, global2.a)), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, global2.a, var_2.a, 248f), vec4<f32>(765f, 1000f, -896f, -1292f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -1795f, 1000f, var_2.a) * vec4<f32>(global2.a, global2.a, 762f, var_2.a))))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    global3 = array<Struct_5, 32>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-1816f * global2.a), global2.b);
    var var_1 = vec4<u32>(5454u, 4294967295u, func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(select(-1989f, -965f, false)), var_0.a)))).b.d, func_1().b.c);
    var var_2 = arg_0.b;
    let var_3 = Struct_1(var_0.b.b.x, global2.b.b, var_0.b.c, arg_0.b.d, -countOneBits(-vec3<i32>(global2.b.e.x, global2.b.e.x, arg_1.e.x)));
    return Struct_2(_wgslsmith_f_op_f32(func_4(vec4<i32>(-13896i | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.e.x, 7718i, -3862i), vec3<i32>(arg_0.b.e.x, u_input.d, arg_2.e.x)), arg_2.e.x, arg_0.b.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.e.x, 30848i, u_input.d, arg_2.e.x), vec4<i32>(global2.b.e.x, 26972i, var_2.e.x, var_0.b.e.x)) & _wgslsmith_div_i32(u_input.d, global2.b.e.x)))));
}

fn func_6(arg_0: f32, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = 1u >> (global4.a.x % 32u);
    var var_1 = Struct_4(-113f, func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1780f, _wgslsmith_f_op_f32(abs(global2.a)), 1000f, 141f)))));
    var var_2 = arg_1.x;
    var var_3 = firstLeadingBit(select(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.b.b.c, 0u), vec2<u32>(u_input.c, global2.b.c)), global2.b.c), 1u, !(!(global2.b.e.x <= -1i))));
    var_3 = ~(~(~1u));
    return Struct_2(_wgslsmith_f_op_f32(exp2(arg_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2.a);
    let var_1 = func_6(379f, ~(global2.b.e.yz ^ _wgslsmith_mult_vec2_i32(vec2<i32>(19547i, 2147483647i), vec2<i32>(17995i, u_input.d))), select(_wgslsmith_sub_u32(46899u, _wgslsmith_clamp_u32(63037u, 4294967295u, 4294967295u)), min(abs(4294967295u), ~u_input.a), global2.b.a) == ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2.b.d), global4.a.xz)), func_5(func_1(), Struct_1(false, vec2<bool>(global2.b.a, select(global2.b.b.x, global2.b.a, false)), select(u_input.c >> (global2.b.d % 32u), global2.b.c, all(global2.b.b)), 0u, _wgslsmith_add_vec3_i32(-global2.b.e, vec3<i32>(2147483647i, 79395i, global2.b.e.x))), global2.b, true));
    let var_2 = !select(select(vec4<bool>(!global2.b.b.x, false, false, global2.b.a), !vec4<bool>(true, true, true, global2.b.a), vec4<bool>(true, true, true, true)), select(vec4<bool>(-1i != u_input.d, !global2.b.a, any(vec4<bool>(global2.b.b.x, global2.b.b.x, true, global2.b.b.x)), select(global2.b.a, true, false)), !select(vec4<bool>(global2.b.b.x, true, false, true), vec4<bool>(global2.b.b.x, global2.b.a, global2.b.b.x, global2.b.b.x), true), true), !global2.b.a);
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-620f, global2.a, -1721f, 337f))))));
    global4 = Struct_5(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global4.a.x, 1u, 62829u, var_3.b.c), vec4<u32>(global2.b.d, global4.a.x, global2.b.c, 0u)), ~vec4<u32>(global4.a.x, 30427u, var_3.b.c, 82100u)), ~(vec4<u32>(16877u, 0u, 0u, global4.a.x) | vec4<u32>(84491u, 4294967295u, 16989u, 0u))), global2.b.d, 56410u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(var_3.b.e.yy)) << (vec2<u32>(~(~u_input.b), countOneBits(~4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(421f, 613f), vec2<f32>(var_1.a, -533f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_0.a) * -792f), _wgslsmith_div_f32(var_3.a, -795f)))));
}

