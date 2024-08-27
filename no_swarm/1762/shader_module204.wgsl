struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(0i, Struct_3(vec3<f32>(-3299f, 1215f, -1290f), Struct_2(585f, Struct_1(vec3<bool>(true, true, false), 0i, 0i, vec4<i32>(-49224i, -1i, 2147483647i, -1i)), 29674u, 4294967295u), Struct_2(-306f, Struct_1(vec3<bool>(true, true, true), i32(-2147483648), 3360i, vec4<i32>(-43831i, -16547i, 7648i, 0i)), 7770u, 4294967295u), Struct_2(427f, Struct_1(vec3<bool>(false, false, true), 1i, i32(-2147483648), vec4<i32>(0i, i32(-2147483648), 69989i, 1i)), 4294967295u, 0u)), vec2<u32>(0u, 1u), Struct_2(1299f, Struct_1(vec3<bool>(true, false, true), -15668i, i32(-2147483648), vec4<i32>(35133i, 1i, 13453i, 1i)), 34568u, 4294967295u)), Struct_4(i32(-2147483648), Struct_3(vec3<f32>(-2154f, -1000f, -1165f), Struct_2(-1443f, Struct_1(vec3<bool>(false, false, false), -7571i, 17953i, vec4<i32>(1i, 1i, 78049i, -7063i)), 29318u, 80787u), Struct_2(-1000f, Struct_1(vec3<bool>(false, false, false), -23964i, 36084i, vec4<i32>(i32(-2147483648), 0i, 11533i, 1i)), 5989u, 1u), Struct_2(471f, Struct_1(vec3<bool>(false, false, true), 2147483647i, 7630i, vec4<i32>(2147483647i, 1i, 2147483647i, -1i)), 37076u, 44460u)), vec2<u32>(1u, 36209u), Struct_2(100f, Struct_1(vec3<bool>(false, false, false), -29885i, i32(-2147483648), vec4<i32>(1i, 28673i, i32(-2147483648), -36005i)), 15298u, 0u)), Struct_4(44798i, Struct_3(vec3<f32>(-598f, 1078f, -507f), Struct_2(325f, Struct_1(vec3<bool>(false, false, false), -16230i, 26382i, vec4<i32>(-4226i, 20682i, 37700i, -41856i)), 0u, 47380u), Struct_2(-423f, Struct_1(vec3<bool>(true, true, true), -5030i, 362i, vec4<i32>(0i, 22599i, 0i, 0i)), 72639u, 0u), Struct_2(1066f, Struct_1(vec3<bool>(true, true, true), 37146i, 1i, vec4<i32>(-27606i, -574i, 2147483647i, -17158i)), 4294967295u, 1u)), vec2<u32>(39213u, 1u), Struct_2(-287f, Struct_1(vec3<bool>(false, false, true), -1i, 0i, vec4<i32>(-1i, -1i, 1972i, -6965i)), 4294967295u, 55697u)), Struct_4(i32(-2147483648), Struct_3(vec3<f32>(-1862f, -209f, 776f), Struct_2(-358f, Struct_1(vec3<bool>(false, true, true), 1i, -11697i, vec4<i32>(-7507i, -1i, -9999i, 46874i)), 0u, 4294967295u), Struct_2(-2075f, Struct_1(vec3<bool>(false, false, false), 1i, -73621i, vec4<i32>(-42790i, -45446i, 74817i, 28317i)), 1u, 9817u), Struct_2(661f, Struct_1(vec3<bool>(true, true, true), 862i, 5616i, vec4<i32>(-39531i, 2072i, i32(-2147483648), 73451i)), 1u, 4294967295u)), vec2<u32>(1226u, 1u), Struct_2(-1900f, Struct_1(vec3<bool>(true, false, true), -14867i, 0i, vec4<i32>(11833i, i32(-2147483648), 2147483647i, 44294i)), 0u, 4294967295u)), Struct_4(48465i, Struct_3(vec3<f32>(1465f, -1048f, -721f), Struct_2(-1258f, Struct_1(vec3<bool>(false, true, false), 1i, 2147483647i, vec4<i32>(-21127i, 48239i, 5555i, -23345i)), 4294967295u, 4294967295u), Struct_2(-129f, Struct_1(vec3<bool>(false, true, false), 7314i, -5655i, vec4<i32>(i32(-2147483648), i32(-2147483648), -5998i, 27220i)), 0u, 1u), Struct_2(-908f, Struct_1(vec3<bool>(true, true, true), 12452i, 0i, vec4<i32>(0i, -50183i, 29781i, 1i)), 31435u, 1u)), vec2<u32>(11453u, 1u), Struct_2(-984f, Struct_1(vec3<bool>(true, true, false), 0i, 1i, vec4<i32>(1i, -20341i, -27358i, -35130i)), 22270u, 78516u)), Struct_4(-14054i, Struct_3(vec3<f32>(-250f, 1314f, -141f), Struct_2(689f, Struct_1(vec3<bool>(false, true, true), 2147483647i, 1i, vec4<i32>(i32(-2147483648), 2147483647i, 0i, -16604i)), 1u, 11925u), Struct_2(-264f, Struct_1(vec3<bool>(true, false, false), -19008i, -1i, vec4<i32>(2147483647i, i32(-2147483648), -12574i, i32(-2147483648))), 1u, 4294967295u), Struct_2(1056f, Struct_1(vec3<bool>(false, true, true), 1i, 65714i, vec4<i32>(-63600i, -24784i, 0i, -1i)), 63030u, 0u)), vec2<u32>(11598u, 41804u), Struct_2(-657f, Struct_1(vec3<bool>(true, true, false), i32(-2147483648), 2147483647i, vec4<i32>(-67618i, 19985i, i32(-2147483648), 16234i)), 0u, 1u)), Struct_4(2147483647i, Struct_3(vec3<f32>(1595f, 694f, 1499f), Struct_2(259f, Struct_1(vec3<bool>(false, true, true), 0i, 2147483647i, vec4<i32>(-10364i, -11480i, -34867i, -9682i)), 42782u, 15264u), Struct_2(-912f, Struct_1(vec3<bool>(false, false, false), 1i, 8148i, vec4<i32>(-112i, -15623i, -1i, -1i)), 29976u, 42446u), Struct_2(156f, Struct_1(vec3<bool>(false, false, false), -82736i, -7035i, vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 24240i)), 29321u, 11386u)), vec2<u32>(4294967295u, 68969u), Struct_2(835f, Struct_1(vec3<bool>(true, true, false), -50641i, 0i, vec4<i32>(-1i, 34090i, -39909i, -9410i)), 4294967295u, 13154u)), Struct_4(1i, Struct_3(vec3<f32>(904f, -264f, -256f), Struct_2(1935f, Struct_1(vec3<bool>(false, false, true), 2603i, 35186i, vec4<i32>(-43378i, 0i, -24303i, i32(-2147483648))), 41197u, 0u), Struct_2(-177f, Struct_1(vec3<bool>(false, true, true), -22398i, 36734i, vec4<i32>(i32(-2147483648), 25669i, -22239i, i32(-2147483648))), 62724u, 1u), Struct_2(-1382f, Struct_1(vec3<bool>(true, true, true), 20214i, 1i, vec4<i32>(0i, 0i, 2147483647i, 2147483647i)), 7286u, 85210u)), vec2<u32>(86531u, 1u), Struct_2(-941f, Struct_1(vec3<bool>(false, true, false), 9931i, 1i, vec4<i32>(i32(-2147483648), -8366i, 2147483647i, 0i)), 0u, 4294967295u)), Struct_4(2147483647i, Struct_3(vec3<f32>(-938f, 1000f, 359f), Struct_2(1823f, Struct_1(vec3<bool>(false, true, true), -1i, 7382i, vec4<i32>(0i, 1i, -2945i, 1i)), 0u, 4294967295u), Struct_2(-1320f, Struct_1(vec3<bool>(true, false, true), 29459i, 29531i, vec4<i32>(16817i, 1i, -1i, 137i)), 1u, 3717u), Struct_2(870f, Struct_1(vec3<bool>(true, true, false), i32(-2147483648), 2147483647i, vec4<i32>(0i, 0i, -85014i, 12018i)), 4294967295u, 0u)), vec2<u32>(41561u, 1u), Struct_2(-231f, Struct_1(vec3<bool>(false, true, false), -23807i, -1i, vec4<i32>(i32(-2147483648), -11908i, 1i, 2147483647i)), 4294967295u, 35389u)), Struct_4(i32(-2147483648), Struct_3(vec3<f32>(259f, -1731f, -1322f), Struct_2(1186f, Struct_1(vec3<bool>(true, false, true), 1i, i32(-2147483648), vec4<i32>(-10698i, -33001i, 1i, 23077i)), 0u, 4294967295u), Struct_2(1457f, Struct_1(vec3<bool>(true, false, true), 29825i, -30606i, vec4<i32>(-1i, 1i, 15732i, -14962i)), 4294967295u, 4294967295u), Struct_2(362f, Struct_1(vec3<bool>(true, false, true), -20965i, -14173i, vec4<i32>(9529i, 0i, -1i, -1996i)), 34061u, 46657u)), vec2<u32>(21167u, 31881u), Struct_2(873f, Struct_1(vec3<bool>(true, true, false), i32(-2147483648), 717i, vec4<i32>(i32(-2147483648), 1i, 1i, -33859i)), 4294967295u, 57382u)), Struct_4(-21405i, Struct_3(vec3<f32>(631f, 1000f, 1128f), Struct_2(-124f, Struct_1(vec3<bool>(false, true, true), 1i, 18612i, vec4<i32>(4733i, 2147483647i, 2147483647i, -19071i)), 38141u, 1u), Struct_2(-467f, Struct_1(vec3<bool>(false, true, false), -21420i, 69i, vec4<i32>(29987i, -40369i, -40108i, i32(-2147483648))), 0u, 4294967295u), Struct_2(-108f, Struct_1(vec3<bool>(true, true, true), i32(-2147483648), 1i, vec4<i32>(i32(-2147483648), -49245i, -45706i, -1i)), 49373u, 4294967295u)), vec2<u32>(0u, 0u), Struct_2(199f, Struct_1(vec3<bool>(true, true, false), 0i, 12663i, vec4<i32>(1i, 11377i, 2147483647i, i32(-2147483648))), 4294967295u, 76477u)), Struct_4(9951i, Struct_3(vec3<f32>(-703f, 403f, 724f), Struct_2(951f, Struct_1(vec3<bool>(false, true, true), 0i, 2147483647i, vec4<i32>(-1i, i32(-2147483648), -1i, -27309i)), 4294967295u, 57665u), Struct_2(-272f, Struct_1(vec3<bool>(false, true, true), 0i, 1i, vec4<i32>(2147483647i, 0i, 34109i, -17347i)), 41900u, 0u), Struct_2(-1000f, Struct_1(vec3<bool>(false, true, true), 23042i, -52359i, vec4<i32>(1i, -39150i, -37146i, -1i)), 1u, 0u)), vec2<u32>(1u, 234u), Struct_2(1751f, Struct_1(vec3<bool>(false, true, true), i32(-2147483648), 1i, vec4<i32>(-52860i, -1i, 1i, 0i)), 37611u, 4294967295u)));

var<private> global2: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-712f, 319f)), -658f))));
    var var_1 = var_0.x;
    let var_2 = ~(~vec4<i32>(50859i, 0i, select(~u_input.e.x, ~u_input.d.x, !global2.x), -u_input.e.x));
    let var_3 = _wgslsmith_sub_u32(max(u_input.b.x, _wgslsmith_div_u32(u_input.c, 1u)), min(u_input.c, u_input.b.x));
    var var_4 = select(vec4<bool>(global2.x, _wgslsmith_div_f32(-907f, _wgslsmith_f_op_f32(floor(-989f))) > _wgslsmith_f_op_f32(round(var_0.x)), true, all(vec2<bool>(true, true))), select(select(!(!vec4<bool>(true, global2.x, global2.x, global2.x)), select(!vec4<bool>(global2.x, global2.x, global2.x, true), !vec4<bool>(global2.x, true, false, true), !vec4<bool>(global2.x, false, global2.x, false)), global2.x), vec4<bool>(any(!vec4<bool>(false, global2.x, true, true)), global2.x, (var_0.x != -351f) && any(vec4<bool>(true, true, true, false)), any(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x)))), !select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(global2.x, true, false, false))), select(!(!(!vec4<bool>(true, global2.x, true, global2.x))), vec4<bool>(select(global2.x, any(vec2<bool>(global2.x, true)), !global2.x), any(!vec3<bool>(global2.x, global2.x, global2.x)), (0u >> (var_3 % 32u)) <= 11549u, all(vec4<bool>(global2.x, true, global2.x, global2.x))), true));
    return false;
}

fn func_2() -> Struct_4 {
    global2 = !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), func_3())));
    global2 = vec2<bool>(true, true);
    var var_0 = u_input.c;
    var var_1 = Struct_3(vec3<f32>(-116f, -938f, _wgslsmith_f_op_f32(select(-571f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-354f))), global2.x))), Struct_2(_wgslsmith_f_op_f32(floor(401f)), Struct_1(!select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, global2.x, global2.x), false), ~(-13282i) & _wgslsmith_dot_vec4_i32(vec4<i32>(39789i, 35860i, u_input.e.x, 41447i), vec4<i32>(33849i, u_input.d.x, u_input.d.x, 6940i)), u_input.e.x, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, -20074i), vec4<i32>(18810i, u_input.d.x, u_input.d.x, 2147483647i))), 1u, 4294967295u), Struct_2(-411f, Struct_1(vec3<bool>(true, all(vec4<bool>(global2.x, global2.x, global2.x, true)), !global2.x), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-136i, u_input.d.x), u_input.e.yz, vec2<bool>(global2.x, true)), _wgslsmith_mult_vec2_i32(u_input.d.yz, u_input.d.yx)), u_input.d.x, vec4<i32>(countOneBits(2147483647i), u_input.d.x, ~u_input.d.x, 7070i & u_input.e.x)), u_input.b.x, u_input.c), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f)), Struct_1(vec3<bool>(true, true, global2.x), -(-2147483647i | u_input.d.x), u_input.d.x ^ countOneBits(-58666i), vec4<i32>(i32(-1i) * -32903i, reverseBits(u_input.e.x), u_input.e.x << (318u % 32u), 1i)), ~u_input.a.x, u_input.b.x));
    global0 = array<Struct_3, 1>();
    return global1[_wgslsmith_index_u32(var_1.b.c, 12u)];
}

fn func_1() -> i32 {
    let var_0 = func_2();
    let var_1 = 44188u;
    var var_2 = var_0.d.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1536f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.d.a)), _wgslsmith_f_op_f32(1486f - 1000f)), _wgslsmith_div_f32(var_0.d.a, _wgslsmith_f_op_f32(-var_0.d.a)), _wgslsmith_f_op_f32(f32(-1f) * -139f))) + vec4<f32>(var_0.b.a.x, var_0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d.a, 1000f)) - _wgslsmith_f_op_f32(ceil(-308f)))), var_0.d.a));
    let var_4 = !select(var_2.a, var_2.a, var_2.a);
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -var_2.d.zz, ~(vec2<i32>(-2147483647i, u_input.d.x) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))) & ~var_0.b.b.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(28440u, ~max(u_input.b.x, ~121789u)), 12u)];
    global2 = select(select(var_0.d.b.a.yy, var_0.b.d.b.a.xx, !all(var_0.b.c.b.a.zy)), vec2<bool>(all(select(select(var_0.b.c.b.a.zz, vec2<bool>(false, true), vec2<bool>(true, var_0.b.b.b.a.x)), !var_0.b.c.b.a.zx, select(vec2<bool>(false, true), vec2<bool>(var_0.b.d.b.a.x, false), vec2<bool>(true, global2.x)))), ~(~var_0.b.d.b.b) != _wgslsmith_sub_i32(func_1(), u_input.e.x)), func_3());
    let var_1 = var_0.b.d.a;
    let var_2 = _wgslsmith_add_vec3_i32(~vec3<i32>(-18815i & var_0.b.d.b.c, u_input.e.x, -1i), -vec3<i32>(17077i, select(var_0.a, -19426i, global2.x), ~u_input.d.x)) | vec3<i32>(-9269i, ~(-16594i), 1i);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.b.a.zz), func_2().b.a.xz)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.a.zx), var_0.b.a.yz));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

