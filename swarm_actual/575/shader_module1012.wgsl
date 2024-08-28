struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(3286i, vec3<u32>(1u, 50902u, 1u), true);

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: f32;

var<private> global3: array<f32, 24> = array<f32, 24>(-590f, -165f, 506f, 208f, -2057f, 1111f, 221f, -1000f, 1640f, 1000f, 138f, 625f, -482f, 1116f, -1575f, 682f, -1000f, -1556f, -937f, 129f, 682f, -945f, 987f, 759f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = 5616i;
    let var_1 = Struct_1(0i, ~global0.b, true);
    return any(vec4<bool>(true, !(!all(vec3<bool>(var_1.c, var_1.c, global0.c))), true, true));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<i32>) -> vec3<u32> {
    let var_0 = Struct_1(select(global0.a, _wgslsmith_add_i32(arg_3.x << (3470u % 32u), _wgslsmith_mod_i32(43732i, 30236i) & firstTrailingBit(arg_1.x)), global0.c), global0.b, false);
    let var_1 = Struct_1(1109i, firstLeadingBit(global0.b), var_0.c);
    let var_2 = _wgslsmith_mod_i32(var_0.a, u_input.a.x);
    global2 = -1119f;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -767f), -1268f));
    return vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(var_1.b.x), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, 1u, var_0.b.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.x, 16149u, 66557u, global0.b.x), vec4<u32>(var_0.b.x, var_0.b.x, 84100u, 21564u)), abs(vec4<u32>(var_1.b.x, 4294967295u, var_0.b.x, var_0.b.x))), ~vec4<u32>(var_0.b.x, 72485u, var_0.b.x, var_1.b.x))), global0.b.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(~8032u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.b.zx, vec2<u32>(var_0.b.x, 0u)), global1[_wgslsmith_index_u32(~13446u, 23u)])), firstLeadingBit(_wgslsmith_mult_u32(var_1.b.x & 24866u, reverseBits(var_0.b.x)))));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = any(!(!(!select(vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(global0.c, false, true), true))));
    var var_1 = arg_0;
    let var_2 = ~(57181u >> (countOneBits(var_1.b.x) % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 273f, global3[_wgslsmith_index_u32(arg_0.b.x, 24u)]) * vec3<f32>(global3[_wgslsmith_index_u32(global0.b.x, 24u)], -112f, -787f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1544f, 444f, -1525f)))), vec3<f32>(_wgslsmith_div_f32(-789f, global3[_wgslsmith_index_u32(var_2, 24u)]), global3[_wgslsmith_index_u32(var_1.b.x, 24u)], _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_2, 24u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1373f, global3[_wgslsmith_index_u32(var_1.b.x, 24u)]))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global0.b.x, 24u)], global3[_wgslsmith_index_u32(arg_0.b.x, 24u)], 207f) + vec3<f32>(global3[_wgslsmith_index_u32(0u, 24u)], 465f, 1093f))))) + vec3<f32>(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.b, ~vec3<u32>(0u, var_1.b.x, var_1.b.x)), 24u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(816f * global3[_wgslsmith_index_u32(0u, 24u)]), -1231f), true | global0.c)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~global0.b.x, 24u)], _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(37397u, 24u)]))), 1819f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-341f, global3[_wgslsmith_index_u32(arg_0.b.x, 24u)]))) + global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], vec2<u32>(var_2, 56099u)), 24u)])));
    var var_4 = Struct_1(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.a, arg_0.a) & _wgslsmith_sub_i32(var_1.a, arg_0.a), 1i), _wgslsmith_mult_vec3_u32(abs(func_4(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), firstTrailingBit(vec2<i32>(41712i, global0.a)), func_3(), vec4<i32>(global0.a, arg_0.a, var_1.a, var_1.a))), arg_0.b), all(vec3<bool>(global0.c, false, func_3())));
    return func_3();
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = Struct_1(-(~((arg_1.a ^ arg_1.a) ^ 1i)), _wgslsmith_sub_vec3_u32(~vec3<u32>(~arg_1.b.x, countOneBits(arg_2.b.x), select(32766u, 41856u, arg_1.c)), vec3<u32>(global0.b.x, firstLeadingBit(4294967295u), 1u) >> (_wgslsmith_add_vec3_u32(max(arg_1.b, vec3<u32>(40060u, 41260u, 4294967295u)), arg_2.b) % vec3<u32>(32u))), any(!vec4<bool>(true, true, !global0.c, all(arg_0.wxz))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, -919f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(arg_2.b.x, 24u)], global3[_wgslsmith_index_u32(arg_1.b.x, 24u)])))))));
    let var_1 = arg_2;
    global3 = array<f32, 24>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_div_f32(var_0.x, 1073f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~global0.b.x, 24u)] * -351f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(0u, 24u)], -1846f, false))))));
    return -25945i;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(2147483647i, -1i, func_5(select(vec4<bool>(true, select(false, false, global0.c), true, -2147483647i == global0.a), select(select(vec4<bool>(true, false, true, global0.c), vec4<bool>(global0.c, false, true, true), false), !vec4<bool>(global0.c, global0.c, global0.c, true), !vec4<bool>(false, global0.c, true, true)), select(false, func_2(Struct_1(-31345i, vec3<u32>(10165u, global0.b.x, global0.b.x), false)), true)), Struct_1(global0.a, reverseBits(global0.b) | vec3<u32>(0u, 4294967295u, global0.b.x), global0.c), Struct_1(u_input.a.x, vec3<u32>(global0.b.x, global0.b.x & global0.b.x, global0.b.x), true)), ~(-1i));
    return Struct_1(global0.a, _wgslsmith_sub_vec3_u32(global0.b, _wgslsmith_mult_vec3_u32(vec3<u32>(global0.b.x | global0.b.x, ~global0.b.x, global0.b.x), ~global0.b | vec3<u32>(41067u, global0.b.x, global0.b.x))), !(firstTrailingBit(~1i) >= _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.yx, var_0.xw), var_0.wx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.b.x ^ ~1u, 24u)] + -1285f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.b.x, 24u)])))));
    var var_2 = -global0.a & 5427i;
    var var_3 = global0.b.x;
    var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-countOneBits(_wgslsmith_mod_i32(var_0.a, -23583i)), i32(-1i) * -global0.a), ~var_0.a);
    var var_4 = var_1.x;
    let var_5 = func_1();
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstLeadingBit(func_4(vec3<i32>(var_5.a, 0i, var_5.a), u_input.a.zz, true, vec4<i32>(-2147483647i, global0.a, -7474i, var_0.a) | vec4<i32>(21082i, 44766i, 8781i, 32242i)).x)), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 1u << (global0.b.x % 32u)), var_0.b.x, global0.b.x));
}

