struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1000f, Struct_1(30546u), Struct_1(1u));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(0u), Struct_1(13714u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(47431u), Struct_1(20669u), Struct_1(71485u), Struct_1(25554u), Struct_1(34749u), Struct_1(5049u), Struct_1(4294967295u), Struct_1(0u));

var<private> global2: Struct_2 = Struct_2(Struct_1(1u), Struct_1(27861u), vec4<u32>(0u, 1u, 10140u, 1u), 946f);

var<private> global3: array<f32, 15>;

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> f32 {
    var var_0 = false;
    global2 = Struct_2(Struct_1(arg_1), Struct_1(~(~global0.b.a)), countOneBits(vec4<u32>(~44448u, ~(~arg_1), 19666u, ~_wgslsmith_dot_vec2_u32(global2.c.xw, vec2<u32>(global0.b.a, 32441u)))), 567f);
    var_0 = !arg_0;
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1733f))), Struct_1(reverseBits(firstTrailingBit(arg_1))), global2.b);
    var var_1 = Struct_3(global0.a, global0.b, global2.b);
    return -182f;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_0 = Struct_3(global0.a, Struct_1(_wgslsmith_clamp_u32(~u_input.b.x, global0.c.a, global0.b.a)), Struct_1(3611u));
    return countOneBits(abs(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-14604i, 0i, 2147483647i)), -vec3<i32>(1i, -1i, 29615i))) & _wgslsmith_add_vec3_i32(-max(vec3<i32>(49962i, 1i, -16192i), vec3<i32>(20954i, -2147483647i, 2147483647i)), vec3<i32>(~(-2147483647i), 1i, -1i)));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = select(_wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, 75267i, arg_1), ~vec3<i32>(arg_1, arg_1, 0i)), func_4(vec4<bool>(false, global4.x, any(vec2<bool>(true, global4.x)), !global4.x), 1437f, Struct_2(global1[_wgslsmith_index_u32(1u, 13u)], Struct_1(0u), vec4<u32>(arg_0.c.a, global0.c.a, 21649u, 1u) & vec4<u32>(59659u, global2.b.a, global2.a.a, global0.c.a), _wgslsmith_f_op_f32(func_3(true, 4294967295u, vec4<f32>(global3[_wgslsmith_index_u32(26324u, 15u)], arg_0.a, global2.d, 725f))))), -firstLeadingBit(abs(vec3<i32>(-2147483647i, arg_1, -8991i)))), -vec3<i32>(arg_1, 16460i, ~0i), global4.x);
    var var_1 = global0.a;
    var var_2 = Struct_3(global3[_wgslsmith_index_u32(arg_0.c.a, 15u)], global2.a, Struct_1(u_input.b.x));
    var_1 = 299f;
    let var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(0i, -36729i, _wgslsmith_dot_vec3_i32(vec3<i32>(-4907i, arg_1, arg_1), vec3<i32>(var_0.x, arg_1, arg_1)))), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, 15760i, var_0.x), vec3<i32>(var_0.x, 72227i, var_0.x)))), vec3<i32>(-1919i, _wgslsmith_mod_i32(var_0.x, arg_1), 1i), -vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 33458i, 2147483647i), vec3<i32>(-2147483647i, var_0.x, var_0.x)), arg_1, arg_1));
    return _wgslsmith_f_op_f32(f32(-1f) * -684f);
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    global3 = array<f32, 15>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(286f, Struct_1(global2.b.a), Struct_1(3579u)), -1i)), _wgslsmith_div_f32(1000f, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-463f, arg_0)), vec2<bool>(true, global4.x))));
    var var_1 = var_0.x;
    let var_2 = false;
    var var_3 = Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.a, 8181u), ~vec2<u32>(1u, 77816u))), global0.b, global2.c, -1306f);
    return Struct_2(Struct_1(~1u), Struct_1(global0.c.a), var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_3.c.x, 15u)], -2114f) - var_0.x), -139f, global4.x)) + global3[_wgslsmith_index_u32(global2.a.a << (_wgslsmith_mod_u32(1u, 48696u) % 32u), 15u)]));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d))), _wgslsmith_f_op_f32(-105f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(global0.a - -191f)), _wgslsmith_f_op_f32(-133f - _wgslsmith_f_op_f32(trunc(global2.d))))), global2.d);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_f32(-2599f, global2.d), _wgslsmith_f_op_f32(func_2(Struct_3(-1447f, global0.c, Struct_1(46526u)), -32885i))).d + -119f), _wgslsmith_f_op_f32(abs(-363f))));
    global3 = array<f32, 15>();
    global4 = vec3<bool>(global4.x, any(vec2<bool>(any(vec3<bool>(global4.x, false, false)), true)) & (any(vec2<bool>(true, true)) | (true && (0u > u_input.b.x))), !global4.x);
    let var_2 = arg_0;
    return global2.a;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = func_1(-962f, _wgslsmith_f_op_f32(floor(global2.d))).b;
    var var_1 = arg_0;
    var var_2 = -1441i;
    global0 = arg_0;
    global2 = arg_1;
    return func_1(global3[_wgslsmith_index_u32(~var_0.a, 15u)], _wgslsmith_f_op_f32(ceil(global2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    global2 = func_6(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.a, 15u)], 1318f)) - _wgslsmith_f_op_f32(global2.d * global3[_wgslsmith_index_u32(u_input.a, 15u)])) - 1018f), Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(global2.c.x, u_input.a), 7455u)), global2.a), Struct_2(func_5(func_1(_wgslsmith_f_op_f32(-280f - 461f), _wgslsmith_f_op_f32(f32(-1f) * -847f)), select(min(vec3<i32>(1i, 2147483647i, 117764i), vec3<i32>(0i, -50594i, 1i)), -vec3<i32>(0i, 15429i, -3203i), select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(true, true, false), global4.x))), Struct_1(_wgslsmith_dot_vec3_u32(firstLeadingBit(global2.c.wzw), select(vec3<u32>(38245u, u_input.a, 14792u), vec3<u32>(26858u, 0u, 38665u), vec3<bool>(true, false, true)))), select(abs(countOneBits(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.b.x))), global2.c, vec4<bool>(global4.x, 14004u == u_input.b.x, global4.x, all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(func_2(Struct_3(_wgslsmith_f_op_f32(-global0.a), global0.c, global1[_wgslsmith_index_u32(~global0.b.a, 13u)]), 18190i))), global2.c);
    var var_0 = !all(select(global4.yz, select(!vec2<bool>(global4.x, global4.x), select(global4.yx, global4.xy, global4.xz), vec2<bool>(global4.x, global4.x)), vec2<bool>(true, true)));
    let var_1 = global4.x && any(!vec4<bool>(global4.x && false, !global4.x, any(vec2<bool>(true, false)), true));
    global4 = !(!select(select(vec3<bool>(false, var_1, true), !vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, false)), vec3<bool>(all(vec4<bool>(var_1, true, true, var_1)), false, all(vec4<bool>(var_1, var_1, true, true))), false));
    let var_2 = vec2<bool>(global4.x, !var_1);
    let var_3 = _wgslsmith_clamp_i32(1i & ((1i << (0u % 32u)) ^ select(_wgslsmith_dot_vec4_i32(vec4<i32>(-51535i, -1i, 5067i, 2147483647i), vec4<i32>(2147483647i, -1i, 1i, 1i)), 0i, false)), reverseBits(~0i), ~1i);
    var var_4 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global0.b.a, reverseBits(u_input.b.x), global2.b.a), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1118f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.d, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1655f, 930f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(236f, -227f) * vec2<f32>(-2539f, global0.a)) - vec2<f32>(-579f, -248f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(548f, global3[_wgslsmith_index_u32(u_input.a, 15u)], -103f), vec3<f32>(global0.a, var_4.x, 2439f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, global0.a, global2.d)))), vec3<f32>(1133f, func_6(Struct_3(global0.a, global2.a, global0.c), Struct_2(global1[_wgslsmith_index_u32(18436u, 13u)], Struct_1(u_input.b.x), vec4<u32>(global2.c.x, 94760u, global0.b.a, 1u), global0.a), vec4<u32>(u_input.b.x, 24394u, 1u, u_input.b.x)).d, _wgslsmith_f_op_f32(step(109f, global0.a))), select(vec3<bool>(true, true, true), !vec3<bool>(false, global4.x, global4.x), select(vec3<bool>(false, true, false), vec3<bool>(global4.x, true, global4.x), var_1)))))), vec2<i32>(-1i) * -vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3, -2147483647i, 5645i, var_3), vec4<i32>(0i, var_3, -12193i, var_3))), -(~(~2147483647i)), 0u, -54732i);
}

