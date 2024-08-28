struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1000f, -696f, -1874f, 439f), vec2<bool>(true, true), 0u, 2147483647i, vec2<i32>(-32087i, -1i));

var<private> global1: array<f32, 3> = array<f32, 3>(-1106f, -926f, -436f);

var<private> global2: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 54823u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = max(1u, min(~(~(86270u << (0u % 32u))), ~(~(~u_input.c))));
    global2 = array<vec2<u32>, 4>();
    let var_1 = arg_2.c;
    let var_2 = ~(~(~var_1));
    let var_3 = arg_2;
    return arg_1.d;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !(!(~(~arg_3.c) >= 1u));
    var var_1 = arg_2.yzx;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(62330u, 3u)], arg_3.a.x) + arg_0.a.x));
    var var_3 = func_3(vec3<bool>(false, true, true), arg_0, arg_3);
    global1 = array<f32, 3>();
    return Struct_1(arg_3.a, !vec2<bool>(arg_1, false), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(arg_3.c, arg_0.c), arg_3.c), -arg_3.e.x, abs(vec2<i32>(~_wgslsmith_mod_i32(-1i, 2147483647i), reverseBits(_wgslsmith_add_i32(u_input.a, 1i)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-23671i, i32(-1i) * -15965i, 1192i), firstLeadingBit(~vec3<i32>(global0.d, 34320i, 13773i)) | vec3<i32>(_wgslsmith_mod_i32(-2147483647i, 34053i), u_input.e << (40046u % 32u), 1i)));
    let var_1 = countOneBits(vec3<u32>(1u, arg_3.c, ~4294967295u) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, arg_0.c, u_input.b), vec4<u32>(arg_0.c, arg_0.c, global0.c, u_input.c)), _wgslsmith_div_u32(0u, arg_3.c), u_input.b & 4294967295u) % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(vec3<u32>(~(~arg_3.c), min(~arg_3.c, ~u_input.c), 119014u), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(61918u, 46808u, global0.c), vec3<u32>(1u, 27909u, global0.c)) | reverseBits(vec3<u32>(arg_0.c, 1u, global0.c))));
    global0 = arg_3;
    global1 = array<f32, 3>();
    global0 = arg_0;
    return ~global0.e;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), !(!select(!vec2<bool>(false, global0.b.x), global0.b, vec2<bool>(global0.b.x, global0.b.x))), 36084u, global0.e.x, reverseBits(select(func_4(func_2(Struct_1(vec4<f32>(global0.a.x, 737f, 1723f, global1[_wgslsmith_index_u32(global0.c, 3u)]), global0.b, global0.c, u_input.a, vec2<i32>(u_input.d, u_input.a)), global0.b.x, vec4<bool>(true, true, false, global0.b.x), Struct_1(global0.a, global0.b, 772u, -15128i, vec2<i32>(2147483647i, u_input.d))), global0.a.yww, func_2(Struct_1(global0.a, vec2<bool>(global0.b.x, true), global0.c, -419i, global0.e), global0.b.x, vec4<bool>(false, global0.b.x, false, global0.b.x), Struct_1(global0.a, vec2<bool>(true, global0.b.x), u_input.c, u_input.d, global0.e)).a.x, func_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(1087u, 3u)], -513f, -635f, -698f), vec2<bool>(global0.b.x, false), arg_0, 63295i, global0.e), true, vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), Struct_1(vec4<f32>(-434f, -652f, -1086f, global1[_wgslsmith_index_u32(4294967295u, 3u)]), global0.b, 1u, u_input.d, global0.e))), ~_wgslsmith_sub_vec2_i32(global0.e, global0.e), true)));
    global2 = array<vec2<u32>, 4>();
    global1 = array<f32, 3>();
    return func_2(Struct_1(global0.a, vec2<bool>(false, true), select(_wgslsmith_div_u32(25747u, 0u ^ u_input.c), _wgslsmith_add_u32(global0.c, u_input.c & arg_0), global0.b.x), u_input.a, vec2<i32>(_wgslsmith_add_i32(~global0.d, u_input.a), _wgslsmith_div_i32(~u_input.d, u_input.e))), global0.d >= func_2(func_2(Struct_1(global0.a, vec2<bool>(global0.b.x, true), 1u, global0.d, vec2<i32>(global0.e.x, -2147483647i)), all(vec3<bool>(true, true, true)), vec4<bool>(false, true, false, global0.b.x), Struct_1(global0.a, global0.b, 4294967295u, u_input.a, global0.e)), select(false, true, global0.b.x), select(vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), select(vec4<bool>(true, global0.b.x, true, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, global0.b.x, false)), func_2(func_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(global0.c, 3u)], global1[_wgslsmith_index_u32(74899u, 3u)], global0.a.x, 265f), vec2<bool>(global0.b.x, global0.b.x), global0.c, -15489i, global0.e), global0.b.x, vec4<bool>(false, global0.b.x, false, global0.b.x), Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(13848u, 3u)], global0.a.x, -659f, -358f), vec2<bool>(true, false), arg_0, global0.d, global0.e)), true, vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x), func_2(Struct_1(global0.a, global0.b, arg_0, u_input.a, global0.e), true, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), Struct_1(vec4<f32>(-1000f, global0.a.x, -1133f, global1[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(false, true), u_input.c, u_input.d, global0.e)))).e.x, !vec4<bool>(select(global0.b.x, 1773i == global0.d, true), any(select(vec4<bool>(global0.b.x, true, false, global0.b.x), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, global0.b.x))), global0.b.x, true), Struct_1(global0.a, vec2<bool>(global0.b.x, all(vec2<bool>(false, false))), u_input.c, global0.e.x, -vec2<i32>(-10699i, u_input.d)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    let var_0 = select(vec3<bool>(all(!vec4<bool>(true, true, arg_0.b.x, false)), global0.c != _wgslsmith_sub_u32(u_input.b, ~1u), false), vec3<bool>(!all(vec4<bool>(global0.b.x, false, true, false)) & true, false | arg_0.b.x, global0.b.x), !any(select(select(vec4<bool>(true, global0.b.x, global0.b.x, true), vec4<bool>(true, true, global0.b.x, arg_0.b.x), vec4<bool>(global0.b.x, arg_0.b.x, global0.b.x, false)), vec4<bool>(arg_0.b.x, global0.b.x, arg_0.b.x, true), !vec4<bool>(true, arg_0.b.x, true, arg_0.b.x))));
    global1 = array<f32, 3>();
    let var_1 = func_1(u_input.b).a.x >= arg_0.a.x;
    return Struct_1(vec4<f32>(-691f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1033f * func_2(arg_0, true, vec4<bool>(arg_0.b.x, var_0.x, var_1, false), Struct_1(vec4<f32>(-457f, -807f, arg_0.a.x, 336f), arg_0.b, global0.c, global0.d, global0.e)).a.x) - global0.a.x)), !var_0.yz, countOneBits(~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(0u, 4u)], vec2<u32>(arg_0.c, 0u)))), global0.e.x, ~(~_wgslsmith_mod_vec2_i32(firstLeadingBit(arg_0.e), vec2<i32>(65700i, -2147483647i))));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: f32) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = Struct_1(var_0.a, !func_5(arg_1).b, arg_1.c, u_input.d, (arg_2 | ~vec2<i32>(-2147483647i, var_0.e.x)) << ((arg_0 & global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.c, arg_0.x), 4u)]) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-func_5(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a), vec2<bool>(true, arg_1.b.x | arg_1.b.x), ~arg_0.x ^ ~arg_1.c, arg_1.d, func_1(~38730u).e)).a.x);
    global2 = array<vec2<u32>, 4>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.yz - arg_1.a.wx)));
    return !(!vec2<bool>(arg_1.b.x, func_1(global0.c >> (7571u % 32u)).b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 43487u;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 3u)], -400f, global0.a.x, -255f))))), global0.a, any(vec4<bool>(u_input.d != u_input.d, 1i < u_input.d, any(vec2<bool>(global0.b.x, global0.b.x)), any(global0.b))))), func_6(_wgslsmith_clamp_vec2_u32(min(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0, 94943u), 4u)], select(vec2<u32>(4294967295u, 0u), vec2<u32>(39952u, 25227u), true)), global2[_wgslsmith_index_u32(u_input.b, 4u)], global2[_wgslsmith_index_u32(~u_input.b >> (var_0 % 32u), 4u)]), func_5(func_1(11793u)), -global0.e, _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2495f, -772f))))), ~(~global0.c), _wgslsmith_dot_vec2_i32(-(-global0.e << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.c), global2[_wgslsmith_index_u32(global0.c, 4u)], vec2<u32>(var_0, u_input.c)) % vec2<u32>(32u))), vec2<i32>(-2147483647i, ~(~u_input.d))), ~abs(select(global0.e, countOneBits(vec2<i32>(global0.e.x, global0.d)), 38855u <= u_input.b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-864f, _wgslsmith_f_op_f32(1345f + -1273f))), global0.a.x));
    global1 = array<f32, 3>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1058f, -1457f, global1[_wgslsmith_index_u32(19237u, 3u)], 1206f)) + global0.a), _wgslsmith_f_op_vec4_f32(global0.a + global0.a), select(select(select(vec4<bool>(false, global0.b.x, global0.b.x, false), vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), !vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(true, global0.b.x, false, global0.b.x)), !vec4<bool>(false, global0.b.x, global0.b.x, true), !(!vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x))))), !func_2(func_5(Struct_1(global0.a, global0.b, 7313u, global0.e.x, global0.e)), global0.b.x, vec4<bool>(global0.b.x, select(false, global0.b.x, true), true, func_5(Struct_1(vec4<f32>(var_1.x, 657f, var_1.x, global1[_wgslsmith_index_u32(global0.c, 3u)]), global0.b, var_0, -31631i, global0.e)).b.x), func_5(func_1(var_0))).b, firstLeadingBit(4294967295u), countOneBits(~abs(-45346i)), vec2<i32>(-30352i, _wgslsmith_mod_i32(2147483647i, func_5(Struct_1(global0.a, vec2<bool>(global0.b.x, true), 0u, global0.e.x, vec2<i32>(17470i, global0.d))).d)) << (~abs(_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(62918u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(44072u, 4u)])) % vec2<u32>(32u)));
    global2 = array<vec2<u32>, 4>();
    let var_2 = !(!any(!(!vec3<bool>(global0.b.x, global0.b.x, false))));
    let var_3 = Struct_1(global0.a, vec2<bool>(false, func_1(func_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(0u, 3u)], -448f, var_1.x, -276f), global0.b, 27020u, u_input.e, vec2<i32>(global0.e.x, 63911i)), true, vec4<bool>(var_2, global0.b.x, global0.b.x, true), func_5(Struct_1(vec4<f32>(-280f, global0.a.x, -372f, global0.a.x), vec2<bool>(true, var_2), 17824u, 5754i, vec2<i32>(2147483647i, u_input.a)))).c).b.x), ~global0.c, u_input.d, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.e, -global0.e), ~_wgslsmith_sub_i32(-1i, global0.d)), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global0.e.x, global0.d), vec3<i32>(-60138i, -23530i, u_input.a)), abs(firstTrailingBit(vec3<i32>(-1i, global0.d, -74295i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.a.x)) * func_1(global0.c).a.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.a.x, 1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-253f * global0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(-1000f + 730f)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x)))))), max(_wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(var_0, 4294967295u, var_3.c)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.c, 19384u, 1u), vec3<u32>(var_0, 1u, 1u)), vec3<u32>(var_3.c, 4294967295u, u_input.c), !var_3.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, _wgslsmith_mult_u32(15160u, 56411u), var_3.c >> (1u % 32u)), vec3<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 61787u, 23251u, 0u), vec4<u32>(14558u, u_input.b, u_input.b, u_input.b)), 0u))));
}

