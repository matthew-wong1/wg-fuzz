struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: array<vec3<f32>, 3>;

var<private> global2: vec4<i32> = vec4<i32>(-14281i, 34374i, -1i, 1i);

var<private> global3: Struct_5;

var<private> global4: array<vec4<f32>, 25>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = vec4<u32>(arg_2.x, arg_2.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(53695u), arg_2.x), countOneBits(~arg_0.b.x)), _wgslsmith_clamp_u32(~0u | ~arg_2.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(54159u, arg_0.c.a.x, 215u, arg_2.x), vec4<u32>(arg_1, 56081u, 4294967295u, 72928u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_2.x, 59451u, arg_0.c.a.x), arg_0.b)), arg_0.b.x)), select(~_wgslsmith_mult_u32(select(58834u, 4294967295u, true), _wgslsmith_sub_u32(arg_0.c.a.x, 11u)), ~0u, true));
    var_0 = ~firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(2940u, arg_0.c.a.x, arg_2.x, 0u), arg_0.b));
    global1 = array<vec3<f32>, 3>();
    var var_1 = Struct_4(!select(arg_0.a, select(select(vec3<bool>(global3.d.c, true, global3.a), vec3<bool>(false, true, true), global3.d.c), arg_0.a, !global3.c), vec3<bool>(all(vec4<bool>(global3.c, global3.a, global3.a, false)), !global3.d.c, 4294967295u <= arg_0.c.a.x)), ~vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.c.a.x, global3.b.a.x)), global3.b.a), var_0.x, 28014u), Struct_1(~vec2<u32>(1u, ~arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.b.x))), global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e - global3.d.b.x)));
    var var_2 = var_1.a.yy;
    return countOneBits(~_wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(global3.d.a, global2.x, -36709i, u_input.a.x)), reverseBits(vec4<i32>(0i, -845i, global3.d.a, arg_0.d.a)) << (arg_0.b % vec4<u32>(32u))));
}

fn func_2() -> Struct_5 {
    let var_0 = global3.d;
    let var_1 = vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(1222f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f * _wgslsmith_f_op_f32(min(global3.d.b.x, global3.b.b))) - _wgslsmith_f_op_f32(floor(var_0.b.x)))), var_0.b.x);
    let var_2 = Struct_4(vec3<bool>(false, var_0.c, min(44563i, u_input.a.x) != _wgslsmith_dot_vec4_i32(func_3(Struct_4(vec3<bool>(false, false, var_0.c), vec4<u32>(global3.b.a.x, global3.b.a.x, 109887u, 0u), global3.b, global3.d, 302f), global3.b.a.x, vec3<u32>(global3.b.a.x, global3.b.a.x, 4294967295u), vec3<f32>(global3.b.b, -1825f, -1774f)), vec4<i32>(-2147483647i, 0i, u_input.a.x, 2147483647i))), min(vec4<u32>(~0u, ~abs(59227u), (72027u << (1u % 32u)) ^ ~global3.b.a.x, _wgslsmith_clamp_u32(~global3.b.a.x, ~4294967295u, 1u)), vec4<u32>(_wgslsmith_div_u32(~88006u, 53715u), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 21876u), ~71767u), ~7154u, global3.b.a.x)), global3.b, Struct_2(_wgslsmith_clamp_i32(-1i, -2147483647i, _wgslsmith_add_i32(-1i, ~global3.e)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -1000f, _wgslsmith_f_op_f32(573f * global3.d.b.x), _wgslsmith_f_op_f32(-global3.b.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(global4[_wgslsmith_index_u32(global3.b.a.x, 25u)])))), false)), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1240f), var_0.b.x, true || all(!vec4<bool>(false, false, global3.c, global3.d.c)))));
    let var_3 = global3.e;
    let var_4 = _wgslsmith_mult_u32(~(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(var_2.b.x, 0u)) | global3.b.a.x), global3.b.a.x | 59392u);
    return Struct_5(var_0.c, global3.b, true, global3.d, min(abs(5761i), -37909i));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: f32) -> Struct_5 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.d.b.x, arg_1.d.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) + arg_1.e.b.x)), _wgslsmith_f_op_f32(-arg_0.b.b), 456f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2)))))));
    global2 = vec4<i32>(arg_1.e.a, -1i, ~0i, -2147483647i);
    let var_1 = !(!select(select(vec3<bool>(arg_1.d.c, arg_1.a.c, arg_0.a), !vec3<bool>(true, true, global3.d.c), vec3<bool>(arg_0.c, global3.a, true)), !(!vec3<bool>(arg_1.d.c, true, global3.d.c)), select(!vec3<bool>(arg_0.c, true, false), select(vec3<bool>(arg_1.d.c, false, true), vec3<bool>(arg_1.a.c, global3.c, arg_1.e.c), global3.c), vec3<bool>(global3.a, arg_0.a, global3.d.c))));
    let var_2 = select(select(select(!vec4<bool>(arg_1.a.c, arg_0.a, false, arg_0.a), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.d.c, true, var_1.x, true), true), vec4<bool>(all(vec3<bool>(false, arg_1.e.c, false)), u_input.a.x > 0i, arg_1.c.b != 1464f, false)), select(!select(vec4<bool>(true, false, global3.c, true), vec4<bool>(arg_1.a.c, arg_1.d.c, true, arg_0.d.c), true), !(!vec4<bool>(arg_0.d.c, true, var_1.x, arg_1.e.c)), !vec4<bool>(arg_0.a, var_1.x, arg_0.c, true)), func_2().c), vec4<bool>(true, !arg_1.e.c, false, any(var_1.zy)), global3.a);
    let var_3 = 41597u;
    return Struct_5(global3.a, Struct_1(arg_0.b.a & arg_0.b.a, arg_1.c.b), !var_1.x, Struct_2(_wgslsmith_add_i32(global2.x, min(_wgslsmith_clamp_i32(5038i, -75921i, 1i), arg_1.a.a)), func_2().d.b, u_input.a.x <= -1i), -abs(i32(-1i) * -1i));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_5 {
    let var_0 = vec3<u32>(arg_3.a.x, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(arg_0, arg_0) & vec2<u32>(arg_0, 4294967295u)), ~global3.b.a), 1u);
    global3 = func_4(func_2(), Struct_3(global3.d, ~vec4<u32>(reverseBits(arg_3.a.x), firstLeadingBit(arg_3.a.x), _wgslsmith_mod_u32(arg_0, arg_3.a.x), ~4146u), func_2().b, global3.d, func_2().d), _wgslsmith_f_op_f32(max(-1338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1230f - _wgslsmith_f_op_f32(global3.d.b.x + arg_3.b))))));
    let var_1 = Struct_4(arg_1.xzy, ~vec4<u32>(4294967295u, arg_0, reverseBits(~arg_0), var_0.x), Struct_1(~(~vec2<u32>(55275u, arg_3.a.x)), 1000f), global3.d, 1000f);
    var var_2 = vec3<bool>(1i < (_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.yz)) & ((global2.x >> (arg_0 % 32u)) | -11462i)), arg_1.x, global3.a);
    let var_3 = max(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~var_1.b.wzw, vec3<u32>(global3.b.a.x, var_0.x, global3.b.a.x)), vec3<u32>(countOneBits(~28548u), global3.b.a.x, _wgslsmith_div_u32(arg_3.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3.b.a.x), var_0.zy)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.d;
    global0 = array<vec3<i32>, 10>();
    global3 = func_1(_wgslsmith_add_u32(abs(global3.b.a.x), 81447u ^ ~(global3.b.a.x & 1u)), vec4<bool>((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, -2147483647i), vec3<i32>(-82536i, -17853i, global2.x)) << (1u % 32u)) < _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xz, vec2<i32>(-2147483647i, global2.x)), firstTrailingBit(vec2<i32>(-1i, global3.d.a))), all(vec2<bool>(var_0.b.x < var_0.b.x, 35307i < global3.e)), !((global2.x != -1i) | (var_0.c || true)), true), ~(-29089i), global3.b);
    let var_1 = func_4(Struct_5((global3.c || func_4(Struct_5(true, global3.b, true, Struct_2(global3.e, var_0.b, var_0.c), global2.x), Struct_3(global3.d, vec4<u32>(global3.b.a.x, global3.b.a.x, global3.b.a.x, global3.b.a.x), Struct_1(vec2<u32>(global3.b.a.x, global3.b.a.x), -1870f), global3.d, global3.d), var_0.b.x).c) != true, func_1(~select(global3.b.a.x, 4294967295u, false), vec4<bool>(var_0.c, false, false, true), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, var_0.a, -20199i, -27415i), vec4<i32>(-1739i, var_0.a, u_input.a.x, u_input.a.x)), Struct_1(min(global3.b.a, global3.b.a), _wgslsmith_f_op_f32(step(var_0.b.x, 840f)))).b, true, func_2().d, var_0.a), Struct_3(Struct_2(global3.d.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))), 23100u > global3.b.a.x), (~vec4<u32>(global3.b.a.x, 1u, global3.b.a.x, 12365u) ^ ~vec4<u32>(global3.b.a.x, global3.b.a.x, 1u, 0u)) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(55011u, 14282u, 1u), vec3<u32>(global3.b.a.x, global3.b.a.x, 97347u)), global3.b.a.x, global3.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(8221u, 0u, 1u, 0u), vec4<u32>(0u, 1u, global3.b.a.x, global3.b.a.x))) % vec4<u32>(32u)), global3.b, global3.d, Struct_2(global3.d.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.d.b.x, var_0.b.x, var_0.b.x, -434f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.b.x, global3.d.b.x, var_0.b.x, -1091f) * vec4<f32>(var_0.b.x, -1395f, -481f, 194f))), global3.c)), func_2().b.b);
    var var_2 = !select(vec4<bool>(true, var_1.d.c, var_1.d.c, true), select(vec4<bool>(false, global3.a, false, true), vec4<bool>(var_1.d.c, u_input.a.x == global2.x, global2.x <= u_input.a.x, any(vec4<bool>(var_1.c, var_0.c, true, false))), vec4<bool>(false, !global3.d.c, 0u >= global3.b.a.x, var_0.c && true)), !any(!vec3<bool>(global3.a, var_1.a, false)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_4(Struct_5(true, var_1.b, var_1.d.c, global3.d, 0i), Struct_3(Struct_2(u_input.a.x, vec4<f32>(-1738f, var_0.b.x, -1085f, global3.b.b), var_2.x), vec4<u32>(var_1.b.a.x, var_1.b.a.x, 4294967295u, global3.b.a.x), Struct_1(vec2<u32>(var_1.b.a.x, 32366u), 1090f), Struct_2(1i, global4[_wgslsmith_index_u32(global3.b.a.x, 25u)], false), Struct_2(global2.x, var_1.d.b, false)), _wgslsmith_f_op_f32(global3.d.b.x + 271f)), Struct_3(Struct_2(var_1.e, vec4<f32>(111f, global3.d.b.x, global3.b.b, -292f), var_0.c), ~vec4<u32>(44154u, 1u, 1u, 4294967295u), Struct_1(vec2<u32>(11317u, 87495u), 309f), func_4(var_1, Struct_3(Struct_2(global3.e, vec4<f32>(var_0.b.x, -1305f, var_1.b.b, var_1.b.b), true), vec4<u32>(4294967295u, 4294967295u, global3.b.a.x, var_1.b.a.x), global3.b, Struct_2(var_1.d.a, vec4<f32>(global3.d.b.x, global3.b.b, 950f, global3.b.b), true), global3.d), var_0.b.x).d, func_2().d), -1555f).b.a.x ^ 1u, var_1.b.a.x, ~var_1.b.a, -562f, ~_wgslsmith_dot_vec4_i32(~(~vec4<i32>(global2.x, 22259i, -2147483647i, -7880i)), vec4<i32>(1i, _wgslsmith_mult_i32(u_input.a.x, var_1.d.a), var_0.a << (0u % 32u), 45035i)));
}

