struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: Struct_3;

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-1899f, -1218f, -646f), vec3<f32>(-140f, 1766f, 1000f), vec3<f32>(1523f, -369f, 615f), vec3<f32>(-1888f, 137f, 559f), vec3<f32>(-1886f, 2335f, -906f), vec3<f32>(1320f, -169f, -311f), vec3<f32>(-180f, -3089f, -1089f), vec3<f32>(721f, 1442f, -1432f), vec3<f32>(-118f, 755f, 429f), vec3<f32>(-522f, 3065f, -720f), vec3<f32>(811f, 1338f, -747f), vec3<f32>(-506f, -1000f, -706f), vec3<f32>(747f, 255f, -1170f), vec3<f32>(419f, 418f, -1000f), vec3<f32>(-565f, -1404f, 783f), vec3<f32>(-732f, 866f, 770f), vec3<f32>(947f, 1050f, 861f));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = vec3<bool>(false, global2.b, global2.b);
    global3 = array<vec3<f32>, 17>();
    var var_1 = _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(28476u, 17u)] + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-729f))) * 1f), -632f, _wgslsmith_f_op_f32(step(360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(112f, -397f)))))));
    var var_2 = global1.a;
    let var_3 = 80163u;
    return ~firstTrailingBit(var_2.a.zw);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(global2.a.zz, func_3(-(global1.a.a | global1.b.a), global1.a.a.yyx)), _wgslsmith_clamp_vec2_i32(global2.a.xw, vec2<i32>(countOneBits(global1.c.a.x), -2147483647i), vec2<i32>(_wgslsmith_sub_i32(u_input.c, -2147483647i), -_wgslsmith_sub_i32(-1i, 1i))));
    global3 = array<vec3<f32>, 17>();
    let var_1 = ~(~1u);
    global2 = global1.a;
    var var_2 = vec3<i32>(global2.c, 55105i, abs(~(var_0.x ^ -1i)) | -1i);
    return ~119u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec3<bool> {
    var var_0 = max(global2.a.yw, ~(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(arg_1.a.xz, global1.b.a.zz)));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, arg_3, arg_3, arg_3)))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -486f), arg_3, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_3)), arg_3, true)), true || select(global1.b.b, false, global1.b.b))), _wgslsmith_f_op_f32(round(-1267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f + _wgslsmith_div_f32(arg_3, -2199f))))));
    var_0 = -global2.a.zz;
    var var_2 = u_input.a.wx;
    var var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(44250i, global1.c.a.x), -52815i, -2147483647i), ~global2.a.yyy), 2147483647i) ^ vec2<i32>(global2.c, ~(-1604i));
    return vec3<bool>(global0[_wgslsmith_index_u32(~firstTrailingBit(~0u), 21u)], false, global1.b.b);
}

fn func_1() -> i32 {
    let var_0 = func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~96837u), u_input.a.x & ~4294967295u, func_2()), _wgslsmith_div_vec3_u32(u_input.a.xzz, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.zyx))), global1.b, countOneBits(global2.a.x | -1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(641f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(929f, 676f)) + _wgslsmith_f_op_f32(f32(-1f) * -2304f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(1253f - -483f)), -1070f))));
    global0 = array<bool, 21>();
    var var_1 = vec3<i32>(9863i, _wgslsmith_dot_vec4_i32(global2.a, global1.a.a), _wgslsmith_dot_vec2_i32(select(global1.b.a.yw, -_wgslsmith_add_vec2_i32(global2.a.xw, vec2<i32>(u_input.b, u_input.c)), global2.b), global2.a.yz ^ (-vec2<i32>(global2.a.x, u_input.d) & global2.a.xx)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-251f))) * 489f) - 751f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1089f)));
    let var_3 = true;
    return _wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.c.c, global2.a.x), global2.a.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = vec4<bool>(global1.b.b, !(!arg_2.x | all(vec3<bool>(false, false, arg_2.x))) && !arg_2.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(reverseBits(~u_input.a.x), 1u), 1u), 21u)], select(any(select(!vec3<bool>(arg_2.x, arg_0.b.b, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec3<bool>(arg_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true), arg_0.a.b)), true, any(vec3<bool>(true, true, arg_2.x))));
    var var_1 = global1.c;
    var var_2 = !var_1.b;
    var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    var var_3 = vec3<u32>(0u, _wgslsmith_dot_vec3_u32(u_input.a.wyy, ~(~min(u_input.a.wzw, vec3<u32>(28570u, 4294967295u, 1u)))), u_input.a.x);
    return Struct_2(Struct_1(~var_1.a, true, 29956i), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_3.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(39563u, 18912u, var_3.x), u_input.a.yxw, vec3<u32>(4294967295u, var_3.x, var_3.x))), _wgslsmith_dot_vec3_u32(~u_input.a.zzz, ~u_input.a.zzz), Struct_1(-vec4<i32>(_wgslsmith_mod_i32(var_1.a.x, global1.c.a.x), ~19905i, var_1.a.x, _wgslsmith_mod_i32(var_1.c, arg_0.b.c)), global2.b, firstTrailingBit(abs(min(var_1.a.x, -2269i)))), -vec3<i32>(abs(firstTrailingBit(-49721i)), arg_0.b.c, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.c;
    var var_0 = ~u_input.a.zw;
    var var_1 = firstTrailingBit(u_input.a.yw);
    var_0 = u_input.a.yx;
    var var_2 = func_5(Struct_3(Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, global2.a.x, global1.a.c), global1.c.a), global2.a), global1.c.b, u_input.c), Struct_1(-select(global1.a.a, global1.a.a, false), true, max(countOneBits(-2147483647i), func_1())), global1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) * -876f), 1170f)), !vec2<bool>(!all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, global2.b, global0[_wgslsmith_index_u32(var_0.x, 21u)])), true), _wgslsmith_add_vec2_i32(-global1.a.a.yy, global2.a.yy));
    var var_3 = true;
    var_3 = true;
    let var_4 = max(global2.c, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-196f)), _wgslsmith_f_op_f32(trunc(1806f))))), 30901i, u_input.a, func_5(Struct_3(var_2.a, var_2.d, func_5(Struct_3(Struct_1(vec4<i32>(u_input.c, -69747i, 2045i, var_4), true, 2147483647i), Struct_1(global1.b.a, global2.b, global2.a.x), global1.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-591f, 973f, 941f, 697f))), !vec2<bool>(false, global2.b), min(global2.a.yy, var_2.d.a.yx)).d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, -1153f, 1841f, -1231f))), !func_4(~4294967295u, func_5(Struct_3(Struct_1(vec4<i32>(41758i, var_2.e.x, global2.a.x, var_4), var_2.d.b, -25014i), Struct_1(global2.a, false, 1i), Struct_1(vec4<i32>(global2.a.x, global1.b.a.x, -39973i, 0i), true, global1.c.c)), vec4<f32>(-1855f, 788f, -485f, 1768f), vec2<bool>(false, global1.a.b), global2.a.zz).a, -1i, _wgslsmith_f_op_f32(trunc(-331f))).yx, vec2<i32>(var_4, func_3(vec4<i32>(-3117i, -30746i, var_2.a.c, var_4), vec3<i32>(-7441i, 0i, -1i)).x)).e);
}

