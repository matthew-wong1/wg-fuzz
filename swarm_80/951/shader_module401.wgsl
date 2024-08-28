struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

var<private> global1: array<f32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec3<i32> {
    return ~u_input.b;
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    global0 = array<vec2<u32>, 18>();
    let var_0 = ~_wgslsmith_add_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, u_input.a.x, 19245u, 48426u) | vec4<u32>(u_input.a.x, u_input.a.x, 42114u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, u_input.a.x, u_input.a.x, 69787u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, arg_3))), ~96510u & min(1u, arg_1.x)), u_input.a.x);
    let var_1 = arg_2;
    global0 = array<vec2<u32>, 18>();
    global0 = array<vec2<u32>, 18>();
    return !vec2<bool>(all(vec3<bool>(true, arg_0, all(vec4<bool>(arg_0, arg_0, false, arg_0)))), any(!select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, true, true, false))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: vec2<bool>) -> f32 {
    global0 = array<vec2<u32>, 18>();
    let var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(-844f, -640f), -294f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.x))))), arg_2.x), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.zyy), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -655f)))), vec3<bool>(false, true, all(vec2<bool>(arg_3.x, arg_3.x))))), 585f));
    global1 = array<f32, 10>();
    var var_1 = false;
    var var_2 = (arg_1.x & _wgslsmith_add_i32(-1i, select(arg_1.x | 27687i, 2147483647i & arg_1.x, arg_3.x))) != _wgslsmith_dot_vec3_i32(arg_1.yww, vec3<i32>(-16372i, arg_1.x, firstTrailingBit(1771i)));
    return _wgslsmith_f_op_f32(step(-1395f, var_0.b.b));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, -621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2371f + global1[_wgslsmith_index_u32(arg_0.x, 10u)]))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(arg_2.xzz))))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.a.x, 10u)]));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1576f, var_0.a.x, global1[_wgslsmith_index_u32(1u, 10u)]), vec3<f32>(arg_2.x, 1000f, -838f))) * var_0.a), arg_2.xwz)), 456f), Struct_2(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -385f, _wgslsmith_f_op_f32(round(arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1630f - var_0.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2.zxw))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~0u, 10u)], _wgslsmith_f_op_f32(425f * 289f)))), select(!vec3<bool>(true, any(vec4<bool>(arg_1.x, arg_1.x, false, true)), true), arg_1, arg_1), vec4<i32>(~abs(~514i), ~firstTrailingBit(1i), arg_3.x, arg_3.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, false), arg_1.yx, vec2<bool>(arg_1.x, arg_1.x)), select(vec4<i32>(arg_3.x, 30897i, -1i, u_input.b.x), vec4<i32>(u_input.c, arg_3.x, -30251i, -12767i), arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1147f, var_0.b, 1000f)), func_3(arg_1.x, arg_0, Struct_2(Struct_1(vec3<f32>(957f, global1[_wgslsmith_index_u32(4294967295u, 10u)], -813f), arg_2.x), Struct_1(vec3<f32>(1000f, -453f, -601f), -409f)), u_input.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_2.x, -212f)), -686f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 10u)]) == global1[_wgslsmith_index_u32(reverseBits(47049u), 10u)])), _wgslsmith_f_op_f32(-arg_2.x)));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, ~(~(-arg_3.x)), -30006i), vec3<i32>(-2147483647i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, -25305i, arg_3.x), vec3<i32>(var_1.d.x, 0i, 1i)), ~0i, !arg_1.x), _wgslsmith_mult_i32(-7296i ^ u_input.b.x, 1i)) << ((_wgslsmith_mult_vec3_u32(arg_0, abs(vec3<u32>(120777u, arg_0.x, 80018u))) ^ select(~arg_0, firstLeadingBit(arg_0), vec3<bool>(arg_1.x, false, arg_1.x))) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(var_0.a.zx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(786f, global1[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_f_op_vec2_f32(exp2(arg_2.wz))))) + var_1.a.a.zz));
    global1 = array<f32, 10>();
    return var_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> Struct_1 {
    global0 = array<vec2<u32>, 18>();
    global1 = array<f32, 10>();
    var var_0 = func_2(~((vec3<u32>(arg_2.a, arg_2.a, u_input.a.x) >> (vec3<u32>(32262u, 4294967295u, u_input.a.x) % vec3<u32>(32u))) << ((vec3<u32>(u_input.a.x, 77610u, arg_2.a) << (vec3<u32>(7165u, 0u, arg_2.a) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ ~min(abs(vec3<u32>(arg_2.a, arg_2.a, arg_2.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a, arg_2.a, 3049u), vec3<u32>(86180u, 1u, 45384u))), vec3<bool>(arg_1.c.x, true, arg_3.c.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -200f), arg_1.b.b.a.x, arg_3.e.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, arg_1.b.a.a.x, 388f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-624f - 1382f), -1793f, 2700f, -1258f), !arg_1.c.x)), !(!select(vec4<bool>(arg_0.c.x, false, false, arg_3.c.x), vec4<bool>(true, arg_1.c.x, true, false), true)))), abs(-arg_1.d.yzz));
    return arg_3.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 10>();
    let var_0 = reverseBits(-2147483647i);
    var var_1 = Struct_3(func_5(func_2(vec3<u32>(u_input.a.x, select(u_input.a.x, u_input.a.x, false), min(1u, u_input.a.x)), vec3<bool>(select(true, false, false), true, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], -948f, global1[_wgslsmith_index_u32(4294967295u, 10u)], 529f)), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 1226f, 832f, -1619f)), func_1(-1000f, Struct_3(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(40017u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), 1860f), Struct_2(Struct_1(vec3<f32>(1312f, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), global1[_wgslsmith_index_u32(0u, 10u)]), Struct_1(vec3<f32>(-1070f, global1[_wgslsmith_index_u32(0u, 10u)], -1956f), global1[_wgslsmith_index_u32(1u, 10u)])), vec3<bool>(false, true, false), vec4<i32>(var_0, 0i, u_input.c, var_0), vec3<f32>(-1101f, -1000f, 1448f)))), Struct_3(func_2(~vec3<u32>(36140u, 0u, 0u), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(953f, 1701f, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(51996u, 10u)]) * vec4<f32>(416f, global1[_wgslsmith_index_u32(3101u, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(25544u, 10u)])), vec3<i32>(-1770i, var_0, 0i)).b.a, Struct_2(func_2(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, true), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 636f, 2033f, 653f), vec3<i32>(u_input.c, -2147483647i, var_0)).b.b, Struct_1(vec3<f32>(1399f, 1395f, 232f), global1[_wgslsmith_index_u32(0u, 10u)])), vec3<bool>(true, false, true), vec4<i32>(reverseBits(26103i), abs(u_input.b.x), u_input.b.x, var_0), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 10u)])), -138f, -119f)), Struct_4(countOneBits(17371u)), func_2(max(vec3<u32>(u_input.a.x, 0u, 1u) ^ vec3<u32>(4294967295u, 4294967295u, 44509u), max(vec3<u32>(u_input.a.x, 0u, 0u), vec3<u32>(20020u, 80652u, u_input.a.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(806f, 1411f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -913f)))), ~(vec3<i32>(-2147483647i, 2147483647i, var_0) ^ vec3<i32>(var_0, -19707i, 2147483647i)))), func_2(select(select(countOneBits(vec3<u32>(4294967295u, u_input.a.x, 92832u)), vec3<u32>(19420u, u_input.a.x, u_input.a.x), vec3<bool>(true, true, true)), abs(select(vec3<u32>(0u, 19023u, 14306u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), true)), -var_0 > u_input.c), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(16056u, 10u)], _wgslsmith_f_op_f32(trunc(-1828f)), _wgslsmith_f_op_f32(max(1000f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_f32(f32(-1f) * -1696f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-243f, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(70149u, 10u)], 416f)))), u_input.b).b, !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), vec4<i32>(u_input.b.x, max(countOneBits(3756i) << (~u_input.a.x % 32u), u_input.c), -10979i, var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1876f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(40557u, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)]) * vec3<f32>(global1[_wgslsmith_index_u32(1u, 10u)], -387f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))), func_2(~vec3<u32>(u_input.a.x, 4294967295u, 1u), vec3<bool>(true, false, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1702f, -1098f, global1[_wgslsmith_index_u32(0u, 10u)], 125f) + vec4<f32>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -1471f, -1015f)), u_input.b).a.a))));
    var_1 = Struct_3(Struct_1(vec3<f32>(-1393f, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 25376u, 0u)), 10u)], -1424f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 10u)])), var_1.b, !(!var_1.c), -var_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.a.a * var_1.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a.b, 985f, 1142f) + var_1.a.a))))));
    let var_2 = -reverseBits(firstTrailingBit(vec4<i32>(-1i) * -var_1.d));
    global1 = array<f32, 10>();
    let var_3 = var_1.b;
    global0 = array<vec2<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.b.b), _wgslsmith_f_op_f32(min(647f, var_1.a.b))))))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 6605u), vec4<u32>(14089u, 4294967295u, 4294967295u, 0u)), 1u), _wgslsmith_add_u32(1u, reverseBits(u_input.a.x)), _wgslsmith_mult_u32(18443u, u_input.a.x)) | u_input.a.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-367f, var_1.b.a.a.x, -256f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.a))))), max(0u, u_input.a.x));
}

