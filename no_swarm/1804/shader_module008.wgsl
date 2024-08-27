struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<i32>(0i, 0i, i32(-2147483648), 7673i), 1847u, vec4<i32>(4159i, 0i, 76742i, 1i), 66326u), Struct_1(vec4<i32>(2147483647i, -57428i, 7513i, i32(-2147483648)), 42147u, vec4<i32>(i32(-2147483648), -28284i, 0i, -11972i), 0u), Struct_1(vec4<i32>(1i, 0i, 2147483647i, 0i), 31979u, vec4<i32>(39086i, 72134i, i32(-2147483648), -1i), 0u), Struct_1(vec4<i32>(1i, 2147483647i, -55492i, 21195i), 61807u, vec4<i32>(-43124i, -19743i, -1i, 2147483647i), 69839u), Struct_1(vec4<i32>(-26156i, -4258i, -1i, 1i), 10829u, vec4<i32>(29201i, -18642i, i32(-2147483648), 2147483647i), 0u), Struct_1(vec4<i32>(0i, -34260i, 10545i, 0i), 35765u, vec4<i32>(29834i, -45478i, 1i, -26299i), 1u), Struct_1(vec4<i32>(2147483647i, -1i, 2147483647i, -44587i), 1u, vec4<i32>(2147483647i, 28192i, -7843i, -26067i), 44153u), Struct_1(vec4<i32>(0i, 2147483647i, -1147i, 13329i), 39063u, vec4<i32>(7779i, 1i, -40598i, -46788i), 56378u), Struct_1(vec4<i32>(-1i, 2147483647i, 2147483647i, i32(-2147483648)), 8066u, vec4<i32>(23647i, i32(-2147483648), 38376i, 15293i), 1u), Struct_1(vec4<i32>(-4359i, 42719i, -54751i, -27001i), 46506u, vec4<i32>(0i, -53959i, 0i, 24394i), 41157u), Struct_1(vec4<i32>(1i, -18393i, 0i, -6109i), 4294967295u, vec4<i32>(19217i, -10710i, -1554i, 39554i), 32351u), Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 1i), 0u, vec4<i32>(-18179i, -3877i, 2147483647i, i32(-2147483648)), 4294967295u), Struct_1(vec4<i32>(0i, 2147483647i, -10933i, 0i), 24580u, vec4<i32>(-38805i, -15854i, -28191i, i32(-2147483648)), 40521u), Struct_1(vec4<i32>(-35609i, i32(-2147483648), 2147483647i, i32(-2147483648)), 1u, vec4<i32>(-30007i, -59898i, 1i, 49936i), 67817u), Struct_1(vec4<i32>(-46935i, 2147483647i, -24955i, i32(-2147483648)), 15798u, vec4<i32>(4474i, 1i, -1308i, -1i), 4294967295u), Struct_1(vec4<i32>(9444i, 2147483647i, -9606i, 1i), 45894u, vec4<i32>(18085i, 3384i, 5594i, -1i), 1u), Struct_1(vec4<i32>(60637i, -1i, 5186i, -18980i), 1u, vec4<i32>(3426i, -60876i, -34144i, 17710i), 19004u), Struct_1(vec4<i32>(-10416i, -40949i, 0i, 10754i), 0u, vec4<i32>(0i, -15912i, 2147483647i, 0i), 1u), Struct_1(vec4<i32>(-31246i, -47451i, -1i, -43615i), 27422u, vec4<i32>(32456i, -23030i, 1i, 5833i), 0u), Struct_1(vec4<i32>(1i, 0i, 1i, 2147483647i), 24727u, vec4<i32>(-43001i, 44198i, 16081i, 0i), 5244u), Struct_1(vec4<i32>(44886i, 41806i, 16342i, -1i), 1u, vec4<i32>(33149i, 0i, 4902i, 2147483647i), 0u), Struct_1(vec4<i32>(15241i, 1i, -55810i, 4704i), 33869u, vec4<i32>(-29396i, 5411i, -4233i, 56037i), 306u), Struct_1(vec4<i32>(18336i, -1i, 50832i, 22454i), 4294967295u, vec4<i32>(0i, 58881i, 0i, 1i), 63311u), Struct_1(vec4<i32>(48906i, 2147483647i, 55215i, 5280i), 50138u, vec4<i32>(2147483647i, -1i, -1i, 43334i), 84067u), Struct_1(vec4<i32>(1i, -1i, -23184i, -450i), 0u, vec4<i32>(2147483647i, -1i, 2147483647i, -2299i), 1u));

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<i32>(0i, -1i, 0i, 35243i), 4294967295u, vec4<i32>(0i, 2147483647i, 3630i, 2147483647i), 4294967295u), Struct_1(vec4<i32>(-23041i, 21488i, -14878i, 99925i), 0u, vec4<i32>(-51406i, 1i, 31559i, -31652i), 27525u), Struct_1(vec4<i32>(1987i, -22606i, -82857i, 0i), 4294967295u, vec4<i32>(0i, i32(-2147483648), -1i, i32(-2147483648)), 0u), Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, -36333i), 4294967295u, vec4<i32>(-1i, 2147483647i, -1i, 2147483647i), 4294967295u), Struct_1(vec4<i32>(-58915i, 2147483647i, 19218i, -13209i), 50435u, vec4<i32>(2147483647i, 2147483647i, -1i, 73628i), 16707u), Struct_1(vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), 1u, vec4<i32>(2147483647i, 0i, 0i, 42992i), 27242u), Struct_1(vec4<i32>(-20581i, -1i, -50786i, -4692i), 1u, vec4<i32>(58677i, 0i, 13350i, -45356i), 15816u), Struct_1(vec4<i32>(i32(-2147483648), -50819i, -28549i, 22158i), 1u, vec4<i32>(-32465i, -14160i, 1i, 0i), 4294967295u), Struct_1(vec4<i32>(47930i, 14133i, -48353i, 13131i), 4294967295u, vec4<i32>(-47855i, 5054i, 0i, -36199i), 0u), Struct_1(vec4<i32>(i32(-2147483648), 0i, 2147483647i, 0i), 32320u, vec4<i32>(i32(-2147483648), 18054i, i32(-2147483648), 0i), 0u), Struct_1(vec4<i32>(35566i, 54127i, 1i, 1i), 31288u, vec4<i32>(i32(-2147483648), 1i, -40016i, 1i), 0u), Struct_1(vec4<i32>(2147483647i, -12918i, 1i, -10256i), 4294967295u, vec4<i32>(1i, 20772i, 7006i, -1i), 59985u), Struct_1(vec4<i32>(-15649i, 1i, -93397i, 2147483647i), 0u, vec4<i32>(-43079i, -66974i, 0i, 2147483647i), 6387u), Struct_1(vec4<i32>(-3533i, -5590i, -18165i, 2147483647i), 57948u, vec4<i32>(1i, 77339i, 40505i, 1i), 39767u), Struct_1(vec4<i32>(1i, 0i, 23743i, -47454i), 0u, vec4<i32>(16082i, 39629i, 11583i, i32(-2147483648)), 0u), Struct_1(vec4<i32>(26118i, 51646i, 55871i, -52517i), 55109u, vec4<i32>(0i, 1i, -12182i, -1i), 4294967295u), Struct_1(vec4<i32>(100046i, 33665i, -1i, -1114i), 19022u, vec4<i32>(-1i, i32(-2147483648), 14486i, 2147483647i), 0u), Struct_1(vec4<i32>(2147483647i, 2147483647i, 27636i, -1i), 89004u, vec4<i32>(-1i, -1084i, -1i, 0i), 0u), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 43021i), 30334u, vec4<i32>(13688i, -1i, 0i, -59838i), 9752u), Struct_1(vec4<i32>(-34150i, 9130i, 0i, 29927i), 32772u, vec4<i32>(2147483647i, -33915i, 0i, -13864i), 9054u), Struct_1(vec4<i32>(-18672i, -31482i, i32(-2147483648), 30700i), 33908u, vec4<i32>(2147483647i, 101480i, -14369i, 3107i), 1u), Struct_1(vec4<i32>(2147483647i, -19696i, -14534i, 2147483647i), 12717u, vec4<i32>(-35872i, 2147483647i, -4389i, 21775i), 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 14804i), 1u, vec4<i32>(0i, 39664i, 1i, 15625i), 0u), Struct_1(vec4<i32>(-1i, 31499i, -16866i, 1i), 0u, vec4<i32>(i32(-2147483648), -1436i, -1i, 1i), 0u), Struct_1(vec4<i32>(0i, 16761i, 2147483647i, 46404i), 4294967295u, vec4<i32>(-946i, -20695i, 1i, 0i), 13900u), Struct_1(vec4<i32>(-18976i, -5633i, -29142i, 1i), 2739u, vec4<i32>(6061i, 2147483647i, 0i, 0i), 4294967295u), Struct_1(vec4<i32>(29966i, 8943i, 2147483647i, 2147483647i), 30112u, vec4<i32>(-636i, -27550i, 36289i, 1i), 1u), Struct_1(vec4<i32>(-11491i, 29552i, 2147483647i, -1i), 40596u, vec4<i32>(2031i, -35564i, 0i, -5874i), 55066u), Struct_1(vec4<i32>(-9737i, -1i, 56282i, i32(-2147483648)), 7085u, vec4<i32>(0i, -1i, -14002i, -1i), 4294967295u), Struct_1(vec4<i32>(-1i, 8844i, 0i, -1i), 36937u, vec4<i32>(-4576i, 35843i, -1i, -28669i), 0u), Struct_1(vec4<i32>(-10320i, -11618i, 0i, 19349i), 0u, vec4<i32>(20283i, -1i, -30748i, -1i), 25450u), Struct_1(vec4<i32>(2063i, 10406i, 2147483647i, i32(-2147483648)), 0u, vec4<i32>(i32(-2147483648), 20135i, 377i, -1i), 0u));

var<private> global3: vec2<bool>;

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec2<bool> {
    global3 = vec2<bool>(!(arg_1.x != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1386f - -1889f)))), 43709u > u_input.b);
    let var_0 = Struct_1(-vec4<i32>(countOneBits(u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(677i, -38164i, u_input.a), vec3<i32>(1i, 37024i, -2147483647i)), ~vec3<i32>(-1i, 2147483647i, u_input.a)), -1i, _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)]) & ~u_input.a), firstLeadingBit(u_input.b), ~firstLeadingBit(vec4<i32>(36097i, u_input.a, -45304i, u_input.a)), min(~(u_input.b >> (~59052u % 32u)), _wgslsmith_mod_u32(3541u, ~firstLeadingBit(4294967295u))));
    let var_1 = u_input.b;
    global1 = array<Struct_1, 25>();
    var var_2 = !(!vec4<bool>(!arg_0, true, arg_1.x < -142f, u_input.b < 69022u));
    return vec2<bool>(!(!arg_0), true);
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 25>();
    global3 = !select(vec2<bool>(!(!global3.x), global4.x), vec2<bool>(true, true), vec2<bool>(global3.x, global3.x));
    global2 = array<Struct_1, 32>();
    global3 = select(vec2<bool>((_wgslsmith_mod_u32(u_input.b, u_input.b) >> (1u % 32u)) == 0u, global4.x), select(func_2(global4.x, vec2<f32>(268f, -792f)), func_2(global3.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-281f, -1000f)))))), any(select(select(vec2<bool>(global4.x, true), vec2<bool>(global3.x, true), vec2<bool>(global4.x, true)), vec2<bool>(true, true), global4.x & global4.x))), any(select(select(vec4<bool>(global3.x, true, true, true), vec4<bool>(false, true, false, true), !vec4<bool>(true, global3.x, global4.x, true)), select(select(vec4<bool>(false, global3.x, global3.x, global4.x), vec4<bool>(false, false, global4.x, true), vec4<bool>(global4.x, false, global4.x, global4.x)), select(vec4<bool>(false, global4.x, true, global4.x), vec4<bool>(global4.x, true, true, false), global4.x), vec4<bool>(global3.x, global4.x, true, true)), !all(vec3<bool>(global3.x, true, global4.x)))));
    let var_0 = !vec2<bool>(all(vec4<bool>(!global4.x, global4.x != true, select(true, false, false), false)), -225f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1809f)))));
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.b | _wgslsmith_mod_u32(0u, ~61789u), 32u)];
    var var_1 = u_input.b;
    global1 = array<Struct_1, 25>();
    let var_2 = global2[_wgslsmith_index_u32(var_0.d, 32u)];
    var var_3 = arg_2;
    return -arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(-2147483647i, -28059i);
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(~1i, ~u_input.a, 16926i, -func_1()), -func_3(global1[_wgslsmith_index_u32(u_input.b, 25u)], vec4<i32>(2147483647i, 33771i, u_input.a, 7517i), false, vec4<bool>(false, false, false, true)) | reverseBits(-vec4<i32>(u_input.a, var_0, u_input.a, 2147483647i))), 1u, abs(vec4<i32>(-(var_0 >> (54719u % 32u)), ~(-35659i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, var_0), vec4<i32>(u_input.a, -1i, u_input.a, 1i)), _wgslsmith_add_i32(-37515i, ~1i))), 15054u);
    var var_2 = Struct_1(vec4<i32>(10929i, u_input.a, max(39725i, u_input.a), ~var_0), 45666u, vec4<i32>(max(-1i, ~(-1i)), var_1.a.x, var_1.a.x, ~(-1186i)) ^ (-_wgslsmith_mult_vec4_i32(var_1.c, vec4<i32>(-2147483647i, var_1.a.x, var_1.a.x, var_1.c.x)) << (vec4<u32>(u_input.b, ~0u, _wgslsmith_mult_u32(u_input.b, 27324u), abs(u_input.b)) % vec4<u32>(32u))), 1u);
    let var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.d, var_1.b, var_2.d, 1u), vec4<u32>(u_input.b, u_input.b, 4643u, 21350u) & (vec4<u32>(u_input.b, 28699u, 30997u, 1u) >> (vec4<u32>(0u, 4294967295u, 0u, var_1.b) % vec4<u32>(32u)))), vec4<u32>(~var_1.b | 4294967295u, ~47791u, max(~2642u, _wgslsmith_add_u32(0u, var_2.d)), ~var_2.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_2.b, var_2.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, u_input.b), vec2<u32>(1u, 39244u)), ~(~1u), 4294967295u), abs(vec4<u32>(1u, u_input.b, ~9691u, u_input.b))));
    global0 = array<vec2<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(vec4<i32>(func_1(), -12909i, var_1.c.x << (0u % 32u), _wgslsmith_sub_i32(-44909i, var_1.c.x))), countOneBits(select(vec4<i32>(u_input.a, -30080i, u_input.a, var_0) >> (var_3 % vec4<u32>(32u)), var_2.c, true))));
}

