struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(492f), Struct_1(3154f), Struct_1(-424f), Struct_1(1502f), Struct_1(2018f), Struct_1(-736f), Struct_1(-135f), Struct_1(1632f), Struct_1(-264f), Struct_1(-352f), Struct_1(-471f), Struct_1(1121f), Struct_1(1309f), Struct_1(300f), Struct_1(1627f), Struct_1(-375f), Struct_1(-974f), Struct_1(-751f), Struct_1(-2047f), Struct_1(438f), Struct_1(469f), Struct_1(-1579f), Struct_1(-479f), Struct_1(-686f), Struct_1(-170f), Struct_1(-840f), Struct_1(-811f), Struct_1(-1098f), Struct_1(-541f), Struct_1(497f), Struct_1(-1233f), Struct_1(-619f));

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-1986f, -1114f, -1917f, -1631f), vec4<f32>(1125f, -520f, -1323f, 1885f), vec4<f32>(163f, 749f, 234f, 299f), vec4<f32>(-590f, -1070f, -1217f, -1616f), vec4<f32>(-124f, -649f, -906f, -1299f), vec4<f32>(629f, 731f, 1109f, 1000f), vec4<f32>(-1967f, 926f, -187f, -126f), vec4<f32>(-1000f, -315f, 769f, -1071f), vec4<f32>(1283f, 362f, -876f, -1267f), vec4<f32>(-112f, 611f, 699f, 965f), vec4<f32>(-819f, -1829f, 1009f, 928f), vec4<f32>(-1149f, -1000f, 1320f, -1328f), vec4<f32>(184f, -443f, 204f, 562f), vec4<f32>(-345f, 1626f, -924f, -258f), vec4<f32>(342f, 409f, -850f, 1000f), vec4<f32>(1088f, -105f, -912f, 240f), vec4<f32>(1196f, -514f, -1902f, -397f), vec4<f32>(-1749f, -697f, 644f, -309f), vec4<f32>(2285f, 1149f, 1755f, 311f));

var<private> global3: i32 = 2147483647i;

var<private> global4: vec3<f32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(reverseBits(u_input.b), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(257f - 1771f))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), ~60098u <= ~u_input.a), vec4<bool>(~u_input.b >= (u_input.b ^ u_input.b), true, any(vec3<bool>(true, true, true)), true), true), global1.a);
    global1 = Struct_1(_wgslsmith_f_op_f32(select(-314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(919f + var_0.d)))), var_0.c.x)));
    var var_1 = vec2<bool>(_wgslsmith_div_u32(~_wgslsmith_div_u32(5496u, u_input.a), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 0u)) > 1u, !var_0.c.x);
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    let var_3 = select(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2894i, 1i), vec2<i32>(var_0.a, 21080i)), u_input.b << (~47561u % 32u), -2147483647i)), ~_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.a, var_0.a, var_0.a) & firstTrailingBit(vec3<i32>(2436i, u_input.b, 0i)), -vec3<i32>(var_0.a, 29286i, var_0.a)), !(!vec3<bool>(false, var_1.x, !var_1.x)));
    return select(var_0.c.yw, var_0.c.wy, true);
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = func_3();
    global1 = Struct_1(global4.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-global4.xy);
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_clamp_u32(~108692u, 1u, _wgslsmith_mod_u32(u_input.a, u_input.a)) & u_input.a), 32u)];
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(max(74378u, u_input.a), u_input.a, 0u), select(vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 45812u, 67488u)), !vec3<bool>(var_0.x, true, var_0.x)))) ^ firstLeadingBit(abs((u_input.a << (u_input.a % 32u)) | _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a))), 32u)];
    return select(vec2<bool>(true, all(!vec3<bool>(false, var_0.x, false))), var_0, false);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec2<bool>(any(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, 1i) << (vec4<u32>(7658u, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u)), -vec4<i32>(0i, u_input.b, u_input.b, u_input.b)))), !any(func_3()));
    let var_1 = Struct_1(-315f);
    global2 = array<vec4<f32>, 19>();
    let var_2 = 1000f;
    let var_3 = 1i;
    return Struct_2(~arg_0.x, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(499f))))), !(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, var_0.x, var_0.x, true)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1127f + global4.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(arg_3, _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 27559u, 43895u, arg_3), vec4<u32>(95032u, 0u, 0u, 1u))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 62880u, 23331u), vec4<u32>(arg_3, 3036u, 4294967295u, 20568u)), ~vec4<u32>(u_input.a, u_input.a, arg_3, arg_3), true))), ~39940u, ~(~(34100u ^ ~arg_3)), ~1u);
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -max(vec2<i32>(-12314i, 6434i), vec2<i32>(u_input.b, 2147483647i)), vec2<i32>(u_input.b, -(~u_input.b))), -select(~(vec2<i32>(arg_1.a, -13875i) ^ vec2<i32>(0i, -16246i)), ~vec2<i32>(5290i, arg_1.a), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, arg_1.a, 8957i), vec4<i32>(45768i, -9059i, arg_1.a, 40934i)))));
    var var_2 = Struct_2(firstTrailingBit(u_input.b), func_1(_wgslsmith_add_vec2_i32(abs(-var_1), min(~vec2<i32>(-1i, 0i), vec2<i32>(var_1.x, 2147483647i))), arg_0).b, select(!select(select(vec4<bool>(arg_1.c.x, arg_1.c.x, false, arg_1.c.x), vec4<bool>(true, true, false, true), vec4<bool>(arg_1.c.x, arg_1.c.x, false, true)), select(vec4<bool>(arg_1.c.x, arg_1.c.x, false, true), arg_1.c, arg_1.c.x), vec4<bool>(true, false, false, false)), vec4<bool>(!any(vec2<bool>(false, arg_1.c.x)), !arg_1.c.x, _wgslsmith_f_op_f32(global4.x + arg_0.a) <= global1.a, arg_1.a < var_1.x), func_3().x == true), -673f);
    return func_1(var_1, global0[_wgslsmith_index_u32(1u >> (1u % 32u), 32u)]);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 21206u, u_input.a, 0u) | vec4<u32>(0u, u_input.a, 49824u, 13801u), vec4<u32>(71375u, u_input.a, u_input.a, 1u), vec4<u32>(1u, 57930u, 1u, u_input.a) & vec4<u32>(91918u, 94235u, 27108u, u_input.a)), ~(~vec4<u32>(38341u, u_input.a, 61713u, 2178u))), ~abs(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 19169u), u_input.a ^ u_input.a, u_input.a, ~u_input.a)));
    let var_1 = Struct_2(-5919i, Struct_1(490f), func_4(func_4(arg_3.b, func_1(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.a, arg_2.x), arg_2.zy), global0[_wgslsmith_index_u32(u_input.a, 32u)]), Struct_1(_wgslsmith_div_f32(global1.a, global4.x)), ~u_input.a).b, func_1(min(vec2<i32>(2147483647i, arg_3.a), vec2<i32>(0i, 2147483647i)) & arg_2.zx, func_1(min(arg_2.xz, vec2<i32>(-1i, arg_3.a)), func_4(global0[_wgslsmith_index_u32(12711u, 32u)], arg_3, arg_3.b, u_input.a).b).b), Struct_1(global1.a), var_0.x << (var_0.x % 32u)).c, _wgslsmith_f_op_f32(-1779f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1354f)), -259f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1448f * 105f) + -377f))));
    global1 = func_4(func_1(arg_2.zx, func_1((arg_2.yx << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) & ~arg_2.xx, var_1.b).b).b, Struct_2(0i, func_1(select(vec2<i32>(39293i, -19717i), arg_2.zx, arg_3.c.x), Struct_1(arg_0.x)).b, var_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d - -793f) - arg_1.x), _wgslsmith_f_op_f32(-global1.a))), arg_3.b, 1u).b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -398f, 2109f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.x, -601f, arg_0.x), vec3<f32>(936f, -636f, 721f)))))));
    global2 = array<vec4<f32>, 19>();
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(global1.a));
    global2 = array<vec4<f32>, 19>();
    var var_1 = Struct_2(func_5(global4.xx, global4.xz, ~(~abs(vec3<i32>(u_input.b, 2147483647i, 19134i))), func_4(global0[_wgslsmith_index_u32(62226u << (firstTrailingBit(u_input.a) % 32u), 32u)], func_1(select(vec2<i32>(u_input.b, -60343i), vec2<i32>(u_input.b, u_input.b), false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3286u, u_input.a, 45358u, 1u), vec4<u32>(0u, 1528u, 1u, u_input.a)), 32u)]), global0[_wgslsmith_index_u32(~(1u ^ u_input.a), 32u)], 3652u)), global0[_wgslsmith_index_u32(~abs(~(~0u)), 32u)], vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), 611f)));
    var_0 = -439f;
    var var_2 = _wgslsmith_mult_vec4_u32(abs(~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 41621u, 36564u, 4294967295u), vec4<u32>(u_input.a, 51030u, u_input.a, 51234u)) >> (vec4<u32>(u_input.a, 15281u, 5149u, 13518u) % vec4<u32>(32u)))), ~vec4<u32>(~firstLeadingBit(6841u), u_input.a, u_input.a, 37795u));
    var var_3 = ~((vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b, 101238i, 18899i), vec4<i32>(-5678i, u_input.b, 46076i, var_1.a))) << (vec4<u32>(~_wgslsmith_add_u32(u_input.a, u_input.a), ~(~0u), countOneBits(_wgslsmith_add_u32(u_input.a, var_2.x)), u_input.a) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(max(~(-vec3<i32>(1i, var_1.a, -2147483647i)), select(~vec3<i32>(var_1.a, -27332i, -49454i), select(var_3.yxz, vec3<i32>(41765i, 744i, 9272i), var_1.c.yzy), var_1.c.xyz)), vec3<i32>(_wgslsmith_mod_i32(-1i, ~7795i), -19991i, ~u_input.b)));
}

