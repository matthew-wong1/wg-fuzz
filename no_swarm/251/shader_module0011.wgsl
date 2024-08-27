struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: bool;

var<private> global2: bool;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(false, Struct_1(vec3<f32>(406f, 278f, -507f))), Struct_2(false, Struct_1(vec3<f32>(-1000f, -127f, 891f))), Struct_2(false, Struct_1(vec3<f32>(331f, 929f, 107f))), Struct_2(true, Struct_1(vec3<f32>(-1117f, 101f, 694f))), Struct_2(false, Struct_1(vec3<f32>(-1325f, -454f, 233f))));

var<private> global4: vec3<i32> = vec3<i32>(1i, 11698i, 13382i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global2 = true;
    var var_0 = arg_1;
    var var_1 = abs(~_wgslsmith_mult_vec2_u32(select(u_input.c.zx, u_input.b.wz, vec2<bool>(arg_0, true)), abs(u_input.b.wy)) | u_input.c.zx);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(arg_1.a)), var_0.a))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1156f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-647f - var_0.a.x)))))));
    global2 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(490f))) + arg_1.a.x) != _wgslsmith_f_op_f32(f32(-1f) * -186f)) != !arg_0;
    return _wgslsmith_mult_u32(u_input.c.x, 1u) ^ 15457u;
}

fn func_2() -> vec4<f32> {
    var var_0 = 12163i >= (-21973i << (func_3(!any(vec4<bool>(false, true, false, false)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(793f, -1131f, 713f))))) % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(462f + 765f), _wgslsmith_div_f32(-1340f, -1268f), _wgslsmith_f_op_f32(f32(-1f) * -339f)) + vec3<f32>(_wgslsmith_f_op_f32(-463f * -422f), _wgslsmith_f_op_f32(sign(985f)), -281f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1377f, 408f, -1000f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1493f, -995f, -879f), vec3<f32>(555f, -1270f, 803f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1596f, 1540f)), vec3<f32>(-948f, -164f, -317f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x - 229f), _wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x))), var_1.a, vec3<bool>(all(vec2<bool>(true, false)), true, true)))));
    var var_3 = vec4<bool>(true, !(!(u_input.c.x < 4294967295u) & false), all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), true)), all(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))));
    let var_4 = select(var_3.x, true, true);
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(294f - var_1.a.x))))));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = ~u_input.e;
    var var_1 = 32043u;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.a.x, _wgslsmith_f_op_f32(-arg_1.b.a.x), _wgslsmith_div_f32(arg_1.b.a.x, 606f), -625f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.b.a.x, arg_1.b.a.x)), _wgslsmith_div_f32(arg_1.b.a.x, 439f), arg_1.b.a.x, _wgslsmith_f_op_f32(arg_1.b.a.x + arg_1.b.a.x)))));
    var var_3 = ~u_input.b;
    global2 = select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_0, 28963u, ~65200u), vec4<u32>(40998u, 40716u, select(u_input.e, 41323u, false), var_3.x >> (26879u % 32u))), func_3(any(vec2<bool>(arg_1.a, arg_1.a)), arg_1.b), _wgslsmith_div_f32(-2150f, _wgslsmith_f_op_f32(trunc(-1417f))) <= 141f) == 4294967295u;
    return Struct_1(vec3<f32>(-650f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-532f)))));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = false;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(403f))))) + 1f));
    var var_3 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a)));
    var var_4 = Struct_2(!var_3.a, var_3.b);
    return select(vec4<bool>(any(select(select(vec3<bool>(var_3.a, var_3.a, var_3.a), vec3<bool>(true, true, var_0), vec3<bool>(true, var_0, var_0)), vec3<bool>(var_0, var_0, true), select(var_0, var_0, var_4.a))), false, var_4.a, all(select(select(vec3<bool>(var_4.a, true, true), vec3<bool>(var_3.a, var_0, true), var_0), vec3<bool>(true, true, true), !vec3<bool>(false, var_0, false)))), select(vec4<bool>(true, true, any(!vec2<bool>(false, var_3.a)), (var_4.a && true) & true), vec4<bool>(_wgslsmith_mult_i32(-2147483647i, global4.x) < ~0i, true, select(any(vec3<bool>(false, var_0, true)), true, any(vec2<bool>(true, var_3.a))), false), var_4.a), vec4<bool>(false, any(select(select(vec2<bool>(var_0, var_3.a), vec2<bool>(false, false), true), !vec2<bool>(true, var_4.a), select(vec2<bool>(true, var_3.a), vec2<bool>(var_4.a, false), var_3.a))), !var_3.a, var_0));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    global4 = vec3<i32>(abs(~firstTrailingBit(_wgslsmith_mult_i32(u_input.d, global4.x))), u_input.d, u_input.d);
    global1 = arg_1.a;
    var var_0 = -(~(-(~global4.x ^ ~2147483647i)));
    global4 = _wgslsmith_mod_vec3_i32(firstTrailingBit(-min(countOneBits(vec3<i32>(global4.x, -2147483647i, 23701i)), max(vec3<i32>(global4.x, global4.x, 1i), vec3<i32>(u_input.a, -80196i, u_input.d)))), -abs(-vec3<i32>(0i, 2147483647i, 2147483647i)) << (u_input.b.zxw % vec3<u32>(32u)));
    global3 = array<Struct_2, 5>();
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 10504u;
    let var_0 = func_5(select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, true, 0i > u_input.d), true), func_4(func_1(~u_input.b.x, global3[_wgslsmith_index_u32(~1u, 5u)])), true), Struct_2(true && any(vec2<bool>(false, true)), func_1(~countOneBits(17996u), Struct_2(false, func_1(4294967295u, global3[_wgslsmith_index_u32(54694u, 5u)])))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -236f, 352f, 959f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1129f, -2112f, 994f, 1769f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1702f, -1000f, -1973f, 1324f))))))), any(vec4<bool>(true, all(vec4<bool>(false, false, false, false)) && true, false, any(vec2<bool>(true, true)))));
    var var_1 = Struct_2(false, var_0);
    var var_2 = Struct_2(var_0.a.x == func_1(~min(u_input.c.x, 21313u), Struct_2(var_1.a, func_1(17378u, global3[_wgslsmith_index_u32(11956u, 5u)]))).a.x, var_1.b);
    var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16524u, 4294967295u, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.e, 52226u), vec2<u32>(40927u, u_input.b.x), var_2.a), u_input.b.zx), _wgslsmith_dot_vec2_u32(u_input.b.wy, abs(u_input.c.yy))), ~_wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.c.x), firstTrailingBit(vec4<u32>(u_input.e, u_input.c.x, u_input.b.x, u_input.e))))), 5u)];
    global3 = array<Struct_2, 5>();
    var_2 = Struct_2(var_1.a, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(155f, 671f, var_2.b.a.x) + vec3<f32>(-1339f, 833f, -1959f))), vec3<f32>(-1221f, _wgslsmith_f_op_f32(-var_2.b.a.x), _wgslsmith_f_op_f32(var_1.b.a.x + var_1.b.a.x)))));
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(global4.x), u_input.c.x, u_input.d);
}

