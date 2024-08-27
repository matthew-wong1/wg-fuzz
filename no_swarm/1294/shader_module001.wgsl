struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_2(vec2<i32>(-20492i, -22959i), false, vec4<f32>(-1297f, 567f, -2131f, 1000f), true, Struct_1(vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -15911i, 1i), vec4<u32>(0u, 33570u, 9706u, 38587u), 1156f, vec4<f32>(-611f, -1000f, -1374f, 610f))), vec2<f32>(-224f, -231f), false, 13127i, vec2<bool>(true, true)), Struct_3(Struct_2(vec2<i32>(9462i, -42500i), false, vec4<f32>(1000f, -239f, -320f, 165f), true, Struct_1(vec2<bool>(false, true), vec3<i32>(1733i, 1i, -22398i), vec4<u32>(5776u, 39543u, 0u, 87923u), -1230f, vec4<f32>(-578f, 598f, 2139f, 1000f))), vec2<f32>(876f, -535f), false, -6430i, vec2<bool>(false, false)), Struct_3(Struct_2(vec2<i32>(0i, i32(-2147483648)), true, vec4<f32>(-759f, -445f, 293f, 1239f), true, Struct_1(vec2<bool>(false, true), vec3<i32>(-25311i, -27687i, 5090i), vec4<u32>(43165u, 79413u, 4294967295u, 0u), -486f, vec4<f32>(792f, 450f, -105f, -1048f))), vec2<f32>(807f, -773f), true, 2147483647i, vec2<bool>(true, false)), Struct_3(Struct_2(vec2<i32>(-1i, -70581i), false, vec4<f32>(-199f, 1309f, 1241f, -137f), true, Struct_1(vec2<bool>(true, false), vec3<i32>(1688i, -17892i, 0i), vec4<u32>(12628u, 8901u, 1u, 74219u), -683f, vec4<f32>(123f, 1267f, 200f, -767f))), vec2<f32>(-253f, 272f), true, -1i, vec2<bool>(true, true)), Struct_3(Struct_2(vec2<i32>(-25240i, 24785i), true, vec4<f32>(919f, -354f, -1290f, -1000f), false, Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, -45132i, -50524i), vec4<u32>(34135u, 18844u, 4294967295u, 28601u), -582f, vec4<f32>(-479f, -488f, 1613f, 1343f))), vec2<f32>(700f, 233f), false, -12797i, vec2<bool>(false, true)), Struct_3(Struct_2(vec2<i32>(0i, 45062i), true, vec4<f32>(-791f, 477f, -1000f, -1472f), true, Struct_1(vec2<bool>(true, false), vec3<i32>(0i, 0i, 0i), vec4<u32>(1u, 1u, 0u, 49918u), 405f, vec4<f32>(-286f, 1185f, 1227f, 1061f))), vec2<f32>(131f, 184f), true, 48823i, vec2<bool>(true, true)), Struct_3(Struct_2(vec2<i32>(-59707i, 2147483647i), true, vec4<f32>(406f, -983f, -160f, 829f), false, Struct_1(vec2<bool>(false, false), vec3<i32>(0i, -9296i, -23135i), vec4<u32>(0u, 44329u, 11674u, 0u), 351f, vec4<f32>(762f, 618f, -1419f, 1264f))), vec2<f32>(-879f, 230f), true, 0i, vec2<bool>(false, false)));

var<private> global1: f32;

var<private> global2: array<vec2<bool>, 5>;

var<private> global3: vec4<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> f32 {
    global0 = array<Struct_3, 7>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1070f, 612f)) * 246f);
    global3 = arg_1.e.c;
    global1 = -1918f;
    let var_0 = arg_1.e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(525f - _wgslsmith_f_op_f32(-arg_1.e.e.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(358f + var_0.d), _wgslsmith_f_op_f32(arg_1.c.x + var_0.e.x)));
}

fn func_3() -> u32 {
    var var_0 = firstLeadingBit(max(-1365i, abs(u_input.a.x << (global3.x % 32u)) >> (firstLeadingBit(global3.x) % 32u)));
    let var_1 = select(-(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-22286i, u_input.a.x, -1i, -1i)), ~u_input.a.x, _wgslsmith_sub_i32(1i, 2147483647i), -1i)), vec4<i32>(~(-1i), _wgslsmith_add_i32(abs(u_input.a.x), u_input.a.x), -1i, reverseBits(-2147483647i)), vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))), any(vec3<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, true, false)), select(true, true, false))), false, false));
    return global3.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = ~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(29119u, global3.x), reverseBits(~global3.wy), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(global3.x, 19222u))));
    let var_1 = Struct_1(!vec2<bool>(true, arg_0.x <= _wgslsmith_f_op_f32(ceil(-738f))), vec3<i32>(reverseBits(0i), 0i, arg_2.x), min(~vec4<u32>(4294967295u, global3.x, global3.x, 26856u) | vec4<u32>(1u, ~1u, ~4294967295u, ~4294967295u), vec4<u32>(~global3.x, 1u, ~(~48375u), _wgslsmith_mult_u32(26197u, var_0.x) & _wgslsmith_dot_vec3_u32(global3.ywy, vec3<u32>(global3.x, var_0.x, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -862f) - arg_0.x), Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, arg_1), vec2<i32>(arg_2.x, arg_2.x), u_input.a), any(global2[_wgslsmith_index_u32(4885u, 5u)]), _wgslsmith_f_op_vec4_f32(select(arg_0, arg_0, vec4<bool>(true, true, false, true))), -2147483647i == arg_1, Struct_1(vec2<bool>(true, true), vec3<i32>(-2147483647i, u_input.a.x, arg_1), vec4<u32>(1571u, global3.x, 68793u, 35092u), arg_0.x, arg_0)), _wgslsmith_add_u32(global3.x, 29357u), arg_1))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-538f, -577f, arg_0.x, arg_0.x) * arg_0) * arg_0))));
    global2 = array<vec2<bool>, 5>();
    let var_2 = select(vec2<i32>(-1i, i32(-1i) * -2147483647i), vec2<i32>(27751i, -2147483647i), select(!var_1.a, var_1.a, false));
    global3 = vec4<u32>(func_3(), 1u, 1u, ~max(~var_1.c.x, reverseBits(global3.x)));
    return Struct_2(_wgslsmith_mult_vec2_i32(min(vec2<i32>(-2147483647i, u_input.a.x ^ 1i), select(var_2, var_1.b.xx & var_1.b.yy, var_1.a.x)), max(u_input.a, -(~vec2<i32>(var_2.x, u_input.a.x)))), ~_wgslsmith_mult_i32(2448i, arg_2.x) >= ((u_input.a.x & (arg_1 >> (35853u % 32u))) & 2147483647i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x + var_1.d)), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.x, var_1.d))))))), true, Struct_1(select(global2[_wgslsmith_index_u32(~var_0.x, 5u)], vec2<bool>(true, any(global2[_wgslsmith_index_u32(0u, 5u)])), var_1.a), vec3<i32>(-1i) * -select(vec3<i32>(arg_1, 1i, var_1.b.x), var_1.b, vec3<bool>(var_1.a.x, true, var_1.a.x)), var_1.c, _wgslsmith_f_op_f32(var_1.e.x * _wgslsmith_f_op_f32(min(arg_0.x, -576f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-997f, var_1.d, 287f, -416f) * arg_0)))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5) -> u32 {
    var var_0 = arg_0;
    var var_1 = max(arg_0.b.a.x, arg_1.b.x);
    var var_2 = arg_1;
    var var_3 = -293f;
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(round(var_2.e.yw)), func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_1.e))), _wgslsmith_dot_vec2_i32(firstTrailingBit(~var_0.d.e.b.yx), firstTrailingBit(vec2<i32>(var_2.b.x, arg_2.b.a.x))), vec4<i32>(_wgslsmith_sub_i32(8192i, arg_1.b.x), ~arg_0.d.e.b.x, -arg_2.b.a.x, _wgslsmith_add_i32(-1i, -2147483647i)) << (_wgslsmith_mult_vec4_u32(var_0.b.e.c & vec4<u32>(1u, 1u, arg_2.a, 1u), ~vec4<u32>(1u, global3.x, 0u, 4294967295u)) % vec4<u32>(32u))), 1u, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1063f, var_0.d.c.x, 126f, arg_0.a.x) - var_0.d.c), _wgslsmith_f_op_vec4_f32(-arg_1.e))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_2.b.c, vec4<f32>(3179f, 2113f, var_0.b.e.d, arg_2.b.e.d), vec4<bool>(true, arg_1.a.x, false, true))))), -u_input.a.x, vec4<i32>(func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(268f, arg_0.b.c.x, var_2.e.x, 559f), arg_2.b.c, var_2.a.x)), ~var_2.b.x, vec4<i32>(arg_2.b.e.b.x, arg_2.b.e.b.x, arg_1.b.x, 1i)).a.x, var_0.b.e.b.x, _wgslsmith_mult_i32(arg_1.b.x, var_0.d.a.x), _wgslsmith_clamp_i32(~13253i, firstLeadingBit(-1i), -1i | arg_1.b.x))));
    return var_0.b.e.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(33699u, 4294967295u, 14054u, func_4(Struct_4(vec2<f32>(-1616f, -404f), func_1(vec4<f32>(793f, 1281f, -1088f, -1148f), 1i, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)), 1u, func_1(vec4<f32>(-1828f, -801f, 289f, 637f), -9236i, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))), Struct_1(select(global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(global3.x, 5u)], vec2<bool>(true, false)), vec3<i32>(1i, 1i, 1i), ~vec4<u32>(global3.x, global3.x, global3.x, 1674u), _wgslsmith_div_f32(851f, -421f), vec4<f32>(1f, 1f, 1f, 1f)), Struct_5(31712u, func_1(vec4<f32>(1327f, 285f, -1231f, 363f), -1i, vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x))))), reverseBits(vec4<u32>(global3.x | global3.x, 0u, firstTrailingBit(global3.x), global3.x)), firstLeadingBit(vec4<u32>(global3.x, ~global3.x, ~51452u, _wgslsmith_clamp_u32(global3.x, 47780u, global3.x)) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, global3.x, 15843u), vec4<u32>(global3.x, 0u, 4294967295u, global3.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global3.x, 1u, 24658u, global3.x), vec4<u32>(global3.x, global3.x, global3.x, global3.x)))));
    global3 = vec4<u32>(~(~global3.x), 51516u, ~func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1310f, 1265f)), Struct_2(u_input.a, false, vec4<f32>(136f, -518f, -591f, -759f), false, Struct_1(vec2<bool>(false, true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), var_0, 1059f, vec4<f32>(-135f, 345f, 1242f, -392f))), var_0.x, Struct_2(vec2<i32>(39893i, u_input.a.x), true, vec4<f32>(1877f, 984f, 1090f, -279f), false, Struct_1(vec2<bool>(false, true), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec4<u32>(5666u, var_0.x, 4294967295u, var_0.x), 1000f, vec4<f32>(1277f, -1314f, -934f, 777f)))), Struct_1(func_1(vec4<f32>(407f, -1000f, -641f, 1220f), u_input.a.x, vec4<i32>(24185i, u_input.a.x, -1i, u_input.a.x)).e.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, -1i, u_input.a.x), vec3<i32>(10134i, u_input.a.x, -1i)), var_0, 228f, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-103f, -2516f, 1110f, 368f)))), Struct_5(var_0.x, Struct_2(vec2<i32>(-3931i, u_input.a.x), false, vec4<f32>(-166f, -1057f, 1656f, 224f), true, Struct_1(vec2<bool>(false, false), vec3<i32>(-9645i, u_input.a.x, u_input.a.x), vec4<u32>(57593u, 1u, var_0.x, var_0.x), 1945f, vec4<f32>(-523f, 762f, 350f, 637f))))), _wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.xy) | max(global3.zz, global3.xx), vec2<u32>(func_3(), global3.x)) & (~max(var_0.x, var_0.x) << (_wgslsmith_sub_u32(countOneBits(0u), global3.x) % 32u)));
    global3 = vec4<u32>(_wgslsmith_dot_vec4_u32(min(var_0, ~var_0), var_0), _wgslsmith_mod_u32(var_0.x & _wgslsmith_mod_u32(global3.x, var_0.x), var_0.x), _wgslsmith_sub_u32(1u >> (1u % 32u), ~abs(~var_0.x)), func_4(Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(833f, 661f)))), Struct_2(u_input.a << (global3.xz % vec2<u32>(32u)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1174f, 173f, -2246f, -661f)), true, Struct_1(global2[_wgslsmith_index_u32(var_0.x, 5u)], vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), var_0, -210f, vec4<f32>(-1870f, -1446f, -504f, 371f))), ~firstTrailingBit(global3.x), Struct_2(~vec2<i32>(2475i, u_input.a.x), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1386f, -190f, 1934f, -595f)), true, Struct_1(global2[_wgslsmith_index_u32(0u, 5u)], vec3<i32>(0i, u_input.a.x, 0i), vec4<u32>(global3.x, 33126u, 0u, 50241u), -1469f, vec4<f32>(684f, -214f, -186f, -1803f)))), Struct_1(vec2<bool>(all(vec2<bool>(false, true)), false), min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(u_input.a.x, 28921i, u_input.a.x)), select(vec3<i32>(-3361i, 61233i, -2147483647i), vec3<i32>(-40348i, u_input.a.x, 51473i), vec3<bool>(false, true, true))), ~(var_0 ^ vec4<u32>(var_0.x, var_0.x, 1u, 19752u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1638f - 312f) - 122f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1989f, -351f, -200f, -376f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, -224f, -364f, 1000f) - vec4<f32>(-676f, 714f, -821f, 484f)))), Struct_5(min(var_0.x, 1u), Struct_2(abs(vec2<i32>(u_input.a.x, u_input.a.x)), true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(949f, -386f, -1623f, 281f))), any(global2[_wgslsmith_index_u32(global3.x, 5u)]), Struct_1(vec2<bool>(true, false), vec3<i32>(u_input.a.x, u_input.a.x, 21718i), vec4<u32>(25992u, 0u, 1u, var_0.x), 455f, vec4<f32>(1440f, -361f, 640f, 848f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-814f, _wgslsmith_f_op_f32(f32(-1f) * -925f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -976f))))), -299f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1467f + _wgslsmith_f_op_f32(193f - 2636f))))));
    global1 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_sub_vec3_i32(min(vec3<i32>(-15458i, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<i32>(u_input.a.x, u_input.a.x, 35026i))), u_input.a);
}

