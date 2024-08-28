struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(vec3<i32>(-1i, -16960i, 0i), Struct_1(vec4<i32>(-1i, -5678i, i32(-2147483648), -1i), vec2<u32>(1801u, 20699u), 21369u, vec4<i32>(-1i, -29159i, 22085i, -1i)), true, 620f), Struct_2(vec3<i32>(i32(-2147483648), 1i, -939i), Struct_1(vec4<i32>(1i, -20591i, i32(-2147483648), i32(-2147483648)), vec2<u32>(12161u, 13284u), 1u, vec4<i32>(-1608i, 183i, -49292i, -1i)), false, 594f)), Struct_3(Struct_2(vec3<i32>(-1i, 65560i, -54335i), Struct_1(vec4<i32>(i32(-2147483648), 1i, -17226i, -18941i), vec2<u32>(30088u, 24435u), 0u, vec4<i32>(2147483647i, 1i, 1i, 2147483647i)), true, -639f), Struct_2(vec3<i32>(34401i, 0i, i32(-2147483648)), Struct_1(vec4<i32>(1i, -1i, -51368i, -45188i), vec2<u32>(67565u, 4294967295u), 1u, vec4<i32>(40467i, i32(-2147483648), i32(-2147483648), -52054i)), false, -639f)), Struct_3(Struct_2(vec3<i32>(0i, 9314i, 15799i), Struct_1(vec4<i32>(28709i, 2147483647i, -18865i, -15908i), vec2<u32>(0u, 1u), 29011u, vec4<i32>(-20796i, 6327i, 2147483647i, i32(-2147483648))), true, -1094f), Struct_2(vec3<i32>(-41507i, 2147483647i, -1i), Struct_1(vec4<i32>(5744i, 0i, -30332i, i32(-2147483648)), vec2<u32>(64337u, 27230u), 59597u, vec4<i32>(32843i, 1i, 45801i, 0i)), true, -458f)), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 22555i, -1i), Struct_1(vec4<i32>(22265i, -29253i, 1i, -15069i), vec2<u32>(27312u, 1u), 4294967295u, vec4<i32>(8840i, -1i, -48147i, -46382i)), true, -1065f), Struct_2(vec3<i32>(-22830i, -2912i, -1i), Struct_1(vec4<i32>(0i, 0i, 2147483647i, 1i), vec2<u32>(47887u, 42166u), 0u, vec4<i32>(-25024i, -12137i, 2147483647i, -19509i)), false, 1399f)), Struct_3(Struct_2(vec3<i32>(1i, -11226i, -17592i), Struct_1(vec4<i32>(0i, -1i, 15311i, 0i), vec2<u32>(1u, 1u), 27458u, vec4<i32>(4334i, 2147483647i, i32(-2147483648), -27973i)), false, -1000f), Struct_2(vec3<i32>(-1i, 37073i, -15850i), Struct_1(vec4<i32>(58578i, -1i, 0i, -15974i), vec2<u32>(0u, 13848u), 1u, vec4<i32>(-1i, 381i, 0i, 45532i)), true, -1164f)), Struct_3(Struct_2(vec3<i32>(0i, i32(-2147483648), 0i), Struct_1(vec4<i32>(-1i, 1i, -1i, 8751i), vec2<u32>(4294967295u, 4294967295u), 51876u, vec4<i32>(15796i, -1i, -7663i, -19800i)), true, -978f), Struct_2(vec3<i32>(25318i, 55526i, -34586i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 1i, -2580i), vec2<u32>(0u, 1u), 30925u, vec4<i32>(0i, 54381i, 34877i, 0i)), true, -356f)), Struct_3(Struct_2(vec3<i32>(1523i, -12004i, i32(-2147483648)), Struct_1(vec4<i32>(1i, 71788i, -1i, -137i), vec2<u32>(63791u, 61758u), 1u, vec4<i32>(-8711i, 29960i, -1i, -6754i)), true, -280f), Struct_2(vec3<i32>(2147483647i, -24130i, 1i), Struct_1(vec4<i32>(47656i, -32875i, 2147483647i, 37464i), vec2<u32>(0u, 4463u), 4294967295u, vec4<i32>(i32(-2147483648), 2147483647i, 34159i, -47613i)), true, -361f)), Struct_3(Struct_2(vec3<i32>(-23094i, 8933i, -1i), Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, 1i), vec2<u32>(1u, 124603u), 4294967295u, vec4<i32>(-30232i, 10528i, -1i, 2147483647i)), false, 1304f), Struct_2(vec3<i32>(48400i, -13983i, 1i), Struct_1(vec4<i32>(0i, 15900i, i32(-2147483648), 2147483647i), vec2<u32>(29607u, 1u), 0u, vec4<i32>(24389i, -1i, 1i, -40125i)), true, 1000f)), Struct_3(Struct_2(vec3<i32>(-5034i, -1i, 11685i), Struct_1(vec4<i32>(1i, 14706i, 1i, -44158i), vec2<u32>(17709u, 0u), 62443u, vec4<i32>(2147483647i, -13551i, i32(-2147483648), 1i)), true, 1213f), Struct_2(vec3<i32>(i32(-2147483648), 7947i, 56183i), Struct_1(vec4<i32>(-29905i, i32(-2147483648), -22877i, 38616i), vec2<u32>(0u, 1u), 0u, vec4<i32>(1i, -26513i, -18116i, 0i)), true, -151f)), Struct_3(Struct_2(vec3<i32>(33556i, -1i, 14850i), Struct_1(vec4<i32>(27103i, i32(-2147483648), -1951i, 0i), vec2<u32>(15941u, 4294967295u), 1u, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 1i)), true, -326f), Struct_2(vec3<i32>(0i, 15565i, -937i), Struct_1(vec4<i32>(1i, 14186i, 2145i, 2147483647i), vec2<u32>(37187u, 93961u), 4294967295u, vec4<i32>(-1i, -16582i, 20909i, -2241i)), true, 1991f)), Struct_3(Struct_2(vec3<i32>(-1i, -13575i, -7241i), Struct_1(vec4<i32>(0i, -1i, 1i, 0i), vec2<u32>(34128u, 1u), 19582u, vec4<i32>(2147483647i, -11167i, 14922i, 2147483647i)), false, -1700f), Struct_2(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), Struct_1(vec4<i32>(58250i, 15943i, -48387i, i32(-2147483648)), vec2<u32>(1u, 54547u), 4294967295u, vec4<i32>(1i, i32(-2147483648), 43079i, -35243i)), false, 961f)), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 0i, -23591i), Struct_1(vec4<i32>(-22789i, 34071i, 1i, -28125i), vec2<u32>(1u, 40971u), 4294967295u, vec4<i32>(-26123i, 10659i, i32(-2147483648), i32(-2147483648))), false, -486f), Struct_2(vec3<i32>(-73499i, 48232i, -1i), Struct_1(vec4<i32>(32490i, 2147483647i, -1i, 0i), vec2<u32>(90640u, 39946u), 4294967295u, vec4<i32>(i32(-2147483648), 41676i, 0i, -1i)), true, -348f)), Struct_3(Struct_2(vec3<i32>(50761i, 7093i, 0i), Struct_1(vec4<i32>(0i, -1i, -19280i, -1i), vec2<u32>(0u, 59766u), 1u, vec4<i32>(1i, 34580i, 39781i, 51534i)), true, -1000f), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -9728i), Struct_1(vec4<i32>(-1i, -2477i, 1i, -85558i), vec2<u32>(4294967295u, 42087u), 4750u, vec4<i32>(-25915i, i32(-2147483648), -37567i, 56186i)), false, 669f)), Struct_3(Struct_2(vec3<i32>(1i, -1i, 23826i), Struct_1(vec4<i32>(24765i, 0i, -32725i, 41320i), vec2<u32>(1u, 70160u), 26278u, vec4<i32>(i32(-2147483648), 14419i, -9103i, 1i)), false, -323f), Struct_2(vec3<i32>(28401i, 7075i, 2147483647i), Struct_1(vec4<i32>(26790i, i32(-2147483648), 15942i, 9670i), vec2<u32>(49137u, 5003u), 21775u, vec4<i32>(i32(-2147483648), 2147483647i, -8975i, -1i)), true, -1535f)), Struct_3(Struct_2(vec3<i32>(24456i, -1i, 18848i), Struct_1(vec4<i32>(-21169i, 44634i, 0i, i32(-2147483648)), vec2<u32>(1u, 4294967295u), 1u, vec4<i32>(2147483647i, 0i, -2969i, -21940i)), false, -1781f), Struct_2(vec3<i32>(i32(-2147483648), -11439i, 0i), Struct_1(vec4<i32>(-14796i, i32(-2147483648), -1i, -24346i), vec2<u32>(0u, 57862u), 4294967295u, vec4<i32>(-59594i, 2147483647i, 1i, -7839i)), true, 1511f)), Struct_3(Struct_2(vec3<i32>(0i, i32(-2147483648), 1i), Struct_1(vec4<i32>(i32(-2147483648), 20207i, 26839i, 15027i), vec2<u32>(0u, 0u), 48040u, vec4<i32>(2147483647i, -51974i, -23942i, 5594i)), false, 512f), Struct_2(vec3<i32>(-19281i, 1i, 33783i), Struct_1(vec4<i32>(-25766i, -16001i, 2147483647i, 13011i), vec2<u32>(1u, 1u), 4465u, vec4<i32>(11520i, -34970i, -1i, 2252i)), true, 438f)), Struct_3(Struct_2(vec3<i32>(58060i, -1i, 1i), Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, 0i), vec2<u32>(0u, 38430u), 5552u, vec4<i32>(2147483647i, -5292i, -28411i, i32(-2147483648))), true, 646f), Struct_2(vec3<i32>(-40576i, 0i, 0i), Struct_1(vec4<i32>(0i, -1i, -1i, -1i), vec2<u32>(0u, 0u), 4294967295u, vec4<i32>(-5426i, 62250i, 2147483647i, 0i)), false, -289f)), Struct_3(Struct_2(vec3<i32>(1i, 22503i, i32(-2147483648)), Struct_1(vec4<i32>(-26396i, 2147483647i, 59675i, 31990i), vec2<u32>(39723u, 1u), 0u, vec4<i32>(0i, -12829i, 17259i, 2147483647i)), false, 549f), Struct_2(vec3<i32>(-51248i, 2147483647i, -3068i), Struct_1(vec4<i32>(65391i, -9279i, 40699i, 43540i), vec2<u32>(69683u, 4294967295u), 1u, vec4<i32>(1i, 14621i, i32(-2147483648), -1i)), false, 448f)), Struct_3(Struct_2(vec3<i32>(53368i, 2147483647i, -1i), Struct_1(vec4<i32>(1i, 2147483647i, 28483i, -30783i), vec2<u32>(1u, 8185u), 5842u, vec4<i32>(2147483647i, 2147483647i, -16007i, 2147483647i)), true, -117f), Struct_2(vec3<i32>(5235i, 2147483647i, 0i), Struct_1(vec4<i32>(19265i, 1i, 0i, 1i), vec2<u32>(11124u, 1u), 0u, vec4<i32>(39830i, -17122i, 80460i, -22782i)), false, 1259f)), Struct_3(Struct_2(vec3<i32>(-36982i, 22308i, 2147483647i), Struct_1(vec4<i32>(49504i, -13810i, 0i, 1i), vec2<u32>(12673u, 4294967295u), 40094u, vec4<i32>(0i, 1i, 1i, 1i)), false, 622f), Struct_2(vec3<i32>(-28172i, i32(-2147483648), -30220i), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 4815i), vec2<u32>(14143u, 62951u), 9705u, vec4<i32>(2147483647i, i32(-2147483648), -1i, 6878i)), true, 215f)), Struct_3(Struct_2(vec3<i32>(-41668i, 1i, i32(-2147483648)), Struct_1(vec4<i32>(-30418i, -13320i, -1i, 29043i), vec2<u32>(1u, 63901u), 0u, vec4<i32>(2147483647i, 20918i, -18521i, -33795i)), true, -425f), Struct_2(vec3<i32>(-1i, -1i, -1i), Struct_1(vec4<i32>(-35157i, 2147483647i, -13248i, 19315i), vec2<u32>(11384u, 0u), 4294967295u, vec4<i32>(10610i, 1i, -77097i, 80956i)), false, -358f)), Struct_3(Struct_2(vec3<i32>(20972i, -17654i, 28266i), Struct_1(vec4<i32>(-58535i, 78772i, 1i, 13057i), vec2<u32>(64770u, 64940u), 0u, vec4<i32>(42006i, 0i, 10706i, i32(-2147483648))), true, 1537f), Struct_2(vec3<i32>(12423i, -1i, i32(-2147483648)), Struct_1(vec4<i32>(0i, 1i, 56470i, -1i), vec2<u32>(57614u, 4120u), 0u, vec4<i32>(1i, i32(-2147483648), 30003i, 2147483647i)), false, -209f)));

var<private> global1: vec3<i32> = vec3<i32>(1i, -1i, -66631i);

var<private> global2: array<bool, 29> = array<bool, 29>(true, false, false, true, false, false, true, false, false, false, true, false, false, false, false, true, true, false, true, true, true, true, false, false, false, true, false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: f32) -> u32 {
    var var_0 = arg_0.b.a.d;
    let var_1 = select(abs(firstTrailingBit(vec2<u32>(arg_2.x, 20605u))) | vec2<u32>(_wgslsmith_sub_u32(~3312u, ~4294967295u), ~abs(48233u)), min(abs(firstTrailingBit(arg_0.e.b)), vec2<u32>(1050u, (arg_0.e.c >> (4294967295u % 32u)) >> (arg_2.x % 32u))), arg_1.x);
    let var_2 = arg_0.d;
    let var_3 = -53805i != (~global1.x ^ -firstTrailingBit(u_input.a));
    var var_4 = vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(var_2.b.x), countOneBits(26984u)), ~vec2<u32>(62526u, 0u)), firstLeadingBit(var_2.c), ~1u);
    return ~(var_4.x >> (reverseBits(~abs(15203u)) % 32u));
}

fn func_2() -> f32 {
    var var_0 = 13388u;
    let var_1 = _wgslsmith_f_op_f32(abs(1f));
    let var_2 = countOneBits(u_input.a) << (_wgslsmith_mult_u32(func_3(Struct_4(global0[_wgslsmith_index_u32(114501u, 22u)], Struct_3(Struct_2(vec3<i32>(global1.x, -30421i, global1.x), Struct_1(vec4<i32>(u_input.a, 12112i, 0i, -28957i), vec2<u32>(41139u, 0u), 25961u, vec4<i32>(global1.x, 2147483647i, -21696i, global1.x)), global2[_wgslsmith_index_u32(43908u, 29u)], -160f), Struct_2(vec3<i32>(global1.x, global1.x, global1.x), Struct_1(vec4<i32>(-16386i, u_input.a, -9635i, u_input.a), vec2<u32>(4294967295u, 57834u), 0u, vec4<i32>(u_input.a, 2147483647i, u_input.a, -20458i)), false, -158f)), Struct_2(vec3<i32>(1i, u_input.a, -6610i), Struct_1(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec2<u32>(4294967295u, 13289u), 0u, vec4<i32>(-1i, -54283i, global1.x, -1i)), global2[_wgslsmith_index_u32(4294967295u, 29u)], var_1), Struct_1(vec4<i32>(72129i, -32348i, global1.x, 59522i), vec2<u32>(4294967295u, 46267u), 29788u, vec4<i32>(1i, 2147483647i, 1i, 0i)), Struct_1(vec4<i32>(-2147483647i, 33037i, global1.x, u_input.a), vec2<u32>(40766u, 4294967295u), 0u, vec4<i32>(u_input.a, -28081i, -2147483647i, -39497i))), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 29u)], true), _wgslsmith_mod_vec2_u32(~vec2<u32>(73017u, 39889u), vec2<u32>(1u, 1u)), -1449f), ~(~0u)) % 32u);
    var var_3 = (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(min(vec3<u32>(33894u, 19551u, 87674u), vec3<u32>(1u, 18995u, 57904u)), select(vec3<u32>(1u, 1u, 51437u), vec3<u32>(10641u, 31598u, 68555u), vec3<bool>(false, true, true))), max(countOneBits(vec3<u32>(4294967295u, 4294967295u, 2971u)), vec3<u32>(1u, 1u, 1u))), 29u)] == true) & !global2[_wgslsmith_index_u32(1u, 29u)];
    global1 = ~(vec3<i32>(global1.x, u_input.a, select(~u_input.a, -54043i | var_2, true)) ^ reverseBits(select(vec3<i32>(var_2, -17604i, u_input.a), vec3<i32>(-34983i, u_input.a, -44713i), global2[_wgslsmith_index_u32(1u, 29u)]) & -vec3<i32>(-1i, global1.x, -25112i)));
    return 518f;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)), -1528f) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-549f, -1000f) + _wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(-1000f, -447f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2110f, _wgslsmith_f_op_f32(trunc(1190f)))))));
    let var_1 = Struct_2(~(vec3<i32>(-1i) * -vec3<i32>(global1.x, global1.x, 0i)) | ~vec3<i32>(min(u_input.a, 58923i), ~1i, countOneBits(-1i)), Struct_1(-(~vec4<i32>(global1.x, 24079i, -7109i, global1.x) >> (vec4<u32>(0u, 49412u, 0u, 24426u) % vec4<u32>(32u))), abs(select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 17513u), vec2<u32>(26438u, 60044u)), ~vec2<u32>(4294967295u, 0u), !vec2<bool>(global2[_wgslsmith_index_u32(32023u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)]))), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(14909u, 67915u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 39579u, 4294967295u), vec3<u32>(23763u, 51078u, 0u))), 32748u), select(abs(vec4<i32>(global1.x, global1.x, u_input.a, 31435i)), select(~vec4<i32>(-1i, -14887i, 96900i, 14021i), vec4<i32>(-16302i, global1.x, 1i, 1i), false), vec4<bool>(global2[_wgslsmith_index_u32(~30067u, 29u)], true, true, any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(sign(806f)))) == 1974f, var_0.x);
    var var_2 = any(select(select(!select(vec2<bool>(global2[_wgslsmith_index_u32(56377u, 29u)], var_1.c), vec2<bool>(global2[_wgslsmith_index_u32(76415u, 29u)], false), global2[_wgslsmith_index_u32(var_1.b.c, 29u)]), !(!vec2<bool>(var_1.c, global2[_wgslsmith_index_u32(var_1.b.c, 29u)])), false), select(select(vec2<bool>(true, true), select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(var_1.b.b.x, 29u)], true)), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 29u)], true)), vec2<bool>(var_1.c, any(vec2<bool>(var_1.c, false))), !var_1.c), select(vec2<bool>(false, any(vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_1.b.b.x, 29u)]))), select(vec2<bool>(global2[_wgslsmith_index_u32(5722u, 29u)], global2[_wgslsmith_index_u32(32430u, 29u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 29u)], var_1.c), var_1.c | global2[_wgslsmith_index_u32(var_1.b.c, 29u)]), vec2<bool>(true, true == var_1.c))));
    global2 = array<bool, 29>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), Struct_2(~vec3<i32>(global1.x, u_input.a, 2147483647i), func_1().b, true, 1315f));
    var var_1 = func_1().b;
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(0u, 22u)], var_0, Struct_2(var_1.d.yxx, func_1().b, all(!vec3<bool>(false, global2[_wgslsmith_index_u32(var_1.c, 29u)], global2[_wgslsmith_index_u32(var_0.a.b.b.x, 29u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.d, _wgslsmith_f_op_f32(f32(-1f) * -1715f))) - _wgslsmith_div_f32(-1719f, _wgslsmith_f_op_f32(max(var_0.b.d, var_0.b.d))))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.b.d.x, u_input.a, -47945i), vec3<i32>(global1.x, u_input.a, u_input.a)), var_0.b.a.x, 0i, _wgslsmith_div_i32(-941i, -1i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(3206i, var_0.b.b.a.x, -8829i, var_0.a.b.a.x), vec4<i32>(-1i, global1.x, 63821i, var_1.d.x)), var_0.a.b.d.x, _wgslsmith_add_i32(var_1.d.x, -3300i), u_input.a)), var_0.b.b.b, 1u, vec4<i32>(global1.x | -var_1.a.x, _wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(var_0.b.b.d.x, global1.x, global1.x, u_input.a) & vec4<i32>(var_0.b.b.a.x, -24371i, var_1.a.x, global1.x)), -1i, -u_input.a << (reverseBits(2772u) % 32u))), var_0.b.b);
    var_1 = var_2.a.a.b;
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-410f * -139f), var_2.a.a.d, _wgslsmith_f_op_f32(1342f * var_3.d)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(545f, var_2.c.d, var_2.a.b.d), vec3<f32>(var_3.d, var_2.a.a.d, var_3.d)))))))));
}

