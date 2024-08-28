struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(0u, 0u, 72966u, 0u), vec4<u32>(0u, 1u, 1u, 38348u));

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(808f, 1i, vec2<f32>(-1321f, -300f)), Struct_1(-455f, 26345i, vec2<f32>(-177f, 1000f))), Struct_2(Struct_1(337f, -20210i, vec2<f32>(-247f, -296f)), Struct_1(418f, -6802i, vec2<f32>(-921f, -1000f))), Struct_2(Struct_1(-1309f, -806i, vec2<f32>(1000f, 408f)), Struct_1(1565f, 85430i, vec2<f32>(-427f, -133f))), Struct_2(Struct_1(-2168f, -38124i, vec2<f32>(1277f, -804f)), Struct_1(-669f, 58476i, vec2<f32>(936f, -973f))), Struct_2(Struct_1(177f, -40903i, vec2<f32>(1502f, 1000f)), Struct_1(-887f, -1983i, vec2<f32>(-1641f, 1286f))), Struct_2(Struct_1(-1166f, 23866i, vec2<f32>(143f, 209f)), Struct_1(-1625f, i32(-2147483648), vec2<f32>(3179f, -569f))), Struct_2(Struct_1(509f, 1i, vec2<f32>(-1893f, -515f)), Struct_1(818f, -1i, vec2<f32>(1465f, 828f))), Struct_2(Struct_1(1284f, -1i, vec2<f32>(-1010f, 1000f)), Struct_1(-1275f, -1i, vec2<f32>(199f, 299f))), Struct_2(Struct_1(793f, -1i, vec2<f32>(-2213f, 753f)), Struct_1(479f, -2545i, vec2<f32>(-126f, -592f))), Struct_2(Struct_1(251f, i32(-2147483648), vec2<f32>(-523f, -239f)), Struct_1(965f, 1i, vec2<f32>(201f, 102f))), Struct_2(Struct_1(1235f, 2147483647i, vec2<f32>(-2459f, 992f)), Struct_1(2785f, -12587i, vec2<f32>(506f, -753f))), Struct_2(Struct_1(1103f, 1145i, vec2<f32>(-373f, 511f)), Struct_1(260f, 0i, vec2<f32>(-1000f, -849f))), Struct_2(Struct_1(-1197f, -35935i, vec2<f32>(-877f, -800f)), Struct_1(-1442f, 36658i, vec2<f32>(-1747f, -1110f))), Struct_2(Struct_1(-496f, -34740i, vec2<f32>(986f, 234f)), Struct_1(-1000f, 2147483647i, vec2<f32>(-797f, -1085f))), Struct_2(Struct_1(-488f, -9482i, vec2<f32>(-471f, 297f)), Struct_1(733f, -13884i, vec2<f32>(1485f, -659f))), Struct_2(Struct_1(409f, -1i, vec2<f32>(-409f, -851f)), Struct_1(1153f, 32280i, vec2<f32>(-1000f, -1025f))), Struct_2(Struct_1(-884f, -52505i, vec2<f32>(-504f, -1000f)), Struct_1(-312f, 16899i, vec2<f32>(-1313f, 260f))), Struct_2(Struct_1(821f, 1i, vec2<f32>(1313f, 875f)), Struct_1(708f, -46309i, vec2<f32>(1146f, 403f))), Struct_2(Struct_1(601f, 2147483647i, vec2<f32>(-312f, 925f)), Struct_1(-480f, 6178i, vec2<f32>(-708f, -2119f))), Struct_2(Struct_1(-238f, 0i, vec2<f32>(646f, 860f)), Struct_1(-1486f, -1i, vec2<f32>(260f, -1000f))), Struct_2(Struct_1(1158f, 0i, vec2<f32>(1391f, -1000f)), Struct_1(-737f, 7319i, vec2<f32>(-1004f, -1437f))), Struct_2(Struct_1(1000f, -41231i, vec2<f32>(1295f, 146f)), Struct_1(920f, -23794i, vec2<f32>(1653f, 1000f))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    var var_0 = vec3<bool>(any(vec4<bool>(true, true, true, true)), true, all(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, false, true, true), true)));
    global2 = array<Struct_2, 22>();
    var var_1 = var_0.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2542f, -541f))), _wgslsmith_f_op_f32(335f - _wgslsmith_f_op_f32(step(489f, 1000f)))))), -abs(u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-647f, 3375f)))));
    var var_3 = !(!select(vec4<bool>(1130f >= var_2.c.x, false, var_0.x, true), !vec4<bool>(false, true, var_0.x, var_0.x), false));
    return select(var_3.ww, vec2<bool>(false, false), false);
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = any(!select(func_3(), vec2<bool>(true, true), all(func_3())));
    let var_1 = vec4<i32>(firstLeadingBit(-1i), 1i, _wgslsmith_add_i32(select(_wgslsmith_clamp_i32(1i, -18626i, 2147483647i), ~u_input.b.x, true), u_input.a.x) >> (59770u % 32u), ~(arg_0 >> (1u % 32u)));
    var var_2 = arg_0;
    var var_3 = 1000f;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f * 429f))) - 166f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-507f, 942f)) * _wgslsmith_f_op_f32(-1000f - -1020f)))), 48067i, vec2<f32>(1381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<i32>(0i, 8061i);
    var var_1 = arg_2;
    var_1 = global2[_wgslsmith_index_u32(u_input.e, 22u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1275f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a, var_1.b.c.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x + arg_1.b.c.x) * _wgslsmith_f_op_f32(arg_1.a.c.x + arg_1.b.c.x))), _wgslsmith_f_op_f32(min(-358f, _wgslsmith_f_op_f32(-1692f + arg_2.b.a)))));
    var var_3 = -2147483647i << (u_input.e % 32u);
    return u_input.e;
}

fn func_1() -> Struct_2 {
    global0 = 1u;
    let var_0 = !vec2<bool>(true, u_input.e <= func_4(select(vec2<bool>(true, true), vec2<bool>(false, true), false), global2[_wgslsmith_index_u32(~22973u, 22u)], Struct_2(Struct_1(-707f, u_input.d.x, vec2<f32>(-375f, 1039f)), Struct_1(1481f, u_input.d.x, vec2<f32>(-925f, -349f))), func_2(-2147483647i, u_input.e)));
    var var_1 = Struct_1(_wgslsmith_div_f32(430f, func_2(~_wgslsmith_mult_i32(1i, -2147483647i), ~1u).a), abs(max(firstLeadingBit(~60000i), ~_wgslsmith_mod_i32(u_input.a.x, 85411i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(231f, 2338f, any(var_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-857f))))) - vec2<f32>(-251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-161f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.a, var_1.a))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, -195f, var_1.a)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a, var_1.a, var_1.c.x))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.c.x) + vec3<f32>(314f, func_2(u_input.b.x, u_input.e).a, var_1.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, 1233f, -820f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(1137f, 350f, _wgslsmith_div_f32(var_1.a, var_1.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-2123f, 360f, var_1.c.x), vec3<f32>(var_1.c.x, var_1.a, var_1.a))))));
    var_1 = func_2(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(~1i, ~var_1.b), u_input.a.x, var_1.b), u_input.e << (~u_input.e % 32u));
    return global2[_wgslsmith_index_u32(~u_input.e, 22u)];
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = true;
    let var_1 = firstTrailingBit(reverseBits(_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(1u, 2u)], firstLeadingBit(abs(vec4<u32>(12873u, 0u, 6971u, 21478u))))));
    let var_2 = 7119u;
    var var_3 = arg_0;
    var var_4 = func_1();
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f - -207f)), _wgslsmith_div_f32(1950f, -672f), _wgslsmith_f_op_f32(-602f + _wgslsmith_f_op_f32(2419f * -1493f))), func_1()), func_2(u_input.c, firstLeadingBit(reverseBits(u_input.e))));
    global0 = firstLeadingBit(1u);
    global0 = 50486u;
    var var_1 = vec3<i32>(-1i, u_input.b.x ^ (i32(-1i) * -16858i), ~(~firstTrailingBit(u_input.b.x)));
    let var_2 = Struct_2(func_2(_wgslsmith_add_i32(1i, var_1.x), ~u_input.e), Struct_1(653f, -max(var_0.a.b, u_input.a.x), _wgslsmith_f_op_vec2_f32(var_0.b.c * var_0.a.c)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.c.x, 121f, 175f, 213f)))))));
    var var_4 = var_3.zyx;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.c.x)));
    let var_6 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.e, 19374u, u_input.e)), countOneBits(vec3<u32>(u_input.e, 4294967295u, u_input.e)) | vec3<u32>(u_input.e, 4294967295u, 0u), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, 86653u, u_input.e)), vec3<u32>(4294967295u, u_input.e, 1u))) ^ vec3<u32>(_wgslsmith_mult_u32(7483u << (u_input.e % 32u), ~39528u), 11874u, u_input.e & ~0u));
}

