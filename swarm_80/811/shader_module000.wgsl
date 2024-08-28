struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 15980u;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(23591i, Struct_1(vec4<bool>(true, true, true, true)), vec3<f32>(-563f, -1000f, -482f), Struct_1(vec4<bool>(true, true, true, true)), 2464u), Struct_2(30747i, Struct_1(vec4<bool>(true, false, true, true)), vec3<f32>(866f, 2208f, 341f), Struct_1(vec4<bool>(true, true, true, true)), 74846u), Struct_2(-4834i, Struct_1(vec4<bool>(true, false, false, false)), vec3<f32>(-1846f, -736f, -520f), Struct_1(vec4<bool>(false, false, true, true)), 4294967295u), Struct_2(2147483647i, Struct_1(vec4<bool>(true, true, true, false)), vec3<f32>(-1510f, -1192f, 1265f), Struct_1(vec4<bool>(true, true, false, true)), 4294967295u), Struct_2(-1i, Struct_1(vec4<bool>(true, false, false, false)), vec3<f32>(-367f, 813f, -1000f), Struct_1(vec4<bool>(true, true, false, false)), 74754u), Struct_2(-52485i, Struct_1(vec4<bool>(false, false, false, true)), vec3<f32>(-1556f, -668f, 1189f), Struct_1(vec4<bool>(true, false, false, true)), 0u), Struct_2(1556i, Struct_1(vec4<bool>(false, true, false, true)), vec3<f32>(-1129f, -1109f, 330f), Struct_1(vec4<bool>(false, false, false, true)), 1u), Struct_2(-1i, Struct_1(vec4<bool>(false, false, true, true)), vec3<f32>(521f, 1291f, -704f), Struct_1(vec4<bool>(false, true, true, true)), 41262u), Struct_2(47138i, Struct_1(vec4<bool>(false, true, false, true)), vec3<f32>(635f, 358f, -720f), Struct_1(vec4<bool>(true, false, true, false)), 39825u), Struct_2(-20148i, Struct_1(vec4<bool>(true, true, false, false)), vec3<f32>(-991f, 637f, -654f), Struct_1(vec4<bool>(true, false, false, true)), 59809u), Struct_2(0i, Struct_1(vec4<bool>(false, false, true, false)), vec3<f32>(446f, 413f, 750f), Struct_1(vec4<bool>(false, false, true, false)), 0u), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(true, false, false, false)), vec3<f32>(-1643f, -568f, -704f), Struct_1(vec4<bool>(true, false, false, false)), 53384u), Struct_2(1i, Struct_1(vec4<bool>(true, false, false, false)), vec3<f32>(-156f, 2802f, 586f), Struct_1(vec4<bool>(true, false, false, true)), 0u), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(false, false, true, true)), vec3<f32>(1465f, 626f, 1255f), Struct_1(vec4<bool>(false, false, true, true)), 4294967295u), Struct_2(0i, Struct_1(vec4<bool>(true, false, false, true)), vec3<f32>(-1232f, 1000f, 412f), Struct_1(vec4<bool>(true, false, true, false)), 0u), Struct_2(-35237i, Struct_1(vec4<bool>(false, false, false, false)), vec3<f32>(-727f, 1743f, 122f), Struct_1(vec4<bool>(false, false, true, true)), 1u), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(false, true, false, true)), vec3<f32>(-196f, -1607f, -537f), Struct_1(vec4<bool>(true, false, true, true)), 0u), Struct_2(-10222i, Struct_1(vec4<bool>(false, false, true, false)), vec3<f32>(-1111f, -761f, -141f), Struct_1(vec4<bool>(false, true, false, true)), 31385u), Struct_2(1i, Struct_1(vec4<bool>(false, false, true, false)), vec3<f32>(1426f, -1000f, 120f), Struct_1(vec4<bool>(false, false, false, true)), 95095u), Struct_2(12641i, Struct_1(vec4<bool>(false, true, true, false)), vec3<f32>(-1000f, 1623f, -1138f), Struct_1(vec4<bool>(true, false, false, true)), 105070u), Struct_2(1i, Struct_1(vec4<bool>(true, true, false, false)), vec3<f32>(215f, -813f, -788f), Struct_1(vec4<bool>(false, true, true, true)), 0u), Struct_2(16388i, Struct_1(vec4<bool>(true, false, true, false)), vec3<f32>(573f, -493f, -1760f), Struct_1(vec4<bool>(true, false, false, true)), 0u), Struct_2(-1i, Struct_1(vec4<bool>(false, false, true, true)), vec3<f32>(339f, -338f, 1000f), Struct_1(vec4<bool>(true, true, true, false)), 1u), Struct_2(20340i, Struct_1(vec4<bool>(false, true, true, true)), vec3<f32>(-935f, 149f, 1193f), Struct_1(vec4<bool>(true, false, false, true)), 0u), Struct_2(-57939i, Struct_1(vec4<bool>(false, true, false, true)), vec3<f32>(402f, 638f, -1615f), Struct_1(vec4<bool>(true, true, true, false)), 46071u), Struct_2(13896i, Struct_1(vec4<bool>(true, false, false, false)), vec3<f32>(2006f, 1000f, 299f), Struct_1(vec4<bool>(true, true, false, false)), 4294967295u), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(true, true, false, true)), vec3<f32>(303f, -886f, 1131f), Struct_1(vec4<bool>(false, false, false, true)), 0u), Struct_2(-1i, Struct_1(vec4<bool>(true, false, false, false)), vec3<f32>(-1000f, -305f, 472f), Struct_1(vec4<bool>(false, false, false, false)), 1268u), Struct_2(-1i, Struct_1(vec4<bool>(true, true, true, false)), vec3<f32>(-391f, -127f, -413f), Struct_1(vec4<bool>(true, false, true, true)), 4294967295u), Struct_2(-14995i, Struct_1(vec4<bool>(true, false, false, true)), vec3<f32>(-700f, -997f, 474f), Struct_1(vec4<bool>(true, false, false, false)), 0u), Struct_2(22048i, Struct_1(vec4<bool>(false, true, true, true)), vec3<f32>(1000f, 740f, -227f), Struct_1(vec4<bool>(false, false, false, false)), 3675u), Struct_2(-45229i, Struct_1(vec4<bool>(true, false, true, true)), vec3<f32>(-487f, 312f, -932f), Struct_1(vec4<bool>(false, true, true, true)), 1u));

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(-23568i, Struct_1(vec4<bool>(true, true, true, true)), vec3<f32>(-121f, -561f, 1628f), Struct_1(vec4<bool>(true, false, true, false)), 44909u), Struct_2(2578i, Struct_1(vec4<bool>(false, true, true, false)), vec3<f32>(-748f, -900f, -604f), Struct_1(vec4<bool>(false, false, false, true)), 4294967295u), Struct_2(1i, Struct_1(vec4<bool>(false, true, false, false)), vec3<f32>(1630f, -710f, 241f), Struct_1(vec4<bool>(true, false, false, true)), 0u), Struct_2(2147483647i, Struct_1(vec4<bool>(false, false, true, true)), vec3<f32>(1562f, 1328f, -563f), Struct_1(vec4<bool>(false, false, false, true)), 3775u), Struct_2(-9178i, Struct_1(vec4<bool>(false, false, true, false)), vec3<f32>(118f, -992f, -452f), Struct_1(vec4<bool>(true, false, false, true)), 4294967295u), Struct_2(50040i, Struct_1(vec4<bool>(true, false, true, false)), vec3<f32>(-802f, -455f, -1172f), Struct_1(vec4<bool>(false, true, false, true)), 73039u), Struct_2(-55584i, Struct_1(vec4<bool>(true, false, true, true)), vec3<f32>(-679f, -247f, -531f), Struct_1(vec4<bool>(true, true, false, true)), 0u), Struct_2(-10831i, Struct_1(vec4<bool>(false, true, false, false)), vec3<f32>(-548f, 1465f, 1061f), Struct_1(vec4<bool>(false, true, false, true)), 54901u), Struct_2(-1593i, Struct_1(vec4<bool>(false, false, true, false)), vec3<f32>(-666f, 994f, -1223f), Struct_1(vec4<bool>(true, true, true, false)), 14841u), Struct_2(82135i, Struct_1(vec4<bool>(false, false, true, true)), vec3<f32>(-990f, -1248f, 532f), Struct_1(vec4<bool>(false, false, true, false)), 4294967295u), Struct_2(8425i, Struct_1(vec4<bool>(false, false, true, false)), vec3<f32>(-1640f, 957f, -945f), Struct_1(vec4<bool>(false, true, false, false)), 8866u), Struct_2(1i, Struct_1(vec4<bool>(false, true, false, false)), vec3<f32>(-1000f, -437f, -894f), Struct_1(vec4<bool>(true, true, true, true)), 51800u), Struct_2(1i, Struct_1(vec4<bool>(true, true, false, true)), vec3<f32>(252f, -1000f, 613f), Struct_1(vec4<bool>(true, false, true, false)), 0u), Struct_2(-1i, Struct_1(vec4<bool>(false, true, false, false)), vec3<f32>(-558f, -113f, -1226f), Struct_1(vec4<bool>(false, true, false, true)), 34351u), Struct_2(10396i, Struct_1(vec4<bool>(false, false, true, false)), vec3<f32>(-1000f, 360f, -1000f), Struct_1(vec4<bool>(true, false, false, false)), 20275u), Struct_2(62516i, Struct_1(vec4<bool>(true, false, true, false)), vec3<f32>(-942f, 606f, -2133f), Struct_1(vec4<bool>(true, true, false, false)), 0u), Struct_2(69559i, Struct_1(vec4<bool>(false, true, true, false)), vec3<f32>(289f, -1025f, 2624f), Struct_1(vec4<bool>(false, true, false, false)), 11679u));

var<private> global3: array<Struct_3, 23>;

var<private> global4: Struct_2 = Struct_2(-1i, Struct_1(vec4<bool>(true, false, true, false)), vec3<f32>(-111f, 938f, 475f), Struct_1(vec4<bool>(false, true, false, true)), 1u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    return _wgslsmith_add_u32(~(~4294967295u), global4.e);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = 67218u;
    var var_1 = Struct_2(_wgslsmith_div_i32(1i, ~abs(0i)), arg_0, _wgslsmith_f_op_vec3_f32(-global4.c), Struct_1(!select(vec4<bool>(true, false, global4.b.a.x, true), vec4<bool>(true, global4.b.a.x, global4.d.a.x, true), global4.d.a)), ~(~reverseBits(min(0u, global4.e))));
    var_1 = global2[_wgslsmith_index_u32(~min(61304u, var_0), 17u)];
    let var_2 = Struct_2(abs(global4.a), Struct_1(var_1.b.a), var_1.c, Struct_1(vec4<bool>(!var_1.b.a.x, var_1.d.a.x, false, any(select(vec4<bool>(false, false, true, true), global4.b.a, var_1.b.a.x)))), ~(~(~8493u)));
    var var_3 = _wgslsmith_mod_i32(firstTrailingBit(u_input.a), -global4.a ^ -var_2.a);
    return _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 1i), vec2<i32>(abs(-2147483647i), reverseBits(var_1.a))), 17983i, u_input.a, -2147483647i), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.a, var_2.a, var_1.a, u_input.a), ~vec4<i32>(global4.a, 1i, 2147483647i, u_input.a)), global4.a, 1i, -_wgslsmith_div_i32(u_input.a, -2147483647i)) ^ vec4<i32>(24745i, -2147483647i, var_2.a, reverseBits(16452i)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    var var_0 = ~_wgslsmith_add_u32(arg_1.x, _wgslsmith_mult_u32(0u, func_2() << (31598u % 32u)));
    var var_1 = global3[_wgslsmith_index_u32(max(global4.e, 15721u ^ _wgslsmith_add_u32(min(0u, ~41306u), countOneBits(arg_1.x ^ 15271u))), 23u)];
    global3 = array<Struct_3, 23>();
    var_0 = ~(~(~(~var_1.a.e & var_1.a.e)));
    let var_2 = func_3(var_1.a.d);
    return firstTrailingBit(~arg_1.x);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = reverseBits(~(~firstTrailingBit(vec2<u32>(global4.e, 11914u) >> (vec2<u32>(109938u, 1u) % vec2<u32>(32u)))));
    var var_1 = u_input.a < ~_wgslsmith_mod_i32(global4.a, -2147483647i);
    var var_2 = -24575i;
    var var_3 = countOneBits(-(~(~(1i << (global4.e % 32u)))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -257f);
    return global1[_wgslsmith_index_u32(arg_1.e, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(any(!global4.d.a.yx), Struct_2(-18564i, Struct_1(global4.d.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global4.c - vec3<f32>(global4.c.x, global4.c.x, 636f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, global4.c.x, global4.c.x)))), Struct_1(global4.b.a), ~(~func_1(global4.c.x, vec4<u32>(global4.e, 24592u, 1u, 65262u), global4.e, vec4<f32>(1631f, global4.c.x, global4.c.x, -190f)))));
    let var_0 = any(vec3<bool>(false | global4.d.a.x, true, true));
    let var_1 = reverseBits(_wgslsmith_mod_vec3_u32(~select(~vec3<u32>(global4.e, 94022u, global4.e), ~vec3<u32>(27124u, global4.e, global4.e), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(global4.e, countOneBits(global4.e), ~4294967295u), _wgslsmith_mod_vec3_u32(~vec3<u32>(29129u, 1u, 1u), ~vec3<u32>(0u, global4.e, 0u)), vec3<u32>(select(39184u, global4.e, var_0), global4.e, global4.e))));
    let var_2 = Struct_3(Struct_2((~11409i << (~var_1.x % 32u)) & _wgslsmith_mod_i32(min(30115i, -42883i), 51131i), Struct_1(vec4<bool>(all(global4.d.a.wx), false, true, false)), global4.c, func_4(!(!global4.b.a.x), Struct_2(-global4.a, Struct_1(global4.b.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, -123f, -725f)), func_4(global4.d.a.x, global2[_wgslsmith_index_u32(var_1.x, 17u)]).b, global4.e)).b, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, global4.e), 4294967295u) << ((670u & select(33717u, global4.e, true)) % 32u)), vec3<bool>(true & global4.d.a.x, select(true, func_4(var_0, Struct_2(0i, Struct_1(vec4<bool>(true, global4.d.a.x, false, var_0)), global4.c, Struct_1(global4.b.a), global4.e)).d.a.x, !var_0) == true, select(true, abs(var_1.x) <= 1u, var_0 & select(var_0, global4.d.a.x, var_0))), global4.d, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1206f, -1036f) + 303f), _wgslsmith_f_op_f32(3233f - _wgslsmith_f_op_f32(f32(-1f) * -534f)), global4.c.x, -1393f), -144f);
    let var_3 = !func_4(~_wgslsmith_add_i32(-1332i, global4.a) <= -(-2147483647i >> (var_1.x % 32u)), var_2.a).b.a.wx;
    global1 = array<Struct_2, 32>();
    var var_4 = ~var_2.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_2.a.a, 2147483647i), 1i);
}

