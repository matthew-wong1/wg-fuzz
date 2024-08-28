struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec2<i32>(-19350i, 79982i), 13633u), vec3<u32>(0u, 69541u, 1u), i32(-2147483648), 25751u, Struct_1(vec2<i32>(0i, -1i), 48902u)), Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)), 0u), vec3<u32>(124u, 33460u, 8900u), 85299i, 141525u, Struct_1(vec2<i32>(0i, 43452i), 4294967295u)), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 16142u), vec3<u32>(8783u, 10364u, 0u), 2147483647i, 0u, Struct_1(vec2<i32>(-11301i, 0i), 0u)), Struct_2(Struct_1(vec2<i32>(0i, -1i), 1u), vec3<u32>(23058u, 1u, 33512u), 20501i, 1u, Struct_1(vec2<i32>(-19533i, -1i), 0u)), Struct_2(Struct_1(vec2<i32>(2147483647i, -44686i), 4294967295u), vec3<u32>(56322u, 15915u, 0u), i32(-2147483648), 12098u, Struct_1(vec2<i32>(-28480i, 26766i), 1u)), Struct_2(Struct_1(vec2<i32>(17257i, i32(-2147483648)), 22516u), vec3<u32>(4294967295u, 1u, 18430u), 2147483647i, 25855u, Struct_1(vec2<i32>(38937i, 0i), 4294967295u)), Struct_2(Struct_1(vec2<i32>(0i, 28210i), 1u), vec3<u32>(0u, 15958u, 1u), -1i, 72543u, Struct_1(vec2<i32>(-1i, 2147483647i), 4294967295u)), Struct_2(Struct_1(vec2<i32>(-1i, -1i), 1u), vec3<u32>(1u, 33980u, 0u), -54i, 0u, Struct_1(vec2<i32>(i32(-2147483648), 11701i), 4294967295u)), Struct_2(Struct_1(vec2<i32>(1i, 1i), 13567u), vec3<u32>(12447u, 4294967295u, 4294967295u), 3864i, 79916u, Struct_1(vec2<i32>(-31406i, -668i), 1u)), Struct_2(Struct_1(vec2<i32>(2147483647i, -1287i), 45390u), vec3<u32>(4294967295u, 50858u, 44160u), 1i, 0u, Struct_1(vec2<i32>(i32(-2147483648), -26649i), 1u)), Struct_2(Struct_1(vec2<i32>(-70024i, 14109i), 4294967295u), vec3<u32>(32949u, 1u, 73476u), 2147483647i, 31624u, Struct_1(vec2<i32>(1i, 20029i), 4743u)), Struct_2(Struct_1(vec2<i32>(-5779i, 0i), 1u), vec3<u32>(1u, 78674u, 41234u), 0i, 14265u, Struct_1(vec2<i32>(19325i, -28293i), 0u)), Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), 0u), vec3<u32>(12739u, 0u, 0u), -2046i, 1u, Struct_1(vec2<i32>(4758i, 33839i), 4294967295u)), Struct_2(Struct_1(vec2<i32>(31997i, 1889i), 21009u), vec3<u32>(32004u, 23305u, 88769u), i32(-2147483648), 1u, Struct_1(vec2<i32>(38561i, 52022i), 41493u)), Struct_2(Struct_1(vec2<i32>(36077i, 1i), 4294967295u), vec3<u32>(1u, 4294967295u, 29604u), 7645i, 0u, Struct_1(vec2<i32>(-13998i, 1i), 42749u)), Struct_2(Struct_1(vec2<i32>(43365i, i32(-2147483648)), 4294967295u), vec3<u32>(77364u, 8966u, 37423u), i32(-2147483648), 4294967295u, Struct_1(vec2<i32>(-11209i, 1i), 37273u)), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), 89478u), vec3<u32>(44089u, 25196u, 33735u), 2147483647i, 11407u, Struct_1(vec2<i32>(-28578i, 1i), 62144u)), Struct_2(Struct_1(vec2<i32>(23133i, -34330i), 58844u), vec3<u32>(4294967295u, 48786u, 68814u), -2412i, 42156u, Struct_1(vec2<i32>(-10977i, -31869i), 2713u)), Struct_2(Struct_1(vec2<i32>(4358i, 2147483647i), 1u), vec3<u32>(0u, 0u, 1u), 37081i, 101849u, Struct_1(vec2<i32>(-85283i, -1i), 5180u)));

var<private> global2: bool;

var<private> global3: vec2<i32> = vec2<i32>(-1i, 27324i);

var<private> global4: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec2<i32>(26868i, -67933i), 43682u), vec3<u32>(57706u, 57460u, 71646u), -14215i, 43388u, Struct_1(vec2<i32>(345i, i32(-2147483648)), 4294967295u)), Struct_2(Struct_1(vec2<i32>(1i, -7755i), 48746u), vec3<u32>(13231u, 7872u, 47811u), -15651i, 86797u, Struct_1(vec2<i32>(-21114i, i32(-2147483648)), 67763u)), Struct_2(Struct_1(vec2<i32>(-11789i, 6874i), 4294967295u), vec3<u32>(0u, 15800u, 14129u), 0i, 4294967295u, Struct_1(vec2<i32>(2147483647i, -1i), 0u)), Struct_2(Struct_1(vec2<i32>(15060i, 2147483647i), 49180u), vec3<u32>(89119u, 0u, 88491u), 0i, 0u, Struct_1(vec2<i32>(-1397i, -28011i), 1u)), Struct_2(Struct_1(vec2<i32>(-13460i, 32564i), 4294967295u), vec3<u32>(30158u, 35697u, 4294967295u), 0i, 72160u, Struct_1(vec2<i32>(0i, i32(-2147483648)), 1u)), Struct_2(Struct_1(vec2<i32>(25370i, 0i), 0u), vec3<u32>(1u, 5593u, 0u), -1245i, 6464u, Struct_1(vec2<i32>(34107i, -22964i), 1u)), Struct_2(Struct_1(vec2<i32>(-1i, 73476i), 0u), vec3<u32>(0u, 7737u, 13450u), 45963i, 0u, Struct_1(vec2<i32>(34094i, -1i), 1u)), Struct_2(Struct_1(vec2<i32>(2147483647i, -14655i), 22774u), vec3<u32>(30059u, 1u, 4587u), 3752i, 1u, Struct_1(vec2<i32>(-10906i, 2147483647i), 83121u)), Struct_2(Struct_1(vec2<i32>(1i, 14391i), 1570u), vec3<u32>(76696u, 0u, 18658u), -4064i, 14626u, Struct_1(vec2<i32>(-20093i, -13422i), 1u)), Struct_2(Struct_1(vec2<i32>(0i, -66289i), 4294967295u), vec3<u32>(0u, 0u, 53930u), -32738i, 1u, Struct_1(vec2<i32>(41342i, 0i), 62196u)), Struct_2(Struct_1(vec2<i32>(2147483647i, -23245i), 42968u), vec3<u32>(36337u, 0u, 0u), 13298i, 0u, Struct_1(vec2<i32>(9105i, i32(-2147483648)), 26693u)), Struct_2(Struct_1(vec2<i32>(25852i, 89427i), 18174u), vec3<u32>(27806u, 27437u, 11702u), 0i, 12631u, Struct_1(vec2<i32>(2147483647i, -1i), 351u)), Struct_2(Struct_1(vec2<i32>(0i, 1i), 1u), vec3<u32>(31801u, 4294967295u, 4083u), 3334i, 1u, Struct_1(vec2<i32>(0i, 1i), 4294967295u)), Struct_2(Struct_1(vec2<i32>(-36233i, 13153i), 34935u), vec3<u32>(78223u, 0u, 4294967295u), -72103i, 0u, Struct_1(vec2<i32>(-25844i, 35026i), 4294967295u)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i), 4294967295u), vec3<u32>(32906u, 4294967295u, 115104u), 1i, 0u, Struct_1(vec2<i32>(-1i, -38i), 38232u)), Struct_2(Struct_1(vec2<i32>(36168i, 1i), 6785u), vec3<u32>(4294967295u, 54655u, 24175u), -1i, 74916u, Struct_1(vec2<i32>(-41458i, 11623i), 1u)), Struct_2(Struct_1(vec2<i32>(-25402i, -31283i), 0u), vec3<u32>(83418u, 896u, 44361u), -25539i, 14851u, Struct_1(vec2<i32>(1i, 57919i), 0u)), Struct_2(Struct_1(vec2<i32>(-1i, 1i), 0u), vec3<u32>(38935u, 0u, 0u), 2147483647i, 1u, Struct_1(vec2<i32>(1i, 18985i), 1u)), Struct_2(Struct_1(vec2<i32>(14960i, -44352i), 23773u), vec3<u32>(1u, 1u, 8294u), 69655i, 0u, Struct_1(vec2<i32>(1i, 0i), 40565u)), Struct_2(Struct_1(vec2<i32>(1i, 0i), 0u), vec3<u32>(4294967295u, 27415u, 4294967295u), 2147483647i, 4294967295u, Struct_1(vec2<i32>(-38492i, -64344i), 0u)), Struct_2(Struct_1(vec2<i32>(8561i, 35182i), 3225u), vec3<u32>(23208u, 1u, 4294967295u), -24615i, 32409u, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 1u)), Struct_2(Struct_1(vec2<i32>(0i, -1i), 57318u), vec3<u32>(28112u, 0u, 1u), i32(-2147483648), 36922u, Struct_1(vec2<i32>(-1919i, 0i), 1u)), Struct_2(Struct_1(vec2<i32>(2147483647i, 36305i), 36412u), vec3<u32>(1u, 4294967295u, 0u), -1i, 1u, Struct_1(vec2<i32>(1i, 26557i), 1u)), Struct_2(Struct_1(vec2<i32>(0i, -6861i), 0u), vec3<u32>(0u, 23269u, 45717u), -1i, 0u, Struct_1(vec2<i32>(i32(-2147483648), 16589i), 0u)), Struct_2(Struct_1(vec2<i32>(-3986i, -27881i), 0u), vec3<u32>(128224u, 0u, 1u), 6211i, 0u, Struct_1(vec2<i32>(58054i, 0i), 15232u)), Struct_2(Struct_1(vec2<i32>(-25366i, 17684i), 1u), vec3<u32>(12227u, 1u, 4294967295u), -61707i, 30033u, Struct_1(vec2<i32>(i32(-2147483648), -11378i), 60537u)), Struct_2(Struct_1(vec2<i32>(0i, -1i), 1u), vec3<u32>(78498u, 74784u, 0u), 0i, 1u, Struct_1(vec2<i32>(-97599i, 6825i), 4294967295u)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    global2 = !all(vec4<bool>(all(select(vec2<bool>(false, arg_0), vec2<bool>(global0.x, arg_0), global0.x)), arg_0, false, !(!global0.x)));
    global2 = all(select(!select(vec2<bool>(true, true), select(vec2<bool>(global0.x, arg_0), vec2<bool>(global0.x, false), arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(false, global0.x), vec2<bool>(true, false))), vec2<bool>(select(!arg_0, true, true), any(select(vec2<bool>(arg_0, true), vec2<bool>(global0.x, true), vec2<bool>(global0.x, arg_0)))), vec2<bool>(true, any(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, global0.x, arg_0, false), vec4<bool>(global0.x, false, false, false))))));
    global2 = false;
    global2 = false;
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1532f + 1000f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> u32 {
    let var_0 = Struct_2(Struct_1(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, global3.x) & vec2<i32>(1i, -1001i), -vec2<i32>(global3.x, 36513i)), ~2910u), ~vec3<u32>(29249u, max(_wgslsmith_mod_u32(u_input.d, 0u), ~u_input.a), 1u), 38780i, 1u, Struct_1(vec2<i32>(global3.x, -56921i), u_input.b));
    return 4294967295u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!global0.x, vec4<i32>(0i, global3.x, u_input.c, 36806i)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-546f - _wgslsmith_f_op_f32(f32(-1f) * -760f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1492f, 423f)), _wgslsmith_f_op_f32(round(-617f)))))), vec2<bool>(all(!(!vec3<bool>(global0.x, global0.x, false))), any(!vec3<bool>(global0.x, global0.x, false)) && true), ~(~33122u)), 27u)];
    global2 = arg_0 < ~4293u;
    global0 = vec2<bool>(global0.x, any(vec2<bool>(global0.x && true, select(true, global0.x, select(global0.x, global0.x, true)))));
    global2 = global0.x;
    global1 = array<Struct_2, 19>();
    return Struct_1(~_wgslsmith_sub_vec2_i32(var_0.a.a, max(vec2<i32>(1i, 1i), countOneBits(vec2<i32>(-2147483647i, var_0.e.a.x)))), arg_0 | _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 37062u, var_0.a.b, 61529u), select(vec4<u32>(var_0.b.x, u_input.a, arg_0, 39898u), vec4<u32>(139216u, 0u, var_0.d, 53421u), vec4<bool>(global0.x, global0.x, false, false))), firstTrailingBit(vec4<u32>(0u, var_0.a.b, u_input.d, 0u) | vec4<u32>(u_input.d, 0u, u_input.a, 1u))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = all(!select(!vec4<bool>(global0.x, true, false, global0.x), !select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true)), vec4<bool>(true, false, global0.x, !global0.x)));
    global0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(arg_0))))));
    return _wgslsmith_dot_vec2_u32(arg_2.b.yy, ~arg_2.b.yy);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.xz, 1610u);
    var var_1 = abs(vec4<u32>(u_input.a, ~arg_2.x, func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-112f, 107f) + vec2<f32>(arg_3, -1121f)))), func_2(~116340u), global1[_wgslsmith_index_u32(abs(~56401u), 19u)], Struct_1(_wgslsmith_add_vec2_i32(var_0.a, var_0.a), _wgslsmith_mod_u32(var_0.b, 1u))), _wgslsmith_clamp_u32(firstLeadingBit(var_0.b) >> (abs(arg_2.x) % 32u), ~func_5(vec2<f32>(-740f, 1000f), Struct_1(vec2<i32>(arg_1, u_input.c), arg_2.x), global4[_wgslsmith_index_u32(u_input.b, 27u)], Struct_1(vec2<i32>(9789i, u_input.c), 4294967295u)), ~arg_2.x)));
    global3 = vec2<i32>(-20230i, arg_1);
    global2 = any(vec4<bool>(all(vec4<bool>(true, true, all(vec3<bool>(false, global0.x, global0.x)), arg_3 <= arg_3)), any(vec2<bool>(true, true)), ~func_5(vec2<f32>(arg_3, -183f), var_0, Struct_2(Struct_1(arg_0.zz, 0u), vec3<u32>(var_1.x, 1u, 0u), 0i, var_0.b, Struct_1(vec2<i32>(u_input.c, 38898i), arg_2.x)), Struct_1(arg_0.zy, u_input.a)) >= 0u, any(!select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), false))));
    let var_2 = Struct_1(~firstLeadingBit(-var_0.a), u_input.b);
    return Struct_1(min(_wgslsmith_mod_vec2_i32(~select(vec2<i32>(0i, var_2.a.x), arg_0.xy, global0.x), vec2<i32>(-u_input.c, 17234i)), arg_0.yx), reverseBits(var_2.b));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    return ~_wgslsmith_mod_u32(arg_1.b, ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<i32>(global3.x, -2147483647i);
    let var_0 = u_input.b >> (_wgslsmith_clamp_u32(u_input.b, u_input.d, func_6(Struct_2(Struct_1(vec2<i32>(global3.x, 46804i), u_input.d), vec3<u32>(u_input.a, 63744u, u_input.d) << (vec3<u32>(u_input.d, u_input.b, 48208u) % vec3<u32>(32u)), u_input.c, _wgslsmith_mult_u32(47438u, 0u), Struct_1(vec2<i32>(-2147483647i, 0i), u_input.b)), Struct_1(-vec2<i32>(global3.x, 24444i), u_input.a & 0u), func_1(vec3<i32>(1i, -16647i, global3.x), 1i, vec2<u32>(u_input.d, u_input.b) & vec2<u32>(u_input.a, u_input.b), -1021f))) % 32u);
    var var_1 = !all(vec3<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, true)), false, true)) | false;
    global4 = array<Struct_2, 27>();
    global2 = all(vec3<bool>(all(select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), all(vec3<bool>(global0.x, true, global0.x)) || any(vec4<bool>(false, true, true, true)), any(!(!vec3<bool>(false, true, global0.x)))));
    let var_2 = Struct_2(func_2(54153u), firstTrailingBit(vec3<u32>(15790u, _wgslsmith_clamp_u32(~u_input.b, ~0u, u_input.a), 29778u)), countOneBits(-global3.x) & -2147483647i, _wgslsmith_clamp_u32(var_0, (min(u_input.b, 0u) << (_wgslsmith_sub_u32(18362u, var_0) % 32u)) << (select(4294967295u, var_0, global0.x) % 32u), func_1(select(-vec3<i32>(17152i, -2147483647i, u_input.c), -vec3<i32>(u_input.c, -2691i, u_input.c), any(vec4<bool>(false, global0.x, global0.x, global0.x))), global3.x, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(107305u, u_input.a), vec2<u32>(8475u, 40385u)), ~vec2<u32>(u_input.a, u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -1179f)).b), func_1(reverseBits(min(vec3<i32>(18941i, 34977i, 3381i), vec3<i32>(-93471i, global3.x, global3.x))) & ~vec3<i32>(-1i, -8449i, u_input.c), -23108i, _wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, var_0), vec2<u32>(1u, var_0), countOneBits(vec2<u32>(u_input.d, var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1641f)), -1000f))));
    var_1 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-29563i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(200f - 934f), -235f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-754f, _wgslsmith_f_op_f32(-810f * 587f)))), _wgslsmith_f_op_f32(func_3(global0.x, -reverseBits(vec4<i32>(2147483647i, 0i, -2147483647i, -2147483647i)))), select(reverseBits(_wgslsmith_mod_i32(-var_2.e.a.x, i32(-1i) * -10981i)), firstTrailingBit(min(0i, func_1(vec3<i32>(32344i, 39811i, 18192i), u_input.c, var_2.b.yx, -712f).a.x)), true));
}

