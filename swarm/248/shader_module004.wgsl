struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(23995u, 0u, 53660u, 41709u), vec4<u32>(92776u, 85141u, 42024u, 41942u), vec4<u32>(1u, 21228u, 0u, 1u), vec4<u32>(41658u, 2887u, 4294967295u, 54867u), vec4<u32>(0u, 4294967295u, 78643u, 25122u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 146210u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(1u, 26513u, 1u, 21960u), vec4<u32>(21355u, 28111u, 0u, 4294967295u), vec4<u32>(21891u, 4294967295u, 5641u, 1u), vec4<u32>(58835u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 63571u), vec4<u32>(35498u, 4294967295u, 80642u, 13450u), vec4<u32>(7465u, 57045u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 23054u, 83364u), vec4<u32>(0u, 43387u, 95094u, 87331u), vec4<u32>(53288u, 4294967295u, 16351u, 41446u), vec4<u32>(15929u, 24591u, 1u, 4294967295u), vec4<u32>(61384u, 4294967295u, 11830u, 49121u), vec4<u32>(28023u, 1u, 45887u, 44436u), vec4<u32>(79917u, 1u, 4294967295u, 43681u), vec4<u32>(18751u, 91061u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(46281u, 0u, 4294967295u, 0u), vec4<u32>(38924u, 4294967295u, 35520u, 60750u), vec4<u32>(11444u, 124628u, 34080u, 4294967295u));

var<private> global2: f32 = -2888f;

var<private> global3: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(1000f, -1852f), vec2<f32>(-1030f, 886f), vec2<f32>(1420f, -627f), vec2<f32>(683f, 792f));

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: u32) -> bool {
    global3 = array<vec2<f32>, 4>();
    var var_0 = ~reverseBits(70340i) << (~arg_0 % 32u);
    var var_1 = arg_0;
    global3 = array<vec2<f32>, 4>();
    var_0 = -u_input.a.x;
    return select(global0.x, !global0.x, select(any(vec3<bool>(!global0.x, false, false)), all(select(global0.ywz, global0.wxw, !vec3<bool>(global0.x, global0.x, global0.x))), !(!(u_input.a.x <= u_input.a.x))));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-563f, -998f, -1161f))))), ~(~1u) != _wgslsmith_dot_vec2_u32(~vec2<u32>(46770u, 2159u), vec2<u32>(1u, 1u))));
    global1 = array<vec4<u32>, 29>();
    global4 = _wgslsmith_div_f32(1720f, 387f);
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~max(11422u, 4294967295u), 4294967295u, _wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)])), ~(~(~vec3<u32>(1u, 4294967295u, 0u)))), _wgslsmith_div_vec3_u32(vec3<u32>(~(~4294967295u), _wgslsmith_mod_u32(99079u, ~51643u), 4294967295u), _wgslsmith_add_vec3_u32(~vec3<u32>(64183u, 17669u, 0u), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(11226u, 158876u, 3989u), vec3<u32>(70738u, 36057u, 1u), vec3<u32>(38005u, 0u, 1u))))));
    var var_2 = -1i;
    return _wgslsmith_f_op_vec3_f32(step(var_0.a.a, var_0.a.a));
}

fn func_1(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = !vec2<bool>(global0.x, any(select(!vec4<bool>(arg_0.c.b, global0.x, global0.x, arg_0.a.b.b), vec4<bool>(true, false, arg_0.c.b, false), !global0.x)));
    global0 = select(vec4<bool>(global0.x, select(min(-4650i, u_input.a.x) <= _wgslsmith_dot_vec2_i32(vec2<i32>(28108i, 37036i), u_input.a.zy), false, arg_0.a.a.b), true, !(abs(arg_0.c.a) <= min(arg_0.b.x, 11032u))), !(!vec4<bool>(select(true, false, global0.x), var_0.x, func_2(15617u), any(global0.yw))), any(vec2<bool>(true, global0.x)));
    var var_1 = arg_0.a.b;
    var var_2 = Struct_1(vec3<f32>(-810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.a.x)), arg_0.a.b.a.x), true);
    var var_3 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(-547f, arg_0.a.b.a.x, var_2.a.x) - vec3<f32>(var_2.a.x, var_1.a.x, 700f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3())))), true));
    return min(~vec3<i32>(_wgslsmith_div_i32(u_input.a.x ^ -15207i, 2147483647i), abs(-36383i), u_input.a.x), ~(~min(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i))) | select(~u_input.a, vec3<i32>(u_input.a.x, -34726i, min(-2147483647i, -9496i)), vec3<bool>(global0.x, var_2.a.x < -993f, var_2.b)));
}

fn func_4(arg_0: vec3<i32>) -> i32 {
    global1 = array<vec4<u32>, 29>();
    let var_0 = global0.wwz;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, 648f, 1468f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1865f, -281f, 1886f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2640f, 958f, 1156f), vec3<f32>(225f, -1518f, 1506f), var_0.x))))), true), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1507f, 1000f, -875f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1565f, 1021f, -753f) - vec3<f32>(808f, -350f, 1392f)))), false));
    global1 = array<vec4<u32>, 29>();
    var var_2 = vec3<u32>(select(_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 10780u), vec2<u32>(29236u, 46931u))) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(21888u, 90978u, 43536u), reverseBits(vec3<u32>(9753u, 0u, 0u))) % 32u), 96057u, false), 1u, ~(~(~173756u)) ^ select(~(~13307u), 4294967295u, !all(vec4<bool>(var_0.x, var_1.b.b, var_1.b.b, true))));
    return _wgslsmith_sub_i32(74203i >> (var_2.x % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.a.zz, vec2<i32>(-2147483647i, arg_0.x)), firstLeadingBit(firstTrailingBit(arg_0.zx))), min(-46609i, _wgslsmith_dot_vec2_i32(vec2<i32>(-13120i, 27139i), vec2<i32>(u_input.a.x, u_input.a.x) | vec2<i32>(arg_0.x, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~abs(func_1(Struct_4(Struct_3(Struct_1(vec3<f32>(873f, 526f, -114f), global0.x), Struct_1(vec3<f32>(-2576f, -156f, -135f), global0.x)), vec3<u32>(24618u, 0u, 4294967295u), Struct_2(9530u, global0.x)))) & u_input.a);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1110f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-731f - -2526f), 880f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(390f * -1779f))))), _wgslsmith_f_op_vec3_f32(func_3()).x));
    global1 = array<vec4<u32>, 29>();
    var var_2 = -585f;
    var var_3 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_1, -848f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(888f, -808f, var_1)))), !(all(global0.wyy) || !global0.x)));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-911f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f - _wgslsmith_f_op_f32(abs(1453f)))), 1000f, var_1);
    let var_5 = !(!(!select(!vec2<bool>(var_3.a.b, false), vec2<bool>(true, true), !global0.yw)));
    var_3 = Struct_5(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec3<u32>(0u, 11654u, 0u)))), abs(reverseBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.a.x, 1858i, u_input.a.x)))));
}

