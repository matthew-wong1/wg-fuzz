struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<i32>(-1i, 7422i, i32(-2147483648)), -33591i, vec2<f32>(-2086f, 247f), 48887i, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(1i, -44395i, 1i), -1814i, vec2<f32>(293f, 154f), -32076i, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(-263i, -1i, 33057i), -75312i, vec2<f32>(879f, -187f), i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(vec3<i32>(0i, -45427i, 0i), -48825i, vec2<f32>(1000f, -880f), 7294i, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(-43469i, -1i, -1i), 28657i, vec2<f32>(-1051f, 822f), 55956i, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(0i, i32(-2147483648), -32972i), -12983i, vec2<f32>(517f, -272f), -11752i, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(2493i, -23524i, -20274i), -33782i, vec2<f32>(-125f, -290f), 0i, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(1i, 19012i, 1i), -23173i, vec2<f32>(1000f, -404f), -28793i, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 1i), -17561i, vec2<f32>(-984f, -264f), -1i, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 3687i), 2147483647i, vec2<f32>(928f, 790f), 2147483647i, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(1i, 1i, 7961i), i32(-2147483648), vec2<f32>(-1269f, 306f), -2766i, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(0i, 50189i, -36478i), -1i, vec2<f32>(1374f, -621f), i32(-2147483648), vec3<bool>(false, false, true)), Struct_1(vec3<i32>(43292i, 76123i, -659i), i32(-2147483648), vec2<f32>(388f, 205f), -11973i, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -21711i), 39283i, vec2<f32>(1273f, 189f), -68116i, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(1i, -7167i, 0i), 31140i, vec2<f32>(107f, 1515f), 1i, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(21178i, 19586i, -35453i), 1i, vec2<f32>(-1000f, 622f), 18568i, vec3<bool>(false, false, false)));

var<private> global1: bool = false;

var<private> global2: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(1000f, -971f, -395f), vec3<f32>(409f, 1000f, -589f), vec3<f32>(851f, -1901f, 494f), vec3<f32>(-262f, 1324f, -2006f), vec3<f32>(172f, -1000f, 216f), vec3<f32>(2738f, -1000f, 266f), vec3<f32>(771f, 1038f, 1304f), vec3<f32>(150f, -1345f, -1467f), vec3<f32>(1000f, -1293f, 144f), vec3<f32>(-155f, -622f, -342f), vec3<f32>(1686f, -1760f, -404f), vec3<f32>(760f, 103f, 1000f), vec3<f32>(932f, 520f, 1293f));

var<private> global3: array<Struct_1, 27>;

var<private> global4: vec3<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec3<u32> {
    global2 = array<vec3<f32>, 13>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-125f - _wgslsmith_f_op_f32(-arg_0))));
    var var_1 = Struct_3(true, reverseBits(~arg_2), u_input.a, _wgslsmith_mult_i32(-31968i, ~(~u_input.a)) != u_input.a);
    var var_2 = Struct_4(Struct_3(select(!var_1.a, true, _wgslsmith_clamp_u32(59267u, 66730u, u_input.b.x) <= arg_2.x), reverseBits(max(firstLeadingBit(arg_2), u_input.b.xxz)), -_wgslsmith_add_i32(reverseBits(var_1.c), countOneBits(17267i)), var_1.a), Struct_2(vec4<bool>(false, false, all(vec4<bool>(true, false, false, var_1.a)), all(!vec3<bool>(true, var_1.a, var_1.d))), 4294967295u, vec2<u32>(var_1.b.x, u_input.b.x)), arg_0);
    return _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_2 << (var_1.b % vec3<u32>(32u)), vec3<u32>(var_1.b.x, 0u, arg_2.x)), vec3<u32>(max(select(1u, arg_2.x, false), abs(4294967295u)) | _wgslsmith_mod_u32(select(u_input.b.x, 36991u, false), max(0u, 4294967295u)), firstLeadingBit(u_input.b.x), 36222u));
}

fn func_2() -> Struct_3 {
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(37170u, u_input.b.x, u_input.b.x ^ u_input.b.x), ~vec3<u32>(25902u, 0u, u_input.b.x)) & ~_wgslsmith_clamp_vec3_u32(reverseBits(u_input.b.xxy), u_input.b.yzz, vec3<u32>(u_input.b.x, 1u, u_input.b.x)), ~(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 1u), ~0u, 14569u >> (u_input.b.x % 32u)) & ((u_input.b.wyx & u_input.b.ywx) & func_3(global4.x, vec4<f32>(global4.x, 1873f, 1627f, global4.x), u_input.b.wxw)))), 13u)];
    global4 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-773f)))), global4.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(681f)), global4.x))), vec3<f32>(-1668f, global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * -2077f) * -863f))));
    var var_0 = Struct_4(Struct_3((max(u_input.b.x, u_input.b.x) >> (_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u)) >= _wgslsmith_add_u32(u_input.b.x, ~u_input.b.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(34987u, 39499u, u_input.b.x), ~firstTrailingBit(vec3<u32>(u_input.b.x, 40226u, 1u))), u_input.a, _wgslsmith_div_i32(5323i & u_input.a, 28164i) > u_input.a), Struct_2(!vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, any(vec4<bool>(true, true, true, false))), 0u, u_input.b.yz), global4.x);
    var_0 = Struct_4(Struct_3(true, u_input.b.yww, var_0.a.c, false), Struct_2(select(vec4<bool>(1u < var_0.b.b, all(vec2<bool>(var_0.a.a, true)), var_0.b.a.x, !var_0.b.a.x), select(vec4<bool>(true, false, false, var_0.b.a.x), var_0.b.a, !var_0.b.a.x), !any(var_0.b.a.zw)), ~(~_wgslsmith_mod_u32(102813u, u_input.b.x)), var_0.a.b.yy), var_0.c);
    global3 = array<Struct_1, 27>();
    return Struct_3(!(!(!var_0.b.a.x) & (_wgslsmith_f_op_f32(select(-579f, -753f, true)) <= _wgslsmith_f_op_f32(f32(-1f) * -630f))), firstTrailingBit(vec3<u32>(~1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.b.b, 1u), 1u, ~var_0.a.b.x), ~u_input.b.x)), -_wgslsmith_mod_i32(countOneBits(2147483647i), -var_0.a.c), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_3 {
    global2 = array<vec3<f32>, 13>();
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(1u, abs(arg_1.b.b) | _wgslsmith_mult_u32(1u, 15085u))), arg_1.b.b), 13u)];
    var var_0 = arg_1.c;
    var var_1 = true;
    global4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-global4.x), global4.x)));
    return func_2();
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> Struct_4 {
    global1 = !arg_1.b.a.x;
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, select(1u, 1u, any(vec4<bool>(false, arg_1.b.a.x, false, true)))), ~vec2<u32>(26887u, 49777u));
    var var_1 = !vec3<bool>(arg_2.e.x && false, arg_2.e.x, arg_2.e.x);
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-14819i, countOneBits(select(0i, arg_1.a.c, true)), -2922i), abs((vec3<i32>(u_input.a, arg_1.a.c, u_input.a) ^ vec3<i32>(arg_2.a.x, arg_0.x, -2147483647i)) & (arg_2.a | vec3<i32>(1i, arg_2.d, arg_0.x)))), arg_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), 1767f)), _wgslsmith_add_i32(1i, -42304i), select(select(!select(vec3<bool>(var_1.x, var_1.x, true), arg_2.e, arg_1.b.a.xwx), vec3<bool>(func_4(vec2<bool>(var_1.x, true), Struct_4(arg_1.a, arg_1.b, arg_1.c)).a, all(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, arg_1.a.d, true, false))), arg_1.b.a.wwz), select(vec3<bool>(var_1.x, !var_1.x, all(arg_1.b.a.wy)), arg_2.e, func_4(!var_1.xy, arg_1).a), !any(!vec3<bool>(true, true, var_1.x))));
    var_1 = !arg_2.e;
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    global2 = array<vec3<f32>, 13>();
    let var_0 = !(!select(arg_0.a, select(select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_0.a.x), vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), arg_0.a.x), arg_0.a, vec4<bool>(false, false, false, arg_0.a.x)), vec4<bool>(!arg_0.a.x, arg_1.a.x, arg_0.a.x, u_input.a <= u_input.a)));
    var var_1 = func_5(~(vec3<i32>(min(22546i, 6813i), _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_mod_i32(1i, u_input.a)) >> (u_input.b.xwx % vec3<u32>(32u))), Struct_4(func_4(vec2<bool>(true, true), Struct_4(func_2(), Struct_2(vec4<bool>(false, true, true, false), 96058u, vec2<u32>(arg_0.c.x, 33752u)), -100f)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1110f)))))), Struct_1(vec3<i32>(func_2().c, _wgslsmith_div_i32(u_input.a, -11394i), 0i) | (vec3<i32>(0i, 0i, u_input.a) >> (u_input.b.wwx % vec3<u32>(32u))), 58969i, _wgslsmith_f_op_vec2_f32(global4.zz + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, global4.x))), vec2<f32>(1000f, arg_2.x))), _wgslsmith_add_i32(-(~u_input.a), countOneBits(firstTrailingBit(2147483647i))), select(select(!vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), !var_0.yww, !vec3<bool>(false, var_0.x, arg_1.a.x)), vec3<bool>(true, arg_0.a.x, true), vec3<bool>(arg_1.a.x & arg_1.a.x, var_0.x, !arg_1.a.x))), 20877u);
    global1 = !var_1.a.d;
    global0 = array<Struct_1, 16>();
    return _wgslsmith_f_op_f32(arg_2.x * arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = vec2<u32>(0u, firstTrailingBit(1u));
    var var_1 = vec4<bool>(!(!any(vec2<bool>(false, false)) && (_wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(true, false, true, false), 14185u, u_input.b.xw), Struct_2(vec4<bool>(false, true, true, false), 4294967295u, u_input.b.xz), vec4<f32>(global4.x, global4.x, global4.x, global4.x))) > _wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(false, true, true, true), 49830u, u_input.b.wz), Struct_2(vec4<bool>(false, false, true, true), var_0.x, u_input.b.ww), vec4<f32>(875f, global4.x, global4.x, -642f))))), true, _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1130f)))) < _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-576f - global4.x))), var_0.x == u_input.b.x);
    global0 = array<Struct_1, 16>();
    let var_2 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a & u_input.a, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(~u_input.a, ~2147483647i), -vec2<i32>(u_input.a, u_input.a)));
    var var_3 = 22259i;
    let var_4 = var_0.x;
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.b, global4.x, u_input.b.yz);
}

