struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec4<f32>(859f, -740f, 937f, 107f), vec3<i32>(7142i, -1i, 2147483647i)), vec3<bool>(true, true, true), vec4<u32>(17580u, 4294967295u, 1u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(168f, 360f, 1103f, 1469f), vec3<i32>(2147483647i, 1i, 41019i)), vec3<bool>(true, false, true), vec4<u32>(49971u, 68349u, 8967u, 0u)), Struct_2(Struct_1(vec4<f32>(-701f, 281f, 760f, -1132f), vec3<i32>(31629i, -6030i, -27002i)), vec3<bool>(true, true, false), vec4<u32>(31163u, 1u, 0u, 53779u)), Struct_2(Struct_1(vec4<f32>(825f, 1512f, 1851f, 1805f), vec3<i32>(0i, 45398i, 2147483647i)), vec3<bool>(true, false, true), vec4<u32>(35378u, 9378u, 49349u, 0u)), Struct_2(Struct_1(vec4<f32>(612f, 1000f, 1173f, 759f), vec3<i32>(-7361i, 71210i, 1i)), vec3<bool>(true, true, false), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(2173f, 572f, -999f, 266f), vec3<i32>(2147483647i, -1i, -28916i)), vec3<bool>(false, false, true), vec4<u32>(46497u, 1u, 0u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(1070f, -1747f, -804f, -754f), vec3<i32>(0i, -365i, i32(-2147483648))), vec3<bool>(true, true, true), vec4<u32>(6136u, 25375u, 35796u, 26252u)), Struct_2(Struct_1(vec4<f32>(762f, 1000f, 1654f, -997f), vec3<i32>(-1i, -1i, 1i)), vec3<bool>(false, true, true), vec4<u32>(30277u, 4294967295u, 48686u, 1u)), Struct_2(Struct_1(vec4<f32>(1453f, 510f, 449f, -1391f), vec3<i32>(-42784i, i32(-2147483648), 9468i)), vec3<bool>(false, true, false), vec4<u32>(39718u, 1u, 19852u, 49205u)), Struct_2(Struct_1(vec4<f32>(-1873f, -718f, -519f, 594f), vec3<i32>(49881i, i32(-2147483648), 0i)), vec3<bool>(true, true, true), vec4<u32>(44504u, 24822u, 28529u, 1u)), Struct_2(Struct_1(vec4<f32>(-115f, 1545f, 1183f, 877f), vec3<i32>(-17810i, 1i, -1i)), vec3<bool>(true, false, false), vec4<u32>(13326u, 27569u, 26946u, 27610u)), Struct_2(Struct_1(vec4<f32>(-1038f, -889f, 1293f, 1553f), vec3<i32>(-9093i, -11443i, -1589i)), vec3<bool>(true, false, true), vec4<u32>(0u, 4294967295u, 4294967295u, 37228u)), Struct_2(Struct_1(vec4<f32>(-1825f, 285f, 1885f, 500f), vec3<i32>(1i, -34177i, -1i)), vec3<bool>(false, false, true), vec4<u32>(13897u, 18160u, 20432u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(-149f, -2353f, 1658f, 167f), vec3<i32>(1i, 1i, 22424i)), vec3<bool>(true, false, false), vec4<u32>(1u, 25959u, 1u, 0u)), Struct_2(Struct_1(vec4<f32>(-1120f, 1909f, -1339f, -805f), vec3<i32>(-1i, 2147483647i, 0i)), vec3<bool>(true, true, true), vec4<u32>(1u, 4294967295u, 38812u, 0u)), Struct_2(Struct_1(vec4<f32>(704f, -623f, 711f, -615f), vec3<i32>(-14365i, 7610i, -6375i)), vec3<bool>(false, false, true), vec4<u32>(4294967295u, 1u, 55931u, 1u)), Struct_2(Struct_1(vec4<f32>(420f, -562f, -2370f, 828f), vec3<i32>(1i, 2147483647i, -2666i)), vec3<bool>(true, true, false), vec4<u32>(38046u, 16583u, 87841u, 6874u)), Struct_2(Struct_1(vec4<f32>(1171f, 1193f, 460f, 570f), vec3<i32>(-34174i, 3600i, 41430i)), vec3<bool>(true, true, true), vec4<u32>(51985u, 10595u, 11121u, 69748u)), Struct_2(Struct_1(vec4<f32>(1944f, -402f, -786f, 313f), vec3<i32>(847i, 2147483647i, 1i)), vec3<bool>(true, false, false), vec4<u32>(1u, 90575u, 67955u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(163f, -414f, 1563f, -325f), vec3<i32>(-7057i, 23826i, 40077i)), vec3<bool>(false, false, true), vec4<u32>(1u, 4294967295u, 0u, 24270u)), Struct_2(Struct_1(vec4<f32>(-359f, -307f, -1822f, -852f), vec3<i32>(1i, 0i, 1i)), vec3<bool>(false, true, false), vec4<u32>(248u, 41729u, 1u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(474f, 298f, 3206f, -466f), vec3<i32>(i32(-2147483648), 674i, 20213i)), vec3<bool>(true, true, false), vec4<u32>(4294967295u, 4294967295u, 28820u, 41576u)), Struct_2(Struct_1(vec4<f32>(1263f, -195f, 1269f, -445f), vec3<i32>(-8065i, i32(-2147483648), i32(-2147483648))), vec3<bool>(false, true, false), vec4<u32>(4930u, 1u, 1u, 25605u)), Struct_2(Struct_1(vec4<f32>(-396f, 228f, -306f, 1596f), vec3<i32>(-31464i, 32168i, 30236i)), vec3<bool>(false, true, true), vec4<u32>(0u, 4294967295u, 0u, 0u)), Struct_2(Struct_1(vec4<f32>(1328f, 1146f, -475f, -839f), vec3<i32>(30767i, -7215i, 2147483647i)), vec3<bool>(false, false, true), vec4<u32>(42768u, 64023u, 116214u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(-755f, 202f, 1095f, -589f), vec3<i32>(i32(-2147483648), -1i, 1i)), vec3<bool>(false, true, false), vec4<u32>(4294967295u, 1u, 61090u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(1000f, 1748f, 595f, -560f), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i)), vec3<bool>(false, true, false), vec4<u32>(34657u, 69225u, 1376u, 13019u)), Struct_2(Struct_1(vec4<f32>(1343f, 217f, -670f, -1000f), vec3<i32>(2147483647i, -12107i, -8462i)), vec3<bool>(true, true, true), vec4<u32>(463u, 1u, 38185u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(-480f, -195f, 221f, 110f), vec3<i32>(i32(-2147483648), 62783i, 0i)), vec3<bool>(true, true, false), vec4<u32>(50567u, 0u, 2026u, 84234u)), Struct_2(Struct_1(vec4<f32>(352f, -950f, -650f, 1081f), vec3<i32>(-9648i, -54527i, -1i)), vec3<bool>(true, false, true), vec4<u32>(1u, 19307u, 34947u, 1u)), Struct_2(Struct_1(vec4<f32>(-1389f, 140f, -1000f, 1199f), vec3<i32>(0i, 0i, -8590i)), vec3<bool>(true, true, true), vec4<u32>(44499u, 28662u, 1u, 4294967295u)));

var<private> global2: Struct_2;

var<private> global3: f32 = 1042f;

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_2, 31>();
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1077f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-675f, 2062f), arg_0.a.x), arg_1.a.x, global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1558f)) + arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1438f))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, arg_0.b.x, global2.a.b.x), vec3<i32>(-global2.a.b.x, global2.a.b.x, abs(0i))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(global2.a.b, arg_1.b), max(vec3<i32>(arg_0.b.x, -1i, arg_1.b.x), global2.a.b)) >> ((_wgslsmith_add_vec3_u32(global2.c.yzw, vec3<u32>(global2.c.x, 0u, 53319u)) >> ((vec3<u32>(global2.c.x, global2.c.x, global2.c.x) & global2.c.zzy) % vec3<u32>(32u))) % vec3<u32>(32u))));
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    var var_1 = true;
    return arg_1.a.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = -global2.a.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1168f, arg_1.a.a.x, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.a.x, 1000f, 1105f, 1159f)), select(var_0, global2.a.b, arg_1.b.x)), arg_1.a))));
    var var_2 = firstLeadingBit(var_0);
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(24039u, 4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1.c.x, u_input.b.x, arg_0.x), arg_1.c.wyy, select(select(vec3<bool>(true, arg_1.b.x, arg_1.b.x), vec3<bool>(global2.b.x, false, false), vec3<bool>(global2.b.x, false, false)), global2.b, !vec3<bool>(global2.b.x, arg_1.b.x, global2.b.x))), global2.c.zwy & ~(u_input.d ^ vec3<u32>(18311u, 18599u, 37813u)))), 31u)];
    var_2 = countOneBits(countOneBits(_wgslsmith_clamp_vec3_i32(abs(-global2.a.b), _wgslsmith_mult_vec3_i32(max(arg_1.a.b, vec3<i32>(-2147483647i, var_2.x, global2.a.b.x)), arg_1.a.b), vec3<i32>(-global2.a.b.x, 11237i << (u_input.b.x % 32u), max(var_2.x, -1i)))));
    return ~(~global2.c.x);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(global2.b.x, 4178u < (~func_2(vec3<u32>(global2.c.x, u_input.a, global2.c.x), global0[_wgslsmith_index_u32(global2.c.x, 29u)], global2.a.b.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(6002u, global2.c.x), select(vec2<u32>(0u, global2.c.x), vec2<u32>(global2.c.x, u_input.a), false)) % 32u)), true);
    let var_1 = global4[_wgslsmith_index_u32(u_input.e, 21u)];
    let var_2 = global4[_wgslsmith_index_u32(abs(4294967295u), 21u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(f32(-1f) * -227f)), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-839f, global2.a.a.x, -131f, var_1.a.x), vec3<i32>(var_2.b.x, 2147483647i, 1i)), global4[_wgslsmith_index_u32(~1u, 21u)])), var_2.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(401f)), global2.a.a.x, -1532f, -1329f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(var_1.a))))), select(select(!vec4<bool>(false, true, var_0.x, true), select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, global2.b.x, global2.b.x, true), false), true), select(!vec4<bool>(true, var_0.x, true, global2.b.x), !vec4<bool>(false, true, var_0.x, global2.b.x), var_0.x == true), select(vec4<bool>(false, false, global2.b.x, global2.b.x), vec4<bool>(false, global2.b.x, true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x))))), -countOneBits(vec3<i32>(-1i) * -vec3<i32>(9871i, var_2.b.x, global2.a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 31>();
    let var_0 = global2.a.b.zz;
    var var_1 = func_1();
    global0 = array<Struct_2, 29>();
    global1 = array<Struct_2, 31>();
    var var_2 = firstLeadingBit(select(~_wgslsmith_mod_vec3_u32(u_input.b.zxy, vec3<u32>(u_input.a, u_input.a, global2.c.x)) | _wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.b.wzz), ~vec3<u32>(global2.c.x, u_input.b.x, u_input.b.x)), vec3<u32>(global2.c.x, global2.c.x, _wgslsmith_sub_u32(u_input.a, max(global2.c.x, 4294967295u))), _wgslsmith_f_op_f32(ceil(var_1.a.x)) >= 1391f));
    var var_3 = vec2<i32>(reverseBits(_wgslsmith_add_i32(var_0.x, var_0.x)), abs(4343i));
    global4 = array<Struct_1, 21>();
    let var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.yy);
}

