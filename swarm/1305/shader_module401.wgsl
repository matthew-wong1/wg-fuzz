struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<i32, 6>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<bool>, 13>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(55670u, 6u)], abs(-3107i), ~global1[_wgslsmith_index_u32(select(~u_input.d, _wgslsmith_sub_u32(global2.a.x, 0u), select(false, false, false)), 6u)], -25854i), vec4<i32>(u_input.b, ~(~u_input.b), _wgslsmith_div_i32(u_input.b, countOneBits(-global2.b)), ~reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(9588u, 83556u), 6u)])));
    var var_1 = global0[_wgslsmith_index_u32(global2.a.x, 17u)];
    var var_2 = global0[_wgslsmith_index_u32(~(var_1.a.x >> (1u % 32u)), 17u)];
    global2 = Struct_1(_wgslsmith_add_vec2_u32(min(_wgslsmith_mult_vec2_u32(var_2.a, vec2<u32>(59439u, 4294967295u)), ~global2.a), global2.a), -reverseBits(reverseBits(52824i)), -555f);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2150f), -781f, 1398f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) + _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_f32(737f * _wgslsmith_f_op_f32(floor(1876f))))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global3 = array<vec4<bool>, 13>();
    let var_0 = _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_div_f32(532f, -877f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-115f, _wgslsmith_f_op_f32(floor(global2.c)), _wgslsmith_f_op_f32(-1564f + _wgslsmith_f_op_f32(var_0 * -721f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-283f, arg_0.c, global2.c), vec3<f32>(global2.c, -1587f, 737f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(435f, -1313f, -405f), vec3<f32>(687f, -300f, global2.c), true))))))));
    var var_2 = 50561u;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))));
    return _wgslsmith_dot_vec3_u32(~firstTrailingBit(~vec3<u32>(35667u, u_input.d, 76462u)) & vec3<u32>(~49743u & ~arg_0.a.x, firstLeadingBit(global2.a.x), 1u), select(max(~(~vec3<u32>(86u, arg_0.a.x, global2.a.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 16758u, u_input.d), abs(vec3<u32>(11362u, u_input.d, global2.a.x)))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.d, global2.a.x, u_input.d)), ~(vec3<u32>(1u, u_input.d, arg_0.a.x) & vec3<u32>(global2.a.x, 1u, u_input.d)), ~(~vec3<u32>(u_input.d, 16547u, 1u))), vec3<bool>(true, true, true)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> i32 {
    let var_0 = ~_wgslsmith_clamp_u32(4294967295u, u_input.d << (~29981u % 32u), 18744u);
    global3 = array<vec4<bool>, 13>();
    var var_1 = select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), 40097u <= (u_input.d | u_input.d)), true), vec2<bool>(any(global3[_wgslsmith_index_u32(global2.a.x, 13u)]), true), vec2<bool>(any(vec4<bool>(any(vec2<bool>(true, false)), u_input.a.x < 3638i, any(vec4<bool>(true, true, true, false)), 2147483647i == global2.b)), !(true && all(global3[_wgslsmith_index_u32(18542u, 13u)]))));
    var var_2 = ~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(32707u, global2.a.x, 4294967295u, 0u), ~vec4<u32>(21742u, global2.a.x, global2.a.x, 44429u)), abs(~global2.a.x), _wgslsmith_mult_u32(17365u, var_0)) ^ min(vec3<u32>(8619u, _wgslsmith_dot_vec4_u32(vec4<u32>(12585u, u_input.d, 4294967295u, 6121u), vec4<u32>(global2.a.x, 22472u, global2.a.x, 0u)), func_2(Struct_1(vec2<u32>(u_input.d, 0u), global2.b, -1515f))), select(vec3<u32>(1u, global2.a.x, global2.a.x), vec3<u32>(0u, var_0, var_0), vec3<bool>(var_1.x, var_1.x, var_1.x))));
    var var_3 = vec3<bool>(false | (((4579i >> (var_2.x % 32u)) < arg_1.x) & (reverseBits(arg_1.x) <= _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, 41167i)))), false, false);
    return -61843i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~abs(~vec2<u32>(global2.a.x, 4294967295u)), _wgslsmith_clamp_i32(min(u_input.c, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(84834u, 6u)], u_input.c, -1i) << (u_input.d % 32u)), _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(~global2.b, 1i >> (1u % 32u))), min(select(countOneBits(6029i), ~2147483647i, all(vec3<bool>(true, true, false))), ~abs(0i))), _wgslsmith_f_op_f32(global2.c + global2.c));
    var var_1 = Struct_1(var_0.a, func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, 1575f, global2.c)))), vec2<i32>(-1i) * -(~vec2<i32>(-2147483647i, -10628i))), var_0.c);
    let var_2 = ~_wgslsmith_div_vec4_u32(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(81211u, 20171u, 56982u, var_1.a.x), vec4<u32>(38154u, global2.a.x, 0u, 85337u), vec4<u32>(var_0.a.x, 14404u, var_1.a.x, var_0.a.x))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.a, var_0.a), reverseBits(12232u), ~var_1.a.x, 1u));
    var var_3 = Struct_4(_wgslsmith_mult_i32(1i, var_1.b), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, 783f, global2.c, -689f) - vec4<f32>(var_0.c, var_1.c, var_0.c, var_0.c)), _wgslsmith_f_op_vec4_f32(func_3()), vec4<bool>(true, 1u < var_1.a.x, true, global2.a.x > 4294967295u)))), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c, global2.c, global2.c, var_1.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, 1981f, global2.c, 313f)))), Struct_1(vec2<u32>(var_0.a.x & var_0.a.x, var_2.x), countOneBits(firstTrailingBit(0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(671f)) + var_1.c)), Struct_2(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(var_0.c + global2.c), _wgslsmith_f_op_f32(min(-627f, var_1.c)), _wgslsmith_f_op_f32(exp2(var_1.c)))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1436f, global2.c, -1000f, var_0.c)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1577f, -199f, var_1.c, global2.c)))))));
    let var_4 = Struct_1(abs(_wgslsmith_sub_vec2_u32(var_3.c.b.a, _wgslsmith_div_vec2_u32(~vec2<u32>(var_2.x, var_1.a.x), vec2<u32>(10323u, var_1.a.x)))), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-99336i, 0i, var_0.b)), vec3<i32>(~50135i, select(1i, u_input.b, true), _wgslsmith_dot_vec4_i32(-vec4<i32>(19114i, -57455i, 0i, var_1.b), ~vec4<i32>(9323i, global1[_wgslsmith_index_u32(var_0.a.x, 6u)], global1[_wgslsmith_index_u32(35641u, 6u)], -22312i)))), _wgslsmith_f_op_f32(floor(-1476f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.d.a.x, abs(reverseBits(select(min(var_1.a.x, var_1.a.x), firstLeadingBit(var_3.c.b.a.x), true))), max(~vec3<u32>(0u, var_2.x, global2.a.x) << (~var_2.xyz % vec3<u32>(32u)), ~(var_2.wzz << (_wgslsmith_sub_vec3_u32(var_2.xwz, vec3<u32>(4294967295u, u_input.d, 10797u)) % vec3<u32>(32u)))), vec3<i32>(-1i) * -reverseBits(vec3<i32>(global2.b, 51023i, var_4.b)));
}

