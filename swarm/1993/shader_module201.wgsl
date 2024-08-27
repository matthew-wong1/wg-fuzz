struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-801f, vec4<f32>(-357f, -270f, 123f, -809f), vec2<i32>(1595i, 41305i), vec4<u32>(29136u, 26325u, 10458u, 4294967295u)), Struct_1(-1001f, vec4<f32>(1073f, 239f, -2082f, -646f), vec2<i32>(-20266i, -1i), vec4<u32>(1u, 4294967295u, 51703u, 92894u)), Struct_1(1314f, vec4<f32>(142f, 1386f, 1000f, -1196f), vec2<i32>(-1i, 29201i), vec4<u32>(13910u, 4294967295u, 106987u, 18420u)), Struct_1(483f, vec4<f32>(563f, -1296f, 964f, 170f), vec2<i32>(-12232i, -57266i), vec4<u32>(1u, 4294967295u, 4294967295u, 36588u)), Struct_1(-1000f, vec4<f32>(-560f, -505f, 657f, 763f), vec2<i32>(i32(-2147483648), 1i), vec4<u32>(4294967295u, 0u, 4294967295u, 2459u)), Struct_1(-649f, vec4<f32>(-691f, -563f, -1049f, -1335f), vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 44505u, 57530u, 18199u)), Struct_1(337f, vec4<f32>(1051f, 1207f, -164f, 315f), vec2<i32>(-13055i, 12291i), vec4<u32>(22468u, 0u, 0u, 57219u)), Struct_1(569f, vec4<f32>(746f, 122f, 1355f, 152f), vec2<i32>(-42125i, -57017i), vec4<u32>(42198u, 11371u, 0u, 1911u)), Struct_1(272f, vec4<f32>(-457f, -796f, -636f, 526f), vec2<i32>(2147483647i, 13784i), vec4<u32>(23069u, 20468u, 0u, 24536u)), Struct_1(-1000f, vec4<f32>(-575f, -268f, -744f, 657f), vec2<i32>(690i, -1i), vec4<u32>(5792u, 0u, 7222u, 15459u)), Struct_1(255f, vec4<f32>(-1000f, 816f, -456f, -265f), vec2<i32>(-3058i, -62126i), vec4<u32>(1u, 4294967295u, 1u, 1u)), Struct_1(-1810f, vec4<f32>(-825f, 746f, 964f, -580f), vec2<i32>(-1i, 8967i), vec4<u32>(0u, 34866u, 5320u, 4294967295u)), Struct_1(-1239f, vec4<f32>(-195f, 1874f, -465f, 1752f), vec2<i32>(-1i, 25741i), vec4<u32>(32059u, 1u, 20309u, 4294967295u)), Struct_1(596f, vec4<f32>(289f, 364f, 774f, -1282f), vec2<i32>(0i, 16261i), vec4<u32>(0u, 39917u, 118563u, 1u)), Struct_1(-745f, vec4<f32>(185f, -1000f, 1417f, -900f), vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(0u, 4294967295u, 15648u, 0u)), Struct_1(638f, vec4<f32>(-325f, 717f, 1753f, 1000f), vec2<i32>(-51697i, -153i), vec4<u32>(0u, 0u, 26586u, 4294967295u)), Struct_1(-452f, vec4<f32>(642f, -1335f, 1000f, 1448f), vec2<i32>(0i, 2147483647i), vec4<u32>(4294967295u, 43617u, 21928u, 27210u)), Struct_1(-2832f, vec4<f32>(-590f, -422f, 1202f, -465f), vec2<i32>(2147483647i, 12171i), vec4<u32>(0u, 28321u, 34538u, 16911u)), Struct_1(1647f, vec4<f32>(104f, -311f, 127f, 1946f), vec2<i32>(-23387i, 2147483647i), vec4<u32>(55816u, 0u, 1u, 4294967295u)), Struct_1(-531f, vec4<f32>(-375f, 831f, -1385f, 330f), vec2<i32>(-8461i, 12262i), vec4<u32>(66352u, 15497u, 8111u, 42278u)), Struct_1(339f, vec4<f32>(-1261f, 1080f, -775f, -1562f), vec2<i32>(0i, 1i), vec4<u32>(0u, 1u, 4294967295u, 0u)), Struct_1(189f, vec4<f32>(288f, 815f, 1711f, -1065f), vec2<i32>(1i, i32(-2147483648)), vec4<u32>(73570u, 0u, 60760u, 0u)), Struct_1(746f, vec4<f32>(2042f, 1380f, -1000f, 519f), vec2<i32>(-6556i, 0i), vec4<u32>(1u, 51039u, 0u, 18840u)), Struct_1(1046f, vec4<f32>(-955f, 353f, 1160f, -1244f), vec2<i32>(1i, 40630i), vec4<u32>(64194u, 0u, 49916u, 0u)), Struct_1(543f, vec4<f32>(-2660f, 247f, 1136f, 172f), vec2<i32>(-44095i, 27596i), vec4<u32>(4294967295u, 362u, 0u, 47658u)), Struct_1(2899f, vec4<f32>(-1124f, -480f, 1553f, -775f), vec2<i32>(0i, -16310i), vec4<u32>(4294967295u, 1u, 1u, 0u)));

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<vec4<u32>, 25>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    global0 = ~vec2<u32>(reverseBits(~_wgslsmith_mult_u32(44424u, arg_0.x)), ~0u);
    let var_0 = 1349i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) * arg_2.b.x), arg_2.b, _wgslsmith_sub_vec2_i32(-u_input.c.xz, vec2<i32>(u_input.a << (8270u % 32u), arg_1.c.x)), ~arg_2.d);
    global3 = array<vec4<u32>, 25>();
    var var_2 = global0.x;
    return -u_input.a;
}

fn func_2() -> bool {
    global2 = array<Struct_1, 25>();
    global1 = array<Struct_1, 26>();
    global3 = array<vec4<u32>, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1156f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -530f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1033f) - _wgslsmith_f_op_f32(trunc(1206f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1017f, -775f, true)), 694f), _wgslsmith_f_op_f32(floor(1f)))), max(u_input.c.yz, vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(1i, u_input.e)), u_input.c.x)), ~vec4<u32>(~42531u, 6148u, ~(~30789u), ~min(0u, 14510u)));
    let var_1 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f + 276f))))));
    return true;
}

fn func_3() -> i32 {
    global0 = _wgslsmith_sub_vec2_u32(countOneBits(abs(~(~u_input.b.yx))), (u_input.b.zy | max(~vec2<u32>(global0.x, u_input.b.x), vec2<u32>(35240u, global0.x))) << (~u_input.b.yy % vec2<u32>(32u)));
    global2 = array<Struct_1, 25>();
    let var_0 = u_input.b.zw;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(600f))))))), vec4<f32>(476f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-975f, -1634f, any(vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(-1f)), ~(-u_input.c.xy), global3[_wgslsmith_index_u32(reverseBits(~(u_input.d >> (var_0.x % 32u)) >> (~firstTrailingBit(10060u) % 32u)), 25u)]);
    global0 = u_input.b.xy | vec2<u32>(~u_input.b.x, 7890u);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 26>();
    let var_0 = ~((~(~vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.a)) | (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 0i, -41867i, -1i), vec4<i32>(2433i, -2147483647i, u_input.e, u_input.c.x)) >> (countOneBits(global3[_wgslsmith_index_u32(1u, 25u)]) % vec4<u32>(32u)))) & _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-7077i, u_input.c.x, u_input.c.x, 8077i)) >> (global3[_wgslsmith_index_u32(~global0.x, 25u)] % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.e, u_input.c.x, u_input.c.x), ~vec4<i32>(u_input.a, 1724i, u_input.a, u_input.a))));
    let var_1 = u_input.b;
    let var_2 = countOneBits(~(-vec2<i32>(func_1(vec3<u32>(u_input.b.x, u_input.d, 5292u), Struct_1(-1085f, vec4<f32>(-357f, -1000f, 890f, 1174f), u_input.c.zz, var_1), global2[_wgslsmith_index_u32(194716u, 25u)], vec3<u32>(45561u, var_1.x, 1u)), ~0i)));
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(max(abs(u_input.b.zwy << (vec3<u32>(1u, u_input.b.x, global0.x) % vec3<u32>(32u))), select(vec3<u32>(global0.x, var_1.x, 4752u), vec3<u32>(var_1.x, 94587u, global0.x), func_2())), vec3<u32>(19074u, (var_1.x >> (u_input.b.x % 32u)) & u_input.d, ~abs(u_input.b.x))), vec3<u32>(var_1.x, 31595u, u_input.b.x));
    var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~62546u), func_3(), reverseBits(vec2<i32>(u_input.c.x, ~(-9967i))) & vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(var_0.x, -10019i)), ~(-6885i)), ~1u);
}

