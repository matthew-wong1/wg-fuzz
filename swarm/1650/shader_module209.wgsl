struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(1u, 2601u);

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(-16062i, 17994i), vec4<bool>(false, false, true, true), false, vec4<f32>(-626f, 908f, -2866f, 101f), vec2<bool>(false, true)), vec4<u32>(33008u, 54851u, 105216u, 9211u), vec4<i32>(-13854i, 0i, 2473i, -1i)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(2147483647i, -28168i), vec4<bool>(true, false, true, false), false, vec4<f32>(1696f, -551f, 532f, -272f), vec2<bool>(false, true)), vec4<u32>(1u, 77365u, 4294967295u, 4294967295u), vec4<i32>(-20597i, 1i, 60744i, 0i)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(3432i, -32869i), vec4<bool>(false, true, false, true), true, vec4<f32>(802f, 2509f, 1554f, -1166f), vec2<bool>(true, false)), vec4<u32>(30317u, 43066u, 30247u, 9308u), vec4<i32>(1i, 37159i, 0i, 2147483647i)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<bool>(false, false, true, false), false, vec4<f32>(-1008f, 1677f, 184f, -364f), vec2<bool>(false, true)), vec4<u32>(32476u, 4294967295u, 29867u, 30674u), vec4<i32>(-1i, 49379i, 1i, -1i)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<i32>(-38666i, i32(-2147483648)), vec4<bool>(true, true, false, false), true, vec4<f32>(-397f, 1041f, 1083f, 293f), vec2<bool>(false, true)), vec4<u32>(23147u, 76178u, 120194u, 1u), vec4<i32>(2147483647i, -1i, 1i, 99344i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(2147483647i, 22647i), vec4<bool>(true, false, false, false), true, vec4<f32>(-2006f, 1529f, -845f, -1088f), vec2<bool>(true, true)), vec4<u32>(50709u, 86777u, 1u, 4294967295u), vec4<i32>(23305i, 19335i, -1i, 2147483647i)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<i32>(-58430i, 1i), vec4<bool>(false, false, false, false), true, vec4<f32>(1000f, -781f, -177f, 907f), vec2<bool>(false, true)), vec4<u32>(4294967295u, 78439u, 24273u, 103549u), vec4<i32>(1i, 2147483647i, 1i, -1i)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(26897i, -1i), vec4<bool>(false, false, false, false), false, vec4<f32>(899f, -1586f, 964f, 931f), vec2<bool>(true, false)), vec4<u32>(20515u, 4294967295u, 36097u, 4294967295u), vec4<i32>(-1i, -60557i, -1i, -27897i)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<i32>(-33112i, -1i), vec4<bool>(true, false, false, false), true, vec4<f32>(543f, 1117f, -1710f, 1000f), vec2<bool>(true, true)), vec4<u32>(3663u, 4294967295u, 101189u, 4294967295u), vec4<i32>(1i, 2147483647i, 51310i, 8607i)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(6362i, i32(-2147483648)), vec4<bool>(false, true, true, false), true, vec4<f32>(962f, -804f, 392f, 748f), vec2<bool>(true, true)), vec4<u32>(30225u, 4294967295u, 81205u, 8250u), vec4<i32>(-36431i, 32337i, -18575i, -1i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(-27527i, 32976i), vec4<bool>(true, true, true, true), true, vec4<f32>(1412f, 210f, -1546f, 884f), vec2<bool>(false, true)), vec4<u32>(4294967295u, 67193u, 112184u, 10287u), vec4<i32>(-28613i, 14852i, 15368i, i32(-2147483648))), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<i32>(10702i, -26669i), vec4<bool>(true, false, false, false), true, vec4<f32>(-947f, -333f, 269f, -397f), vec2<bool>(false, true)), vec4<u32>(43997u, 45597u, 119515u, 0u), vec4<i32>(0i, 48519i, i32(-2147483648), 18337i)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<i32>(2147483647i, -24737i), vec4<bool>(false, true, false, false), false, vec4<f32>(393f, -1087f, -215f, -2395f), vec2<bool>(false, true)), vec4<u32>(8080u, 51854u, 25340u, 35171u), vec4<i32>(0i, 1i, 0i, -17952i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(-1i, -25148i), vec4<bool>(false, false, true, true), false, vec4<f32>(-586f, -1443f, 1006f, -1000f), vec2<bool>(true, true)), vec4<u32>(67811u, 54219u, 0u, 4294967295u), vec4<i32>(46749i, -37434i, i32(-2147483648), -27863i)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<i32>(29186i, -12867i), vec4<bool>(false, false, true, true), false, vec4<f32>(-467f, 1006f, -717f, 693f), vec2<bool>(false, true)), vec4<u32>(79456u, 7096u, 7869u, 0u), vec4<i32>(2147483647i, 39846i, 2147483647i, 1i)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(76560i, -1i), vec4<bool>(true, true, true, false), true, vec4<f32>(836f, -2014f, 172f, -2563f), vec2<bool>(false, false)), vec4<u32>(51709u, 4415u, 1u, 59699u), vec4<i32>(-7810i, 1i, 7360i, 2147483647i)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(0i, 1i), vec4<bool>(true, true, true, true), false, vec4<f32>(811f, 997f, 2096f, -1137f), vec2<bool>(false, false)), vec4<u32>(114764u, 69151u, 92183u, 1u), vec4<i32>(i32(-2147483648), -34128i, 31823i, 2147483647i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(1i, 17671i), vec4<bool>(false, true, true, false), false, vec4<f32>(106f, 206f, -657f, 403f), vec2<bool>(true, true)), vec4<u32>(16687u, 1u, 95992u, 22367u), vec4<i32>(0i, -43i, 14512i, i32(-2147483648))), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(2795i, -3852i), vec4<bool>(false, true, false, false), false, vec4<f32>(-1480f, 965f, 299f, 480f), vec2<bool>(true, false)), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<i32>(-13803i, -1i, i32(-2147483648), -44816i)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(0i, -2967i), vec4<bool>(true, false, false, true), false, vec4<f32>(-858f, 592f, -807f, -779f), vec2<bool>(true, true)), vec4<u32>(0u, 1u, 47973u, 1u), vec4<i32>(326i, 2147483647i, 5044i, -25667i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(-35692i, 1i), vec4<bool>(true, true, true, false), false, vec4<f32>(-1548f, -472f, -705f, 887f), vec2<bool>(false, true)), vec4<u32>(77901u, 16310u, 1u, 4294967295u), vec4<i32>(2147483647i, 1i, 2147483647i, -4450i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(63803i, i32(-2147483648)), vec4<bool>(false, false, false, false), true, vec4<f32>(1536f, -287f, -1051f, -759f), vec2<bool>(true, false)), vec4<u32>(1u, 42869u, 4294967295u, 4294967295u), vec4<i32>(7458i, -7731i, 1i, -35792i)));

var<private> global3: array<vec3<u32>, 26>;

var<private> global4: array<vec2<i32>, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = global1.c.d;
    return vec2<bool>(false & (select(true, !global1.a.x, global1.a.x) & false), global1.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    global3 = array<vec3<u32>, 26>();
    var var_0 = Struct_3(func_3(), ~firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(arg_2.x, arg_2.x)), Struct_1(vec2<i32>(firstTrailingBit(arg_0.b.a.x), 55193i) & -(vec2<i32>(13263i, global1.e) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), select(global1.c.b, select(select(global1.c.b, global1.c.b, global1.c.b), !vec4<bool>(arg_0.a.x, arg_0.a.x, global1.a.x, false), arg_0.b.b), vec4<bool>(select(true, arg_3.e.x, false), true, !arg_3.c, true)), !(!arg_3.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1846f, arg_3.d.x, -261f, 1535f) * global1.c.d))), vec2<bool>(false, all(!arg_3.e))), -677f, arg_2.x);
    global1 = Struct_3(arg_3.e, reverseBits(-_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(global4[_wgslsmith_index_u32(0u, 26u)], vec2<i32>(2147483647i, -35666i)), ~arg_0.d.yz)), var_0.c, _wgslsmith_f_op_f32(1114f * 479f), abs(-21986i));
    global2 = array<Struct_2, 22>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-129f - 1f)) + -1656f);
    return var_0.b.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    let var_0 = reverseBits(vec2<i32>(select(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, -2147483647i), ~2147483647i), countOneBits(func_2(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], -267f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 26u)], Struct_1(global4[_wgslsmith_index_u32(3617u, 26u)], global1.c.b, true, global1.c.d, vec2<bool>(global1.c.e.x, false)))), global1.a.x), max(66101i, global1.e)));
    global2 = array<Struct_2, 22>();
    let var_1 = Struct_3(global1.c.b.ww, _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(global1.c.a >> (u_input.b.xy % vec2<u32>(32u)), max(vec2<i32>(global1.b.x, 1i) | vec2<i32>(1i, var_0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-5771i, -2147483647i), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 26u)], global1.c.a))), global1.b), global1.c, 2353f, 7011i);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1241f, 1006f)))) * vec2<f32>(_wgslsmith_f_op_f32(-112f + global1.c.d.x), -1000f)), _wgslsmith_f_op_vec2_f32(global1.c.d.xz * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.d, -1082f), _wgslsmith_f_op_vec2_f32(global1.c.d.zx + global1.c.d.yw)))))), _wgslsmith_add_i32(~reverseBits(-40927i), -1i));
    global0 = array<u32, 2>();
    let var_0 = min(~vec3<i32>(18119i | (-17900i << (u_input.e % 32u)), global1.c.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(32953i, -25739i, global1.b.x, global1.c.a.x), vec4<i32>(global1.b.x, global1.b.x, global1.b.x, 44751i))), vec3<i32>(abs(global1.b.x) & 1i, global1.c.a.x, global1.c.a.x) | -(_wgslsmith_div_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, global1.b.x), vec3<i32>(global1.e, -27780i, -7224i)) >> (vec3<u32>(1063u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28458u, 2u)], 2u)], 18040u) % vec3<u32>(32u))));
    global0 = array<u32, 2>();
    global4 = array<vec2<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec4<u32>(reverseBits(26902u), u_input.d.x, ~23111u, ~10383u)), ~global0[_wgslsmith_index_u32(u_input.d.x, 2u)], -abs(-(vec4<i32>(-18695i, global1.c.a.x, global1.e, -2147483647i) ^ vec4<i32>(global1.c.a.x, 1i, global1.b.x, -12924i))));
}

