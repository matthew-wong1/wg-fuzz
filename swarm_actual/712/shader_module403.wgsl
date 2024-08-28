struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, false, true, true, false, false, true, false, true, true, false, true, true, false, false, true, true, true, false, true, false, true, true, false, false, true, true, false, false);

var<private> global1: bool;

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(1u, vec4<bool>(false, false, false, true), 1i, vec2<i32>(15788i, -25041i), vec3<i32>(2147483647i, 19853i, 1i)), 0i, Struct_1(8409u, vec4<bool>(false, true, true, true), 8302i, vec2<i32>(-42199i, 1i), vec3<i32>(-12071i, 16646i, 0i)), Struct_1(35536u, vec4<bool>(false, false, true, false), -1i, vec2<i32>(i32(-2147483648), 57098i), vec3<i32>(1i, -63352i, 2147483647i)), 56328u), Struct_2(Struct_1(131600u, vec4<bool>(false, true, false, false), -4577i, vec2<i32>(-37624i, -12471i), vec3<i32>(i32(-2147483648), -17716i, 2147483647i)), 1749i, Struct_1(4294967295u, vec4<bool>(true, false, true, true), 45444i, vec2<i32>(9729i, -13752i), vec3<i32>(-9184i, i32(-2147483648), 32609i)), Struct_1(53965u, vec4<bool>(true, true, false, true), 7237i, vec2<i32>(1i, -1i), vec3<i32>(1i, i32(-2147483648), 14777i)), 4294967295u), Struct_2(Struct_1(23887u, vec4<bool>(true, false, true, true), 1i, vec2<i32>(2147483647i, 1i), vec3<i32>(-1i, -1i, 2147483647i)), 19305i, Struct_1(34086u, vec4<bool>(true, true, false, true), -75074i, vec2<i32>(2147483647i, -1i), vec3<i32>(-21944i, i32(-2147483648), -1i)), Struct_1(16057u, vec4<bool>(false, true, true, true), 2147483647i, vec2<i32>(36305i, 0i), vec3<i32>(-4108i, -42916i, 49354i)), 11431u), Struct_2(Struct_1(0u, vec4<bool>(true, false, true, true), -25758i, vec2<i32>(6201i, 38465i), vec3<i32>(0i, 2147483647i, -47568i)), i32(-2147483648), Struct_1(0u, vec4<bool>(false, false, true, false), 2147483647i, vec2<i32>(2147483647i, 0i), vec3<i32>(i32(-2147483648), -58425i, 2147483647i)), Struct_1(74053u, vec4<bool>(false, false, false, true), 17649i, vec2<i32>(7403i, 30863i), vec3<i32>(12407i, -25255i, 1i)), 4294967295u), Struct_2(Struct_1(8040u, vec4<bool>(true, true, false, true), i32(-2147483648), vec2<i32>(1i, 1i), vec3<i32>(i32(-2147483648), 4150i, 2147483647i)), -1i, Struct_1(693u, vec4<bool>(false, false, false, true), i32(-2147483648), vec2<i32>(2147483647i, 1i), vec3<i32>(-1950i, 0i, -1i)), Struct_1(4294967295u, vec4<bool>(true, false, false, true), 1i, vec2<i32>(19359i, -1i), vec3<i32>(0i, -1i, i32(-2147483648))), 4294967295u), Struct_2(Struct_1(4294967295u, vec4<bool>(true, false, true, false), 1i, vec2<i32>(2147483647i, -26339i), vec3<i32>(1i, 22752i, -1i)), -52i, Struct_1(1u, vec4<bool>(true, true, false, true), 29198i, vec2<i32>(20132i, -22200i), vec3<i32>(0i, 5674i, -23004i)), Struct_1(4294967295u, vec4<bool>(true, true, true, false), i32(-2147483648), vec2<i32>(0i, 2147483647i), vec3<i32>(2147483647i, -9269i, -1i)), 25536u), Struct_2(Struct_1(55183u, vec4<bool>(false, true, true, true), -1292i, vec2<i32>(6942i, 2147483647i), vec3<i32>(1i, 35366i, -1i)), -6065i, Struct_1(4294967295u, vec4<bool>(false, true, false, true), -4419i, vec2<i32>(-1i, 0i), vec3<i32>(-18407i, 15134i, 1i)), Struct_1(4294967295u, vec4<bool>(false, false, false, false), 2999i, vec2<i32>(37930i, 1i), vec3<i32>(-11077i, 1i, -1i)), 4294967295u), Struct_2(Struct_1(24181u, vec4<bool>(true, false, false, true), 16657i, vec2<i32>(17829i, 0i), vec3<i32>(-48142i, 13407i, i32(-2147483648))), 19312i, Struct_1(1u, vec4<bool>(true, false, true, true), -31829i, vec2<i32>(0i, 0i), vec3<i32>(1i, 5084i, 15566i)), Struct_1(4294967295u, vec4<bool>(false, true, true, false), 2147483647i, vec2<i32>(-54424i, 2147483647i), vec3<i32>(1i, -5173i, 2147483647i)), 41115u), Struct_2(Struct_1(20324u, vec4<bool>(true, false, true, true), 2147483647i, vec2<i32>(-6300i, i32(-2147483648)), vec3<i32>(1i, -1i, 2147483647i)), -1i, Struct_1(104200u, vec4<bool>(false, true, false, false), i32(-2147483648), vec2<i32>(0i, i32(-2147483648)), vec3<i32>(59574i, 0i, -15721i)), Struct_1(45730u, vec4<bool>(true, true, true, false), 45665i, vec2<i32>(0i, 1i), vec3<i32>(-1i, i32(-2147483648), -1i)), 6035u), Struct_2(Struct_1(15200u, vec4<bool>(false, false, false, false), -14900i, vec2<i32>(0i, -48674i), vec3<i32>(1i, 1i, 0i)), 1i, Struct_1(1u, vec4<bool>(true, false, false, false), -27176i, vec2<i32>(1i, -31645i), vec3<i32>(49334i, -13511i, -29135i)), Struct_1(1u, vec4<bool>(false, false, true, true), -8874i, vec2<i32>(649i, i32(-2147483648)), vec3<i32>(-3467i, i32(-2147483648), 45401i)), 41693u), Struct_2(Struct_1(36475u, vec4<bool>(false, false, false, false), 2147483647i, vec2<i32>(i32(-2147483648), -1i), vec3<i32>(-1i, -10337i, -4430i)), 10100i, Struct_1(4294967295u, vec4<bool>(true, false, false, false), i32(-2147483648), vec2<i32>(12846i, 0i), vec3<i32>(i32(-2147483648), 15061i, 8087i)), Struct_1(7803u, vec4<bool>(true, false, true, false), 0i, vec2<i32>(i32(-2147483648), 0i), vec3<i32>(-35665i, -56895i, -1i)), 6423u), Struct_2(Struct_1(9452u, vec4<bool>(false, false, true, false), 2358i, vec2<i32>(7036i, 94422i), vec3<i32>(-26453i, -16212i, 21916i)), -11836i, Struct_1(1u, vec4<bool>(true, true, true, true), 2147483647i, vec2<i32>(2147483647i, 2147483647i), vec3<i32>(-37679i, 830i, 40671i)), Struct_1(4294967295u, vec4<bool>(false, false, true, true), -20085i, vec2<i32>(-25750i, 35594i), vec3<i32>(-71774i, i32(-2147483648), -6190i)), 36700u), Struct_2(Struct_1(10994u, vec4<bool>(false, false, false, true), 17061i, vec2<i32>(-42854i, 10511i), vec3<i32>(15029i, -36679i, i32(-2147483648))), 1i, Struct_1(1u, vec4<bool>(false, true, false, true), -1i, vec2<i32>(0i, i32(-2147483648)), vec3<i32>(1i, 22625i, 2147483647i)), Struct_1(97608u, vec4<bool>(false, false, false, true), 0i, vec2<i32>(-72310i, -55568i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), 4294967295u), Struct_2(Struct_1(12677u, vec4<bool>(true, true, true, false), 27537i, vec2<i32>(1i, 854i), vec3<i32>(2147483647i, i32(-2147483648), 0i)), 0i, Struct_1(12141u, vec4<bool>(true, false, false, true), 2147483647i, vec2<i32>(1i, i32(-2147483648)), vec3<i32>(1782i, 3624i, -1i)), Struct_1(28707u, vec4<bool>(false, false, true, true), 9517i, vec2<i32>(i32(-2147483648), -15259i), vec3<i32>(0i, 0i, 19435i)), 1u), Struct_2(Struct_1(0u, vec4<bool>(false, false, false, false), -82780i, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 20306i, 1i)), 35658i, Struct_1(59471u, vec4<bool>(true, false, true, false), -12253i, vec2<i32>(1i, 0i), vec3<i32>(18257i, 0i, 0i)), Struct_1(53920u, vec4<bool>(true, true, true, true), 2147483647i, vec2<i32>(2147483647i, 74193i), vec3<i32>(0i, 8949i, 26228i)), 29142u), Struct_2(Struct_1(3602u, vec4<bool>(true, true, true, true), -5433i, vec2<i32>(-18806i, 814i), vec3<i32>(0i, i32(-2147483648), 2147483647i)), 2147483647i, Struct_1(0u, vec4<bool>(true, true, true, true), 4281i, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, 2487i, 10435i)), Struct_1(4294967295u, vec4<bool>(false, true, false, false), 0i, vec2<i32>(66695i, 21810i), vec3<i32>(-1i, -3097i, 0i)), 4294967295u), Struct_2(Struct_1(1u, vec4<bool>(true, true, false, false), -1i, vec2<i32>(-42769i, 1i), vec3<i32>(2147483647i, 38883i, i32(-2147483648))), 39503i, Struct_1(26673u, vec4<bool>(false, true, true, false), 0i, vec2<i32>(-623i, 57830i), vec3<i32>(0i, 29967i, -40096i)), Struct_1(68799u, vec4<bool>(true, false, true, false), 6513i, vec2<i32>(55158i, 0i), vec3<i32>(2147483647i, -1i, 2147483647i)), 1u), Struct_2(Struct_1(2022u, vec4<bool>(false, false, true, false), 5853i, vec2<i32>(0i, 2147483647i), vec3<i32>(-10211i, 48576i, -44769i)), i32(-2147483648), Struct_1(0u, vec4<bool>(false, true, false, true), 2147483647i, vec2<i32>(-3355i, 0i), vec3<i32>(26937i, 1i, -7332i)), Struct_1(51678u, vec4<bool>(true, false, true, false), -10099i, vec2<i32>(-59312i, 28126i), vec3<i32>(i32(-2147483648), 2147483647i, -23659i)), 8292u), Struct_2(Struct_1(64129u, vec4<bool>(true, true, true, true), 37899i, vec2<i32>(i32(-2147483648), 7846i), vec3<i32>(2147483647i, -17622i, 1i)), 1i, Struct_1(11419u, vec4<bool>(true, false, false, true), 0i, vec2<i32>(-1i, 0i), vec3<i32>(i32(-2147483648), 68913i, -1i)), Struct_1(1u, vec4<bool>(false, true, true, true), -27002i, vec2<i32>(1i, -1i), vec3<i32>(1i, i32(-2147483648), 16953i)), 71461u), Struct_2(Struct_1(4294967295u, vec4<bool>(true, false, false, true), -496i, vec2<i32>(1i, i32(-2147483648)), vec3<i32>(-40190i, 2147483647i, 6463i)), 316i, Struct_1(22263u, vec4<bool>(false, false, false, true), i32(-2147483648), vec2<i32>(-18466i, -25569i), vec3<i32>(-1i, 58230i, 18572i)), Struct_1(0u, vec4<bool>(true, false, true, false), i32(-2147483648), vec2<i32>(i32(-2147483648), 62071i), vec3<i32>(-25800i, i32(-2147483648), -13094i)), 28u), Struct_2(Struct_1(1u, vec4<bool>(true, true, true, false), 1i, vec2<i32>(1i, i32(-2147483648)), vec3<i32>(-36151i, -34393i, 9958i)), 1i, Struct_1(1u, vec4<bool>(false, true, true, false), -1i, vec2<i32>(-15727i, i32(-2147483648)), vec3<i32>(-15791i, -29766i, -21711i)), Struct_1(1u, vec4<bool>(false, true, true, true), 0i, vec2<i32>(i32(-2147483648), 0i), vec3<i32>(-20004i, 1i, 1i)), 14353u), Struct_2(Struct_1(1u, vec4<bool>(true, true, false, true), 2147483647i, vec2<i32>(8331i, 2147483647i), vec3<i32>(-1i, -50843i, 3702i)), -9354i, Struct_1(0u, vec4<bool>(false, true, true, true), -1i, vec2<i32>(2147483647i, 1i), vec3<i32>(-12171i, 31446i, i32(-2147483648))), Struct_1(1u, vec4<bool>(false, false, false, false), -1i, vec2<i32>(2147483647i, 1i), vec3<i32>(-25915i, -1i, -23337i)), 0u), Struct_2(Struct_1(53136u, vec4<bool>(false, false, true, true), i32(-2147483648), vec2<i32>(-21187i, -25380i), vec3<i32>(-13872i, i32(-2147483648), 0i)), 2147483647i, Struct_1(10264u, vec4<bool>(false, true, true, true), 1i, vec2<i32>(17775i, 1i), vec3<i32>(i32(-2147483648), -11239i, 24752i)), Struct_1(68535u, vec4<bool>(true, true, true, true), i32(-2147483648), vec2<i32>(15323i, 2147483647i), vec3<i32>(2147483647i, 65417i, -1i)), 10833u), Struct_2(Struct_1(130224u, vec4<bool>(true, false, false, true), 35117i, vec2<i32>(-17256i, 18321i), vec3<i32>(36702i, 1i, i32(-2147483648))), 74580i, Struct_1(1u, vec4<bool>(true, false, true, false), 2147483647i, vec2<i32>(-37404i, 64880i), vec3<i32>(44480i, -28931i, 22598i)), Struct_1(58117u, vec4<bool>(false, true, false, true), 3306i, vec2<i32>(42045i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, 0i)), 17572u), Struct_2(Struct_1(4294967295u, vec4<bool>(false, false, false, false), -31288i, vec2<i32>(86911i, 25401i), vec3<i32>(i32(-2147483648), 10189i, -9660i)), 2147483647i, Struct_1(8617u, vec4<bool>(false, true, true, false), 61053i, vec2<i32>(1i, -30879i), vec3<i32>(-6535i, 0i, 1i)), Struct_1(3163u, vec4<bool>(false, true, true, true), 21261i, vec2<i32>(i32(-2147483648), -1i), vec3<i32>(25831i, -1i, 1i)), 4294967295u), Struct_2(Struct_1(0u, vec4<bool>(true, true, false, false), -1i, vec2<i32>(3447i, 0i), vec3<i32>(0i, 9218i, -1i)), -7530i, Struct_1(1u, vec4<bool>(false, false, false, true), -25981i, vec2<i32>(1i, i32(-2147483648)), vec3<i32>(27188i, -21422i, -1i)), Struct_1(39398u, vec4<bool>(false, false, false, false), 0i, vec2<i32>(2147483647i, -13677i), vec3<i32>(2147483647i, -22198i, i32(-2147483648))), 51166u), Struct_2(Struct_1(34550u, vec4<bool>(true, true, false, true), 1i, vec2<i32>(-27311i, 34623i), vec3<i32>(-1i, 1i, -51185i)), 0i, Struct_1(4294967295u, vec4<bool>(false, true, true, true), 2147483647i, vec2<i32>(-32113i, -12867i), vec3<i32>(0i, 36512i, -9049i)), Struct_1(31553u, vec4<bool>(false, false, true, true), -5838i, vec2<i32>(1i, 29575i), vec3<i32>(157i, 3072i, -1i)), 101355u), Struct_2(Struct_1(4294967295u, vec4<bool>(true, false, true, false), 0i, vec2<i32>(15710i, 32798i), vec3<i32>(53877i, -1i, -34995i)), -2473i, Struct_1(4294967295u, vec4<bool>(true, true, false, true), 15493i, vec2<i32>(0i, 1i), vec3<i32>(-93815i, i32(-2147483648), 2147483647i)), Struct_1(0u, vec4<bool>(false, false, false, true), 6014i, vec2<i32>(-7534i, 0i), vec3<i32>(5820i, -1i, 15705i)), 18865u), Struct_2(Struct_1(7813u, vec4<bool>(true, true, true, false), 1141i, vec2<i32>(1i, i32(-2147483648)), vec3<i32>(50631i, 26105i, 2147483647i)), i32(-2147483648), Struct_1(1u, vec4<bool>(false, true, false, false), -5376i, vec2<i32>(1i, -66576i), vec3<i32>(-37680i, 0i, 22647i)), Struct_1(1u, vec4<bool>(false, true, true, false), -11638i, vec2<i32>(-1i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), 867i)), 95048u), Struct_2(Struct_1(1902u, vec4<bool>(true, false, false, false), i32(-2147483648), vec2<i32>(-78458i, -2953i), vec3<i32>(0i, -31263i, 35361i)), -9397i, Struct_1(4294967295u, vec4<bool>(false, false, true, false), -35120i, vec2<i32>(-31697i, 47688i), vec3<i32>(-15533i, 48247i, 0i)), Struct_1(0u, vec4<bool>(false, false, false, true), 39720i, vec2<i32>(1i, -47090i), vec3<i32>(0i, -8302i, 25934i)), 41335u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> bool {
    global1 = !any(!(!vec2<bool>(false, arg_3)));
    let var_0 = vec3<i32>(-1i) * -(~(~arg_2.d.e));
    global3 = array<Struct_2, 30>();
    global0 = array<bool, 30>();
    var var_1 = max(_wgslsmith_mod_vec2_u32(~(~(~u_input.c)), max(~u_input.c, ~(u_input.c | vec2<u32>(0u, 13240u)))), select(vec2<u32>(u_input.c.x, 0u), ~_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), arg_0 != any(vec3<bool>(true, arg_0, true))));
    return -arg_2.b > firstTrailingBit(1i);
}

fn func_2() -> vec4<u32> {
    let var_0 = false;
    var var_1 = u_input.b.yx;
    global3 = array<Struct_2, 30>();
    var var_2 = 19785u;
    var var_3 = Struct_1(abs(~u_input.c.x), !vec4<bool>(true, true, false, func_3(true, !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), global3[_wgslsmith_index_u32(1u << (u_input.a % 32u), 30u)], true & global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), u_input.b.x, u_input.b.zz, vec3<i32>(-1i) * -u_input.b.zyw);
    return (countOneBits(~vec4<u32>(u_input.c.x, 34976u, 1u, var_3.a)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(2543u, var_3.a, 1u, 19058u), vec4<u32>(0u, 1u, var_3.a, var_3.a)), _wgslsmith_mod_u32(94525u, 50589u)), vec4<u32>(u_input.c.x, var_3.a, countOneBits(var_3.a), 1u))) & vec4<u32>(var_3.a | u_input.a, select(reverseBits(4294967295u), ~1u, global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, 1u, 0u), vec4<u32>(u_input.c.x, var_3.a, var_3.a, 0u)), firstTrailingBit(var_3.a), u_input.c.x > u_input.a), 30u)]), ~_wgslsmith_add_u32(u_input.a, 30374u), u_input.a);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<bool>) -> bool {
    global2 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, _wgslsmith_f_op_f32(arg_2 * 1000f))))));
    let var_1 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 60727u) ^ arg_1.x), 7198u) | 4294967295u;
    global3 = array<Struct_2, 30>();
    global2 = array<Struct_2, 9>();
    return !(_wgslsmith_div_f32(arg_2, arg_2) != -430f);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    var var_0 = !arg_3.a.b;
    var_0 = arg_0.c.b;
    var var_1 = arg_3.d;
    var_0 = vec4<bool>(true, all(vec2<bool>(func_4(var_1.e.x, func_2(), -1000f, select(var_0.yyx, vec3<bool>(false, arg_3.a.b.x, arg_3.c.b.x), true)), true)), all(!(!vec2<bool>(var_0.x, var_1.b.x))), var_1.b.x);
    let var_2 = arg_3.a;
    return !all(select(var_2.b.zw, arg_3.c.b.ww, select(vec2<bool>(arg_3.a.b.x, false), var_1.b.zx, false)));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = global3[_wgslsmith_index_u32(1u, 30u)];
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~abs(_wgslsmith_sub_u32(u_input.c.x, 0u))), ~arg_2.a), 9u)];
    return StorageBuffer(_wgslsmith_div_u32(17125u, var_1.a.a) << ((~(~u_input.c.x) << (_wgslsmith_div_u32(abs(47845u), ~1u) % 32u)) % 32u), u_input.c, ~var_1.c.c, vec3<i32>(reverseBits(~(-2147483647i)), -var_0.a.d.x, _wgslsmith_mod_i32(reverseBits(_wgslsmith_div_i32(u_input.b.x, 18783i)), _wgslsmith_div_i32(19869i, abs(-43764i)))), _wgslsmith_f_op_f32(sign(203f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 30>();
    let var_0 = 282i;
    global3 = array<Struct_2, 30>();
    let var_1 = vec2<bool>(all(!vec2<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 30u)], true)), false);
    global2 = array<Struct_2, 9>();
    global2 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = func_5(true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-296f)) + _wgslsmith_f_op_f32(293f * 1670f)) - _wgslsmith_f_op_f32(select(-2189f, 2427f, func_1(Struct_2(Struct_1(u_input.c.x, vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 30u)], var_1.x, false), var_0, vec2<i32>(33004i, var_0), u_input.b.xzy), var_0, Struct_1(u_input.a, vec4<bool>(var_1.x, true, false, true), 0i, u_input.b.wx, vec3<i32>(33577i, 2147483647i, 0i)), Struct_1(u_input.c.x, vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], var_1.x), 99112i, u_input.b.wy, vec3<i32>(1i, 1i, -2147483647i)), 36375u), u_input.a, u_input.c, global3[_wgslsmith_index_u32(4294967295u, 30u)])))), _wgslsmith_f_op_f32(166f + -361f)), Struct_1(~(~119181u) ^ ~(~u_input.a), !select(select(vec4<bool>(false, var_1.x, global0[_wgslsmith_index_u32(u_input.a, 30u)], false), vec4<bool>(true, false, var_1.x, var_1.x), false), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 30u)], var_1.x, true, false), !vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], var_1.x, var_1.x)), ~(-reverseBits(0i)), u_input.b.xw, u_input.b.zyx));
}

