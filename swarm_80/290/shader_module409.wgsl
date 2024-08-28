struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, true, false, false, false, true, true, true, true, true, false, false, false, false, true, true, true, true, true, false, true, true, false, false, true, false, true, false);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<i32, 3> = array<i32, 3>(-1i, 1i, 58316i);

var<private> global3: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec2<u32>(27604u, 18262u), Struct_3(Struct_1(vec2<i32>(0i, 23326i), vec4<u32>(29105u, 30307u, 1u, 85530u), vec4<bool>(true, false, false, true), vec3<i32>(0i, -1i, 27514i)), Struct_2(0u, Struct_1(vec2<i32>(0i, 2147483647i), vec4<u32>(15255u, 1u, 0u, 30100u), vec4<bool>(true, true, true, true), vec3<i32>(-24589i, i32(-2147483648), -65098i))), vec2<i32>(0i, -53560i)), true), Struct_4(vec2<u32>(14448u, 40421u), Struct_3(Struct_1(vec2<i32>(37948i, -1i), vec4<u32>(4294967295u, 49591u, 1u, 1u), vec4<bool>(false, true, true, true), vec3<i32>(i32(-2147483648), -32213i, 1i)), Struct_2(0u, Struct_1(vec2<i32>(-13031i, 2147483647i), vec4<u32>(1727u, 19131u, 0u, 1u), vec4<bool>(true, false, true, false), vec3<i32>(-25859i, 1i, 61264i))), vec2<i32>(72886i, 0i)), true), Struct_4(vec2<u32>(13029u, 26423u), Struct_3(Struct_1(vec2<i32>(11576i, 2147483647i), vec4<u32>(36811u, 1u, 35524u, 4294967295u), vec4<bool>(true, true, true, false), vec3<i32>(-31580i, -24118i, -67601i)), Struct_2(5900u, Struct_1(vec2<i32>(19012i, -16544i), vec4<u32>(0u, 24889u, 35852u, 1u), vec4<bool>(false, false, false, false), vec3<i32>(1i, 31970i, 2147483647i))), vec2<i32>(i32(-2147483648), 26569i)), false), Struct_4(vec2<u32>(4294967295u, 4294967295u), Struct_3(Struct_1(vec2<i32>(8470i, -3533i), vec4<u32>(20018u, 73808u, 38743u, 1u), vec4<bool>(true, false, true, false), vec3<i32>(16002i, 11646i, 8908i)), Struct_2(101443u, Struct_1(vec2<i32>(0i, 0i), vec4<u32>(0u, 17152u, 65036u, 4294967295u), vec4<bool>(false, true, true, true), vec3<i32>(-4293i, 2147483647i, i32(-2147483648)))), vec2<i32>(0i, 42570i)), true), Struct_4(vec2<u32>(78467u, 0u), Struct_3(Struct_1(vec2<i32>(-1i, -1i), vec4<u32>(14318u, 15778u, 1u, 0u), vec4<bool>(true, true, true, true), vec3<i32>(-32830i, 32897i, -10256i)), Struct_2(21751u, Struct_1(vec2<i32>(22511i, -11119i), vec4<u32>(1u, 1u, 57753u, 49512u), vec4<bool>(true, true, true, false), vec3<i32>(1i, 16772i, 47757i))), vec2<i32>(1i, 3607i)), true), Struct_4(vec2<u32>(4381u, 31758u), Struct_3(Struct_1(vec2<i32>(2147483647i, -1i), vec4<u32>(28249u, 55620u, 1u, 3775u), vec4<bool>(true, true, false, true), vec3<i32>(26733i, -931i, -36026i)), Struct_2(1u, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(68487u, 1u, 67629u, 1u), vec4<bool>(false, false, true, false), vec3<i32>(-60381i, -12738i, 56596i))), vec2<i32>(5954i, 2147483647i)), false), Struct_4(vec2<u32>(4294967295u, 1u), Struct_3(Struct_1(vec2<i32>(-9670i, -1i), vec4<u32>(1u, 16150u, 20002u, 0u), vec4<bool>(true, true, false, false), vec3<i32>(-1i, 0i, -3304i)), Struct_2(1u, Struct_1(vec2<i32>(-12200i, -4098i), vec4<u32>(95515u, 4294967295u, 4294967295u, 1u), vec4<bool>(true, true, true, false), vec3<i32>(-2219i, -18858i, -1i))), vec2<i32>(-1589i, 1i)), true), Struct_4(vec2<u32>(1u, 1u), Struct_3(Struct_1(vec2<i32>(0i, 3375i), vec4<u32>(0u, 1u, 26685u, 1u), vec4<bool>(true, false, true, false), vec3<i32>(-1i, i32(-2147483648), 12837i)), Struct_2(32060u, Struct_1(vec2<i32>(-20400i, -1i), vec4<u32>(22156u, 1u, 14616u, 25625u), vec4<bool>(true, false, true, true), vec3<i32>(-26923i, 21645i, -12016i))), vec2<i32>(-8878i, -1i)), false), Struct_4(vec2<u32>(45455u, 4294967295u), Struct_3(Struct_1(vec2<i32>(14416i, 0i), vec4<u32>(51575u, 1u, 4294967295u, 92202u), vec4<bool>(false, false, false, true), vec3<i32>(1i, 78737i, 79692i)), Struct_2(1u, Struct_1(vec2<i32>(0i, -29312i), vec4<u32>(1u, 89611u, 0u, 1u), vec4<bool>(true, true, true, true), vec3<i32>(47812i, -8267i, -87299i))), vec2<i32>(0i, -26508i)), false), Struct_4(vec2<u32>(6448u, 1u), Struct_3(Struct_1(vec2<i32>(-5496i, -1i), vec4<u32>(1u, 65709u, 72396u, 8251u), vec4<bool>(true, false, false, false), vec3<i32>(-13507i, -1i, -2954i)), Struct_2(29242u, Struct_1(vec2<i32>(28735i, 2147483647i), vec4<u32>(4294967295u, 7930u, 1u, 44952u), vec4<bool>(false, true, false, false), vec3<i32>(-100162i, -1i, i32(-2147483648)))), vec2<i32>(2147483647i, i32(-2147483648))), true), Struct_4(vec2<u32>(4093u, 13846u), Struct_3(Struct_1(vec2<i32>(-31957i, 43095i), vec4<u32>(24698u, 0u, 0u, 1u), vec4<bool>(true, true, false, false), vec3<i32>(16368i, 4414i, -42332i)), Struct_2(33037u, Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<u32>(29451u, 17251u, 0u, 4294967295u), vec4<bool>(true, true, false, true), vec3<i32>(0i, 14458i, 0i))), vec2<i32>(41312i, 9870i)), false), Struct_4(vec2<u32>(20229u, 33777u), Struct_3(Struct_1(vec2<i32>(-34989i, 67316i), vec4<u32>(1726u, 1u, 4216u, 4294967295u), vec4<bool>(false, false, true, false), vec3<i32>(29858i, i32(-2147483648), -15759i)), Struct_2(4294967295u, Struct_1(vec2<i32>(99i, 0i), vec4<u32>(0u, 1u, 0u, 101825u), vec4<bool>(false, true, true, true), vec3<i32>(4748i, 1i, i32(-2147483648)))), vec2<i32>(-20304i, -51325i)), false), Struct_4(vec2<u32>(56159u, 68343u), Struct_3(Struct_1(vec2<i32>(38990i, 1i), vec4<u32>(34152u, 42925u, 48731u, 0u), vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, -19961i, 56215i)), Struct_2(47353u, Struct_1(vec2<i32>(-1i, 11951i), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<bool>(false, false, true, false), vec3<i32>(-21383i, -1i, i32(-2147483648)))), vec2<i32>(51991i, -59985i)), true), Struct_4(vec2<u32>(4294967295u, 5123u), Struct_3(Struct_1(vec2<i32>(-9927i, -21146i), vec4<u32>(106719u, 1u, 0u, 16016u), vec4<bool>(false, false, false, true), vec3<i32>(30609i, -1i, -1i)), Struct_2(60589u, Struct_1(vec2<i32>(-85978i, 2147483647i), vec4<u32>(19621u, 1u, 0u, 9564u), vec4<bool>(true, true, true, false), vec3<i32>(-39573i, -76072i, i32(-2147483648)))), vec2<i32>(7354i, -76426i)), false), Struct_4(vec2<u32>(50599u, 4294967295u), Struct_3(Struct_1(vec2<i32>(1i, -9867i), vec4<u32>(8906u, 0u, 14425u, 1u), vec4<bool>(true, false, false, false), vec3<i32>(-68969i, -20775i, 5651i)), Struct_2(1u, Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<u32>(4294967295u, 0u, 1u, 20190u), vec4<bool>(false, false, true, false), vec3<i32>(-4229i, 1i, -1i))), vec2<i32>(-1i, -1i)), true), Struct_4(vec2<u32>(1u, 1463u), Struct_3(Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<u32>(10958u, 54373u, 1u, 1u), vec4<bool>(false, true, false, false), vec3<i32>(-59632i, -9935i, i32(-2147483648))), Struct_2(4294967295u, Struct_1(vec2<i32>(15735i, i32(-2147483648)), vec4<u32>(20299u, 7464u, 39149u, 1u), vec4<bool>(true, false, false, false), vec3<i32>(-32918i, 16285i, 71110i))), vec2<i32>(i32(-2147483648), 2147483647i)), false), Struct_4(vec2<u32>(4294967295u, 83862u), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 7145i), vec4<u32>(46954u, 4294967295u, 100856u, 4294967295u), vec4<bool>(false, false, true, false), vec3<i32>(38153i, -74845i, -1i)), Struct_2(4294967295u, Struct_1(vec2<i32>(1i, 2147483647i), vec4<u32>(13506u, 1u, 1u, 29232u), vec4<bool>(true, false, false, false), vec3<i32>(37871i, -22792i, 41584i))), vec2<i32>(0i, -70968i)), true), Struct_4(vec2<u32>(27872u, 50601u), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 34595i), vec4<u32>(1u, 1u, 1u, 111876u), vec4<bool>(false, false, false, false), vec3<i32>(-45283i, 1i, -41036i)), Struct_2(7424u, Struct_1(vec2<i32>(2147483647i, -44757i), vec4<u32>(0u, 53848u, 8773u, 63646u), vec4<bool>(false, true, false, true), vec3<i32>(-13806i, -33830i, -3155i))), vec2<i32>(-62009i, -1i)), true), Struct_4(vec2<u32>(0u, 10137u), Struct_3(Struct_1(vec2<i32>(34262i, 12211i), vec4<u32>(49271u, 52311u, 4294967295u, 18253u), vec4<bool>(false, false, true, false), vec3<i32>(i32(-2147483648), 0i, 1i)), Struct_2(26130u, Struct_1(vec2<i32>(31038i, 67824i), vec4<u32>(107852u, 25129u, 18462u, 4294967295u), vec4<bool>(true, true, false, false), vec3<i32>(44316i, 6216i, -52036i))), vec2<i32>(0i, -20814i)), false), Struct_4(vec2<u32>(0u, 26606u), Struct_3(Struct_1(vec2<i32>(1i, 1i), vec4<u32>(24809u, 2501u, 109240u, 1u), vec4<bool>(true, false, false, true), vec3<i32>(-61175i, -1i, 0i)), Struct_2(40184u, Struct_1(vec2<i32>(81059i, -41703i), vec4<u32>(91189u, 1u, 0u, 4294967295u), vec4<bool>(false, false, false, true), vec3<i32>(2147483647i, -27753i, i32(-2147483648)))), vec2<i32>(-27481i, 2147483647i)), false), Struct_4(vec2<u32>(4294967295u, 10960u), Struct_3(Struct_1(vec2<i32>(-10288i, -52024i), vec4<u32>(42845u, 29746u, 3169u, 4294967295u), vec4<bool>(false, true, false, false), vec3<i32>(-12681i, -26560i, i32(-2147483648))), Struct_2(0u, Struct_1(vec2<i32>(-1i, 0i), vec4<u32>(14162u, 0u, 56395u, 31830u), vec4<bool>(true, true, true, false), vec3<i32>(0i, 0i, 1i))), vec2<i32>(0i, 6870i)), true), Struct_4(vec2<u32>(23956u, 0u), Struct_3(Struct_1(vec2<i32>(2147483647i, 0i), vec4<u32>(13353u, 4294967295u, 4294967295u, 4294967295u), vec4<bool>(false, false, false, true), vec3<i32>(11793i, 2750i, 56636i)), Struct_2(0u, Struct_1(vec2<i32>(39492i, 2147483647i), vec4<u32>(1u, 1u, 1u, 6346u), vec4<bool>(false, false, true, false), vec3<i32>(-20157i, 2147483647i, 2147483647i))), vec2<i32>(6258i, 0i)), false), Struct_4(vec2<u32>(0u, 4294967295u), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec4<u32>(0u, 4754u, 100629u, 1u), vec4<bool>(false, false, false, true), vec3<i32>(-2774i, -22151i, 6361i)), Struct_2(1u, Struct_1(vec2<i32>(i32(-2147483648), -9117i), vec4<u32>(36017u, 0u, 18829u, 8694u), vec4<bool>(false, false, true, true), vec3<i32>(0i, 2147483647i, 60565i))), vec2<i32>(19366i, 4589i)), true), Struct_4(vec2<u32>(0u, 26552u), Struct_3(Struct_1(vec2<i32>(1i, 2453i), vec4<u32>(3458u, 1u, 11949u, 1u), vec4<bool>(false, false, true, false), vec3<i32>(2147483647i, -8519i, 36571i)), Struct_2(4294967295u, Struct_1(vec2<i32>(25776i, 1i), vec4<u32>(41665u, 36172u, 5977u, 84299u), vec4<bool>(false, false, true, true), vec3<i32>(29568i, 0i, -50036i))), vec2<i32>(2147483647i, -20019i)), true), Struct_4(vec2<u32>(4294967295u, 21299u), Struct_3(Struct_1(vec2<i32>(1i, 2147483647i), vec4<u32>(20775u, 1u, 23604u, 4294967295u), vec4<bool>(false, true, true, true), vec3<i32>(0i, -3163i, -1i)), Struct_2(30820u, Struct_1(vec2<i32>(0i, -1i), vec4<u32>(38561u, 5037u, 8338u, 61271u), vec4<bool>(true, false, true, false), vec3<i32>(-12754i, 16082i, 2147483647i))), vec2<i32>(0i, 45894i)), true), Struct_4(vec2<u32>(4294967295u, 48076u), Struct_3(Struct_1(vec2<i32>(1i, 0i), vec4<u32>(45071u, 50792u, 1u, 42328u), vec4<bool>(true, true, true, false), vec3<i32>(-38368i, 0i, 8117i)), Struct_2(7996u, Struct_1(vec2<i32>(3740i, -1i), vec4<u32>(33617u, 67618u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, true), vec3<i32>(80960i, 30943i, 16135i))), vec2<i32>(2147483647i, -32935i)), true), Struct_4(vec2<u32>(0u, 4294967295u), Struct_3(Struct_1(vec2<i32>(11290i, i32(-2147483648)), vec4<u32>(413u, 28449u, 71845u, 0u), vec4<bool>(true, false, false, true), vec3<i32>(-1i, 31335i, 1i)), Struct_2(40178u, Struct_1(vec2<i32>(11497i, 56383i), vec4<u32>(33977u, 71228u, 75883u, 0u), vec4<bool>(false, true, true, true), vec3<i32>(0i, 0i, 0i))), vec2<i32>(14696i, -14444i)), true), Struct_4(vec2<u32>(0u, 0u), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), -6870i), vec4<u32>(1u, 1u, 0u, 20492u), vec4<bool>(false, false, false, false), vec3<i32>(-33910i, -1i, 1i)), Struct_2(0u, Struct_1(vec2<i32>(0i, -48301i), vec4<u32>(36108u, 4294967295u, 0u, 4294967295u), vec4<bool>(true, true, true, false), vec3<i32>(i32(-2147483648), -24159i, 1i))), vec2<i32>(-1i, -18006i)), false), Struct_4(vec2<u32>(24777u, 1u), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<bool>(false, true, false, false), vec3<i32>(13694i, -1i, -22162i)), Struct_2(66652u, Struct_1(vec2<i32>(67739i, i32(-2147483648)), vec4<u32>(4294967295u, 17628u, 1u, 6209u), vec4<bool>(false, true, true, true), vec3<i32>(1i, -2150i, 18513i))), vec2<i32>(14404i, 1i)), true), Struct_4(vec2<u32>(35193u, 13074u), Struct_3(Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<u32>(58013u, 0u, 73954u, 0u), vec4<bool>(false, true, false, false), vec3<i32>(1i, -11904i, -1i)), Struct_2(4294967295u, Struct_1(vec2<i32>(-5362i, 71744i), vec4<u32>(1u, 44736u, 1u, 27866u), vec4<bool>(false, false, true, false), vec3<i32>(-1i, 50896i, 17418i))), vec2<i32>(42234i, i32(-2147483648))), false));

var<private> global4: array<vec4<u32>, 4>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = 50395u | _wgslsmith_dot_vec4_u32(vec4<u32>(~select(0u, 4294967295u, true), firstLeadingBit(~6717u), _wgslsmith_clamp_u32(arg_1.a, arg_0.a.b.x, _wgslsmith_clamp_u32(arg_1.a, 19802u, 48931u)), arg_0.a.b.x), min(reverseBits(global4[_wgslsmith_index_u32(23047u, 4u)]), select(global4[_wgslsmith_index_u32(40622u, 4u)], vec4<u32>(arg_0.a.b.x, arg_1.b.b.x, 4294967295u, arg_1.a), vec4<bool>(false, arg_0.a.c.x, false, true))) << (abs(firstTrailingBit(arg_1.b.b)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_add_vec4_u32(global4[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_mult_u32(1u, arg_1.b.b.x)), 4u)], arg_1.b.b);
    global3 = array<Struct_4, 30>();
    global1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(-abs(_wgslsmith_div_i32(arg_1.b.d.x, -15710i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(4809i, arg_1.b.d.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2030u, var_0, 8733u, 1780u), vec4<u32>(arg_0.b.a, 0u, 4294967295u, arg_1.a)), 3u)]), min(arg_1.b.a.x, arg_0.c.x ^ 1i), -33463i)), u_input.a.x, _wgslsmith_mult_i32(~10862i, arg_1.b.d.x));
    var var_2 = Struct_3(arg_1.b, Struct_2(arg_0.b.a, arg_1.b), vec2<i32>(-2147483647i, 1i));
    return vec3<i32>(1i, 0i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, arg_0.b.b.d.x, global2[_wgslsmith_index_u32(1u, 3u)] ^ u_input.a.x, firstLeadingBit(var_2.a.a.x))), ~u_input.a));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(max(arg_0, -997f)))))) + 1000f);
    global2 = array<i32, 3>();
    var var_1 = 29619u;
    var var_2 = Struct_2(~reverseBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1.b.x, arg_1.b.x), 1u)), Struct_1(u_input.a.yy, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, 0u, arg_1.b.x), global4[_wgslsmith_index_u32(arg_1.b.x, 4u)]), reverseBits(vec4<u32>(arg_1.b.x, 4294967295u, 11088u, arg_1.b.x))), ~(vec4<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 47565u) >> (global4[_wgslsmith_index_u32(arg_1.b.x, 4u)] % vec4<u32>(32u)))), arg_1.c, func_3(Struct_3(Struct_1(vec2<i32>(-15234i, arg_1.a.x), vec4<u32>(arg_1.b.x, arg_1.b.x, 1u, arg_1.b.x), arg_1.c, vec3<i32>(-15830i, 12040i, 37072i)), Struct_2(0u, arg_1), vec2<i32>(u_input.a.x, -36363i) & vec2<i32>(arg_1.a.x, -1i)), Struct_2(arg_1.b.x, arg_1))));
    var var_3 = var_2.b;
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> u32 {
    global0 = array<bool, 29>();
    let var_0 = arg_1.b.c.x;
    let var_1 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * -1000f) + _wgslsmith_f_op_f32(667f - 1374f))))), arg_1.b, -1000f);
    var var_2 = var_1.b.x;
    let var_3 = Struct_3(var_1, Struct_2(503u, Struct_1(vec2<i32>(1i, i32(-1i) * -7638i), ~var_1.b, func_2(arg_3, func_2(-672f, arg_1.b, arg_3), 1313f).c, vec3<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(arg_2, 3u)], 20997i), 20203i, global2[_wgslsmith_index_u32(var_1.b.x, 3u)]))), -arg_1.b.a);
    return ~28090u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(~u_input.a.x);
    var var_1 = abs(_wgslsmith_mult_u32(22220u, ~(~func_1(false, Struct_2(64198u, Struct_1(u_input.a.xy, vec4<u32>(57120u, 1u, 0u, 0u), vec4<bool>(global0[_wgslsmith_index_u32(51180u, 29u)], global0[_wgslsmith_index_u32(18137u, 29u)], global0[_wgslsmith_index_u32(52258u, 29u)], false), vec3<i32>(32919i, -1i, var_0))), 1u, 1327f))));
    let var_2 = all(vec4<bool>(func_2(1275f, Struct_1(abs(u_input.a.xy), global4[_wgslsmith_index_u32(87626u, 4u)], select(vec4<bool>(global0[_wgslsmith_index_u32(87383u, 29u)], false, false, global0[_wgslsmith_index_u32(15282u, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 29u)], false, global0[_wgslsmith_index_u32(5325u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), global0[_wgslsmith_index_u32(43005u, 29u)]), -u_input.a.yxx), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2827f, -374f), _wgslsmith_f_op_f32(trunc(1223f))))).c.x, u_input.a.x >= var_0, global0[_wgslsmith_index_u32(1u, 29u)], !(firstTrailingBit(26697u) >= ~1u)));
    var var_3 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 26269u, 7653u), 13516u, ~0u), ~vec3<u32>(0u, 49268u, 69020u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1336f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f + -1349f) * -1766f), -851f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(-1296f, 915f, false)), _wgslsmith_f_op_f32(-389f * 556f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-178f, -1872f, 1000f) * vec3<f32>(816f, 917f, 567f)))))));
    let var_5 = Struct_5(func_2(_wgslsmith_f_op_f32(-var_4.x), Struct_1(u_input.a.zz, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 32284u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, 1u, var_3.x, 1u), vec4<u32>(var_3.x, var_3.x, 0u, var_3.x))), vec4<bool>(true, func_2(1174f, Struct_1(u_input.a.yw, vec4<u32>(0u, var_3.x, 1u, var_3.x), vec4<bool>(true, var_2, true, true), u_input.a.yzx), var_4.x).c.x, false, all(vec4<bool>(global0[_wgslsmith_index_u32(var_3.x, 29u)], true, var_2, var_2))), vec3<i32>(-84746i, _wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yw), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.x + 924f), _wgslsmith_f_op_f32(407f + var_4.x)))))));
    var var_6 = !all(vec4<bool>(true, var_2, true, var_2));
    var var_7 = var_5.a.b.wxx;
    var var_8 = Struct_2(0u, Struct_1(u_input.a.yx, select(~var_5.a.b, (var_5.a.b << (global4[_wgslsmith_index_u32(var_3.x, 4u)] % vec4<u32>(32u))) << (firstTrailingBit(var_5.a.b) % vec4<u32>(32u)), _wgslsmith_div_i32(var_5.a.d.x, global2[_wgslsmith_index_u32(var_3.x, 3u)]) != -1i), vec4<bool>(!(1i >= global2[_wgslsmith_index_u32(var_7.x, 3u)]), false, var_5.a.c.x, var_2), var_5.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_4.x))));
}

