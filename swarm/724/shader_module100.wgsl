struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1829f, -1241f), vec2<f32>(-1708f, 557f), vec2<f32>(271f, 1365f), vec2<f32>(-1000f, 1097f), vec2<f32>(-193f, 645f), vec2<f32>(645f, 638f), vec2<f32>(355f, -1778f), vec2<f32>(-299f, -1413f), vec2<f32>(-361f, 802f), vec2<f32>(1534f, -1163f), vec2<f32>(-331f, -552f), vec2<f32>(-1441f, 433f), vec2<f32>(-1768f, -407f), vec2<f32>(676f, 196f), vec2<f32>(1195f, -607f), vec2<f32>(-1216f, 1389f), vec2<f32>(-2196f, 359f), vec2<f32>(-1167f, -1182f), vec2<f32>(-759f, 1112f), vec2<f32>(1200f, 823f), vec2<f32>(-1627f, 287f), vec2<f32>(-419f, -435f), vec2<f32>(-2385f, 899f), vec2<f32>(106f, -220f), vec2<f32>(-1106f, -301f), vec2<f32>(-1281f, -668f), vec2<f32>(-1000f, 375f), vec2<f32>(-600f, 867f), vec2<f32>(1082f, -1000f), vec2<f32>(1426f, 550f));

var<private> global1: Struct_2 = Struct_2(Struct_1(39638i, -6800i, -570f, vec4<bool>(true, true, true, true), vec3<u32>(41227u, 91637u, 9810u)), Struct_1(2147483647i, 0i, 825f, vec4<bool>(true, true, true, true), vec3<u32>(102698u, 42836u, 6300u)), 1261f, Struct_1(0i, 28825i, -1374f, vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 4294967295u, 10326u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.c))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1227f))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<u32>, arg_3: i32) -> Struct_4 {
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    let var_0 = 1259f;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(0u, 30u)], vec2<f32>(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(arg_3, arg_3, global1.a.c, global1.b.d, vec3<u32>(1u, arg_2.x, arg_2.x)), Struct_2(global1.d, global1.d, global1.a.c, global1.b), Struct_3(vec4<f32>(global1.a.c, 577f, var_0, 1000f), global1.a, u_input.c.x, global1.d.d.zy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c)))))));
    return Struct_4(541f, -(~_wgslsmith_add_i32(~(-25997i), firstLeadingBit(arg_3))), global1.b, ~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-669f, _wgslsmith_div_f32(-1886f, global1.a.c), global1.b.c, -719f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1819f, -483f, -958f)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(global1.b.c, global1.d.c)), global1.c, _wgslsmith_f_op_f32(global1.b.c + -1228f));
    var var_1 = func_2(any(!(!global1.d.d.zxx)), global1.a.b, global1.a.e.xz, ~(~(0i << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 59496u, 4294967295u), arg_1.zxy) % 32u))));
    var var_2 = Struct_2(var_1.c, var_1.c, var_1.e.x, Struct_1(-1i, -_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.d), vec4<i32>(u_input.b, 0i, u_input.d.x, global1.a.b)), 334f, vec4<bool>(!(!var_1.c.d.x), global1.a.d.x && true, false, var_1.c.d.x), vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17946u, global1.b.e.x), var_1.c.e)), max(17752u, firstTrailingBit(1u)), 0u)));
    return func_2(all(!(!(!vec3<bool>(true, true, var_1.c.d.x)))), -12127i, var_1.c.e.yx, _wgslsmith_mult_i32(-global1.b.b, ~var_1.b)).c;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = func_1(arg_0.e.yx, ~_wgslsmith_div_vec4_u32(vec4<u32>(func_2(arg_0.d.x, 2147483647i, arg_0.e.zz, 0i).d, global1.a.e.x, ~0u, global1.a.e.x), _wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, global1.d.e.x, arg_0.e.x, 22651u), vec4<u32>(0u, 0u, 1u, 0u)), ~vec4<u32>(56115u, global1.b.e.x, global1.b.e.x, arg_0.e.x)))).d;
    global1 = Struct_2(global1.b, global1.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c * global1.c) - arg_0.c) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.c, 1048f))))), func_2(!all(vec3<bool>(global1.b.d.x, arg_0.d.x, true)), (i32(-1i) * -u_input.b) | func_1(vec2<u32>(arg_0.e.x, 0u) ^ global1.b.e.xx, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.e.x, 1u, 30479u, 4294967295u), vec4<u32>(29905u, 27087u, 12118u, arg_0.e.x), vec4<u32>(global1.d.e.x, arg_0.e.x, 79128u, global1.b.e.x))).b, ~(~vec2<u32>(global1.d.e.x, 31455u)) | arg_0.e.yy, -22317i).c);
    let var_1 = global1.d.b;
    global0 = array<vec2<f32>, 30>();
    var var_2 = global1.d.e.yz;
    return _wgslsmith_div_vec4_u32(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global1.a.e.x, global1.b.e.x, arg_0.e.x), reverseBits(vec4<u32>(var_2.x, arg_0.e.x, global1.b.e.x, global1.b.e.x))), func_1(vec2<u32>(var_2.x, 0u), vec4<u32>(88566u, global1.d.e.x, 9899u, arg_0.e.x)).e.x, ~4294967295u >> (~4294967295u % 32u)) << (~(~vec4<u32>(global1.a.e.x, 0u, global1.a.e.x, 0u)) % vec4<u32>(32u)), ~max(reverseBits(vec4<u32>(global1.b.e.x, 4294967295u, 0u, var_2.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(13602u, 0u, global1.d.e.x, global1.b.e.x), vec4<u32>(arg_0.e.x, arg_0.e.x, 1310u, var_2.x), vec4<u32>(39325u, 25161u, arg_0.e.x, 30757u)) % vec4<u32>(32u)), reverseBits(vec4<u32>(29421u, 82772u, 1u, 1u)) << (abs(vec4<u32>(62901u, var_2.x, arg_0.e.x, arg_0.e.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d.c;
    var var_1 = false == all(global1.d.d.yx);
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a.c, -444f, global1.d.c, 544f))) * vec4<f32>(global1.b.c, global1.c, global1.a.c, 184f)) + vec4<f32>(_wgslsmith_f_op_f32(-176f + global1.a.c), -181f, _wgslsmith_f_op_f32(global1.d.c * -1853f), _wgslsmith_f_op_f32(-1000f * global1.b.c))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(346f * global1.b.c), _wgslsmith_f_op_f32(-global1.b.c), _wgslsmith_f_op_f32(floor(global1.c)), global1.b.c)))), Struct_1(u_input.b, global1.a.b, -624f, select(global1.b.d, select(!global1.b.d, global1.d.d, global1.a.d), select(global1.a.d, global1.d.d, select(global1.a.d, global1.d.d, global1.d.d))), min(~(global1.b.e << (global1.b.e % vec3<u32>(32u))), vec3<u32>(global1.b.e.x, ~0u, 4294967295u))), global1.a.a, !global1.b.d.wz);
    let var_3 = global1.b.d.xyy;
    var var_4 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_2.b.e.x, 4294967295u), vec4<u32>(global1.d.e.x, 0u, 49292u, 8469u), vec4<u32>(4294967295u, var_2.b.e.x, var_2.b.e.x, 55552u)) << (((vec4<u32>(17166u, var_2.b.e.x, var_2.b.e.x, 42091u) | vec4<u32>(global1.b.e.x, 4587u, 0u, global1.d.e.x)) | vec4<u32>(4925u, 1u, global1.d.e.x, 22637u)) % vec4<u32>(32u))), (func_4(func_1(var_2.b.e.xx, vec4<u32>(44837u, global1.a.e.x, 0u, 4294967295u)), var_2.b.d.ywy) | ~vec4<u32>(1u, var_2.b.e.x, var_2.b.e.x, 22707u)) | _wgslsmith_mult_vec4_u32(select(~vec4<u32>(22046u, 4294967295u, 67305u, global1.b.e.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.e.x, var_2.b.e.x, 0u, 0u), vec4<u32>(4294967295u, 0u, 1u, var_2.b.e.x)), false), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.a.e.x, 18974u, var_2.b.e.x) >> (vec4<u32>(4294967295u, 1u, global1.a.e.x, var_2.b.e.x) % vec4<u32>(32u)), abs(vec4<u32>(27563u, 4294967295u, 10435u, 1u)))));
    let var_5 = func_2(global1.d.d.x, -2147483647i, vec2<u32>(global1.b.e.x, 37995u), countOneBits(-65460i));
    let var_6 = var_5.e;
    let var_7 = Struct_2(func_1(~_wgslsmith_mult_vec2_u32(~global1.b.e.xx, var_5.c.e.yy | vec2<u32>(1u, var_2.b.e.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(11860u, global1.b.e.x, global1.b.e.x, 0u), vec4<u32>(940u, var_5.c.e.x, 4294967295u, var_2.b.e.x)) << (~vec4<u32>(var_5.c.e.x, var_2.b.e.x, var_2.b.e.x, 1u) % vec4<u32>(32u)), vec4<u32>(69597u, 1u, 1u, _wgslsmith_add_u32(23015u, var_2.b.e.x)))), var_2.b, var_2.b.c, func_2(var_2.b.d.x, var_5.b, _wgslsmith_sub_vec2_u32(global1.d.e.zy, global1.b.e.yz), 0i).c);
    let var_8 = _wgslsmith_f_op_vec2_f32(-var_5.e.zw);
    let x = u_input.a;
    s_output = StorageBuffer(-global1.d.b);
}

