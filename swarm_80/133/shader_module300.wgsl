struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(1i, vec2<u32>(0u, 55857u), Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(1i, 1i, -22112i, 29286i), true, 87907u), i32(-2147483648), vec4<bool>(true, true, true, false)), Struct_5(-1i, vec2<u32>(0u, 4294967295u), Struct_1(vec2<u32>(18377u, 1u), vec4<i32>(14173i, 2147483647i, i32(-2147483648), 22550i), false, 33272u), -31214i, vec4<bool>(true, false, false, false)), Struct_5(-23235i, vec2<u32>(38506u, 9151u), Struct_1(vec2<u32>(0u, 84416u), vec4<i32>(0i, 2147483647i, -25565i, i32(-2147483648)), false, 1u), 0i, vec4<bool>(false, false, false, false)), Struct_5(2147483647i, vec2<u32>(74239u, 43819u), Struct_1(vec2<u32>(49030u, 4294967295u), vec4<i32>(0i, -43198i, -1i, -1i), true, 73958u), 0i, vec4<bool>(true, false, true, false)), Struct_5(0i, vec2<u32>(22380u, 0u), Struct_1(vec2<u32>(62577u, 4294967295u), vec4<i32>(0i, -14928i, -1i, 38029i), true, 1u), -40841i, vec4<bool>(true, false, false, true)), Struct_5(i32(-2147483648), vec2<u32>(1u, 1u), Struct_1(vec2<u32>(63956u, 0u), vec4<i32>(0i, -24938i, -4125i, i32(-2147483648)), false, 1u), 21254i, vec4<bool>(true, false, true, true)), Struct_5(0i, vec2<u32>(4294967295u, 18961u), Struct_1(vec2<u32>(52019u, 66341u), vec4<i32>(-24113i, -35167i, 41064i, 67183i), true, 1u), -80662i, vec4<bool>(true, false, true, true)), Struct_5(1i, vec2<u32>(1u, 0u), Struct_1(vec2<u32>(17160u, 4294967295u), vec4<i32>(2147483647i, -14951i, -39767i, -6242i), false, 1u), -49920i, vec4<bool>(false, false, true, false)), Struct_5(18570i, vec2<u32>(22876u, 1u), Struct_1(vec2<u32>(52270u, 26108u), vec4<i32>(24420i, 47770i, -1i, -1i), false, 0u), -1i, vec4<bool>(false, false, false, true)), Struct_5(0i, vec2<u32>(1u, 5094u), Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(i32(-2147483648), i32(-2147483648), 21509i, -77685i), false, 18527u), 26862i, vec4<bool>(true, false, true, true)), Struct_5(-53254i, vec2<u32>(24089u, 68746u), Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(-1i, -1i, 23025i, 2147483647i), true, 72316u), 1i, vec4<bool>(false, true, false, false)), Struct_5(-5042i, vec2<u32>(4294967295u, 47186u), Struct_1(vec2<u32>(90207u, 33423u), vec4<i32>(-16117i, -1i, -1i, 0i), false, 82558u), 35261i, vec4<bool>(true, true, true, true)), Struct_5(i32(-2147483648), vec2<u32>(1u, 1u), Struct_1(vec2<u32>(29206u, 4294967295u), vec4<i32>(1i, -5042i, 37618i, 16158i), false, 0u), -6230i, vec4<bool>(true, true, false, false)), Struct_5(15330i, vec2<u32>(13042u, 32911u), Struct_1(vec2<u32>(14184u, 4294967295u), vec4<i32>(i32(-2147483648), -1i, -22092i, -1i), false, 9139u), 33973i, vec4<bool>(true, true, false, false)), Struct_5(-1844i, vec2<u32>(5098u, 4294967295u), Struct_1(vec2<u32>(11414u, 4294967295u), vec4<i32>(-5501i, 10948i, -24170i, 0i), false, 4294967295u), i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_5(3233i, vec2<u32>(22924u, 46855u), Struct_1(vec2<u32>(31245u, 17920u), vec4<i32>(1i, i32(-2147483648), -1i, 39046i), false, 4294967295u), 2147483647i, vec4<bool>(true, true, true, true)), Struct_5(-62539i, vec2<u32>(1u, 0u), Struct_1(vec2<u32>(11376u, 10406u), vec4<i32>(0i, 0i, -1i, i32(-2147483648)), false, 33960u), 14907i, vec4<bool>(true, false, false, false)), Struct_5(-29119i, vec2<u32>(47028u, 38u), Struct_1(vec2<u32>(24610u, 24695u), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 0i), true, 27379u), 0i, vec4<bool>(true, false, false, true)), Struct_5(-1i, vec2<u32>(61293u, 0u), Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(0i, -1i, 26631i, 4495i), true, 19795u), 13313i, vec4<bool>(false, false, false, true)), Struct_5(2147483647i, vec2<u32>(4294967295u, 82041u), Struct_1(vec2<u32>(4294967295u, 19648u), vec4<i32>(2147483647i, 18739i, -1i, 1i), true, 4294967295u), 19841i, vec4<bool>(true, true, true, false)), Struct_5(0i, vec2<u32>(11311u, 0u), Struct_1(vec2<u32>(1u, 107828u), vec4<i32>(-1i, 82578i, -37805i, 0i), false, 20776u), i32(-2147483648), vec4<bool>(false, true, true, false)), Struct_5(2147483647i, vec2<u32>(63676u, 27948u), Struct_1(vec2<u32>(4890u, 0u), vec4<i32>(-5452i, -11585i, i32(-2147483648), -1i), false, 0u), 29096i, vec4<bool>(false, false, false, false)), Struct_5(0i, vec2<u32>(82475u, 30189u), Struct_1(vec2<u32>(1u, 1241u), vec4<i32>(43946i, 31011i, 2147483647i, -30539i), true, 4294967295u), 0i, vec4<bool>(false, true, true, true)), Struct_5(1i, vec2<u32>(1u, 1u), Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(2147483647i, 1i, 1i, -4912i), true, 51523u), i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_5(1i, vec2<u32>(132198u, 1u), Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(20061i, 0i, i32(-2147483648), i32(-2147483648)), true, 14765u), 12431i, vec4<bool>(false, false, false, true)), Struct_5(-1i, vec2<u32>(0u, 113884u), Struct_1(vec2<u32>(21839u, 73425u), vec4<i32>(3280i, -1i, 7200i, 2147483647i), true, 4294967295u), -1i, vec4<bool>(false, false, true, true)), Struct_5(-23375i, vec2<u32>(4294967295u, 46768u), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(-42648i, -1i, -1i, 1i), false, 43159u), 29539i, vec4<bool>(true, true, false, false)), Struct_5(i32(-2147483648), vec2<u32>(0u, 4294967295u), Struct_1(vec2<u32>(16817u, 0u), vec4<i32>(-51122i, 16774i, -36022i, 2147483647i), false, 1u), 2147483647i, vec4<bool>(true, false, true, true)), Struct_5(0i, vec2<u32>(1u, 4294967295u), Struct_1(vec2<u32>(0u, 74409u), vec4<i32>(-3870i, i32(-2147483648), 2147483647i, 45550i), true, 1u), 1i, vec4<bool>(true, true, false, false)), Struct_5(-22738i, vec2<u32>(744u, 70095u), Struct_1(vec2<u32>(4294967295u, 14249u), vec4<i32>(-255i, 0i, 13917i, -1i), true, 80272u), 2147483647i, vec4<bool>(true, false, true, false)), Struct_5(i32(-2147483648), vec2<u32>(31679u, 0u), Struct_1(vec2<u32>(40268u, 49126u), vec4<i32>(7600i, 73749i, -1i, -1i), true, 4294967295u), -35871i, vec4<bool>(true, false, false, true)), Struct_5(382i, vec2<u32>(20160u, 1u), Struct_1(vec2<u32>(0u, 0u), vec4<i32>(9255i, 12815i, i32(-2147483648), -41712i), false, 63914u), 23284i, vec4<bool>(false, true, true, false)));

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<u32>(6545u, 0u), vec4<i32>(1i, -2073i, 14931i, -1i), true, 11810u), Struct_1(vec2<u32>(1u, 7971u), vec4<i32>(-583i, 2147483647i, 2147483647i, 1i), false, 0u), Struct_1(vec2<u32>(29387u, 0u), vec4<i32>(i32(-2147483648), 0i, 1i, 54186i), true, 4294967295u), Struct_1(vec2<u32>(51954u, 1u), vec4<i32>(17985i, 25992i, -6504i, 38608i), true, 4294967295u), Struct_1(vec2<u32>(0u, 14964u), vec4<i32>(-1i, -34863i, 0i, 0i), true, 4294967295u), Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(i32(-2147483648), i32(-2147483648), -60556i, -29196i), true, 0u), Struct_1(vec2<u32>(22078u, 90651u), vec4<i32>(1i, 0i, 4660i, 47638i), false, 32893u), Struct_1(vec2<u32>(54781u, 4294967295u), vec4<i32>(0i, -1i, -85858i, -3463i), true, 36641u), Struct_1(vec2<u32>(85299u, 24835u), vec4<i32>(2147483647i, 30291i, 4777i, -52129i), true, 74790u), Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(0i, i32(-2147483648), 0i, -1i), true, 4294967295u), Struct_1(vec2<u32>(60596u, 60269u), vec4<i32>(0i, i32(-2147483648), 1i, 33259i), true, 4294967295u), Struct_1(vec2<u32>(1u, 16027u), vec4<i32>(-23174i, -9027i, 2147483647i, -907i), true, 4294967295u), Struct_1(vec2<u32>(44u, 4294967295u), vec4<i32>(0i, -26297i, 1i, 1i), false, 11192u), Struct_1(vec2<u32>(19344u, 46039u), vec4<i32>(0i, 2147483647i, 1i, -1114i), false, 1u), Struct_1(vec2<u32>(49558u, 0u), vec4<i32>(4957i, 59847i, -10257i, -1i), false, 0u), Struct_1(vec2<u32>(39503u, 45711u), vec4<i32>(11493i, 73968i, i32(-2147483648), -1i), false, 13427u), Struct_1(vec2<u32>(1u, 111384u), vec4<i32>(23984i, -1131i, -1i, 7037i), true, 35360u), Struct_1(vec2<u32>(40087u, 4294967295u), vec4<i32>(2147483647i, 25784i, i32(-2147483648), -1i), true, 0u));

var<private> global3: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(3612i, -3472i, 26688i));

var<private> global4: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-1i, 21010i), vec2<i32>(0i, 1i), vec2<i32>(3692i, -46588i), vec2<i32>(12615i, 45714i), vec2<i32>(-1i, 0i), vec2<i32>(-16112i, 0i), vec2<i32>(37768i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-37996i, -20951i), vec2<i32>(20974i, -1i), vec2<i32>(0i, -4620i), vec2<i32>(-2972i, -48462i), vec2<i32>(1i, 21875i), vec2<i32>(-4769i, -1i), vec2<i32>(19771i, -1i), vec2<i32>(20071i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(1i, -1i), vec2<i32>(33409i, 42536i), vec2<i32>(-14762i, -20503i), vec2<i32>(0i, 15072i), vec2<i32>(-11359i, -58047i), vec2<i32>(0i, 33431i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(26330i, -26587i), vec2<i32>(-1i, 19801i), vec2<i32>(26607i, 2147483647i), vec2<i32>(-54422i, 0i), vec2<i32>(i32(-2147483648), -15158i), vec2<i32>(-5064i, 10578i), vec2<i32>(1i, 54i), vec2<i32>(i32(-2147483648), -17958i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> Struct_2 {
    global3 = array<vec3<i32>, 1>();
    var var_0 = _wgslsmith_div_f32(734f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(-219f))), _wgslsmith_f_op_f32(1000f + -1547f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -550f));
    let var_2 = arg_0;
    let var_3 = !vec3<bool>(var_2, true, arg_0);
    return Struct_2(Struct_1(vec2<u32>(select(u_input.a.x, 7320u, true), 41561u), ~(vec4<i32>(-1i, -2147483647i, -37395i, 2147483647i) >> (~u_input.a % vec4<u32>(32u))), var_2, _wgslsmith_add_u32(countOneBits(~u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 3453u) << (vec2<u32>(43355u, 1u) % vec2<u32>(32u)), u_input.a.zw | vec2<u32>(24733u, 80127u)))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global1 = array<Struct_5, 32>();
    global0 = !select(select(vec4<bool>(true, global0.x, global0.x, true), !select(vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, true, global0.x, global0.x)), true), select(select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), true), select(vec4<bool>(false, true, false, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, false)), func_2(global0.x).a.c), vec4<bool>(all(global0.zy), false, true, !global0.x), any(global0.yz)), false);
    var var_0 = Struct_5(~1i, ~func_2(!global0.x | global0.x).a.a, global2[_wgslsmith_index_u32((_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.x, 33657u), _wgslsmith_mod_u32(0u, 1u), u_input.a.x) & ~44580u) | 60167u, 18u)], 1i, vec4<bool>(!(!all(vec4<bool>(global0.x, global0.x, global0.x, false))), !(!global0.x) || true, !all(!vec4<bool>(global0.x, global0.x, true, false)), global0.x));
    let var_1 = (-var_0.c.b >> (arg_0 % vec4<u32>(32u))) ^ vec4<i32>(var_0.a, 69770i, var_0.d, 1i);
    let var_2 = vec2<i32>(min(countOneBits(min(1i, var_1.x & var_1.x)), func_2(true).a.b.x), var_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1564f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1275f)))) - 392f);
}

fn func_4(arg_0: f32) -> vec4<bool> {
    let var_0 = all(select(global0.wzw, global0.wwy, global0.x | global0.x));
    global4 = array<vec2<i32>, 32>();
    var var_1 = ~vec4<i32>(select(_wgslsmith_mod_i32(~(-37049i), 17669i), -1i, var_0), 1i, min(2147483647i, 1i), -_wgslsmith_mult_i32(1i, -2147483647i));
    var var_2 = Struct_3(func_2(global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1f, -1167f, var_0)))), ~1u & u_input.a.x, _wgslsmith_mod_vec2_u32(~min(vec2<u32>(44333u, u_input.a.x), u_input.a.wz), firstTrailingBit(u_input.a.yy)));
    var var_3 = Struct_4(countOneBits(vec2<u32>(reverseBits(u_input.a.x), 64588u)), global0.xxw);
    return !vec4<bool>(any(!vec3<bool>(var_2.a.a.c, true, false)), true, _wgslsmith_add_u32(1u, ~1u) >= reverseBits(var_3.a.x >> (u_input.a.x % 32u)), (0i << (u_input.a.x % 32u)) == (countOneBits(-33021i) >> (0u % 32u)));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    global2 = array<Struct_1, 18>();
    let var_0 = Struct_3(func_2(!(true != global0.x)), 1368f, 56191u, ~(~(~vec2<u32>(u_input.a.x, 46327u)) >> (vec2<u32>(max(u_input.a.x, u_input.a.x), min(u_input.a.x, 10780u)) % vec2<u32>(32u))));
    let var_1 = global1[_wgslsmith_index_u32(var_0.d.x ^ u_input.a.x, 32u)];
    var var_2 = -1110f;
    var var_3 = select(!var_1.e, !vec4<bool>(any(select(var_1.e.yy, global0.zw, global0.wz)), _wgslsmith_add_i32(var_0.a.a.b.x, var_1.d) <= (-47703i & var_1.c.b.x), global0.x, true), func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(max(vec4<u32>(9146u, 1u, 14241u, var_1.c.a.x), u_input.a)))))));
    return var_1.c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~max(1i, 0i) ^ _wgslsmith_add_i32(~(-34843i), _wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<i32>(-2020i, -6795i)))) & (-(~1i) >> (0u % 32u));
    let var_1 = vec4<i32>(~(-var_0), var_0, firstLeadingBit(var_0), abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0), global4[_wgslsmith_index_u32(u_input.a.x, 32u)]))) << (~(~_wgslsmith_mult_vec4_u32(select(u_input.a, u_input.a, vec4<bool>(true, global0.x, global0.x, global0.x)), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u));
    let var_2 = -534f;
    global4 = array<vec2<i32>, 32>();
    global2 = array<Struct_1, 18>();
    let var_3 = Struct_1(~u_input.a.zw, vec4<i32>(_wgslsmith_clamp_i32(var_1.x, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -316f, -450f))), -2147483647i), ~abs(1i), ~23092i, 2078i), u_input.a.x < u_input.a.x, u_input.a.x);
    global4 = array<vec2<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, 1338f, var_3.d);
}

