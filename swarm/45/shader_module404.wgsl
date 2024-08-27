struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 0u, 4294967295u, 1u);

var<private> global1: array<Struct_3, 3>;

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(-563f, 2938u)), Struct_2(Struct_1(-1230f, 37648u)), Struct_2(Struct_1(1058f, 1u)), Struct_2(Struct_1(188f, 8311u)), Struct_2(Struct_1(1000f, 67928u)), Struct_2(Struct_1(-590f, 1u)), Struct_2(Struct_1(1000f, 57216u)), Struct_2(Struct_1(-479f, 0u)), Struct_2(Struct_1(393f, 1u)), Struct_2(Struct_1(-252f, 0u)), Struct_2(Struct_1(636f, 33926u)), Struct_2(Struct_1(1459f, 0u)), Struct_2(Struct_1(842f, 4439u)), Struct_2(Struct_1(470f, 1u)), Struct_2(Struct_1(1192f, 1u)), Struct_2(Struct_1(-689f, 1u)), Struct_2(Struct_1(1000f, 4294967295u)), Struct_2(Struct_1(-874f, 1u)), Struct_2(Struct_1(351f, 77390u)));

var<private> global3: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> i32 {
    global1 = array<Struct_3, 3>();
    let var_0 = Struct_4(2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1338f * _wgslsmith_f_op_f32(select(global3.b, global3.b, arg_1))))), _wgslsmith_f_op_f32(ceil(global3.b))));
    let var_1 = _wgslsmith_add_u32(17959u, _wgslsmith_clamp_u32(global0.x | reverseBits(global0.x), arg_3, select(0u, ~global0.x, true)));
    var var_2 = Struct_3((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b)))) && arg_1, Struct_1(-612f, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(arg_2), u_input.c.zx), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), abs(vec2<u32>(arg_0, 49220u))))), countOneBits(firstLeadingBit(select(countOneBits(global0.zwz), vec3<u32>(4294967295u, u_input.b.x, arg_0), !vec3<bool>(arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, -115f, 742f, -1231f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(var_2.d.xy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x * -783f), _wgslsmith_f_op_f32(floor(global3.b))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.d.ww) - _wgslsmith_f_op_vec2_f32(var_2.d.yw - var_2.d.wz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(165f, var_0.b) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, global3.b))))), vec2<bool>(arg_1, false))), arg_1));
    return _wgslsmith_add_i32(select(-_wgslsmith_dot_vec2_i32(-vec2<i32>(22020i, 1i), u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -1i | var_0.a, _wgslsmith_add_i32(-4935i, 84953i)), ~abs(vec3<i32>(5423i, var_0.a, u_input.d.x))), all(vec4<bool>(arg_1, !var_2.a, true, false))), select(-_wgslsmith_mult_i32(var_0.a, -16094i) ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -58001i, 29364i, global3.a), vec4<i32>(var_0.a, -1516i, global3.a, u_input.d.x)), 1i, u_input.a == firstLeadingBit(_wgslsmith_mult_u32(arg_2.x, 0u))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_4(func_3(_wgslsmith_mod_u32(16451u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 78692u, global0.x), vec3<u32>(1u, u_input.c.x, global0.x))), !any(vec4<bool>(false, false, true, true)), vec2<u32>(~global0.x ^ 52484u, u_input.c.x), global0.x & abs(~global0.x)), global3.b);
    var var_1 = vec4<i32>(-var_0.a, ~_wgslsmith_add_i32(34057i, 12356i), func_3(firstTrailingBit(~40524u) >> (u_input.c.x % 32u), all(vec2<bool>(true, true)) & any(vec3<bool>(false, true, false)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, global0.x), ~global0.yx), ~vec2<u32>(76603u, 48216u)), u_input.a), -var_0.a);
    global1 = array<Struct_3, 3>();
    let var_2 = ~global0.x;
    var_1 = -(~_wgslsmith_mult_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_0.a, var_1.x, 0i), vec4<i32>(var_1.x, arg_0, -6409i, 25549i)), max(vec4<i32>(-1175i, var_1.x, u_input.d.x, var_1.x), vec4<i32>(global3.a, arg_0, var_0.a, var_0.a)), true), ~(~vec4<i32>(-1i, -1i, 24319i, var_1.x))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f), _wgslsmith_f_op_f32(-433f + -244f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(1436f + -343f)))), firstTrailingBit(1u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(447f, arg_0.a, arg_0.a));
    global2 = array<Struct_2, 19>();
    global3 = Struct_4(2147483647i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), _wgslsmith_f_op_f32(-var_0.x))));
    global0 = ~_wgslsmith_clamp_vec4_u32(max(~(~u_input.b), u_input.c), ~(~(~u_input.c)), ~_wgslsmith_sub_vec4_u32(u_input.b ^ u_input.c, _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(60975u, 10325u, 78065u, arg_0.b))));
    let var_1 = func_2(_wgslsmith_mult_i32(min(countOneBits(-25002i), _wgslsmith_mod_i32(-24504i >> (arg_1.b.b % 32u), global3.a)), u_input.d.x));
    return arg_1.b.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> Struct_4 {
    global1 = array<Struct_3, 3>();
    let var_0 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(firstLeadingBit(24517u), arg_1)), vec2<u32>(arg_1, u_input.c.x) << (firstTrailingBit(global0.xx) % vec2<u32>(32u)));
    let var_1 = -409f;
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~(_wgslsmith_clamp_u32(11118u, global0.x, 1u) << (select(global0.x, 12358u, true) % 32u)), 62454u, max(~(~0u), func_4(func_2(-2147483647i), Struct_3(true, Struct_1(-359f, 96990u), u_input.c.zyz, vec4<f32>(-584f, 367f, 1000f, global3.b))))), select(u_input.b.wwz, vec3<u32>(global0.x, 0u, 13450u ^ arg_1), vec3<bool>(true, true, true)) | ~vec3<u32>(~35564u, ~23635u, ~2066u), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c.x, 0u), ~arg_1 >> (_wgslsmith_dot_vec2_u32(global0.wx, global0.yx) % 32u)), _wgslsmith_mod_u32(var_0.x, 1u), 28349u));
    var var_3 = func_2(1i);
    return Struct_4(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = select(~reverseBits(~max(u_input.a, 72229u)), _wgslsmith_mult_u32(arg_0.b, _wgslsmith_sub_u32(~reverseBits(0u), func_2(-1i).b)), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a))), func_1(arg_3.d.yxw, _wgslsmith_mod_u32(var_0, 88623u), arg_3.b.a).b, _wgslsmith_f_op_f32(abs(global3.b)))))));
    var var_2 = -908f;
    var var_3 = -arg_1.a << (abs(_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.c.wzz, vec3<u32>(u_input.c.x, var_0, 1u))))) % 32u);
    global1 = array<Struct_3, 3>();
    return func_2(_wgslsmith_dot_vec3_i32(select(~(~vec3<i32>(1i, 0i, 2147483647i)), -(vec3<i32>(arg_1.a, 0i, -17406i) ^ vec3<i32>(arg_1.a, -1i, global3.a)), select(!vec3<bool>(true, arg_3.a, false), vec3<bool>(true, true, false), true)), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_1.a, 51901i), ~0i), u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = ~23919u | ~(_wgslsmith_mod_u32(abs(1u), u_input.b.x) | _wgslsmith_clamp_u32(firstLeadingBit(u_input.b.x), 1u, _wgslsmith_div_u32(1u, 4294967295u)));
    var var_2 = Struct_1(global3.b, ~(~reverseBits(46196u)));
    var var_3 = global2[_wgslsmith_index_u32(u_input.a, 19u)];
    var_2 = func_5(var_3.a, func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(688f)), -1178f, -1450f))), ~(1u & (u_input.a >> (0u % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -1253f)), func_3(var_1, true, _wgslsmith_clamp_vec2_u32(global0.wx, ~vec2<u32>(var_3.a.b, 0u), _wgslsmith_add_vec2_u32(~u_input.c.wx, global0.wx)), abs(min(u_input.b.x, 1u)) ^ ~(~u_input.a)), Struct_3(true, func_2(func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.a.a, 902f, global3.b), vec3<f32>(730f, -842f, var_3.a.a))), 1u, 1511f).a), _wgslsmith_mod_vec3_u32(u_input.b.yww, global0.ywx), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(exp2(var_2.a)), var_3.a.a, global3.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1174f, 1285f, 1139f, global3.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1105f, var_2.a, 480f, -754f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.c.zy), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(u_input.c.zy, vec2<u32>(countOneBits(28187u), ~4294967295u), all(vec4<bool>(true, true, true, true))) | reverseBits(vec2<u32>(global0.x, 4294967295u)), _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(-var_3.a.a)), -239f);
}

