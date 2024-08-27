struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(1000f, -119f, 1000f, 1664f), vec4<f32>(-1046f, -953f, 1395f, 1030f), vec4<f32>(1000f, -567f, -908f, 273f), vec4<f32>(823f, 1382f, -283f, 724f), vec4<f32>(929f, -991f, 468f, 698f), vec4<f32>(697f, 1043f, -897f, -1848f), vec4<f32>(-1000f, -720f, -1436f, 687f), vec4<f32>(277f, 109f, 1800f, 897f), vec4<f32>(-1763f, 223f, 1278f, -406f), vec4<f32>(-663f, 162f, 964f, -571f), vec4<f32>(1410f, -266f, 853f, -2369f), vec4<f32>(210f, -1902f, -1000f, -1169f), vec4<f32>(1188f, 1000f, 470f, 1000f), vec4<f32>(879f, 641f, -1000f, 1292f), vec4<f32>(662f, -1000f, -1240f, -1442f), vec4<f32>(1027f, 2480f, 970f, 2308f), vec4<f32>(-294f, 657f, 151f, 1926f), vec4<f32>(258f, 1431f, -103f, -835f), vec4<f32>(523f, -350f, -153f, 793f), vec4<f32>(824f, -736f, 103f, -1244f), vec4<f32>(-252f, 1419f, 238f, 1011f), vec4<f32>(952f, -965f, 956f, -718f), vec4<f32>(-328f, -718f, 351f, -1166f), vec4<f32>(-315f, 432f, -697f, -462f), vec4<f32>(-1023f, -1941f, 403f, 1564f), vec4<f32>(1968f, 179f, -190f, 791f), vec4<f32>(1322f, 252f, 1182f, -861f), vec4<f32>(623f, 1544f, -201f, -2321f), vec4<f32>(-663f, 817f, 1000f, -223f), vec4<f32>(-1024f, 302f, -237f, -833f), vec4<f32>(-677f, -1008f, -341f, 1081f), vec4<f32>(294f, 954f, 1735f, -1539f));

var<private> global1: Struct_5;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: bool = true;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: bool) -> bool {
    let var_0 = Struct_3(Struct_1(select(vec4<bool>(any(vec3<bool>(global2.x, arg_2, global2.x)), true, all(arg_1), u_input.a.x <= -24147i), vec4<bool>(!global2.x, true, global2.x, false), true), 4294967295u, _wgslsmith_add_i32(~u_input.a.x, -53633i) | firstLeadingBit(arg_0.b), select(~(vec4<u32>(7678u, u_input.d.x, global1.b, global1.a) ^ vec4<u32>(4294967295u, 69206u, global1.b, u_input.d.x)), vec4<u32>(~u_input.b.x, global1.a ^ 80931u, ~u_input.d.x, max(48913u, u_input.d.x)), !vec4<bool>(global2.x, true, false, arg_1.x))), Struct_1(select(select(!vec4<bool>(arg_1.x, true, true, false), vec4<bool>(false, arg_1.x, false, false), any(arg_1)), select(select(vec4<bool>(true, global2.x, global3.x, global3.x), vec4<bool>(global2.x, false, arg_1.x, global3.x), true), select(vec4<bool>(true, true, arg_2, true), vec4<bool>(true, true, global2.x, global3.x), vec4<bool>(false, arg_1.x, false, false)), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), any(select(vec4<bool>(false, global3.x, arg_2, true), vec4<bool>(false, global2.x, false, true), vec4<bool>(arg_1.x, arg_1.x, global2.x, global3.x)))), ~22065u, 0i, ~vec4<u32>(1u, 66760u, u_input.b.x << (global1.b % 32u), ~5523u)), vec2<bool>(true, true), ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.ywx, arg_0.a.yyy, arg_0.a.wxz), vec3<i32>(u_input.a.x, -2091i, 0i)) <= -(~(-arg_0.a.x)));
    return true;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f + -1160f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(182f * 1058f), _wgslsmith_f_op_f32(-1000f + 1958f), select(global3.x, false, true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-947f)))), _wgslsmith_f_op_f32(-1f))));
    let var_1 = _wgslsmith_sub_u32(~u_input.b.x & global1.b, 0u) >> ((~1u ^ select(70635u, _wgslsmith_clamp_u32(u_input.c & global1.b, firstTrailingBit(4294967295u), 44233u), false | (global3.x != false))) % 32u);
    var var_2 = var_0.x;
    let var_3 = select(!vec2<bool>(_wgslsmith_div_i32(u_input.e, u_input.e) != u_input.e, !(u_input.a.x != u_input.a.x)), !vec2<bool>(true, global2.x), select(max(94362i, -u_input.a.x) >= 928i, !func_3(Struct_4(vec4<i32>(u_input.e, 2147483647i, -45913i, u_input.a.x), 20830i), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(global2.x, true)), true), (!global2.x || false) | (var_0.x == _wgslsmith_f_op_f32(var_0.x * var_0.x))));
    var var_4 = Struct_4(max(countOneBits(max(u_input.a ^ u_input.a, -u_input.a)), ~vec4<i32>(u_input.a.x, max(u_input.a.x, u_input.e), ~9505i, _wgslsmith_div_i32(35705i, u_input.e))), u_input.a.x);
    return var_0.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-651f)) * var_0.x);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: i32) -> Struct_5 {
    var var_0 = -select(~(~(vec2<i32>(-1i, 2147483647i) << (u_input.b % vec2<u32>(32u)))), -(~(arg_1.zz & u_input.a.zw)), global2.x);
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.b, global1.b, 0u, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, global1.a, arg_0), vec4<u32>(63694u, 0u, 0u, u_input.d.x), vec4<u32>(4294967295u, arg_0, global1.a, arg_0))), _wgslsmith_add_u32(_wgslsmith_sub_u32(~0u, max(0u, u_input.b.x)), u_input.d.x)), ~(~0u));
    global3 = vec2<bool>(!(!any(vec2<bool>(global2.x, global3.x))) && func_2(), global3.x & true);
    let var_2 = Struct_1(vec4<bool>(true, false, global2.x, global3.x), 1u, _wgslsmith_add_i32(~(~arg_1.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.x), arg_1.zz)), 6249i), abs(vec4<u32>(reverseBits(~u_input.d.x), _wgslsmith_div_u32(reverseBits(global1.a), u_input.c), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.d.x), vec3<u32>(89880u, u_input.b.x, 0u)) << ((4294967295u << (global1.a % 32u)) % 32u))));
    var var_3 = 43845u;
    return Struct_5(_wgslsmith_sub_u32(global1.b, ~(~reverseBits(4294967295u))), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d.x, 11534u), arg_0, u_input.b.x) | 2437u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_sub_u32(~(~(u_input.d.x >> (4294967295u % 32u))), _wgslsmith_sub_u32(global1.a, abs(u_input.b.x) ^ 842u)), reverseBits(4294967295u));
    var_0 = func_1(4294967295u, vec4<i32>(u_input.e, -u_input.e, abs(-_wgslsmith_sub_i32(u_input.e, u_input.e)), u_input.a.x), u_input.a.x);
    var var_1 = Struct_2(Struct_1(vec4<bool>(global3.x, global3.x, global3.x, global3.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(13597u, var_0.b), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 15147u), u_input.b)), ~abs(u_input.a.x) ^ reverseBits(~u_input.a.x), vec4<u32>(u_input.c ^ 53674u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 4476u, var_0.a), vec3<u32>(1u, global1.a, var_0.a) << (vec3<u32>(8780u, var_0.b, 0u) % vec3<u32>(32u))), global1.b)));
    let var_2 = vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(4294967295u, u_input.b.x)), 4294967295u), 69667u, u_input.c, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(767f, -809f, -391f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2181f, -1000f, 1390f), vec3<f32>(-1075f, -1160f, 1000f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 137f, 2013f)))))), _wgslsmith_f_op_f32(-708f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1534f)) + -1537f) + -327f)));
}

