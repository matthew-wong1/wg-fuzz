struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-292f, 702f, -1000f), vec3<f32>(3359f, -511f, -890f), vec3<f32>(-1575f, 1668f, 1012f), vec3<f32>(-925f, -493f, 1805f), vec3<f32>(-1337f, -705f, 585f), vec3<f32>(106f, 449f, 1000f), vec3<f32>(1000f, 652f, -244f), vec3<f32>(-1259f, -112f, 307f));

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec3<i32>(4275i, i32(-2147483648), 1i), Struct_1(1i, false, vec2<bool>(true, false), vec3<i32>(1i, 23246i, i32(-2147483648)), 28034u), Struct_1(-14832i, true, vec2<bool>(true, true), vec3<i32>(0i, 0i, 0i), 4294967295u), Struct_1(0i, false, vec2<bool>(false, true), vec3<i32>(2147483647i, -31205i, -1i), 21707u), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(0i, i32(-2147483648), -49731i), Struct_1(-29578i, false, vec2<bool>(false, true), vec3<i32>(51977i, 38094i, 81176i), 45256u), Struct_1(0i, false, vec2<bool>(false, true), vec3<i32>(54158i, 1i, 5967i), 23047u), Struct_1(6976i, false, vec2<bool>(false, true), vec3<i32>(1i, -58440i, 0i), 32308u), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(49751i, 540i, -1i), Struct_1(0i, true, vec2<bool>(false, true), vec3<i32>(-1i, i32(-2147483648), 12870i), 44774u), Struct_1(0i, false, vec2<bool>(false, false), vec3<i32>(-1i, 1i, 1i), 0u), Struct_1(4670i, true, vec2<bool>(false, true), vec3<i32>(-1i, i32(-2147483648), -37779i), 1u), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(1i, i32(-2147483648), -17282i), Struct_1(20578i, false, vec2<bool>(false, true), vec3<i32>(0i, -34238i, -34996i), 48209u), Struct_1(-1i, false, vec2<bool>(true, true), vec3<i32>(-38424i, -28781i, i32(-2147483648)), 0u), Struct_1(65537i, true, vec2<bool>(true, true), vec3<i32>(1i, 1i, 19498i), 0u), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(0i, 11536i, 1i), Struct_1(137i, true, vec2<bool>(true, false), vec3<i32>(0i, i32(-2147483648), -9630i), 14260u), Struct_1(0i, false, vec2<bool>(true, true), vec3<i32>(0i, -4621i, -25571i), 13074u), Struct_1(-1i, true, vec2<bool>(true, true), vec3<i32>(1i, -2271i, -1i), 19744u), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(31186i, -30819i, -37645i), Struct_1(-17855i, false, vec2<bool>(true, false), vec3<i32>(-17182i, -21973i, -42476i), 59704u), Struct_1(75810i, false, vec2<bool>(true, false), vec3<i32>(29227i, 0i, -22180i), 37955u), Struct_1(-21699i, false, vec2<bool>(false, false), vec3<i32>(0i, -68723i, -22312i), 4294967295u), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(2147483647i, 0i, 12714i), Struct_1(-9534i, false, vec2<bool>(false, false), vec3<i32>(-1i, 2147483647i, -9032i), 1u), Struct_1(i32(-2147483648), true, vec2<bool>(false, false), vec3<i32>(-1i, -2621i, 2147483647i), 1u), Struct_1(34546i, false, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 0i, -52854i), 53873u), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(i32(-2147483648), -1i, 0i), Struct_1(20182i, false, vec2<bool>(true, true), vec3<i32>(-1i, 1i, -1i), 5292u), Struct_1(i32(-2147483648), false, vec2<bool>(false, false), vec3<i32>(-89i, 0i, 2147483647i), 0u), Struct_1(-37428i, true, vec2<bool>(false, true), vec3<i32>(-1i, 1i, -1i), 0u), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(0i, -54904i, 2147483647i), Struct_1(16614i, true, vec2<bool>(true, false), vec3<i32>(0i, -3163i, 27866i), 58925u), Struct_1(50833i, false, vec2<bool>(true, false), vec3<i32>(16283i, -18242i, 2147483647i), 4294967295u), Struct_1(1i, true, vec2<bool>(true, true), vec3<i32>(-5753i, -16228i, -1i), 42897u), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(92i, -21972i, -1i), Struct_1(20576i, true, vec2<bool>(false, true), vec3<i32>(1i, 0i, 34562i), 35323u), Struct_1(i32(-2147483648), true, vec2<bool>(true, true), vec3<i32>(46454i, 62464i, 0i), 0u), Struct_1(i32(-2147483648), false, vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 20919i, i32(-2147483648)), 8163u), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(i32(-2147483648), 697i, i32(-2147483648)), Struct_1(751i, true, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), 35788u), Struct_1(1i, false, vec2<bool>(true, true), vec3<i32>(25346i, 0i, 2147483647i), 0u), Struct_1(12619i, true, vec2<bool>(true, false), vec3<i32>(2147483647i, 0i, 0i), 1u), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(-1i, 0i, 39764i), Struct_1(0i, false, vec2<bool>(true, false), vec3<i32>(-1i, -7378i, i32(-2147483648)), 38147u), Struct_1(1265i, true, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -14955i, 0i), 13097u), Struct_1(1i, true, vec2<bool>(true, false), vec3<i32>(-27011i, -1i, 48369i), 1u), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(19386i, 0i, 14954i), Struct_1(1i, true, vec2<bool>(false, false), vec3<i32>(-10121i, i32(-2147483648), -5724i), 235u), Struct_1(-1i, false, vec2<bool>(false, true), vec3<i32>(0i, 15610i, -39946i), 1u), Struct_1(i32(-2147483648), true, vec2<bool>(false, true), vec3<i32>(425i, -24111i, 0i), 4294967295u), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -28783i), Struct_1(i32(-2147483648), false, vec2<bool>(false, false), vec3<i32>(-42961i, 5947i, 24935i), 43025u), Struct_1(17948i, true, vec2<bool>(true, true), vec3<i32>(16329i, i32(-2147483648), -33013i), 0u), Struct_1(-16838i, false, vec2<bool>(false, true), vec3<i32>(62814i, -23817i, 8822i), 23670u), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(i32(-2147483648), 0i, 13270i), Struct_1(54477i, true, vec2<bool>(true, false), vec3<i32>(-31292i, 40887i, -22561i), 48346u), Struct_1(1i, false, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 30318u), Struct_1(8868i, false, vec2<bool>(false, false), vec3<i32>(-1i, -1951i, -14559i), 4294967295u), vec3<bool>(false, false, false)), Struct_2(vec3<i32>(-55177i, 6095i, -24524i), Struct_1(-35i, true, vec2<bool>(true, false), vec3<i32>(37513i, -60978i, -5708i), 1u), Struct_1(0i, false, vec2<bool>(true, true), vec3<i32>(-1i, 2147483647i, 2147483647i), 1u), Struct_1(0i, false, vec2<bool>(true, false), vec3<i32>(-17551i, 1i, 2147483647i), 0u), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(-61189i, 0i, i32(-2147483648)), Struct_1(-22465i, false, vec2<bool>(true, true), vec3<i32>(1i, -1i, -39054i), 33299u), Struct_1(-1i, true, vec2<bool>(true, false), vec3<i32>(2147483647i, 53707i, -13816i), 1u), Struct_1(-2856i, false, vec2<bool>(true, false), vec3<i32>(948i, 39805i, 2147483647i), 1u), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(54176i, -9161i, i32(-2147483648)), Struct_1(15397i, false, vec2<bool>(true, false), vec3<i32>(1i, 2147483647i, -1i), 18416u), Struct_1(i32(-2147483648), true, vec2<bool>(true, true), vec3<i32>(0i, -45813i, 0i), 32144u), Struct_1(-1i, false, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 2147483647i, -3578i), 0u), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(37296i, -43564i, 1i), Struct_1(2147483647i, false, vec2<bool>(true, false), vec3<i32>(2147483647i, -1i, 2147483647i), 0u), Struct_1(4158i, false, vec2<bool>(true, true), vec3<i32>(46693i, -1i, i32(-2147483648)), 83904u), Struct_1(i32(-2147483648), true, vec2<bool>(true, true), vec3<i32>(0i, 37373i, i32(-2147483648)), 0u), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(i32(-2147483648), 1i, 41035i), Struct_1(-14897i, false, vec2<bool>(false, false), vec3<i32>(-15637i, 0i, -8553i), 4294967295u), Struct_1(4744i, false, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 24777i, 0i), 4294967295u), Struct_1(59666i, true, vec2<bool>(true, false), vec3<i32>(17484i, 5617i, 1i), 4294967295u), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(0i, 10759i, 2147483647i), Struct_1(0i, true, vec2<bool>(true, false), vec3<i32>(0i, -14079i, 1i), 1u), Struct_1(0i, false, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -35120i, 24526i), 31994u), Struct_1(-1i, true, vec2<bool>(false, true), vec3<i32>(1i, -17889i, -13126i), 44945u), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(1i, -52212i, 2147483647i), Struct_1(1i, true, vec2<bool>(false, true), vec3<i32>(2147483647i, 2147483647i, 0i), 0u), Struct_1(-62037i, false, vec2<bool>(true, true), vec3<i32>(-88762i, 1i, i32(-2147483648)), 8660u), Struct_1(55459i, false, vec2<bool>(true, false), vec3<i32>(-1i, -12631i, 0i), 0u), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(5748i, 0i, 39473i), Struct_1(1i, true, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 28801i, 1i), 0u), Struct_1(-4295i, true, vec2<bool>(true, true), vec3<i32>(28699i, i32(-2147483648), 2147483647i), 1u), Struct_1(i32(-2147483648), true, vec2<bool>(false, false), vec3<i32>(-36228i, -11916i, 2147483647i), 4294967295u), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(i32(-2147483648), -5807i, i32(-2147483648)), Struct_1(-1i, true, vec2<bool>(true, true), vec3<i32>(31059i, -6765i, -31378i), 12675u), Struct_1(10106i, false, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -22877i, 49181i), 11774u), Struct_1(1i, true, vec2<bool>(true, false), vec3<i32>(8732i, i32(-2147483648), 46672i), 24743u), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(29361i, 0i, 7593i), Struct_1(1i, true, vec2<bool>(true, false), vec3<i32>(-6360i, 2147483647i, -48272i), 2807u), Struct_1(i32(-2147483648), true, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 2147483647i, 211i), 0u), Struct_1(22523i, true, vec2<bool>(true, false), vec3<i32>(2147483647i, 11619i, -42223i), 0u), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(-4170i, -1i, -17234i), Struct_1(1i, false, vec2<bool>(false, false), vec3<i32>(4626i, -1i, 3395i), 33512u), Struct_1(0i, false, vec2<bool>(true, true), vec3<i32>(2147483647i, 26706i, 19728i), 19976u), Struct_1(i32(-2147483648), true, vec2<bool>(true, false), vec3<i32>(-1i, 40359i, -1868i), 0u), vec3<bool>(false, false, true)));

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(0i, false, vec2<bool>(true, true), vec3<i32>(2147483647i, 21136i, 15455i), 1u), Struct_1(-48971i, false, vec2<bool>(true, false), vec3<i32>(-1i, -20005i, i32(-2147483648)), 17861u), Struct_1(-12199i, true, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), 26151u), Struct_1(1i, true, vec2<bool>(true, false), vec3<i32>(1i, 2147483647i, i32(-2147483648)), 36640u), Struct_1(i32(-2147483648), true, vec2<bool>(false, false), vec3<i32>(48619i, -32715i, 2147483647i), 4294967295u), Struct_1(-8827i, false, vec2<bool>(false, false), vec3<i32>(4829i, -1i, 0i), 1u), Struct_1(1i, false, vec2<bool>(false, false), vec3<i32>(1i, 46548i, 7605i), 31641u), Struct_1(31080i, true, vec2<bool>(true, true), vec3<i32>(46273i, 2147483647i, i32(-2147483648)), 29633u), Struct_1(-1i, false, vec2<bool>(true, false), vec3<i32>(2147483647i, 47224i, -30093i), 4294967295u), Struct_1(-20416i, false, vec2<bool>(false, false), vec3<i32>(2147483647i, -22733i, i32(-2147483648)), 12677u), Struct_1(-8276i, true, vec2<bool>(false, false), vec3<i32>(2147483647i, -35012i, 0i), 44972u), Struct_1(-11327i, false, vec2<bool>(false, false), vec3<i32>(32759i, 33607i, -23898i), 4294967295u), Struct_1(i32(-2147483648), false, vec2<bool>(false, false), vec3<i32>(-1i, -840i, 23302i), 1u), Struct_1(-1i, false, vec2<bool>(true, false), vec3<i32>(0i, 0i, 0i), 0u), Struct_1(i32(-2147483648), true, vec2<bool>(true, true), vec3<i32>(2147483647i, 24592i, 0i), 1u), Struct_1(3162i, true, vec2<bool>(true, true), vec3<i32>(-45284i, 0i, -32067i), 4294967295u), Struct_1(1952i, true, vec2<bool>(false, true), vec3<i32>(-1414i, -1i, -35968i), 13498u), Struct_1(i32(-2147483648), false, vec2<bool>(true, false), vec3<i32>(-1i, -14247i, 14089i), 23634u), Struct_1(-10036i, true, vec2<bool>(true, false), vec3<i32>(47354i, 14543i, -18439i), 22594u), Struct_1(-56975i, false, vec2<bool>(false, true), vec3<i32>(19512i, 36347i, -51012i), 0u), Struct_1(9336i, true, vec2<bool>(true, false), vec3<i32>(17522i, 43789i, i32(-2147483648)), 1u), Struct_1(-24119i, true, vec2<bool>(true, false), vec3<i32>(12855i, 2147483647i, -18007i), 24392u), Struct_1(-21077i, false, vec2<bool>(false, true), vec3<i32>(0i, 2147483647i, -15166i), 50662u), Struct_1(-12952i, false, vec2<bool>(true, true), vec3<i32>(1i, -28720i, -36028i), 10401u), Struct_1(1i, true, vec2<bool>(true, true), vec3<i32>(1i, 92476i, 1i), 1u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = true;
    return _wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x), ~u_input.a << (u_input.a % vec4<u32>(32u)), select(!vec4<bool>(var_0, false, var_0, true), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, var_0, true, false)), select(vec4<bool>(true, false, false, var_0), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, var_0, false, var_0)))), _wgslsmith_sub_vec4_u32(~u_input.a << (u_input.a % vec4<u32>(32u)), ~(vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, u_input.b.x) << (vec4<u32>(4294967295u, 4294967295u, 85263u, u_input.b.x) % vec4<u32>(32u))))) << (u_input.b.x % 32u);
}

fn func_3() -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = -5145i;
    let var_2 = vec3<i32>(-19914i, _wgslsmith_sub_i32(13707i, select(_wgslsmith_div_i32(2147483647i, i32(-1i) * -1i), 1i, all(vec2<bool>(true, true)))), -min(_wgslsmith_sub_i32(-13769i, 0i) >> (u_input.b.x % 32u), -abs(-33538i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-154f * 1679f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-428f, -403f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -776f), -643f)), -1083f) * vec4<f32>(_wgslsmith_f_op_f32(floor(-501f)), 430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-272f, 135f))), _wgslsmith_div_f32(-1561f, _wgslsmith_f_op_f32(f32(-1f) * -1422f)))));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x - -116f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, -320f, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), 1000f);
    return ~68626u;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(24172u, abs(arg_1)), 26u)];
    let var_1 = ((~1u == ~abs(arg_1)) && (func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)) == func_3())) || true;
    var_0 = Struct_2(var_0.d.d, Struct_1(var_0.b.d.x, 3141i <= countOneBits(select(-1i, arg_3, var_0.b.c.x)), select(select(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(var_0.e.x, var_0.e.x), var_0.b.b), select(var_0.d.c, vec2<bool>(var_0.e.x, var_1), arg_0.x), arg_0.zy), vec2<bool>(all(var_0.e.zy), false), select(!arg_0.zx, select(vec2<bool>(true, var_0.d.b), var_0.d.c, arg_0.x), true)), reverseBits(select(~vec3<i32>(59768i, var_0.a.x, 74499i), abs(vec3<i32>(44749i, 2147483647i, -19340i)), !vec3<bool>(arg_0.x, false, var_1))), ~arg_1), var_0.b, Struct_1(~(-arg_3), true, vec2<bool>(-arg_3 <= reverseBits(var_0.c.d.x), _wgslsmith_clamp_i32(2147483647i, arg_3, arg_3) < (var_0.a.x << (arg_1 % 32u))), vec3<i32>(-(i32(-1i) * -16505i), abs(-13540i), ~var_0.b.d.x), ~_wgslsmith_add_u32(u_input.a.x, ~u_input.b.x)), !select(!arg_0.xxy, arg_0.yyx, select(false, var_0.b.b, true) != true));
    let var_2 = vec2<i32>(arg_3, -45979i);
    var var_3 = 11267u;
    return Struct_1(-abs(var_0.c.a), true, !(!select(vec2<bool>(var_0.d.c.x, var_1), select(vec2<bool>(var_1, var_1), var_0.b.c, arg_0.x), select(false, false, false))), vec3<i32>(9502i, var_2.x, ~var_2.x), var_0.d.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec4<bool> {
    return select(vec4<bool>(1976f >= _wgslsmith_f_op_f32(-arg_2), arg_0.b.c.x, func_1(select(vec4<bool>(true, arg_1.c.x, arg_0.e.x, arg_0.c.c.x), vec4<bool>(arg_1.b, false, arg_0.e.x, true), vec4<bool>(arg_1.b, true, false, arg_0.c.c.x)), ~2423u, arg_2, _wgslsmith_dot_vec2_i32(arg_1.d.zy, vec2<i32>(arg_1.a, arg_0.c.a))).a >= -10077i, ~(~arg_0.b.a) >= -2147483647i), !vec4<bool>(!(arg_1.d.x <= 54257i), arg_1.b, false, !any(arg_0.e)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global1[_wgslsmith_index_u32(~(~(~(4294967295u | u_input.b.x))), 26u)], func_1(!vec4<bool>(true, true, any(vec3<bool>(false, true, false)), false), min(u_input.a.x, 1u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1089f))), -1i), _wgslsmith_f_op_f32(exp2(1f)), u_input.a.x);
    let var_1 = global1[_wgslsmith_index_u32(~(~(~u_input.b.x)), 26u)];
    var var_2 = reverseBits(u_input.b);
    let var_3 = -_wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(-1i, 537i, 9586i)) | ~(var_1.c.a >> (62811u % 32u)), var_1.a.x);
    let var_4 = -960f;
    var var_5 = Struct_2(select(select(vec3<i32>(2147483647i, var_3, var_1.c.a), firstLeadingBit(vec3<i32>(var_3, -37788i, 2147483647i)), (var_1.c.b == true) & any(vec4<bool>(var_0.x, false, true, var_1.c.c.x))), _wgslsmith_sub_vec3_i32(~max(vec3<i32>(var_1.a.x, var_1.b.d.x, -51831i), var_1.a), var_1.c.d | var_1.a), select(func_4(global1[_wgslsmith_index_u32(17422u, 26u)], func_1(vec4<bool>(var_1.c.c.x, true, var_0.x, var_1.d.c.x), 4294967295u, -253f, var_3), 339f, 4294967295u).xzx, vec3<bool>(var_0.x, var_1.b.b, var_0.x), true)), global2[_wgslsmith_index_u32(4294967295u, 25u)], var_1.d, func_1(!vec4<bool>(var_1.c.c.x, var_0.x & false, any(var_1.d.c), true), _wgslsmith_mult_u32(var_2.x, 13621u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(330f - -934f) * _wgslsmith_f_op_f32(613f * var_4)))), -_wgslsmith_sub_i32(-var_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.a, 1i, var_1.b.d.x), vec3<i32>(-16800i, -30294i, -47219i)))), select(func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(8851u, u_input.b.x), 26u)], Struct_1(countOneBits(var_3), true, !vec2<bool>(var_0.x, true), var_1.a, _wgslsmith_mult_u32(4294967295u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4))), abs(_wgslsmith_mod_u32(11700u, var_2.x))).wzx, vec3<bool>(!var_1.b.b, true, true | var_1.e.x), vec3<bool>(false, true, func_4(Struct_2(vec3<i32>(var_3, var_1.a.x, var_3), global2[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(var_3, false, vec2<bool>(true, false), var_1.a, 4294967295u), Struct_1(var_1.d.d.x, true, vec2<bool>(true, var_1.e.x), var_1.b.d, u_input.b.x), var_1.e), global2[_wgslsmith_index_u32(~u_input.b.x, 25u)], _wgslsmith_div_f32(1440f, var_4), var_2.x).x)));
    var_5 = global1[_wgslsmith_index_u32(0u, 26u)];
    global0 = array<vec3<f32>, 8>();
    let var_6 = -879f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.d.yz, -firstTrailingBit(abs(abs(vec4<i32>(var_1.c.d.x, var_5.a.x, var_1.c.d.x, var_1.d.a)))), select(firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, var_5.d.d.x, var_1.d.a, 2147483647i), vec4<i32>(-37332i, 2147483647i, var_5.d.a, var_3)), -vec4<i32>(var_1.b.d.x, 0i, 29933i, -2147483647i))), reverseBits(min(firstLeadingBit(vec4<i32>(var_5.a.x, 1i, -2147483647i, var_5.d.d.x)), vec4<i32>(var_5.d.a, 0i, var_1.a.x, var_1.a.x) | vec4<i32>(var_5.a.x, 43593i, var_3, 2147483647i))), var_0.x), ~0u);
}

