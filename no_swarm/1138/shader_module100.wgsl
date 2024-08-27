struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(i32(-2147483648), vec2<u32>(93483u, 31318u), vec3<i32>(-6677i, 1i, -1i)), vec3<u32>(1u, 1u, 67124u), Struct_1(49271i, vec2<u32>(51175u, 1u), vec3<i32>(-49343i, 20733i, 1i)), vec4<i32>(i32(-2147483648), -17186i, -2964i, -52548i)), Struct_2(Struct_1(36773i, vec2<u32>(81996u, 4294967295u), vec3<i32>(45348i, -1i, 0i)), vec3<u32>(18636u, 4294967295u, 73521u), Struct_1(31602i, vec2<u32>(14983u, 70280u), vec3<i32>(0i, 1i, -35311i)), vec4<i32>(2147483647i, -4638i, -12612i, -1472i)), Struct_2(Struct_1(-16102i, vec2<u32>(4294967295u, 21601u), vec3<i32>(i32(-2147483648), -1i, 25735i)), vec3<u32>(1u, 9831u, 4294967295u), Struct_1(22828i, vec2<u32>(62790u, 4294967295u), vec3<i32>(-8599i, 1i, 7310i)), vec4<i32>(-33738i, 13344i, i32(-2147483648), 32943i)), Struct_2(Struct_1(86656i, vec2<u32>(0u, 35389u), vec3<i32>(-1i, i32(-2147483648), 47323i)), vec3<u32>(3785u, 1u, 5264u), Struct_1(-30784i, vec2<u32>(4294967295u, 1u), vec3<i32>(23793i, -3223i, -1i)), vec4<i32>(-16213i, 7773i, 0i, 1i)), Struct_2(Struct_1(13891i, vec2<u32>(1u, 438u), vec3<i32>(670i, -493i, 11828i)), vec3<u32>(401u, 4294967295u, 150914u), Struct_1(-12132i, vec2<u32>(36633u, 1u), vec3<i32>(-1i, i32(-2147483648), -18855i)), vec4<i32>(0i, -35982i, 35238i, 33843i)), Struct_2(Struct_1(19879i, vec2<u32>(1u, 21619u), vec3<i32>(-2692i, 63290i, 0i)), vec3<u32>(1u, 18814u, 4294967295u), Struct_1(-24955i, vec2<u32>(0u, 16170u), vec3<i32>(-5335i, -1i, 0i)), vec4<i32>(24288i, 18780i, 22101i, 31146i)), Struct_2(Struct_1(9113i, vec2<u32>(0u, 0u), vec3<i32>(i32(-2147483648), 5617i, 44307i)), vec3<u32>(49764u, 2956u, 45769u), Struct_1(1i, vec2<u32>(4294967295u, 15516u), vec3<i32>(-37629i, -21363i, -1i)), vec4<i32>(-7223i, 1i, -1i, -40642i)), Struct_2(Struct_1(102154i, vec2<u32>(4294967295u, 47451u), vec3<i32>(1i, -9338i, 2147483647i)), vec3<u32>(73064u, 49755u, 0u), Struct_1(-79760i, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(-70962i, 2147483647i, 12524i)), vec4<i32>(-1i, 32146i, 2147483647i, 23055i)), Struct_2(Struct_1(-4560i, vec2<u32>(1u, 4294967295u), vec3<i32>(42042i, 2147483647i, -1i)), vec3<u32>(91955u, 0u, 91007u), Struct_1(2147483647i, vec2<u32>(1u, 44658u), vec3<i32>(48362i, i32(-2147483648), 20767i)), vec4<i32>(640i, 2147483647i, 2147483647i, 11314i)), Struct_2(Struct_1(17918i, vec2<u32>(0u, 0u), vec3<i32>(-4223i, 2147483647i, 0i)), vec3<u32>(4294967295u, 39758u, 0u), Struct_1(0i, vec2<u32>(0u, 59526u), vec3<i32>(-13199i, 2147483647i, -1i)), vec4<i32>(-7895i, i32(-2147483648), -23458i, -39783i)), Struct_2(Struct_1(12330i, vec2<u32>(545u, 1u), vec3<i32>(2147483647i, -8214i, i32(-2147483648))), vec3<u32>(0u, 59029u, 0u), Struct_1(0i, vec2<u32>(0u, 76029u), vec3<i32>(4326i, 2147483647i, 58764i)), vec4<i32>(-1i, -11987i, -52203i, i32(-2147483648))), Struct_2(Struct_1(34337i, vec2<u32>(5418u, 33928u), vec3<i32>(0i, 2147483647i, -1i)), vec3<u32>(30937u, 4294967295u, 0u), Struct_1(i32(-2147483648), vec2<u32>(46517u, 12479u), vec3<i32>(24798i, 21010i, 14899i)), vec4<i32>(-42116i, 2147483647i, 0i, -1i)), Struct_2(Struct_1(0i, vec2<u32>(16191u, 33580u), vec3<i32>(-26763i, 0i, 2147483647i)), vec3<u32>(4294967295u, 24642u, 0u), Struct_1(-24429i, vec2<u32>(0u, 29074u), vec3<i32>(-18919i, 1i, -26784i)), vec4<i32>(29788i, i32(-2147483648), -3698i, 0i)), Struct_2(Struct_1(i32(-2147483648), vec2<u32>(19653u, 17537u), vec3<i32>(-1i, i32(-2147483648), 2147483647i)), vec3<u32>(1u, 2954u, 195131u), Struct_1(22863i, vec2<u32>(0u, 50911u), vec3<i32>(46308i, 1i, 1i)), vec4<i32>(1144i, -63166i, 1i, 0i)), Struct_2(Struct_1(-1i, vec2<u32>(5473u, 4294967295u), vec3<i32>(1i, 2147483647i, -1i)), vec3<u32>(1u, 19422u, 4294967295u), Struct_1(-1i, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(-28507i, -5573i, 2147483647i)), vec4<i32>(82742i, -1029i, i32(-2147483648), 0i)), Struct_2(Struct_1(1i, vec2<u32>(12056u, 48452u), vec3<i32>(-14007i, 11406i, -1i)), vec3<u32>(1u, 4294967295u, 1u), Struct_1(-1i, vec2<u32>(4294967295u, 65587u), vec3<i32>(-1i, 9004i, -12378i)), vec4<i32>(14848i, 43928i, 2147483647i, 0i)), Struct_2(Struct_1(76664i, vec2<u32>(4294967295u, 94341u), vec3<i32>(1i, -44211i, -36710i)), vec3<u32>(0u, 49170u, 11780u), Struct_1(0i, vec2<u32>(106247u, 17936u), vec3<i32>(40986i, 15962i, 19292i)), vec4<i32>(16945i, 0i, -36760i, 22405i)), Struct_2(Struct_1(0i, vec2<u32>(19786u, 1u), vec3<i32>(1i, 30108i, 1i)), vec3<u32>(1u, 1u, 0u), Struct_1(1i, vec2<u32>(18913u, 34862u), vec3<i32>(-9473i, 1i, 58010i)), vec4<i32>(-25193i, 1i, 37538i, -2195i)), Struct_2(Struct_1(-1i, vec2<u32>(4294967295u, 16342u), vec3<i32>(i32(-2147483648), 1i, 28532i)), vec3<u32>(4294967295u, 34298u, 46250u), Struct_1(5563i, vec2<u32>(0u, 33826u), vec3<i32>(0i, -45772i, -1i)), vec4<i32>(2147483647i, 1i, -24658i, -19916i)), Struct_2(Struct_1(15502i, vec2<u32>(35062u, 20553u), vec3<i32>(1i, 1i, -1i)), vec3<u32>(1u, 1452u, 1u), Struct_1(-21939i, vec2<u32>(58265u, 24352u), vec3<i32>(-1i, -45550i, i32(-2147483648))), vec4<i32>(-1i, 1513i, 17659i, 32199i)), Struct_2(Struct_1(-1i, vec2<u32>(1u, 2885u), vec3<i32>(-59183i, -61910i, 6657i)), vec3<u32>(24467u, 4294967295u, 4294967295u), Struct_1(-29216i, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(17289i, 2147483647i, 9098i)), vec4<i32>(25620i, 31743i, 2147483647i, -1i)), Struct_2(Struct_1(i32(-2147483648), vec2<u32>(1u, 4294967295u), vec3<i32>(-50957i, -8880i, 0i)), vec3<u32>(68759u, 1u, 4294967295u), Struct_1(20780i, vec2<u32>(79112u, 9352u), vec3<i32>(-1i, -58954i, -25924i)), vec4<i32>(-61269i, -1i, 27697i, -1045i)), Struct_2(Struct_1(i32(-2147483648), vec2<u32>(6465u, 51838u), vec3<i32>(2147483647i, 310i, 23337i)), vec3<u32>(1u, 0u, 56720u), Struct_1(i32(-2147483648), vec2<u32>(1u, 0u), vec3<i32>(i32(-2147483648), 25800i, 1i)), vec4<i32>(51120i, -1i, 1i, -1i)), Struct_2(Struct_1(1i, vec2<u32>(53179u, 30999u), vec3<i32>(21726i, 1i, 0i)), vec3<u32>(4294967295u, 4759u, 4294967295u), Struct_1(-37992i, vec2<u32>(1u, 0u), vec3<i32>(2556i, i32(-2147483648), i32(-2147483648))), vec4<i32>(0i, 50548i, 5060i, -10233i)), Struct_2(Struct_1(-21258i, vec2<u32>(4294967295u, 37333u), vec3<i32>(1i, 35773i, -1i)), vec3<u32>(22486u, 0u, 0u), Struct_1(-1i, vec2<u32>(1u, 0u), vec3<i32>(32192i, -8439i, 0i)), vec4<i32>(2147483647i, -55570i, 1i, 0i)), Struct_2(Struct_1(-14292i, vec2<u32>(21418u, 4294967295u), vec3<i32>(i32(-2147483648), 0i, 2147483647i)), vec3<u32>(60804u, 22246u, 9612u), Struct_1(1i, vec2<u32>(0u, 1u), vec3<i32>(0i, 0i, 5272i)), vec4<i32>(11434i, 6856i, -40507i, -1i)), Struct_2(Struct_1(i32(-2147483648), vec2<u32>(0u, 4294967295u), vec3<i32>(0i, -21135i, -16789i)), vec3<u32>(0u, 0u, 4294967295u), Struct_1(-1i, vec2<u32>(41642u, 0u), vec3<i32>(83094i, 0i, -1i)), vec4<i32>(2147483647i, -58512i, 32702i, 0i)));

var<private> global1: array<Struct_1, 2>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(0i, vec2<u32>(0u, 86791u), vec3<i32>(79784i, 917i, -4183i)), vec3<u32>(4294967295u, 83561u, 0u), Struct_1(1i, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), 0i, -1i)), vec4<i32>(i32(-2147483648), -42608i, -21675i, 1i)), Struct_2(Struct_1(-2800i, vec2<u32>(3032u, 4294967295u), vec3<i32>(1i, -1i, -87376i)), vec3<u32>(0u, 32529u, 0u), Struct_1(2147483647i, vec2<u32>(32095u, 1327u), vec3<i32>(0i, 55002i, 28507i)), vec4<i32>(47346i, 25074i, 50839i, 2147483647i)), Struct_2(Struct_1(5678i, vec2<u32>(1u, 29226u), vec3<i32>(1i, -20821i, -36064i)), vec3<u32>(0u, 34932u, 10929u), Struct_1(-5077i, vec2<u32>(1u, 59636u), vec3<i32>(-23450i, 36318i, 1i)), vec4<i32>(2147483647i, 1i, 581i, 0i)), Struct_2(Struct_1(-54684i, vec2<u32>(41872u, 27379u), vec3<i32>(1i, -3876i, 2147483647i)), vec3<u32>(63246u, 1u, 36055u), Struct_1(1i, vec2<u32>(0u, 1u), vec3<i32>(1i, 0i, -1i)), vec4<i32>(15358i, 1i, 2147483647i, i32(-2147483648))), Struct_2(Struct_1(-7681i, vec2<u32>(1u, 11775u), vec3<i32>(-35712i, 2147483647i, -1i)), vec3<u32>(93616u, 2191u, 14460u), Struct_1(11200i, vec2<u32>(61788u, 1u), vec3<i32>(18166i, 9805i, i32(-2147483648))), vec4<i32>(-4917i, -31666i, 13137i, 26956i)));

var<private> global4: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(10311i, vec2<u32>(1u, 18445u), vec3<i32>(-64418i, 1i, 11137i)), Struct_1(2147483647i, vec2<u32>(4294967295u, 0u), vec3<i32>(-31506i, 2147483647i, -40884i)), Struct_1(1i, vec2<u32>(1u, 11693u), vec3<i32>(1i, -1i, -11816i)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(1u, 27u)];
    let var_1 = !select(global2.x, global2.x | global2.x, all(global2.zyw));
    global3 = array<Struct_2, 5>();
    global1 = array<Struct_1, 2>();
    var var_2 = true;
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> vec4<bool> {
    var var_0 = 27644i;
    return vec4<bool>(true, true, select(true, true, (!global2.x && true) | false), select(true, func_2(arg_0.zx, arg_0.yzz) && !global2.x, _wgslsmith_mod_i32(arg_2, -1i) > abs(arg_2)) | !(arg_2 <= _wgslsmith_mult_i32(u_input.a.x, arg_2)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    let var_0 = select(~u_input.a, ~select(vec4<i32>(abs(arg_0.a.d.x), countOneBits(-41500i), u_input.a.x, arg_0.e.c.a), vec4<i32>(48579i, reverseBits(1i), -32469i, max(-1392i, arg_0.a.d.x)), all(vec3<bool>(global2.x, false, global2.x))), !func_2((arg_0.e.b.zz & vec2<u32>(arg_0.e.c.b.x, arg_0.d)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(670u, 1u)) % vec2<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(31255u, arg_1, 1u), vec3<u32>(arg_0.e.b.x, arg_0.e.a.b.x, arg_0.d))));
    var var_1 = vec4<bool>(select(false, false, func_1(firstLeadingBit(min(vec4<u32>(4294967295u, arg_0.a.c.b.x, arg_1, 81070u), vec4<u32>(arg_1, arg_0.a.b.x, 1970u, arg_0.a.b.x))), ~(0u ^ arg_1), i32(-1i) * -18076i).x), false, true, false);
    let var_2 = arg_0;
    let var_3 = global1[_wgslsmith_index_u32(var_2.a.a.b.x & countOneBits(var_2.e.a.b.x), 2u)];
    let var_4 = _wgslsmith_mod_vec4_i32(-reverseBits(vec4<i32>(var_3.c.x, arg_0.a.a.a, 4215i, 64523i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 51675u, var_3.b.x, 43311u), vec4<u32>(1u, arg_1, var_2.a.a.b.x, var_3.b.x), vec4<u32>(4294967295u, 0u, 2890u, 55097u)) % vec4<u32>(32u))), ~select(vec4<i32>(_wgslsmith_clamp_i32(var_3.c.x, var_3.a, u_input.a.x), firstTrailingBit(var_0.x), 45636i, _wgslsmith_sub_i32(1i, var_0.x)), -u_input.a, vec4<bool>(arg_0.b | true, var_2.b, global2.x && arg_0.c, true)));
    return !any(select(!vec4<bool>(var_1.x, false, arg_0.b, true), !func_1(vec4<u32>(var_3.b.x, 30486u, var_3.b.x, arg_0.e.a.b.x), 60791u, var_4.x), ~11701i < _wgslsmith_dot_vec3_i32(var_0.xzw, vec3<i32>(var_0.x, -420i, u_input.b.x))));
}

fn func_4(arg_0: vec4<bool>) -> StorageBuffer {
    let var_0 = Struct_2(Struct_1(countOneBits(reverseBits(2147483647i)), vec2<u32>(abs(~1976u), 1u), vec3<i32>(~u_input.b.x, u_input.a.x, u_input.a.x >> (0u % 32u)) & ~abs(vec3<i32>(u_input.a.x, 2147483647i, u_input.b.x))), ~reverseBits(max(vec3<u32>(1u, 72207u, 1u), countOneBits(vec3<u32>(53280u, 4294967295u, 0u)))), global1[_wgslsmith_index_u32(firstTrailingBit(~(~6170u) << (_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), ~4294967295u, _wgslsmith_div_u32(73370u, 12201u)) % 32u)), 2u)], vec4<i32>(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec3_i32(-u_input.a.xyx, vec3<i32>(7546i, u_input.a.x, -15470i)), 1i), max(u_input.b.x, u_input.a.x), ~(~_wgslsmith_mod_i32(1i, -1i)), _wgslsmith_clamp_i32(0i, reverseBits(1i), -53179i)));
    let var_1 = select(func_1(~(~abs(vec4<u32>(49955u, 43399u, 4294967295u, var_0.a.b.x))), _wgslsmith_sub_u32(min(~4294967295u, select(var_0.c.b.x, 0u, true)), 5789u), var_0.c.a).zx, vec2<bool>(func_3(Struct_3(var_0, !global2.x, true, var_0.c.b.x, Struct_2(global1[_wgslsmith_index_u32(0u, 2u)], vec3<u32>(4294967295u, 1u, var_0.a.b.x), global4[_wgslsmith_index_u32(0u, 3u)], vec4<i32>(var_0.a.a, u_input.b.x, -1i, 0i))), ~_wgslsmith_clamp_u32(0u, var_0.a.b.x, var_0.b.x)), !global2.x), _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(15322i, u_input.b.x, -2147483647i, var_0.a.c.x)), _wgslsmith_mult_vec4_i32(var_0.d ^ u_input.a, -u_input.a)) == countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 22411i, -7407i, 2147483647i), var_0.d)));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(var_0.a.c.x, -_wgslsmith_add_i32(~var_0.d.x, _wgslsmith_sub_i32(var_0.c.a, 0i))), 8674i);
    var var_3 = global0[_wgslsmith_index_u32(var_0.c.b.x, 27u)];
    var var_4 = countOneBits(-_wgslsmith_mult_i32(-2147483647i ^ (u_input.b.x & var_3.a.a), ~(var_3.a.a | var_2.x)));
    return StorageBuffer(63074i, abs(~(~vec3<i32>(0i, u_input.a.x, -5269i))), vec2<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-809f)), _wgslsmith_f_op_f32(f32(-1f) * -919f), var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = func_4(select(!vec4<bool>(true, false, global2.x, true), select(!(!vec4<bool>(false, global2.x, global2.x, global2.x)), func_1(vec4<u32>(1u, 1u, 1u, 1u), ~4294967295u, _wgslsmith_add_i32(u_input.a.x, -1i)), vec4<bool>(true, true, true, true)), select(vec4<bool>(func_3(Struct_3(Struct_2(Struct_1(33456i, vec2<u32>(47285u, 32200u), u_input.a.yyy), vec3<u32>(1u, 0u, 43581u), Struct_1(-1i, vec2<u32>(23535u, 0u), u_input.a.xwz), vec4<i32>(-1i, u_input.a.x, 28817i, -25358i)), global2.x, false, 0u, global3[_wgslsmith_index_u32(4294967295u, 5u)]), 0u), global2.x || global2.x, global2.x, !global2.x), select(!vec4<bool>(true, global2.x, global2.x, true), !vec4<bool>(true, global2.x, global2.x, global2.x), !global2.x), global2.x)));
}

