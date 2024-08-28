struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(29425i, Struct_2(Struct_1(1i, vec4<u32>(13349u, 16045u, 55753u, 72949u), vec3<bool>(true, true, false), 1i)), Struct_1(1i, vec4<u32>(1u, 4294967295u, 7578u, 0u), vec3<bool>(false, false, false), 5728i)), Struct_3(0i, Struct_2(Struct_1(1i, vec4<u32>(4294967295u, 131929u, 0u, 32563u), vec3<bool>(true, false, true), 18844i)), Struct_1(-1i, vec4<u32>(4294967295u, 0u, 0u, 0u), vec3<bool>(false, false, false), 46920i)), Struct_3(-7012i, Struct_2(Struct_1(0i, vec4<u32>(38772u, 0u, 3112u, 9966u), vec3<bool>(true, false, false), -1i)), Struct_1(-17083i, vec4<u32>(1u, 11940u, 0u, 4294967295u), vec3<bool>(false, true, true), -17745i)), Struct_3(i32(-2147483648), Struct_2(Struct_1(1i, vec4<u32>(97466u, 53719u, 0u, 60351u), vec3<bool>(false, false, false), 1i)), Struct_1(34298i, vec4<u32>(82902u, 0u, 0u, 4294967295u), vec3<bool>(true, false, true), 1i)), Struct_3(22578i, Struct_2(Struct_1(27971i, vec4<u32>(0u, 0u, 46806u, 4294967295u), vec3<bool>(false, true, true), 0i)), Struct_1(-1i, vec4<u32>(0u, 11025u, 0u, 4294967295u), vec3<bool>(false, false, false), 0i)), Struct_3(0i, Struct_2(Struct_1(17667i, vec4<u32>(0u, 55537u, 46798u, 4294967295u), vec3<bool>(true, false, true), -46045i)), Struct_1(2147483647i, vec4<u32>(4939u, 0u, 0u, 34886u), vec3<bool>(false, true, true), i32(-2147483648))), Struct_3(34482i, Struct_2(Struct_1(21288i, vec4<u32>(4294967295u, 4294967295u, 54091u, 70723u), vec3<bool>(true, false, false), 361i)), Struct_1(i32(-2147483648), vec4<u32>(35220u, 60750u, 0u, 44173u), vec3<bool>(true, true, false), -31164i)), Struct_3(1i, Struct_2(Struct_1(94925i, vec4<u32>(63168u, 1u, 4294967295u, 31205u), vec3<bool>(true, true, true), 42860i)), Struct_1(2147483647i, vec4<u32>(54190u, 0u, 4294967295u, 77491u), vec3<bool>(false, true, false), i32(-2147483648))), Struct_3(2147483647i, Struct_2(Struct_1(0i, vec4<u32>(52495u, 4294967295u, 396u, 2533u), vec3<bool>(false, true, false), 0i)), Struct_1(1i, vec4<u32>(25089u, 73935u, 4294967295u, 1u), vec3<bool>(true, false, false), 0i)), Struct_3(11465i, Struct_2(Struct_1(i32(-2147483648), vec4<u32>(0u, 0u, 0u, 0u), vec3<bool>(true, true, true), 2147483647i)), Struct_1(1i, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec3<bool>(true, true, true), i32(-2147483648))), Struct_3(0i, Struct_2(Struct_1(1i, vec4<u32>(4294967295u, 64138u, 6551u, 27407u), vec3<bool>(true, false, true), -4084i)), Struct_1(0i, vec4<u32>(1164u, 1u, 48801u, 4294967295u), vec3<bool>(true, false, false), 0i)), Struct_3(28123i, Struct_2(Struct_1(30884i, vec4<u32>(38391u, 0u, 1u, 0u), vec3<bool>(true, false, false), 1i)), Struct_1(-21468i, vec4<u32>(34841u, 2462u, 0u, 102173u), vec3<bool>(true, false, true), -7i)), Struct_3(0i, Struct_2(Struct_1(12374i, vec4<u32>(1u, 24622u, 0u, 42372u), vec3<bool>(true, true, false), -12932i)), Struct_1(-14927i, vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec3<bool>(true, false, true), 2147483647i)), Struct_3(0i, Struct_2(Struct_1(-1i, vec4<u32>(91007u, 4294967295u, 6603u, 38246u), vec3<bool>(true, false, false), 0i)), Struct_1(1i, vec4<u32>(126779u, 40651u, 62742u, 46160u), vec3<bool>(true, true, false), -18606i)), Struct_3(-63773i, Struct_2(Struct_1(i32(-2147483648), vec4<u32>(26546u, 4294967295u, 1u, 13601u), vec3<bool>(true, false, false), -6037i)), Struct_1(-65818i, vec4<u32>(0u, 27408u, 1u, 5071u), vec3<bool>(true, false, false), 2147483647i)), Struct_3(32256i, Struct_2(Struct_1(-24998i, vec4<u32>(15739u, 22972u, 0u, 52272u), vec3<bool>(false, false, false), 6504i)), Struct_1(i32(-2147483648), vec4<u32>(47713u, 1u, 1u, 91584u), vec3<bool>(true, true, true), 0i)), Struct_3(-41269i, Struct_2(Struct_1(i32(-2147483648), vec4<u32>(1u, 1u, 1u, 74691u), vec3<bool>(false, false, false), -8677i)), Struct_1(-1i, vec4<u32>(1u, 1u, 33030u, 4294967295u), vec3<bool>(true, true, true), 1081i)), Struct_3(-13236i, Struct_2(Struct_1(-75673i, vec4<u32>(4294967295u, 28832u, 1u, 56200u), vec3<bool>(false, true, true), 9216i)), Struct_1(i32(-2147483648), vec4<u32>(8192u, 23968u, 84041u, 10226u), vec3<bool>(true, false, false), 1i)), Struct_3(-52053i, Struct_2(Struct_1(-38427i, vec4<u32>(0u, 0u, 46462u, 1099u), vec3<bool>(true, false, true), 1i)), Struct_1(1i, vec4<u32>(11272u, 13045u, 27622u, 1u), vec3<bool>(false, false, false), 2147483647i)), Struct_3(-1504i, Struct_2(Struct_1(0i, vec4<u32>(1u, 12319u, 31854u, 4294967295u), vec3<bool>(false, true, false), 1i)), Struct_1(31963i, vec4<u32>(1u, 1u, 1u, 0u), vec3<bool>(false, false, false), 13440i)), Struct_3(75974i, Struct_2(Struct_1(11123i, vec4<u32>(0u, 0u, 67753u, 43554u), vec3<bool>(false, false, false), 2147483647i)), Struct_1(2147483647i, vec4<u32>(7782u, 4294967295u, 18448u, 0u), vec3<bool>(true, false, false), -1i)), Struct_3(52420i, Struct_2(Struct_1(-16309i, vec4<u32>(28578u, 0u, 4294967295u, 34759u), vec3<bool>(true, true, true), 1i)), Struct_1(11976i, vec4<u32>(49612u, 31215u, 25118u, 62165u), vec3<bool>(true, true, true), -18320i)), Struct_3(i32(-2147483648), Struct_2(Struct_1(0i, vec4<u32>(4294967295u, 38981u, 1u, 4294967295u), vec3<bool>(true, true, false), 0i)), Struct_1(-1i, vec4<u32>(47048u, 20825u, 1u, 0u), vec3<bool>(true, true, false), -50992i)), Struct_3(2147483647i, Struct_2(Struct_1(i32(-2147483648), vec4<u32>(0u, 4294967295u, 68967u, 56304u), vec3<bool>(false, true, true), i32(-2147483648))), Struct_1(30886i, vec4<u32>(46182u, 4294967295u, 51281u, 25904u), vec3<bool>(false, false, false), -1i)), Struct_3(-20565i, Struct_2(Struct_1(-1i, vec4<u32>(175u, 1u, 24575u, 44128u), vec3<bool>(false, false, false), 1i)), Struct_1(-22578i, vec4<u32>(33772u, 7998u, 20200u, 0u), vec3<bool>(false, false, false), 0i)), Struct_3(-1018i, Struct_2(Struct_1(50561i, vec4<u32>(4294967295u, 0u, 20758u, 0u), vec3<bool>(true, false, false), i32(-2147483648))), Struct_1(-25744i, vec4<u32>(4294967295u, 1u, 71056u, 6128u), vec3<bool>(true, false, true), -41141i)), Struct_3(6385i, Struct_2(Struct_1(9253i, vec4<u32>(1u, 4294967295u, 19202u, 72973u), vec3<bool>(false, true, true), 2147483647i)), Struct_1(30454i, vec4<u32>(0u, 1u, 71495u, 0u), vec3<bool>(true, true, false), 7669i)));

var<private> global3: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(Struct_3(1i, Struct_2(Struct_1(-1i, vec4<u32>(0u, 19300u, 1u, 0u), vec3<bool>(false, true, false), -1i)), Struct_1(30619i, vec4<u32>(1u, 71702u, 50424u, 50026u), vec3<bool>(true, true, false), i32(-2147483648))), 65915u), Struct_5(Struct_3(i32(-2147483648), Struct_2(Struct_1(1i, vec4<u32>(109560u, 34745u, 35580u, 0u), vec3<bool>(true, false, false), 49716i)), Struct_1(-1i, vec4<u32>(54069u, 4294967295u, 12332u, 16350u), vec3<bool>(false, false, false), 11228i)), 4751u), Struct_5(Struct_3(21390i, Struct_2(Struct_1(-12102i, vec4<u32>(0u, 35130u, 0u, 36249u), vec3<bool>(true, false, true), -41703i)), Struct_1(-12429i, vec4<u32>(23834u, 1u, 102728u, 49941u), vec3<bool>(true, false, true), -1i)), 0u), Struct_5(Struct_3(6153i, Struct_2(Struct_1(2147483647i, vec4<u32>(25300u, 4294967295u, 0u, 34910u), vec3<bool>(false, false, false), -20322i)), Struct_1(18117i, vec4<u32>(4294967295u, 64646u, 87141u, 0u), vec3<bool>(false, true, false), 46241i)), 0u), Struct_5(Struct_3(2147483647i, Struct_2(Struct_1(0i, vec4<u32>(0u, 1u, 21233u, 69454u), vec3<bool>(false, true, false), 1i)), Struct_1(1i, vec4<u32>(0u, 31067u, 1u, 0u), vec3<bool>(true, true, false), 34017i)), 37108u), Struct_5(Struct_3(i32(-2147483648), Struct_2(Struct_1(-17280i, vec4<u32>(28180u, 0u, 9390u, 1u), vec3<bool>(true, false, false), 0i)), Struct_1(-83453i, vec4<u32>(4294967295u, 1u, 0u, 20309u), vec3<bool>(true, false, true), -11715i)), 1u), Struct_5(Struct_3(1i, Struct_2(Struct_1(0i, vec4<u32>(22128u, 14887u, 7115u, 65276u), vec3<bool>(false, true, true), -48312i)), Struct_1(0i, vec4<u32>(11281u, 12535u, 40876u, 1u), vec3<bool>(false, false, false), -20785i)), 39039u), Struct_5(Struct_3(81131i, Struct_2(Struct_1(i32(-2147483648), vec4<u32>(4294967295u, 1u, 4294967295u, 32354u), vec3<bool>(true, false, false), i32(-2147483648))), Struct_1(1i, vec4<u32>(2974u, 1u, 158446u, 42186u), vec3<bool>(false, false, true), 1i)), 4294967295u), Struct_5(Struct_3(-32684i, Struct_2(Struct_1(31411i, vec4<u32>(1u, 12491u, 108488u, 56475u), vec3<bool>(true, false, false), -14226i)), Struct_1(41889i, vec4<u32>(0u, 12281u, 0u, 0u), vec3<bool>(true, false, true), -21164i)), 1u), Struct_5(Struct_3(18484i, Struct_2(Struct_1(0i, vec4<u32>(1971u, 4294967295u, 1u, 1u), vec3<bool>(false, true, true), i32(-2147483648))), Struct_1(-2019i, vec4<u32>(4294967295u, 44068u, 39812u, 22654u), vec3<bool>(true, false, false), -30082i)), 0u), Struct_5(Struct_3(-34739i, Struct_2(Struct_1(8658i, vec4<u32>(1u, 0u, 4455u, 34964u), vec3<bool>(true, false, false), 1i)), Struct_1(-64648i, vec4<u32>(4294967295u, 1u, 1u, 1u), vec3<bool>(false, false, true), 89709i)), 0u), Struct_5(Struct_3(-16250i, Struct_2(Struct_1(24734i, vec4<u32>(4294967295u, 1u, 1u, 38074u), vec3<bool>(true, false, true), -21051i)), Struct_1(0i, vec4<u32>(0u, 76058u, 1u, 22050u), vec3<bool>(false, false, false), i32(-2147483648))), 53041u), Struct_5(Struct_3(2147483647i, Struct_2(Struct_1(i32(-2147483648), vec4<u32>(21542u, 1u, 2152u, 66071u), vec3<bool>(false, true, true), -15695i)), Struct_1(1i, vec4<u32>(73082u, 4294967295u, 1u, 4864u), vec3<bool>(true, true, true), 12259i)), 4294967295u), Struct_5(Struct_3(i32(-2147483648), Struct_2(Struct_1(60188i, vec4<u32>(58918u, 12074u, 0u, 0u), vec3<bool>(true, false, false), 58226i)), Struct_1(-5757i, vec4<u32>(4091u, 29237u, 4294967295u, 7583u), vec3<bool>(false, true, true), 11939i)), 1u), Struct_5(Struct_3(i32(-2147483648), Struct_2(Struct_1(-1062i, vec4<u32>(36122u, 40549u, 55548u, 4294967295u), vec3<bool>(true, true, false), 1i)), Struct_1(12517i, vec4<u32>(77546u, 64295u, 0u, 0u), vec3<bool>(true, false, true), i32(-2147483648))), 10108u), Struct_5(Struct_3(-1i, Struct_2(Struct_1(19479i, vec4<u32>(0u, 4294967295u, 31051u, 78269u), vec3<bool>(false, true, false), -17076i)), Struct_1(-55448i, vec4<u32>(0u, 0u, 18065u, 4294967295u), vec3<bool>(true, true, false), 2147483647i)), 1u), Struct_5(Struct_3(-1i, Struct_2(Struct_1(0i, vec4<u32>(0u, 0u, 9742u, 1u), vec3<bool>(true, true, true), -1i)), Struct_1(0i, vec4<u32>(30387u, 95365u, 1u, 0u), vec3<bool>(true, false, false), -2588i)), 39079u), Struct_5(Struct_3(-50256i, Struct_2(Struct_1(12863i, vec4<u32>(4294967295u, 36687u, 0u, 0u), vec3<bool>(false, true, false), 0i)), Struct_1(8373i, vec4<u32>(95708u, 42386u, 1u, 11377u), vec3<bool>(false, false, true), -1i)), 1u), Struct_5(Struct_3(39945i, Struct_2(Struct_1(31801i, vec4<u32>(29502u, 4294967295u, 77056u, 1u), vec3<bool>(false, false, true), 58802i)), Struct_1(65740i, vec4<u32>(1u, 4294967295u, 50385u, 1u), vec3<bool>(true, true, true), 2147483647i)), 416u), Struct_5(Struct_3(56084i, Struct_2(Struct_1(-9573i, vec4<u32>(49504u, 46936u, 1u, 0u), vec3<bool>(false, false, false), 1i)), Struct_1(2147483647i, vec4<u32>(4294967295u, 0u, 9724u, 0u), vec3<bool>(false, false, true), 38606i)), 1u), Struct_5(Struct_3(29537i, Struct_2(Struct_1(-29010i, vec4<u32>(14494u, 4294967295u, 1u, 4294967295u), vec3<bool>(true, true, false), 2788i)), Struct_1(1i, vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec3<bool>(true, true, true), 2147483647i)), 0u), Struct_5(Struct_3(1i, Struct_2(Struct_1(0i, vec4<u32>(43104u, 4294967295u, 1u, 76268u), vec3<bool>(true, true, false), -16424i)), Struct_1(-25730i, vec4<u32>(4294967295u, 1u, 124919u, 1u), vec3<bool>(true, false, false), -1i)), 0u), Struct_5(Struct_3(35307i, Struct_2(Struct_1(0i, vec4<u32>(41906u, 56492u, 2290u, 12924u), vec3<bool>(false, false, true), -1i)), Struct_1(-32578i, vec4<u32>(15454u, 82004u, 1u, 28342u), vec3<bool>(true, false, true), 2147483647i)), 0u), Struct_5(Struct_3(-1i, Struct_2(Struct_1(-33803i, vec4<u32>(114689u, 1u, 32121u, 0u), vec3<bool>(false, false, false), i32(-2147483648))), Struct_1(-12215i, vec4<u32>(4294967295u, 73860u, 56731u, 35001u), vec3<bool>(false, false, false), i32(-2147483648))), 37580u), Struct_5(Struct_3(i32(-2147483648), Struct_2(Struct_1(i32(-2147483648), vec4<u32>(1u, 4294967295u, 56300u, 21182u), vec3<bool>(true, false, false), 1i)), Struct_1(2147483647i, vec4<u32>(15683u, 1u, 20942u, 4294967295u), vec3<bool>(false, true, false), -14522i)), 4294967295u), Struct_5(Struct_3(30474i, Struct_2(Struct_1(-75731i, vec4<u32>(1u, 0u, 0u, 1u), vec3<bool>(false, false, false), i32(-2147483648))), Struct_1(7603i, vec4<u32>(58508u, 81245u, 58660u, 1u), vec3<bool>(true, true, true), -9166i)), 59586u), Struct_5(Struct_3(1i, Struct_2(Struct_1(-1i, vec4<u32>(1u, 25562u, 7406u, 49331u), vec3<bool>(true, true, false), 1i)), Struct_1(32526i, vec4<u32>(4294967295u, 0u, 0u, 89242u), vec3<bool>(true, false, true), -41757i)), 0u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    global2 = array<Struct_3, 27>();
    global1 = Struct_2(global1.a);
    global0 = array<bool, 9>();
    var var_0 = ~_wgslsmith_add_i32(-arg_2.x, global1.a.d);
    let var_1 = 0u;
    return u_input.a;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_5) -> u32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.a.d, _wgslsmith_mod_i32(-37016i, arg_1.a.d), ~10073i), abs(-vec3<i32>(arg_1.a.d, 2147483647i, arg_2.a.c.a)) ^ ~vec3<i32>(-2147483647i, 2147483647i, 2147483647i)), arg_2.a.b, global1.a);
    let var_1 = 0u;
    var var_2 = arg_2.a.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-845f, 145f, 739f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-950f, 406f, -1231f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(226f, 141f, -1482f))), vec3<f32>(_wgslsmith_f_op_f32(min(-571f, -787f)), _wgslsmith_f_op_f32(min(-726f, 806f)), _wgslsmith_f_op_f32(f32(-1f) * -1853f)), global1.a.c)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1822f, 1977f, 494f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(734f, 322f, -1291f) + vec3<f32>(-2570f, -433f, -1999f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1275f, -1069f, 521f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, -271f, 578f))))));
    var_2 = Struct_2(Struct_1(2147483647i, reverseBits(countOneBits(vec4<u32>(11895u, u_input.a, 1u, 10662u) | arg_1.a.b)), var_0.c.c, -25817i));
    return firstLeadingBit(~var_1);
}

fn func_1() -> u32 {
    var var_0 = global1.a.b;
    global0 = array<bool, 9>();
    var_0 = vec4<u32>(var_0.x, max(~max(u_input.a, u_input.a), 1u >> (abs(0u) % 32u)), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-961f, 135f, 259f) * vec3<f32>(267f, 479f, 335f)) + vec3<f32>(-1000f, -469f, -713f)), all(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(var_0.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], global1.a.c.x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global1.a.c.x, false, true), vec4<bool>(true, global1.a.c.x, true, false))), -vec2<i32>(global1.a.a, 16492i) ^ -vec2<i32>(u_input.b, u_input.b)) | _wgslsmith_mod_u32(u_input.a, ~u_input.a), _wgslsmith_mod_u32(u_input.a, ~func_3(~4294967295u, Struct_2(Struct_1(35502i, vec4<u32>(global1.a.b.x, var_0.x, u_input.a, 4294967295u), vec3<bool>(global0[_wgslsmith_index_u32(54702u, 9u)], false, global1.a.c.x), 1i)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, var_0.x), 27u)])));
    var var_1 = Struct_4(any(!(!(!global1.a.c))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1543f);
    return 1u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(global1.a);
    return Struct_2(Struct_1(_wgslsmith_add_i32(arg_1.c.a, _wgslsmith_mod_i32(u_input.b, -6803i)), arg_1.b.a.b, var_0.a.c, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, -1i), ~27344i, ~var_0.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.b;
    global0 = array<bool, 9>();
    global1 = func_4(Struct_2(Struct_1(_wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(u_input.b, -21828i), -1i), vec4<u32>(11165u, func_1(), 1u, global1.a.b.x ^ 3545u), select(select(global1.a.c, global1.a.c, global0[_wgslsmith_index_u32(var_0.x, 9u)]), vec3<bool>(true, global1.a.c.x, global0[_wgslsmith_index_u32(29682u, 9u)]), true), _wgslsmith_add_i32(0i, global1.a.d << (u_input.a % 32u)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.a.b, ~(~firstLeadingBit(vec4<u32>(u_input.a, 27699u, 13825u, 1u)))), 27u)]);
    var var_1 = func_4(Struct_2(Struct_1(_wgslsmith_sub_i32(global1.a.d, -2147483647i), vec4<u32>(var_0.x, abs(global1.a.b.x), 62962u, ~0u), global1.a.c, u_input.b)), global2[_wgslsmith_index_u32(global1.a.b.x, 27u)]).a.b.wzw;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) + _wgslsmith_f_op_f32(sign(-661f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1404f - 404f)))));
    var var_3 = -1i;
    var var_4 = abs(global1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-566f)) + var_2.x) * _wgslsmith_f_op_f32(select(var_2.x, -2458f, true)))), var_0.x);
}

