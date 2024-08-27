struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(1884u, 10268u, 41773u, 4294967295u), vec4<u32>(38877u, 0u, 1u, 94450u), vec4<u32>(12245u, 82045u, 4294967295u, 75424u), vec4<u32>(0u, 4294967295u, 1u, 90553u), vec4<u32>(4294967295u, 4294967295u, 1u, 30368u), vec4<u32>(4294967295u, 1u, 622u, 63089u), vec4<u32>(1u, 31237u, 4294967295u, 26285u), vec4<u32>(1u, 1u, 41277u, 1u), vec4<u32>(50807u, 12646u, 19019u, 1u), vec4<u32>(1u, 4294967295u, 7739u, 0u));

var<private> global1: array<vec2<i32>, 1>;

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(484f, 0u, 1i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = true;
    let var_1 = Struct_3(global2.a);
    global1 = array<vec2<i32>, 1>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, 332f));
    let var_3 = vec4<f32>(global2.a.a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2261f) - _wgslsmith_f_op_f32(trunc(860f))))), 1195f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2506f, global2.a.a.a) + _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(172f, _wgslsmith_f_op_f32(-arg_1.a.a), var_0))))));
    return vec2<bool>(true, all(vec4<bool>(_wgslsmith_f_op_f32(round(1000f)) < _wgslsmith_f_op_f32(-arg_1.a.a), select(true, !var_0, true), true && var_0, var_0)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> bool {
    let var_0 = Struct_4(Struct_3(Struct_2(global2.a.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(420f, -289f))) - vec2<f32>(943f, global2.a.a.a))))), func_3(Struct_1(1f, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 82113u, global2.a.a.b, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 57754u, 48007u, 1u), global0[_wgslsmith_index_u32(0u, 10u)])), global2.a.a.c), Struct_2(Struct_1(global2.a.a.a, ~u_input.d, _wgslsmith_mult_i32(u_input.a.x, -23427i))), vec2<i32>(24425i, ~u_input.e), Struct_1(1000f, _wgslsmith_div_u32(_wgslsmith_add_u32(57982u, global2.a.a.b), _wgslsmith_add_u32(33172u, u_input.d)), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1, 1i), i32(-1i) * -2147483647i))), Struct_1(_wgslsmith_f_op_f32(round(global2.a.a.a)), u_input.d, _wgslsmith_mod_i32(reverseBits(-global2.a.a.c), -u_input.e)), _wgslsmith_mod_vec3_i32(-u_input.c, u_input.b.zzw));
    let var_1 = !(!vec3<bool>(false, all(select(vec3<bool>(var_0.c.x, var_0.c.x, true), vec3<bool>(false, false, var_0.c.x), var_0.c.x)), func_3(var_0.a.a.a, Struct_2(global2.a.a), vec2<i32>(var_0.d.c, arg_1), global2.a.a).x));
    let var_2 = var_0.a.a.a.b | (firstLeadingBit(~(~28831u)) ^ select(var_0.d.b, ~(~u_input.d), var_0.c.x));
    var var_3 = _wgslsmith_mod_vec3_u32(max(~(~vec3<u32>(4294967295u, 3198u, global2.a.a.b)) | (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d.b, 0u, u_input.d), vec3<u32>(4294967295u, 35317u, var_0.d.b)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global2.a.a.b, 1u), vec3<u32>(var_2, 65152u, u_input.d))), ~reverseBits(vec3<u32>(4294967295u, global2.a.a.b, 1u)) ^ vec3<u32>(0u, 4294967295u, global2.a.a.b & 28464u)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(49953u, 4294967295u, global2.a.a.b), vec3<u32>(23208u, var_0.d.b, 4294967295u) | vec3<u32>(21039u, u_input.d, u_input.d)) << (max(reverseBits(vec3<u32>(21214u, var_2, 19821u)), vec3<u32>(0u, 40283u, global2.a.a.b)) % vec3<u32>(32u)), min(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 25664u), vec3<u32>(u_input.d, global2.a.a.b, global2.a.a.b)), ~vec3<u32>(1u, var_2, u_input.d)) >> (~max(vec3<u32>(var_2, var_2, 1u), vec3<u32>(1u, u_input.d, 62755u)) % vec3<u32>(32u))));
    let var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~select(1u, var_2, false)), 14434u, var_0.a.a.a.b >> (abs(abs(var_3.x)) % 32u)), vec3<u32>(select(min(global2.a.a.b, ~72634u), firstTrailingBit(67820u), global2.a.a.a != global2.a.a.a), countOneBits(4294967295u), abs(~26723u)));
    return true;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global2 = Struct_3(global2.a);
    let var_0 = !vec3<bool>(_wgslsmith_f_op_f32(round(-810f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(937f - global2.a.a.a), -736f), false, true);
    global2 = Struct_3(Struct_2(global2.a.a));
    global0 = array<vec4<u32>, 10>();
    global1 = array<vec2<i32>, 1>();
    return select(select(!select(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, true, false, false), var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false)), vec4<bool>(false, max(arg_0, u_input.d) > (0u ^ u_input.d), var_0.x, any(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true)))), vec4<bool>(!var_0.x, var_0.x, all(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(true, false, true))), !(!(!vec4<bool>(var_0.x, false, false, true))), vec4<bool>(var_0.x, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(289f, global2.a.a.a), vec2<f32>(global2.a.a.a, global2.a.a.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, -1037f))), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.e, -4893i, global2.a.a.c, u_input.c.x)), u_input.b)), select(_wgslsmith_add_u32(arg_0, 4294967295u), arg_0, var_0.x) == ~(~0u), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 1>();
    var var_0 = global2.a.a.b;
    let var_1 = func_1(~select(_wgslsmith_mod_u32(global2.a.a.b, select(7928u, 0u, true)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 46167u), vec2<u32>(7824u, u_input.d)), _wgslsmith_sub_u32(global2.a.a.b, u_input.d)), true));
    var var_2 = global2.a;
    let var_3 = vec2<i32>(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(-21477i ^ global2.a.a.c, -56219i), -_wgslsmith_add_i32(46153i, -1i)), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, 1385i), 2147483647i), 2147483647i));
    var var_4 = _wgslsmith_clamp_u32(u_input.d, 54747u, u_input.d);
    global2 = Struct_3(global2.a);
    var var_5 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a, var_2.a.a, -1283f, -1280f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a.a, -626f, global2.a.a.a, var_2.a.a) + vec4<f32>(-2928f, 777f, 1414f, global2.a.a.a))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.a.a, 1000f, global2.a.a.a, 2481f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.a.a, 1027f, -278f, 225f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-373f, global2.a.a.a, 198f, 187f)))))))), min(-vec4<i32>(_wgslsmith_sub_i32(global2.a.a.c, -8097i), abs(-1i), i32(-1i) * -2147483647i, 1i), select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.c, 12678i, var_2.a.c, u_input.e), u_input.b) ^ vec4<i32>(2147483647i, var_5.x, 12585i, 5900i), u_input.b, vec4<bool>(false, true, all(var_1), 1340f >= global2.a.a.a))), vec2<u32>(_wgslsmith_add_u32(~select(var_2.a.b, 3659u, true), var_2.a.b), ~(~var_2.a.b)));
}

