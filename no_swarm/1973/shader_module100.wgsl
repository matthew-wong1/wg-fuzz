struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 0u, 4294967295u, 31604u)), vec2<i32>(i32(-2147483648), -1i), vec2<bool>(true, true)), vec2<f32>(595f, -1860f), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(1u, 0u, 3554u, 23832u)), vec2<i32>(0i, -221i), vec2<bool>(false, false)), vec2<f32>(-116f, 1000f), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 90818u, 1u, 46639u)), vec2<i32>(24861i, 3914i), vec2<bool>(true, false)), vec2<f32>(-1352f, 768f), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(76137u, 1u, 0u, 39597u)), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true)), vec2<f32>(1606f, 1906f), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(24166u, 56346u, 1u, 1u)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, true)), vec2<f32>(1594f, 184f), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(15199u, 10630u, 4294967295u, 1u)), vec2<i32>(36575i, 30781i), vec2<bool>(true, true)), vec2<f32>(-825f, -432f), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(19087u, 4294967295u, 4294967295u, 1u)), vec2<i32>(2147483647i, 34161i), vec2<bool>(true, true)), vec2<f32>(304f, 288f), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(1865u, 47073u, 29021u, 40940u)), vec2<i32>(-1i, 0i), vec2<bool>(false, false)), vec2<f32>(472f, 389f), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 30972u, 18584u)), vec2<i32>(-13378i, 19389i), vec2<bool>(false, false)), vec2<f32>(-402f, 291f), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(21708u, 27160u, 4294967295u, 0u)), vec2<i32>(-25529i, -33036i), vec2<bool>(false, false)), vec2<f32>(499f, 1790f), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(1u, 31461u, 4294967295u, 1u)), vec2<i32>(-1i, 0i), vec2<bool>(true, false)), vec2<f32>(-1697f, -1000f), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), vec2<i32>(-40167i, 6672i), vec2<bool>(false, false)), vec2<f32>(614f, -660f), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 65222u, 4294967295u, 46467u)), vec2<i32>(-65338i, 0i), vec2<bool>(false, true)), vec2<f32>(-818f, 441f), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(20460u, 4294967295u, 1u, 0u)), vec2<i32>(-36803i, -17534i), vec2<bool>(false, false)), vec2<f32>(1000f, 1650f), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 9316u, 23715u, 28239u)), vec2<i32>(0i, 0i), vec2<bool>(false, false)), vec2<f32>(895f, 1457f), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 1u, 0u, 42781u)), vec2<i32>(2755i, 1i), vec2<bool>(true, true)), vec2<f32>(2002f, -1529f), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), vec2<i32>(i32(-2147483648), 12843i), vec2<bool>(false, false)), vec2<f32>(-236f, -950f), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(4294967295u, 20698u, 0u, 0u)), vec2<i32>(-32704i, i32(-2147483648)), vec2<bool>(true, true)), vec2<f32>(-806f, 1000f), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(112056u, 4294967295u, 77163u, 79871u)), vec2<i32>(-13476i, -64192i), vec2<bool>(false, true)), vec2<f32>(-1192f, -1320f), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(14774u, 0u, 0u, 109442u)), vec2<i32>(-32302i, -7288i), vec2<bool>(false, true)), vec2<f32>(514f, -1638f), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec4<u32>(1u, 1u, 14168u, 4294967295u)), vec2<i32>(24821i, 23319i), vec2<bool>(false, false)), vec2<f32>(-186f, 1000f), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(4294967295u, 36703u, 0u, 0u)), vec2<i32>(62849i, 0i), vec2<bool>(false, true)), vec2<f32>(-1178f, -1000f), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 68383u, 79718u, 0u)), vec2<i32>(6877i, -42158i), vec2<bool>(false, true)), vec2<f32>(112f, -1000f), vec2<bool>(false, false)));

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = Struct_1(vec4<u32>(u_input.c.x, 69u >> ((~u_input.b << (~u_input.c.x % 32u)) % 32u), reverseBits(u_input.c.x), 1u));
    global0 = vec4<bool>(true, true, any(select(select(select(global0.xzy, global0.wwy, true), vec3<bool>(arg_1.x, global0.x, arg_1.x), vec3<bool>(arg_1.x, false, true)), vec3<bool>(u_input.d != u_input.d, !arg_1.x, arg_0 == arg_0), arg_1.x)), arg_1.x);
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mult_vec4_u32(select(var_0.a, vec4<u32>(16554u, var_0.a.x, u_input.b, 40398u), true), ~var_0.a)), _wgslsmith_add_vec2_i32(vec2<i32>(abs(reverseBits(-28327i)), _wgslsmith_sub_i32(~u_input.a, u_input.a)), ~_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(3172i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.d, -2147483647i)))), vec2<bool>(true, !any(!vec4<bool>(arg_1.x, true, arg_1.x, true))));
    var var_2 = Struct_1(vec4<u32>(var_0.a.x, _wgslsmith_div_u32(1u, 43720u), u_input.b, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.a.a.x, var_0.a.x, u_input.c.x), var_0.a), max(vec4<u32>(5725u, 1u, 4294967295u, 8682u), vec4<u32>(0u, 1u, 59331u, 0u))), u_input.c.x)));
    return !var_1.c;
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + 100f), -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1230f * 978f), _wgslsmith_f_op_f32(f32(-1f) * -155f)))))));
    let var_1 = !select(select(func_3(-701f, select(global0.yxy, global0.xwx, global0.zzx)), select(select(vec2<bool>(arg_1, global0.x), vec2<bool>(false, false), arg_1), vec2<bool>(true, false), global0.x), !select(vec2<bool>(arg_1, false), global0.zw, vec2<bool>(true, false))), vec2<bool>(true, min(u_input.a, u_input.a) > reverseBits(u_input.d)), !vec2<bool>(all(vec3<bool>(true, false, arg_1)), false));
    var var_2 = Struct_2(Struct_1(~(~vec4<u32>(0u, 37393u, 38298u, arg_0)) | vec4<u32>(firstTrailingBit(52743u), 4294967295u, 1u, u_input.c.x)), -(~_wgslsmith_mult_vec2_i32(-vec2<i32>(355i, 1i), vec2<i32>(0i, 20583i))), vec2<bool>(false, false));
    var var_3 = 513f;
    var var_4 = !global0.zxx;
    return vec4<bool>(select(arg_1, any(!(!global0.yzz)), func_3(_wgslsmith_f_op_f32(-346f + 1184f), !(!vec3<bool>(arg_1, var_4.x, global0.x))).x), false, false, true);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_4) -> vec3<f32> {
    let var_0 = Struct_3(-1i, arg_2.a.a, ~(~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.a.a.a.x, arg_2.a.a.a.x, 0u, arg_2.a.a.a.x)), arg_2.a.a.a)), -_wgslsmith_mod_i32(41859i, u_input.a), arg_2.a);
    var var_1 = !(!select(select(!vec4<bool>(global0.x, false, false, false), select(vec4<bool>(false, false, var_0.e.c.x, false), vec4<bool>(global0.x, global0.x, false, var_0.e.c.x), false), !vec4<bool>(true, true, arg_2.c.x, arg_2.c.x)), select(vec4<bool>(true, global0.x, global0.x, arg_2.c.x), vec4<bool>(true, var_0.e.c.x, true, global0.x), var_0.e.c.x && false), (1u << (1u % 32u)) == u_input.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_1.zy);
    global0 = select(vec4<bool>(_wgslsmith_add_u32(arg_0, u_input.c.x & arg_2.a.a.a.x) > (var_0.e.a.a.x & abs(0u)), true, _wgslsmith_f_op_f32(arg_1.x + 1219f) > _wgslsmith_f_op_f32(-arg_1.x), 23125u != (var_0.c.x | ~arg_2.a.a.a.x)), select(select(select(!vec4<bool>(true, var_1.x, true, false), select(vec4<bool>(var_0.e.c.x, global0.x, arg_2.a.c.x, false), vec4<bool>(var_1.x, false, arg_2.a.c.x, true), var_1.x), func_2(var_0.c.x, arg_2.c.x)), select(vec4<bool>(arg_2.c.x, var_1.x, var_1.x, global0.x), select(vec4<bool>(false, false, true, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_0.e.c.x), !vec4<bool>(false, arg_2.c.x, false, false)), select(func_2(var_0.e.a.a.x, false), !vec4<bool>(arg_2.c.x, false, true, var_0.e.c.x), select(vec4<bool>(arg_2.c.x, global0.x, true, arg_2.a.c.x), vec4<bool>(var_1.x, var_1.x, false, arg_2.a.c.x), true))), select(func_2(_wgslsmith_mod_u32(4294967295u, var_0.b.a.x), -1448f <= var_2.x), vec4<bool>(true, var_1.x & arg_2.a.c.x, all(vec4<bool>(false, arg_2.c.x, global0.x, false)), var_2.x < arg_2.b.x), select(vec4<bool>(var_0.e.c.x, global0.x, true, arg_2.a.c.x), !vec4<bool>(var_1.x, var_1.x, global0.x, true), func_2(arg_0, arg_2.c.x))), !global0.x), select(select(!vec4<bool>(false, var_0.e.c.x, false, false), func_2(_wgslsmith_clamp_u32(23348u, 12953u, arg_2.a.a.a.x), false), vec4<bool>(var_1.x, any(global0.xw), global0.x | var_1.x, any(vec2<bool>(arg_2.a.c.x, var_0.e.c.x)))), !vec4<bool>(all(vec4<bool>(global0.x, false, arg_2.c.x, global0.x)), u_input.d < -1i, all(vec4<bool>(global0.x, global0.x, false, false)), global0.x & true), any(vec2<bool>(any(global0.ywy), var_0.e.c.x))));
    let var_3 = abs(_wgslsmith_clamp_i32(1i, select(u_input.d, var_0.a << (_wgslsmith_sub_u32(u_input.c.x, 1542u) % 32u), true), -710i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, arg_2.b.x, -1439f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-767f, 1324f, -582f))), arg_1.yyz)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-772f, -328f, 702f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -324f, var_2.x))), var_1.x)), global0.wwx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(65653u, 1u, u_input.c.x, 4294967295u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u)), 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, -402f, -383f, 640f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(538f, 1438f, 396f, -1516f) - vec4<f32>(-589f, 2717f, -1515f, -1339f))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, ~u_input.c.x), 23u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(272f, 774f, 1368f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -969f, -323f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -684f, -283f))))));
    let var_1 = Struct_2(Struct_1(~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)))), _wgslsmith_div_vec2_i32(-abs(abs(vec2<i32>(u_input.d, -34863i))), ~_wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, -23706i), vec2<i32>(u_input.a, u_input.d))), !select(func_3(_wgslsmith_f_op_f32(trunc(1761f)), global0.yxw), vec2<bool>(true, global0.x), global0.yz));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(906f, var_0.x, var_0.x), vec3<f32>(761f, var_0.x, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(778f - var_0.x))), var_0.x))));
    var var_2 = ~(~0u);
    let var_3 = Struct_4(Struct_2(Struct_1(select(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 4294967295u), ~var_1.a.a, !vec4<bool>(var_1.c.x, false, global0.x, false))), vec2<i32>(abs(max(0i, 1i)), abs(6890i)), var_1.c), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(exp2(var_0.x))))), -812f), !(!(!global0.wz)));
    var var_4 = Struct_4(var_3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, var_3.b.x) - var_0.xz), vec2<f32>(var_0.x, 221f)))) * vec2<f32>(var_0.x, var_3.b.x)), var_1.c);
    let var_5 = 1u;
    global1 = array<Struct_4, 23>();
    let var_6 = vec3<u32>(_wgslsmith_sub_u32(u_input.b, 4294967295u) ^ ~u_input.b, ~2164u << ((1u >> ((_wgslsmith_div_u32(var_1.a.a.x, 11094u) << (0u % 32u)) % 32u)) % 32u), _wgslsmith_dot_vec3_u32(var_1.a.a.xxz, ~(~var_4.a.a.a.zww)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -288f), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3.b.x, var_4.b.x))), _wgslsmith_div_f32(1066f, var_0.x))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1685f)))), vec3<i32>(max(u_input.d, abs(var_1.b.x)), u_input.d << (_wgslsmith_mod_u32(~var_5, firstLeadingBit(u_input.c.x)) % 32u), var_4.a.b.x), -333f);
}

