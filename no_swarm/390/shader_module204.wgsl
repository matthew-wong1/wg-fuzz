struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 1i, 0i), vec3<i32>(1i, -66702i, -29100i), vec3<i32>(1i, 1i, i32(-2147483648)));

var<private> global1: array<bool, 7> = array<bool, 7>(true, true, true, false, false, false, true);

var<private> global2: f32 = 554f;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(1000f, -1037f, -1175f, -1455f)), Struct_1(vec4<f32>(1000f, 300f, 1307f, -1150f)), Struct_1(vec4<f32>(1445f, 1865f, 1282f, -1197f)), Struct_1(vec4<f32>(2785f, 1450f, -2191f, -126f)), Struct_1(vec4<f32>(-1604f, 1000f, -512f, -1000f)), Struct_1(vec4<f32>(344f, 1000f, -341f, -1000f)), Struct_1(vec4<f32>(-886f, -1140f, -397f, -935f)), Struct_1(vec4<f32>(-152f, 1538f, 1440f, -1451f)), Struct_1(vec4<f32>(-314f, 927f, 941f, -1060f)), Struct_1(vec4<f32>(-140f, -698f, 1153f, -755f)), Struct_1(vec4<f32>(1000f, 716f, 561f, -1519f)), Struct_1(vec4<f32>(-407f, -639f, 150f, 187f)), Struct_1(vec4<f32>(-1000f, 569f, -345f, 941f)), Struct_1(vec4<f32>(-1209f, 242f, -575f, -1322f)), Struct_1(vec4<f32>(-262f, -146f, 820f, 1000f)), Struct_1(vec4<f32>(-798f, -240f, -717f, 1248f)), Struct_1(vec4<f32>(435f, 1580f, -308f, 1186f)), Struct_1(vec4<f32>(1344f, -519f, -2708f, 1906f)), Struct_1(vec4<f32>(-419f, -1584f, 226f, -913f)), Struct_1(vec4<f32>(800f, 1025f, -1713f, 1905f)), Struct_1(vec4<f32>(186f, -1200f, 1000f, 1374f)), Struct_1(vec4<f32>(-218f, -1025f, 566f, 1446f)), Struct_1(vec4<f32>(-518f, -385f, -1098f, 1446f)));

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> Struct_1 {
    let var_0 = 23026u;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1324f) * 377f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -604f) - -477f))));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    let var_0 = global3[_wgslsmith_index_u32(min(~46007u, firstLeadingBit(31403u)), 23u)];
    global3 = array<Struct_1, 23>();
    return _wgslsmith_clamp_vec2_i32(abs(-vec2<i32>(-44103i, u_input.a)) ^ (vec2<i32>(-1i) * -vec2<i32>(u_input.a, 1i)), vec2<i32>(_wgslsmith_mult_i32(select(u_input.a, 44207i, true), -1i), -8601i), max(~vec2<i32>(-2147483647i, 11962i), select(countOneBits(vec2<i32>(u_input.c, u_input.c)), ~vec2<i32>(u_input.c, 2147483647i), !global1[_wgslsmith_index_u32(37219u, 7u)]))) >> (_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.zy, _wgslsmith_add_vec2_u32(u_input.d.ww, u_input.d.yw)), select(u_input.d.zx, u_input.e.xy & u_input.d.wy, select(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0, 7u)]), vec2<bool>(global1[_wgslsmith_index_u32(34714u, 7u)], true), true)), u_input.b), u_input.d.yw) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = select(!select(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 7u)], global1[_wgslsmith_index_u32(u_input.e.x, 7u)], true), vec4<bool>(false, true, true, false), global1[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(47732u, 7u)], false, true, true)), global1[_wgslsmith_index_u32(1u, 7u)] | global1[_wgslsmith_index_u32(u_input.e.x, 7u)], true, false), global1[_wgslsmith_index_u32(u_input.e.x, 7u)]), select(select(vec4<bool>(true, false, false, true), vec4<bool>(global1[_wgslsmith_index_u32(32467u, 7u)], !global1[_wgslsmith_index_u32(33437u, 7u)], any(vec3<bool>(global1[_wgslsmith_index_u32(79392u, 7u)], true, false)), !global1[_wgslsmith_index_u32(u_input.b.x, 7u)]), !global1[_wgslsmith_index_u32(u_input.b.x, 7u)] || (true & global1[_wgslsmith_index_u32(u_input.d.x, 7u)])), vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], true, global1[_wgslsmith_index_u32(max(countOneBits(18151u), ~998u), 7u)], !global1[_wgslsmith_index_u32(u_input.e.x, 7u)]), global1[_wgslsmith_index_u32(~43231u, 7u)]), !(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 7u)], false, true, global1[_wgslsmith_index_u32(u_input.e.x, 7u)]))));
    global0 = array<vec3<i32>, 4>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(528f, 1000f))) + 146f)) + 1f);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -460f);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(func_2().a.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1469f) * vec2<f32>(var_1, var_1))), all(vec4<bool>(var_0.x, true, false, false)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1)), -432f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -1623f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1482f, var_1))))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1272f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, -1452f, var_2.x, var_1), vec4<f32>(var_1, var_2.x, 299f, -619f)))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2();
    var var_1 = Struct_2(func_4(func_3(max(u_input.b.x, 0u))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -528f, var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -422f)))), func_4(func_3(~u_input.e.x)), func_2(), _wgslsmith_f_op_vec4_f32(-var_0.a));
    global3 = array<Struct_1, 23>();
    var var_2 = Struct_2(func_4(vec2<i32>(u_input.c | -64910i, -974i) | firstTrailingBit(~vec2<i32>(64340i, 0i))), var_1.a, var_1.d, Struct_1(vec4<f32>(func_4(vec2<i32>(u_input.c, 2147483647i) ^ vec2<i32>(u_input.a, u_input.c)).a.x, _wgslsmith_f_op_f32(max(var_1.a.a.x, _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.e.x)) + _wgslsmith_f_op_f32(-var_1.d.a.x)), _wgslsmith_div_f32(var_1.a.a.x, 1019f))), vec4<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))) * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1630f - var_0.a.x))), 2567f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) + -990f)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(u_input.b.x), ~(~(~u_input.e.x)) << (u_input.d.x % 32u), max(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(58937u, 112056u), select(vec2<u32>(u_input.e.x, 1u), vec2<u32>(u_input.d.x, u_input.d.x), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 7u)])), select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(u_input.d.x, 7u)]), vec2<bool>(false, true))), ~(~u_input.e.zz)), _wgslsmith_sub_u32(u_input.b.x, countOneBits(~4294967295u)))), 7u)];
    return StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.wyy, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, u_input.d.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))) | firstLeadingBit(u_input.e | u_input.d.zxy), reverseBits(abs(vec3<u32>(74672u, u_input.d.x, 94683u)))), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, func_3(0u).x, u_input.a, ~(-38258i)), reverseBits(countOneBits(vec4<i32>(0i, u_input.a, -1i, u_input.a)))), ~_wgslsmith_mult_u32(73045u, max(4294967295u, u_input.b.x) >> (u_input.e.x % 32u)), u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~(~(~u_input.d.x));
    let x = u_input.a;
    s_output = func_1();
}

