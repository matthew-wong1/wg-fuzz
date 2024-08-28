struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(0u, 34363u, 4294967295u, 76559u), 110372u);

var<private> global1: array<i32, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_5, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_1(0i);
    let var_1 = arg_1.a.xz;
    let var_2 = Struct_3(~countOneBits(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(u_input.e.x, 60527u)), vec2<u32>(48698u, 4294967295u))), arg_2.b, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, arg_2.d), !arg_2.d)) & all(!select(vec2<bool>(arg_2.c, false), vec2<bool>(arg_2.c, false), true)), arg_2.b, 15178u);
    var var_3 = -2147483647i;
    global1 = array<i32, 7>();
    return all(select(select(!(!vec3<bool>(true, true, var_2.c)), vec3<bool>(!var_2.c, true, all(vec2<bool>(false, var_2.c))), false), !select(!vec3<bool>(false, var_2.c, false), select(vec3<bool>(false, false, arg_2.d), vec3<bool>(var_2.c, false, true), vec3<bool>(var_2.c, true, var_2.c)), vec3<bool>(false, var_2.c, false)), !all(select(vec4<bool>(true, var_2.c, false, true), vec4<bool>(arg_2.c, arg_2.c, var_2.c, true), arg_2.d))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(320f, 1464f, 1281f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -512f, -2118f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1879f, 629f, -580f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1365f))))));
    var var_1 = !(!vec4<bool>(true, false, true, func_3(1u, Struct_2(vec3<f32>(960f, var_0.a.x, 153f), var_0.b), Struct_5(vec4<u32>(0u, 73927u, global0.b, u_input.e.x), Struct_1(-39539i), true, false), u_input.b.yzz)));
    global1 = array<i32, 7>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)) - _wgslsmith_f_op_f32(trunc(var_0.b))));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.b, 1112f) + var_0.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b)), 635f, 486f)), select(vec3<bool>(any(vec2<bool>(var_1.x, var_1.x)), var_1.x, true), var_1.xwx, var_1.x)));
    return Struct_4(firstTrailingBit(global0.a), global0.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    global0 = func_2();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_1 = _wgslsmith_div_i32(reverseBits(firstLeadingBit(~max(-16799i, 0i))), select(2147483647i, ~global1[_wgslsmith_index_u32(global0.b, 7u)], false));
    var var_2 = max(_wgslsmith_div_u32(~(~global0.b) << (~_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, u_input.e.x, 20002u, global0.b)) % 32u), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(~global0.b, ~global0.b))), ~(~_wgslsmith_div_u32(0u, 8852u)) >> (~global0.b % 32u));
    let var_3 = Struct_3(u_input.e.zz, Struct_1(global1[_wgslsmith_index_u32(~global0.a.x << (u_input.a.x % 32u), 7u)]), true, Struct_1(-(i32(-1i) * -1i) >> (global0.a.x % 32u)), ~u_input.a.x);
    return Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(firstLeadingBit(42262u) & var_3.a.x, 1199u), 15081u), 7u)]);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> f32 {
    let var_0 = vec2<bool>(true, arg_0.c);
    let var_1 = !(!arg_0.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(347f, 398f, -271f, 525f) + vec4<f32>(1870f, -377f, -1339f, -159f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -735f), -504f, _wgslsmith_f_op_f32(abs(-1057f)), -100f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1203f, 1155f, 2070f, 676f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(571f, -1307f, 120f, -1130f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -469f, -283f, _wgslsmith_f_op_f32(abs(477f))))));
    var var_3 = func_3(0u, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1560f, var_2.x, var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -137f)), arg_0, vec3<i32>(_wgslsmith_dot_vec2_i32(~u_input.d, u_input.b.zy), arg_1.b.a, arg_1.b.a));
    global1 = array<i32, 7>();
    return var_2.x;
}

fn func_5(arg_0: f32) -> Struct_3 {
    var var_0 = -36634i;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -255f, arg_0, 455f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1332f, 1351f, arg_0, -515f) + vec4<f32>(722f, -1954f, -1482f, arg_0)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, -123f, arg_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -190f, arg_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, 1273f, 815f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, -171f, -458f, 1944f)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false))))), all(vec3<bool>(true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))))));
    global0 = func_2();
    var_0 = _wgslsmith_dot_vec3_i32(u_input.b.wwx, ~u_input.b.ywz) | _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(countOneBits(-63992i), select(global1[_wgslsmith_index_u32(95579u, 7u)], -1i, true)) | u_input.c);
    var_0 = abs(-1i);
    return Struct_3(~u_input.e.xx, Struct_1(abs(-1i)), false, func_1(Struct_2(var_1.xyy, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(727f, -173f)), _wgslsmith_f_op_f32(-1098f * -327f)))), _wgslsmith_f_op_f32(sign(var_1.x)), vec2<bool>(true, true)), 34268u);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_5) -> Struct_5 {
    global0 = Struct_4(arg_3.a, reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(38996u, 0u), ~u_input.e.zy), ~(~arg_0.a))));
    var var_0 = arg_1;
    var_0 = arg_3.b;
    let var_1 = Struct_3(u_input.e.yy << (firstLeadingBit(vec2<u32>(arg_3.a.x, 26455u)) % vec2<u32>(32u)), arg_1, false, arg_1, ~u_input.e.x);
    var_0 = func_1(Struct_2(vec3<f32>(288f, _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f) - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(135f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -564f), 1000f)))), !vec2<bool>(any(!vec2<bool>(arg_3.d, true)), !(arg_0.c & true)));
    return Struct_5(~(global0.a << (arg_3.a % vec4<u32>(32u))) >> (select(vec4<u32>(74774u, arg_0.a.x, var_1.e, var_1.a.x) << (~arg_2.a % vec4<u32>(32u)), firstTrailingBit(~global0.a), func_3(reverseBits(arg_2.b), Struct_2(vec3<f32>(-1087f, -1000f, -390f), -866f), Struct_5(vec4<u32>(var_1.e, 50731u, 1u, 762u), Struct_1(arg_1.a), arg_0.c, arg_3.c), u_input.b.wzy)) % vec4<u32>(32u)), func_5(-1382f).d, !((true & (global1[_wgslsmith_index_u32(arg_0.e, 7u)] > var_1.b.a)) && arg_0.c), var_1.c || (func_3(~100343u, Struct_2(vec3<f32>(1300f, 424f, 562f), 1403f), arg_3, u_input.b.ywz) | all(vec3<bool>(true, arg_3.d, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 7>();
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(func_4(Struct_5(firstTrailingBit(u_input.e), Struct_1(-12322i), true, true), Struct_5(~global0.a, func_1(Struct_2(vec3<f32>(-377f, -381f, -828f), 2109f), -363f, vec2<bool>(false, true)), true, false)))), Struct_1(u_input.b.x), Struct_4(min(global0.a, vec4<u32>(5492u, u_input.a.x & global0.b, u_input.e.x, global0.b)), ~4294967295u), Struct_5(global0.a, Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(global0.a.x), u_input.a.x), 7u)]), func_3(global0.b, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, -766f, -1722f)), -694f), Struct_5(_wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(1u, 0u, 0u, 56071u)), Struct_1(global1[_wgslsmith_index_u32(34295u, 7u)]), true, true), firstLeadingBit(vec3<i32>(7803i, global1[_wgslsmith_index_u32(1u, 7u)], -1i) | vec3<i32>(24230i, global1[_wgslsmith_index_u32(global0.b, 7u)], 0i))), true));
    global0 = func_2();
    global1 = array<i32, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1144f, -210f, -851f, -781f) * vec4<f32>(1055f, 508f, 921f, -174f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(221f, -1000f, 915f, -197f) * vec4<f32>(385f, -300f, 1247f, -1284f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1303f, 482f, -375f, -945f) + vec4<f32>(283f, -1000f, -797f, 1184f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(980f, -119f, 1657f, -339f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, -2317f, 1794f, 263f)))))));
    let var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global0.a.x, 7u)], global1[_wgslsmith_index_u32(22517u, 7u)] | var_0.b.a), u_input.d)), -_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(~62928u, 7u)], u_input.d.x), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.a, -2147483647i), vec2<i32>(u_input.d.x, var_0.b.a)) << (~vec2<u32>(global0.a.x, 1u) % vec2<u32>(32u))));
}

