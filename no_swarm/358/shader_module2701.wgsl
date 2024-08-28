struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(124u, 4294967295u, 14015u), vec3<u32>(59011u, 49772u, 93531u), vec3<u32>(1u, 80864u, 8498u), vec3<u32>(79577u, 4294967295u, 4294967295u), vec3<u32>(1u, 28667u, 11076u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(76840u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(32711u, 117157u, 29697u), vec3<u32>(22366u, 36698u, 22787u), vec3<u32>(113337u, 1u, 0u));

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-2076f, 187f, 631f, 2018f), vec4<f32>(-1367f, 1503f, -1323f, 1000f), vec4<f32>(-1289f, -965f, -1656f, -1258f), vec4<f32>(-805f, 1673f, 1740f, 323f), vec4<f32>(2422f, 1323f, -1000f, -1008f), vec4<f32>(2617f, -932f, -256f, -166f), vec4<f32>(1404f, -1000f, -1356f, 914f), vec4<f32>(-487f, 311f, -1173f, -1053f), vec4<f32>(-1508f, 1624f, -751f, 421f), vec4<f32>(-843f, -197f, 1173f, 248f), vec4<f32>(666f, -2204f, -2371f, -631f), vec4<f32>(-102f, -803f, -838f, -1222f), vec4<f32>(-526f, -107f, -1063f, -361f), vec4<f32>(-858f, 1124f, -266f, -855f), vec4<f32>(1556f, 1300f, 596f, 1000f), vec4<f32>(826f, -1843f, -146f, -143f), vec4<f32>(-393f, 545f, -1167f, -452f), vec4<f32>(384f, 340f, 1964f, -356f), vec4<f32>(310f, -202f, 222f, 1202f), vec4<f32>(-1000f, -1320f, 1000f, 1583f), vec4<f32>(1141f, 800f, -1685f, 1891f), vec4<f32>(-1987f, 1223f, 1770f, 997f), vec4<f32>(-2881f, -1000f, 1409f, -1318f), vec4<f32>(1550f, 384f, -521f, 147f), vec4<f32>(916f, 162f, 277f, 3327f));

var<private> global3: array<vec3<u32>, 22>;

var<private> global4: array<vec3<u32>, 7>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = vec4<i32>(u_input.d.x, _wgslsmith_div_i32(-u_input.e.x, -26314i) | max(-abs(u_input.d.x), ~_wgslsmith_mod_i32(53754i, u_input.e.x)), u_input.d.x, u_input.d.x);
    var_0 = max(reverseBits(u_input.e), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(-u_input.e, u_input.e));
    let var_1 = ~global0.a.xx;
    global0 = Struct_1(select(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~var_1.x, 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b, var_1.x, 4294967295u, 32509u), vec4<u32>(0u, 15548u, 0u, 78847u)), max(vec4<u32>(20105u, arg_0.x, 39351u, var_1.x), vec4<u32>(u_input.b.x, 1u, arg_0.x, 39161u)))), 7u)], u_input.a, false), abs(u_input.a.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-287f, -1856f))))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1734f, -648f, _wgslsmith_f_op_f32(floor(1413f)))));
    var var_1 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));
    var var_2 = Struct_1(global3[_wgslsmith_index_u32(~(arg_1.b << (_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 71090u, global0.a.x), global1[_wgslsmith_index_u32(30556u, 12u)], true), vec3<u32>(40451u, u_input.b.x, 1u)) % 32u)), 22u)], firstLeadingBit(global0.a.x << (4294967295u % 32u)));
    global1 = array<vec3<u32>, 12>();
    let var_3 = ~2147483647i;
    return _wgslsmith_f_op_vec2_f32(round(var_0.yy));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-619f + 1500f) + 299f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec3<u32>(4294967295u, arg_0.a.x, 8736u))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(454f, _wgslsmith_f_op_f32(1729f * -1086f))) * 342f)) * _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1362f), Struct_1(countOneBits(vec3<u32>(18894u, global0.a.x, global0.a.x)) | global4[_wgslsmith_index_u32(~u_input.b.x, 7u)], u_input.c))));
    let var_1 = u_input.e.yw & select(_wgslsmith_mod_vec2_i32(u_input.e.zw, u_input.e.zw << ((global0.a.yz | vec2<u32>(global0.b, u_input.a.x)) % vec2<u32>(32u))), -u_input.e.zz, vec2<bool>(all(vec4<bool>(false, true, true, true)), false));
    let var_2 = select(vec4<bool>(~(u_input.c ^ 1u) > _wgslsmith_clamp_u32(13014u, 0u, ~arg_0.a.x), false && (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.a.x, arg_0.a.x, 115593u), vec4<u32>(global0.a.x, 54499u, 37266u, arg_0.b)) != 13297u), all(vec4<bool>(var_0.x > var_0.x, true, true, false)), false || all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), vec4<bool>(true, 1127f > _wgslsmith_f_op_f32(func_2(u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(202f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1206f + -415f)), true), any(select(vec4<bool>(any(vec2<bool>(false, false)), true, true, any(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), !any(vec3<bool>(false, false, true)))));
    let var_3 = arg_0;
    global3 = array<vec3<u32>, 22>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 22>();
    global3 = array<vec3<u32>, 22>();
    var var_0 = func_1(Struct_1(~global0.a, 0u));
    var var_1 = ~vec4<u32>(~u_input.a.x, reverseBits(~u_input.b.x), _wgslsmith_clamp_u32(u_input.c, _wgslsmith_add_u32(4294967295u, u_input.b.x << (u_input.b.x % 32u)), 4294967295u), var_0.b);
    var var_2 = ~((var_1.x ^ 29176u) << (~var_0.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(select(global4[_wgslsmith_index_u32(global0.b, 7u)], var_0.a, false))))), 130f)));
}

