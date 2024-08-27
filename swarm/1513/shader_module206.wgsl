struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<u32>(0u, 79049u), vec2<f32>(804f, 3091f), 0u, 1u, Struct_1(vec4<i32>(9706i, 16135i, -42240i, 0i), 25194u, vec2<i32>(0i, 1i), vec2<u32>(0u, 14639u))), Struct_2(vec2<u32>(29697u, 44754u), vec2<f32>(1643f, -1473f), 0u, 35811u, Struct_1(vec4<i32>(i32(-2147483648), -1i, 2147483647i, -3732i), 0u, vec2<i32>(2147483647i, 1i), vec2<u32>(10078u, 1u))), Struct_2(vec2<u32>(4294967295u, 0u), vec2<f32>(-1000f, -519f), 0u, 38278u, Struct_1(vec4<i32>(31478i, i32(-2147483648), -90446i, -61i), 46549u, vec2<i32>(33622i, 0i), vec2<u32>(4294967295u, 1u))), Struct_2(vec2<u32>(0u, 1u), vec2<f32>(623f, 560f), 0u, 15720u, Struct_1(vec4<i32>(-1i, -1i, 2147483647i, 28872i), 72857u, vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(1138u, 4294967295u))), Struct_2(vec2<u32>(34954u, 1u), vec2<f32>(1810f, -1299f), 0u, 4294967295u, Struct_1(vec4<i32>(0i, 54538i, i32(-2147483648), 41333i), 20827u, vec2<i32>(i32(-2147483648), 29745i), vec2<u32>(4294967295u, 37579u))), Struct_2(vec2<u32>(73229u, 0u), vec2<f32>(460f, -685f), 45820u, 51509u, Struct_1(vec4<i32>(i32(-2147483648), 66832i, 2147483647i, 2147483647i), 21049u, vec2<i32>(-1i, 2147483647i), vec2<u32>(0u, 1316u))), Struct_2(vec2<u32>(1u, 76011u), vec2<f32>(549f, 123f), 56203u, 4294967295u, Struct_1(vec4<i32>(0i, -12094i, 2147483647i, 481i), 24321u, vec2<i32>(-43170i, 1i), vec2<u32>(0u, 56749u))), Struct_2(vec2<u32>(0u, 72801u), vec2<f32>(206f, 1503f), 41954u, 0u, Struct_1(vec4<i32>(-1i, 1i, 20340i, -8895i), 1u, vec2<i32>(-22254i, -44550i), vec2<u32>(0u, 0u))), Struct_2(vec2<u32>(4294967295u, 0u), vec2<f32>(1000f, 1076f), 4294967295u, 0u, Struct_1(vec4<i32>(-18914i, -49926i, 15665i, i32(-2147483648)), 0u, vec2<i32>(10534i, -19835i), vec2<u32>(0u, 4294967295u))), Struct_2(vec2<u32>(16328u, 1u), vec2<f32>(-716f, 174f), 53293u, 16099u, Struct_1(vec4<i32>(64818i, 0i, 0i, 1943i), 0u, vec2<i32>(47171i, 0i), vec2<u32>(43079u, 18813u))), Struct_2(vec2<u32>(4294967295u, 1u), vec2<f32>(-1000f, -360f), 12296u, 1u, Struct_1(vec4<i32>(-24851i, 1i, 12050i, 2147483647i), 181u, vec2<i32>(-16210i, 52933i), vec2<u32>(1u, 16183u))), Struct_2(vec2<u32>(19034u, 14328u), vec2<f32>(442f, -1247f), 20794u, 31990u, Struct_1(vec4<i32>(32273i, 2147483647i, 7242i, 0i), 0u, vec2<i32>(1i, -19005i), vec2<u32>(4294967295u, 1u))), Struct_2(vec2<u32>(4294967295u, 22089u), vec2<f32>(1000f, -549f), 35609u, 1u, Struct_1(vec4<i32>(76922i, 2147483647i, -6660i, 0i), 1u, vec2<i32>(-21727i, -1i), vec2<u32>(1u, 67490u))), Struct_2(vec2<u32>(1u, 0u), vec2<f32>(317f, -745f), 23289u, 0u, Struct_1(vec4<i32>(43815i, 98267i, 2147483647i, 1i), 11315u, vec2<i32>(0i, 1i), vec2<u32>(4294967295u, 0u))), Struct_2(vec2<u32>(1u, 4294967295u), vec2<f32>(862f, 1587f), 4294967295u, 0u, Struct_1(vec4<i32>(0i, 1i, 1i, 53741i), 48759u, vec2<i32>(2147483647i, 2147483647i), vec2<u32>(1703u, 27884u))), Struct_2(vec2<u32>(1u, 0u), vec2<f32>(274f, 560f), 1u, 27384u, Struct_1(vec4<i32>(34272i, 9252i, 6495i, 30843i), 61273u, vec2<i32>(i32(-2147483648), -28444i), vec2<u32>(45092u, 1u))), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(844f, 253f), 0u, 74670u, Struct_1(vec4<i32>(-15765i, 1i, 2209i, 1i), 51002u, vec2<i32>(-1i, -48028i), vec2<u32>(1u, 90561u))), Struct_2(vec2<u32>(1u, 0u), vec2<f32>(2171f, -160f), 0u, 0u, Struct_1(vec4<i32>(0i, -19905i, -1i, 10009i), 0u, vec2<i32>(1i, -12888i), vec2<u32>(4294967295u, 37331u))), Struct_2(vec2<u32>(55530u, 52148u), vec2<f32>(1034f, -742f), 77286u, 0u, Struct_1(vec4<i32>(-21526i, 0i, 12029i, -1i), 44995u, vec2<i32>(i32(-2147483648), 0i), vec2<u32>(39198u, 4294967295u))), Struct_2(vec2<u32>(0u, 4294967295u), vec2<f32>(-1696f, 1353f), 9916u, 6238u, Struct_1(vec4<i32>(-1i, 54997i, 22367i, 28834i), 4294967295u, vec2<i32>(-63745i, 2147483647i), vec2<u32>(104120u, 1404u))), Struct_2(vec2<u32>(49258u, 0u), vec2<f32>(-1360f, 815f), 9726u, 4294967295u, Struct_1(vec4<i32>(1i, -8094i, i32(-2147483648), -260i), 55298u, vec2<i32>(-70925i, -1i), vec2<u32>(4294967295u, 1u))), Struct_2(vec2<u32>(4294967295u, 45495u), vec2<f32>(1168f, 825f), 4294967295u, 1u, Struct_1(vec4<i32>(2147483647i, -3796i, 2147483647i, -39869i), 1u, vec2<i32>(7813i, 1i), vec2<u32>(2819u, 1u))), Struct_2(vec2<u32>(54375u, 0u), vec2<f32>(-628f, -277f), 39696u, 56337u, Struct_1(vec4<i32>(36849i, 42502i, -1i, 40744i), 5038u, vec2<i32>(-3571i, 2147483647i), vec2<u32>(18510u, 1u))), Struct_2(vec2<u32>(23354u, 2166u), vec2<f32>(543f, 1029f), 0u, 46620u, Struct_1(vec4<i32>(2147483647i, -1i, -1i, i32(-2147483648)), 15416u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(0u, 1u))), Struct_2(vec2<u32>(59688u, 54297u), vec2<f32>(-574f, -375f), 12769u, 0u, Struct_1(vec4<i32>(-1i, 52343i, -1i, -1i), 21837u, vec2<i32>(1i, -44678i), vec2<u32>(27481u, 1u))), Struct_2(vec2<u32>(4294967295u, 1u), vec2<f32>(-575f, -811f), 16637u, 4294967295u, Struct_1(vec4<i32>(1i, -1i, -143i, i32(-2147483648)), 1u, vec2<i32>(8023i, -31849i), vec2<u32>(1u, 11863u))));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<i32>(-23424i, 1904i, 1i, -1i), 55091u, vec2<i32>(12954i, -37166i), vec2<u32>(1u, 16449u)));

var<private> global2: array<i32, 12>;

var<private> global3: array<Struct_1, 31>;

var<private> global4: vec2<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = ~1u;
    var var_1 = ~u_input.a;
    var var_2 = _wgslsmith_mult_u32(u_input.a ^ ~u_input.a, ~4294967295u);
    return Struct_2(~(vec2<u32>(_wgslsmith_mod_u32(0u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(39810u, u_input.a))) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2326f, -736f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -594f), vec2<f32>(-1789f, -375f), vec2<bool>(true, arg_0))))))), u_input.a, _wgslsmith_sub_u32(u_input.a, 2941u), Struct_1(-max(select(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], -1i, global2[_wgslsmith_index_u32(4294967295u, 12u)], 52183i), vec4<i32>(-43147i, global4.x, -36603i, global4.x), arg_0), vec4<i32>(63439i, 2147483647i, 2147483647i, 2147483647i)), ~abs(14807u), select(-min(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], -44992i), vec2<i32>(1i, 0i)), (vec2<i32>(global4.x, global2[_wgslsmith_index_u32(u_input.a, 12u)]) >> (vec2<u32>(u_input.a, 50217u) % vec2<u32>(32u))) | vec2<i32>(global4.x, 1i), select(select(vec2<bool>(true, arg_0), vec2<bool>(true, true), vec2<bool>(false, arg_0)), select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, arg_0)))), ~min(vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.a, u_input.a))));
}

fn func_3() -> vec2<u32> {
    var var_0 = vec3<u32>(~0u, u_input.a, _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) ^ vec4<u32>(63786u, 0u, 23740u, u_input.a))), abs(vec4<u32>(u_input.a, u_input.a, 3382u, u_input.a)) & ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 57226u))));
    var var_1 = func_1(true);
    let var_2 = global0[_wgslsmith_index_u32(1u >> (((_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, var_1.d, 0u), vec3<u32>(7933u, 9531u, 16990u), vec3<bool>(false, false, true)), vec3<u32>(568u, 64543u, var_1.e.b)) ^ 0u) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(select(51857u, var_1.a.x, false), 5076u), 4294967295u) % 32u)) % 32u), 26u)];
    var_1 = func_1(true);
    global3 = array<Struct_1, 31>();
    return min(func_1(36371i > -_wgslsmith_add_i32(-35850i, global4.x)).a, _wgslsmith_mult_vec2_u32(var_0.yy, vec2<u32>(abs(4294967295u), var_1.e.d.x)));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(26363u, u_input.a), vec2<u32>(~arg_0.b & 1u, countOneBits(u_input.a))), arg_0.a.zz >> (~func_3() % vec2<u32>(32u)), vec2<u32>(arg_0.b, 34729u));
    let var_1 = 120f;
    global1 = array<Struct_1, 1>();
    var var_2 = arg_0.a.wwy;
    var var_3 = 57997u;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    let var_1 = !vec2<bool>(all(vec2<bool>(1u == u_input.a, true)), false);
    global0 = array<Struct_2, 26>();
    var var_2 = var_1.x;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1537u, func_2(var_0.e, var_0.b.x), 71930u), vec3<u32>(~var_0.d, var_0.d, abs(var_0.e.b)), var_1.x) >> (vec3<u32>(1u, u_input.a, 14743u) % vec3<u32>(32u)), ~(vec3<u32>(u_input.a, _wgslsmith_mult_u32(var_0.d, u_input.a), abs(4294967295u)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 4294967295u, 2278u), vec3<u32>(u_input.a, var_0.c, 93317u)), vec3<u32>(1u, 1u, u_input.a)) % vec3<u32>(32u)))), 12u)];
    let var_4 = var_0.e.d.x | abs(~(~u_input.a));
    var var_5 = func_1(!(!(!(var_0.b.x <= 1337f)))).e;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global2[_wgslsmith_index_u32(1u, 12u)], ~(-var_5.c.x), firstLeadingBit(max(var_5.c.x << (var_4 % 32u), i32(-1i) * -1i)), 2147483647i), firstLeadingBit(~4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(68365u, func_2(Struct_1(vec4<i32>(26482i, var_0.e.a.x, 31011i, 2147483647i), 915u, vec2<i32>(var_5.c.x, var_5.a.x), var_0.e.d), 565f), var_4), ~max(vec3<u32>(var_4, 31030u, var_5.d.x), vec3<u32>(var_5.d.x, u_input.a, var_0.a.x))) & _wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_4, 1u, u_input.a), vec3<u32>(var_0.c, u_input.a, 63717u), vec3<bool>(var_1.x, true, false)) << (vec3<u32>(var_5.d.x, var_0.e.b, var_4) % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(u_input.a, var_5.b, u_input.a)), (vec3<u32>(var_5.b, 146411u, 0u) >> (vec3<u32>(var_0.c, 6405u, var_0.c) % vec3<u32>(32u))) | max(vec3<u32>(72361u, 4294967295u, 35022u), vec3<u32>(14093u, 67514u, u_input.a))), var_0.e.a.zxy, -vec3<i32>(2998i, -2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global4.x), var_0.e.a.zz), ~(-48047i))));
}

