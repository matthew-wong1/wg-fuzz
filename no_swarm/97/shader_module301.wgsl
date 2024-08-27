struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global1: array<Struct_2, 13>;

var<private> global2: array<i32, 1> = array<i32, 1>(-59960i);

var<private> global3: array<bool, 3> = array<bool, 3>(true, true, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> vec4<u32> {
    global2 = array<i32, 1>();
    global2 = array<i32, 1>();
    let var_0 = -376f;
    var var_1 = _wgslsmith_sub_u32(18832u, arg_1);
    var var_2 = global1[_wgslsmith_index_u32(~25725u, 13u)];
    return vec4<u32>(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(u_input.d.zw, u_input.d.xz)), u_input.d.yz), 1u, 1u, arg_1);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = 4294967295u ^ u_input.a;
    global3 = array<bool, 3>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(func_2(_wgslsmith_f_op_vec2_f32(arg_1.wx + vec2<f32>(-1888f, 1292f)), ~(u_input.a | 61637u))), u_input.d), 13u)];
    let var_2 = global0[_wgslsmith_index_u32(98391u, 25u)];
    var var_3 = Struct_1(u_input.d, var_1.a.b);
    return ~min(_wgslsmith_add_vec4_u32(var_1.a.a, vec4<u32>(~0u, _wgslsmith_mult_u32(37629u, var_3.a.x), var_1.c, var_1.e.a.x)), var_1.e.a);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = vec4<u32>(4294967295u, u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.ww, vec2<u32>(~0u, ~u_input.a)), countOneBits(~vec2<u32>(35182u, 41407u))), _wgslsmith_mult_u32(39115u, func_2(_wgslsmith_f_op_vec2_f32(abs(arg_1)), 4294967295u << (_wgslsmith_sub_u32(u_input.a, arg_0) % 32u)).x));
    let var_1 = countOneBits(vec4<i32>(37179i & arg_2.x, global2[_wgslsmith_index_u32(var_0.x, 1u)] & ~global2[_wgslsmith_index_u32(4294967295u, 1u)], -global2[_wgslsmith_index_u32(firstLeadingBit(55704u), 1u)], _wgslsmith_sub_i32(i32(-1i) * -1i, 11089i))) | vec4<i32>(-1i, -12426i | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), u_input.c), -(~u_input.b), 36818i);
    global1 = array<Struct_2, 13>();
    global3 = array<bool, 3>();
    global1 = array<Struct_2, 13>();
    return ~vec4<u32>(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 14214u, 55070u, 9784u), ~u_input.d), arg_0), _wgslsmith_sub_u32(32864u, func_2(arg_1, 0u).x), ~func_1(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), vec4<f32>(1212f, arg_1.x, arg_1.x, arg_1.x)).x, var_0.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 27584u), ~u_input.d), func_3(252u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(951f, 111f))), arg_1.b)), vec4<f32>(arg_1.d.b.x, -170f, _wgslsmith_f_op_f32(arg_0.x * -426f), _wgslsmith_f_op_f32(-arg_1.d.b.x))), Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1.d.b * vec4<f32>(-1000f, -341f, 159f, 1127f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d.b), vec4<f32>(arg_1.d.b.x, arg_0.x, arg_1.d.b.x, arg_0.x))))), _wgslsmith_dot_vec2_u32(vec2<u32>(20281u, arg_1.d.a.x), _wgslsmith_clamp_vec2_u32(arg_1.a.yw, vec2<u32>(abs(36639u), ~arg_1.d.a.x), select(arg_1.a.yw, arg_1.a.wz, true))), vec2<i32>(u_input.c.x, -2147483647i), Struct_1(vec4<u32>(u_input.a, 1u, 1u, arg_1.d.a.x), arg_1.d.b));
    global0 = array<vec3<bool>, 25>();
    let var_1 = 11667u;
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(u_input.d, ~u_input.d | (u_input.d << (vec4<u32>(4294967295u, u_input.a, 1u, u_input.d.x) % vec4<u32>(32u))), vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1595f, 229f, -919f, -1465f))))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(663f, -428f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1064f, -735f))), Struct_3(func_1(_wgslsmith_f_op_f32(max(2014f, 2323f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-628f, 454f, 3215f, 1731f) * vec4<f32>(149f, 460f, -752f, 1942f))), ~_wgslsmith_add_vec2_i32(u_input.c.yx, vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], 13360i)), u_input.c.x, Struct_1(func_3(u_input.d.x, vec2<f32>(-336f, -862f), u_input.c.zz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-583f, 774f, 430f, 259f))))), _wgslsmith_mod_u32(~(~32792u), _wgslsmith_div_u32(func_2(vec2<f32>(-324f, -1662f), 12225u).x, _wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(30157u, u_input.d.x)))) & 1379u, reverseBits(firstLeadingBit(vec2<i32>(-1i) * -u_input.c.xz)), func_4(func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1823f, -1473f), vec2<f32>(-113f, 329f), global3[_wgslsmith_index_u32(u_input.d.x, 3u)])))), Struct_3(~vec4<u32>(u_input.d.x, 959u, 0u, u_input.d.x), u_input.c.yz, -43930i, Struct_1(u_input.d, vec4<f32>(968f, 452f, 1318f, 871f)))).b.wz, Struct_3(u_input.d, u_input.c.zx, 12696i, func_4(vec2<f32>(-443f, -327f), Struct_3(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), u_input.c.xx, u_input.b, Struct_1(vec4<u32>(38643u, u_input.d.x, 4866u, 36053u), vec4<f32>(-1087f, -219f, -1007f, -1000f)))))));
    global0 = array<vec3<bool>, 25>();
    global1 = array<Struct_2, 13>();
    global1 = array<Struct_2, 13>();
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(var_0.e.b.yy, var_0.e.b.yw)), _wgslsmith_f_op_vec2_f32(floor(var_0.e.b.yz))))), Struct_3(vec4<u32>(var_0.a.a.x, 0u, 8636u, 3231u) & ~u_input.d, u_input.c.zx, firstLeadingBit(max(u_input.b, -2147483647i)), var_0.e)), var_0.e, var_0.a.a.x, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, i32(-1i) * -54474i), -2147483647i, firstLeadingBit(abs(global2[_wgslsmith_index_u32(var_0.a.a.x, 1u)]))), -_wgslsmith_add_i32(-1i, ~var_0.d.x)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.b.b.yy))), Struct_3(vec4<u32>(~var_0.e.a.x, ~8020u, 0u >> (u_input.d.x % 32u), 4294967295u & u_input.a), _wgslsmith_div_vec2_i32(-vec2<i32>(var_0.d.x, -1i), select(vec2<i32>(10342i, var_0.d.x), var_0.d, global3[_wgslsmith_index_u32(u_input.a, 3u)])), u_input.b, func_4(vec2<f32>(-165f, 536f), Struct_3(vec4<u32>(15429u, 4605u, u_input.d.x, var_0.b.a.x), u_input.c.xz, var_0.d.x, var_0.b)))));
    var var_2 = abs(~(~var_1.a.a));
    var var_3 = _wgslsmith_f_op_f32(634f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(392f, _wgslsmith_f_op_f32(-318f + -754f))));
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.b.b.x))))));
    var var_5 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.c, reverseBits(var_1.c), firstTrailingBit(var_0.b.a.x)), vec3<u32>(~func_3(var_2.x, var_0.b.b.zz, vec2<i32>(2147483647i, var_0.d.x)).x, func_3(var_0.e.a.x & u_input.a, _wgslsmith_f_op_vec2_f32(min(var_1.b.b.zx, vec2<f32>(451f, var_4))), -var_0.d).x, 4294967295u)), ~(~(~(~1u))));
}

