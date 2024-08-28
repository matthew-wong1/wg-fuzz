struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(i32(-2147483648), -1238i, -36577i, -16773i, 1i, 38967i, 2147483647i);

var<private> global1: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = ~1u;
    let var_1 = !vec3<bool>((arg_0.d.b.x & (6779u < u_input.b)) & arg_0.e.b.x, ~(~global0[_wgslsmith_index_u32(4294967295u, 7u)]) != arg_0.a.x, any(vec4<bool>(-3337i >= global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false, !arg_0.e.b.x, false)));
    return -(vec4<i32>(-1i) * -abs(vec4<i32>(arg_0.a.x, arg_0.a.x, 16543i, -83118i)));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(select(func_3(Struct_2(-vec2<i32>(arg_0, arg_0), 361f, -257f, Struct_1(vec2<f32>(2028f, 289f), vec3<bool>(true, false, true)), Struct_1(vec2<f32>(-517f, 1913f), vec3<bool>(true, true, true)))), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(1u, 7u)], -27983i, arg_0, 1559i)), vec4<i32>(0i, -1i, global0[_wgslsmith_index_u32(4294967295u, 7u)], arg_0)) << (~(~u_input.a) % vec4<u32>(32u)), false), countOneBits(func_3(Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(766f * 1939f), Struct_1(vec2<f32>(-836f, 1585f), vec3<bool>(true, false, false)), Struct_1(vec2<f32>(702f, -207f), vec3<bool>(false, false, false))))));
    let var_1 = Struct_3(Struct_1(vec2<f32>(1200f, _wgslsmith_f_op_f32(trunc(-900f))), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), !all(vec2<bool>(true, true)))), !(!vec2<bool>(any(vec2<bool>(true, false)), true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(-364f, -1769f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(318f * 1491f)))), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true), false)), ~abs(min(-26492i, 59072i) ^ arg_0));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.a.a.x, var_1.c.a.x)))) * _wgslsmith_div_vec2_f32(var_1.a.a, var_1.c.a)), select(vec3<bool>(true, false, true), var_1.c.b, select(true, any(select(vec3<bool>(var_1.c.b.x, true, var_1.c.b.x), vec3<bool>(var_1.c.b.x, true, var_1.a.b.x), vec3<bool>(false, false, true))), _wgslsmith_mod_i32(arg_0, var_0.x) <= (global0[_wgslsmith_index_u32(23014u, 7u)] << (26573u % 32u)))));
    global0 = array<i32, 7>();
    var_0 = -(~_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 1i, 19848i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<i32>(-33523i, 2257i, var_1.e, arg_0)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-21187i, 13876i, var_0.x, arg_0), vec4<i32>(-27328i, 18399i, var_0.x, -13288i))));
    return _wgslsmith_div_u32(40352u, ~(~_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(27125u, 70061u), vec2<u32>(98053u, 9832u)))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a.x), -2221f));
    global0 = array<i32, 7>();
    let var_0 = _wgslsmith_sub_vec2_u32(reverseBits(u_input.a.wx), firstTrailingBit(u_input.a.wz));
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    return 843f;
}

fn func_1() -> vec4<bool> {
    global0 = array<i32, 7>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1068f - -551f)));
    global1 = _wgslsmith_f_op_f32(floor(351f));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)] >> (4294967295u % 32u), -1i)), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, 35023u), 96473u), Struct_1(vec2<f32>(-1493f, _wgslsmith_f_op_f32(-565f * -1361f)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))))) - _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_u32(u_input.a.x, ~28447u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 0u, u_input.b), u_input.a.xwy | _wgslsmith_div_vec3_u32(u_input.a.yyx, u_input.a.zyy)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1515f, 1582f) * vec2<f32>(-456f, -512f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1295f, -503f)), vec2<bool>(true, true))), vec3<bool>(true, true, true)))));
    var var_0 = ~abs(u_input.a.xzx);
    return !vec4<bool>(_wgslsmith_f_op_f32(-535f - -1283f) >= _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_u32(var_0.x, u_input.b, var_0.x), var_0.x, Struct_1(vec2<f32>(101f, -173f), vec3<bool>(true, false, true)))), (64926i | _wgslsmith_mod_i32(0i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])) > firstTrailingBit(~15195i), all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.x;
    let var_2 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(~(global0[_wgslsmith_index_u32(0u, 7u)] << (u_input.b % 32u)), global0[_wgslsmith_index_u32(u_input.a.x, 7u)] >> (~u_input.a.x % 32u)), ~50866i), 233f, -307f, Struct_1(vec2<f32>(-615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1145f, 341f, var_0.x)))), !(!(!vec3<bool>(var_0.x, var_0.x, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-206f, -1373f))) * vec2<f32>(-742f, 125f))), var_0.ywy));
    var var_3 = var_2;
    global0 = array<i32, 7>();
    var var_4 = _wgslsmith_f_op_f32(1365f * _wgslsmith_div_f32(-602f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1300f))))));
    var_0 = !select(select(vec4<bool>(true, true, var_0.x, var_0.x), select(!vec4<bool>(false, var_0.x, var_2.e.b.x, true), select(vec4<bool>(false, true, var_2.d.b.x, false), vec4<bool>(false, var_3.e.b.x, var_2.e.b.x, var_0.x), vec4<bool>(var_0.x, var_2.e.b.x, true, var_0.x)), all(vec4<bool>(var_3.d.b.x, false, true, var_3.d.b.x))), !vec4<bool>(var_3.d.b.x, false, var_2.e.b.x, var_3.e.b.x)), func_1(), !(!(!vec4<bool>(var_3.e.b.x, var_0.x, true, var_2.d.b.x))));
    let var_5 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.a.x) + _wgslsmith_f_op_f32(-var_3.e.a.x)), var_2.e.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d.a.x, 1258f) - _wgslsmith_f_op_f32(728f - var_2.b)))));
}

