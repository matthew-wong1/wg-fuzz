struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(1126f, -1607f, -1000f), vec3<f32>(250f, -843f, -2467f), vec3<f32>(-484f, 126f, -960f), vec3<f32>(1017f, -1471f, 1613f), vec3<f32>(155f, 713f, -608f), vec3<f32>(-1098f, 523f, 691f), vec3<f32>(376f, 1823f, 180f), vec3<f32>(-1000f, -130f, -566f), vec3<f32>(1000f, -1000f, 1000f), vec3<f32>(1996f, -1747f, -1389f), vec3<f32>(2926f, 204f, 1000f), vec3<f32>(-396f, 587f, 415f), vec3<f32>(-887f, 559f, -1461f), vec3<f32>(277f, -209f, -1040f), vec3<f32>(1760f, 1746f, 1031f));

var<private> global2: vec3<f32>;

var<private> global3: vec4<u32> = vec4<u32>(54044u, 0u, 22668u, 0u);

var<private> global4: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, i32(-2147483648), -34614i, -1i), vec4<i32>(-38389i, -8920i, 6764i, 1i), vec4<i32>(2147483647i, 0i, 49714i, 2147483647i), vec4<i32>(-1i, -19480i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-6006i, -22520i, -27180i, -27105i), vec4<i32>(2147483647i, 0i, 25445i, -62804i), vec4<i32>(120495i, 38559i, 36220i, 50841i), vec4<i32>(-1i, 38439i, -28260i, -10663i), vec4<i32>(i32(-2147483648), 19092i, 17004i, -36224i), vec4<i32>(3488i, 46404i, 0i, 1i), vec4<i32>(1i, -40011i, 1i, 1i), vec4<i32>(-8114i, 25442i, -41460i, 1i), vec4<i32>(-10325i, 21199i, -1i, 54483i), vec4<i32>(2147483647i, -1i, -20183i, 2147483647i), vec4<i32>(i32(-2147483648), -23694i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 16863i, 86605i, 13132i), vec4<i32>(-1i, 3712i, -1i, -13428i), vec4<i32>(5266i, 0i, 61141i, i32(-2147483648)), vec4<i32>(-1i, 1i, -14981i, -1i), vec4<i32>(-23270i, 1i, 55961i, 2147483647i), vec4<i32>(0i, 20552i, -21863i, 4618i), vec4<i32>(-1i, 34908i, 2147483647i, -106620i), vec4<i32>(-7434i, 3812i, -1543i, 1i), vec4<i32>(6770i, -13426i, -86442i, 0i), vec4<i32>(34372i, 2147483647i, 1i, 2147483647i), vec4<i32>(19028i, -8915i, -27131i, 0i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    var var_0 = u_input.b.ww;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(163f, 319f, -1621f, -1000f) - vec4<f32>(arg_0.c.x, -1000f, arg_0.c.x, global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.x, -562f, arg_0.c.x, -876f), vec4<f32>(1000f, arg_0.c.x, arg_0.c.x, 707f)), select(vec4<bool>(arg_1.x, arg_0.a.b, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, false, true), arg_0.a.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-839f, -429f, -2066f, 123f), vec4<f32>(arg_0.c.x, -1034f, 243f, global2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1374f, global2.x, 1266f, global2.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, -328f, -997f, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.c.x, -857f, -623f) * vec4<f32>(564f, 918f, arg_0.c.x, global2.x))))), vec4<f32>(_wgslsmith_f_op_f32(476f + _wgslsmith_div_f32(arg_0.c.x, arg_0.c.x)), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1037f), arg_0.c.x)));
    let var_2 = false;
    var var_3 = arg_0.a;
    global3 = (u_input.b ^ u_input.b) << (((_wgslsmith_div_vec4_u32(u_input.b, ~vec4<u32>(4294967295u, 62704u, 51170u, arg_0.a.d)) | u_input.b) ^ ~vec4<u32>(0u, 14170u, 0u, u_input.b.x << (var_3.c % 32u))) % vec4<u32>(32u));
    return ~abs(~(~firstLeadingBit(var_3.d)));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_2(Struct_1(all(vec4<bool>(true, true, false, true)) | true, select(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), true, ~4294967295u > firstTrailingBit(u_input.b.x)), global3.x, 37691u, arg_1.a), u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global2.zy + _wgslsmith_f_op_vec2_f32(-global2.zy)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-253f, 247f) + vec2<f32>(-1000f, global2.x)))))), 2147483647i);
    global2 = global1[_wgslsmith_index_u32(firstLeadingBit(var_0.a.d), 15u)];
    global4 = array<vec4<i32>, 26>();
    global3 = abs(_wgslsmith_add_vec4_u32(abs(~firstTrailingBit(vec4<u32>(1u, 1u, 1u, u_input.b.x))), vec4<u32>(_wgslsmith_mod_u32(var_0.b, ~50242u), countOneBits(global3.x >> (u_input.b.x % 32u)), u_input.b.x, _wgslsmith_mult_u32(firstTrailingBit(1u), u_input.b.x))));
    global2 = global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~global3.x >> ((global3.x << (23236u % 32u)) % 32u), global3.x)), 15u)];
    return _wgslsmith_f_op_f32(-635f + _wgslsmith_f_op_f32(ceil(var_0.c.x)));
}

fn func_2() -> vec3<bool> {
    var var_0 = 10557u;
    var var_1 = vec3<bool>(~global3.x != 1u, !any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), (((14823i | u_input.d.x) & -38554i) & (~global0.a >> (91868u % 32u))) != (~_wgslsmith_mod_i32(global0.a, 15241i) & _wgslsmith_sub_i32(~global0.a, _wgslsmith_clamp_i32(u_input.d.x, u_input.a, -1i))));
    global3 = vec4<u32>(~global3.x, u_input.b.x, global3.x, ~max(u_input.b.x, ~47693u));
    let var_2 = Struct_4(-9314i, global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) * _wgslsmith_f_op_f32(192f + 557f)), global2.x) * _wgslsmith_f_op_f32(func_3(~1179i, Struct_3(u_input.d.x)))), Struct_1(var_1.x, all(select(!vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(false, var_1.x, var_1.x))), ~u_input.b.x, ~(~max(u_input.b.x, u_input.b.x)), -min(select(global0.a, 1823i, var_1.x), ~0i)));
    var var_3 = true;
    return select(select(select(select(select(vec3<bool>(var_1.x, var_2.d.b, var_1.x), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, var_2.d.a, var_1.x)), !vec3<bool>(var_2.d.b, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_2.d.a, var_1.x), vec3<bool>(true, var_2.d.a, var_2.d.b)), false), !select(vec3<bool>(false, false, var_1.x), !vec3<bool>(false, var_2.d.b, var_2.d.b), !var_2.d.a), vec3<bool>(true == !var_1.x, _wgslsmith_mod_i32(2147483647i, var_2.d.e) > -u_input.c, any(!vec2<bool>(var_2.d.a, var_2.d.a)))), select(!select(vec3<bool>(true, false, true), vec3<bool>(var_2.d.b, var_2.d.a, var_1.x), var_2.d.b), select(vec3<bool>(true, any(vec3<bool>(var_2.d.b, false, false)), var_2.b > -24442i), select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(true, var_2.d.a, var_2.d.a), vec3<bool>(var_1.x, false, true), true), false), var_2.d.a | var_2.d.a), !select(!vec3<bool>(var_1.x, false, true), !vec3<bool>(false, false, var_1.x), var_2.d.b)), select(select(vec3<bool>(select(var_2.d.b, var_1.x, true), false, false), !(!vec3<bool>(true, var_2.d.a, true)), !(!vec3<bool>(var_2.d.a, var_2.d.b, false))), vec3<bool>(all(select(vec2<bool>(var_1.x, var_2.d.a), vec2<bool>(true, var_2.d.b), false)), true, !(!var_2.d.b)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-763f, 358f, 534f, _wgslsmith_f_op_f32(-global2.x))) + vec4<f32>(376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x, global2.x));
    var var_1 = vec4<u32>(global3.x, min(abs(1u), (_wgslsmith_sub_u32(46334u, global3.x) | 48644u) ^ (u_input.b.x ^ (global3.x & 0u))), u_input.b.x, ~(~u_input.b.x));
    global3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, func_1(Struct_2(Struct_1(true, false, 0u, u_input.b.x, 23161i), u_input.b.x, vec2<f32>(global2.x, 196f), 2147483647i), vec2<bool>(false, false)), 4294967295u, func_1(Struct_2(Struct_1(false, true, u_input.b.x, 0u, -2147483647i), global3.x, vec2<f32>(-1012f, global2.x), global0.a), vec2<bool>(true, true))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(15074u, u_input.b.x, u_input.b.x, 47628u), u_input.b)) >> (u_input.b % vec4<u32>(32u));
    var var_2 = Struct_1(false || any(vec4<bool>(false, false, true, false)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !func_2(), true)), 36605u, 11927u, 6390i);
    let var_3 = Struct_2(Struct_1(true, !any(!vec4<bool>(false, true, var_2.a, var_2.b)), 1u, max(~_wgslsmith_sub_u32(var_1.x, var_2.c), 67582u), (~u_input.d.x ^ -1i) >> (4294967295u % 32u)), firstTrailingBit(var_2.d) ^ _wgslsmith_mult_u32(var_1.x >> ((var_2.c | u_input.b.x) % 32u), ~(~0u)), var_0.xx, var_2.e);
    var_2 = var_3.a;
    let var_4 = ~(~(~0u));
    global4 = array<vec4<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1670f, var_3.c.x)), _wgslsmith_f_op_vec2_f32(-global2.yy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.wx), vec2<f32>(var_3.c.x, var_3.c.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(217f, 1761f) * var_3.c))))), 4294967295u);
}

