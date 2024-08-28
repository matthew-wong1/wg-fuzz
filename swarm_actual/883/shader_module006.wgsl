struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 10> = array<Struct_5, 10>(Struct_5(vec2<bool>(true, false), vec4<f32>(-739f, -1000f, 331f, 2373f), Struct_1(28228u, 52729u, vec2<f32>(-1276f, 404f)), 802f, Struct_1(77000u, 0u, vec2<f32>(399f, -342f))), Struct_5(vec2<bool>(false, true), vec4<f32>(1000f, -756f, 735f, -1969f), Struct_1(67419u, 0u, vec2<f32>(566f, 352f)), 1096f, Struct_1(19983u, 4294967295u, vec2<f32>(845f, 1026f))), Struct_5(vec2<bool>(true, true), vec4<f32>(-550f, -650f, 1182f, 201f), Struct_1(0u, 4294967295u, vec2<f32>(329f, -1104f)), 225f, Struct_1(0u, 13744u, vec2<f32>(-1696f, 2961f))), Struct_5(vec2<bool>(true, true), vec4<f32>(-435f, 814f, 515f, -1000f), Struct_1(0u, 1u, vec2<f32>(-1000f, 1929f)), 776f, Struct_1(21121u, 1u, vec2<f32>(324f, 269f))), Struct_5(vec2<bool>(true, true), vec4<f32>(941f, 2549f, 645f, -322f), Struct_1(41023u, 0u, vec2<f32>(717f, -373f)), -2762f, Struct_1(0u, 16387u, vec2<f32>(-459f, 641f))), Struct_5(vec2<bool>(true, false), vec4<f32>(-673f, -1142f, 1000f, 1941f), Struct_1(8797u, 1u, vec2<f32>(521f, 186f)), -289f, Struct_1(1u, 26330u, vec2<f32>(-1072f, 646f))), Struct_5(vec2<bool>(true, false), vec4<f32>(-2352f, -585f, 110f, 272f), Struct_1(4294u, 124089u, vec2<f32>(-422f, -721f)), 1000f, Struct_1(4294967295u, 1u, vec2<f32>(1228f, -1285f))), Struct_5(vec2<bool>(false, false), vec4<f32>(364f, -524f, 719f, 1203f), Struct_1(30074u, 4294967295u, vec2<f32>(-499f, 1103f)), -1652f, Struct_1(4294967295u, 17562u, vec2<f32>(-1869f, -231f))), Struct_5(vec2<bool>(false, true), vec4<f32>(-588f, -1021f, 853f, -948f), Struct_1(43610u, 0u, vec2<f32>(-798f, -922f)), -1035f, Struct_1(0u, 17013u, vec2<f32>(-615f, -469f))), Struct_5(vec2<bool>(false, true), vec4<f32>(1000f, 734f, 909f, -1219f), Struct_1(4294967295u, 4294967295u, vec2<f32>(2576f, 1000f)), -695f, Struct_1(1u, 0u, vec2<f32>(-465f, -957f))));

var<private> global1: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-617f, 648f, 1507f, 650f), vec4<f32>(-1000f, 588f, -1000f, -888f), vec4<f32>(113f, 111f, -276f, 499f), vec4<f32>(-162f, 1388f, 1000f, -1000f), vec4<f32>(-423f, -401f, -1522f, -2490f), vec4<f32>(389f, 1246f, -360f, 226f), vec4<f32>(592f, -1000f, -590f, -814f), vec4<f32>(-1267f, 1111f, 570f, -795f), vec4<f32>(-215f, 742f, -847f, 1063f));

var<private> global2: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false));

var<private> global3: f32 = -346f;

var<private> global4: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_5 {
    let var_0 = false;
    let var_1 = Struct_1(31720u, 35626u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-212f, 589f), vec2<f32>(-240f, -838f))) + vec2<f32>(-1104f, -584f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(539f, -1000f))))))));
    global1 = array<vec4<f32>, 9>();
    var var_2 = var_1.a;
    global4 = var_0;
    return Struct_5(!select(!select(vec2<bool>(var_0, var_0), vec2<bool>(false, false), vec2<bool>(false, var_0)), vec2<bool>(all(global2[_wgslsmith_index_u32(var_1.a, 10u)]), !var_0), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(4294967295u, 9u)] * vec4<f32>(var_1.c.x, -2259f, 982f, 426f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.c.x, -705f, 450f))))), var_1, -117f, var_1);
}

fn func_3(arg_0: Struct_5) -> vec2<u32> {
    let var_0 = Struct_2(arg_0.e, firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(arg_0.e.b, arg_0.c.a, arg_0.c.b), 1u)), (-max(vec4<i32>(4684i, u_input.d, u_input.d, 0i), vec4<i32>(1i, u_input.d, u_input.d, u_input.d)) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.c.a, u_input.c.x, arg_0.e.a) ^ vec4<u32>(29569u, 0u, u_input.a.x, 12063u), ~vec4<u32>(81708u, 0u, u_input.e, arg_0.e.a)) % vec4<u32>(32u))) >> (~(~vec4<u32>(49962u, u_input.c.x, 1u, arg_0.c.a)) % vec4<u32>(32u)));
    let var_1 = true;
    global0 = array<Struct_5, 10>();
    global4 = !all(global2[_wgslsmith_index_u32(0u, 10u)]);
    global4 = countOneBits(-2147483647i) != ~_wgslsmith_dot_vec2_i32(~var_0.c.xx, var_0.c.ww);
    return u_input.a.zx;
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec2_u32(u_input.c.zy, ~(~u_input.c.xy) << (func_3(func_2()) % vec2<u32>(32u))) << (select(vec2<u32>(~(~1u), max(~u_input.e, ~15388u)), vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(12782u, u_input.c.x, 1u)), ~max(4294967295u, 4294967295u)), !vec2<bool>(all(vec3<bool>(true, true, true)), true)) % vec2<u32>(32u));
    global3 = 2863f;
    global1 = array<vec4<f32>, 9>();
    global2 = array<vec4<bool>, 10>();
    let var_1 = 677f;
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = select(!func_1(), select(select(vec2<bool>(true, func_1().x), func_2().a, func_2().a.x), func_1(), vec2<bool>(false, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)))), 90328u >= min(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x << (u_input.c.x % 32u)), ~65382u & u_input.c.x));
    let var_2 = var_1.x;
    global4 = !(var_0 > var_0);
    var var_3 = _wgslsmith_mult_vec3_u32(u_input.c << (u_input.c % vec3<u32>(32u)), select(u_input.c, _wgslsmith_clamp_vec3_u32(countOneBits(u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 0u, 4294967295u), vec3<u32>(u_input.c.x, 3820u, 1u)), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, 2722u))), select(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, var_1.x, false), var_1.x), var_1.x))) >> ((u_input.a ^ _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), u_input.a), vec3<u32>(u_input.b, abs(1u), u_input.e), u_input.c)) % vec3<u32>(32u));
    var var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.c.zz);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-677f, _wgslsmith_f_op_f32(abs(var_0))));
    var var_5 = firstLeadingBit(~vec4<i32>(9003i, ~u_input.d, abs(-1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, -37447i), vec3<i32>(-16372i, u_input.d, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(935f, var_0, var_0, -1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(4294967295u, 9u)] - global1[_wgslsmith_index_u32(var_4.x, 9u)]))), global1[_wgslsmith_index_u32(var_3.x, 9u)], global2[_wgslsmith_index_u32(1u, 10u)])), reverseBits(1i) >> (var_4.x % 32u), -var_5.x, vec4<i32>(~(-39628i), var_5.x, -17810i, -27945i) << (~max(vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.e), countOneBits(vec4<u32>(27305u, var_3.x, 0u, 9164u))) % vec4<u32>(32u)));
}

