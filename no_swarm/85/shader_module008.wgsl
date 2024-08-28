struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(i32(-2147483648), 16717i, 2147483647i, i32(-2147483648)), 74030u, vec3<u32>(42766u, 76573u, 1u), vec4<i32>(2147483647i, 43344i, 8806i, i32(-2147483648)), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(0i, -11023i, -1i, 6312i), 43156u, vec3<u32>(83935u, 51121u, 4294967295u), vec4<i32>(2147483647i, 1i, -36164i, 0i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(1i, -51934i, 13110i, 1i), 86669u, vec3<u32>(0u, 1u, 1u), vec4<i32>(-6816i, 1i, 27037i, i32(-2147483648)), vec4<bool>(false, true, false, true)), Struct_1(vec4<i32>(2147483647i, -1i, -27662i, i32(-2147483648)), 0u, vec3<u32>(54174u, 1u, 18965u), vec4<i32>(2147483647i, 31176i, 1i, 2147483647i), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(34231i, 2147483647i, 16545i, 54178i), 0u, vec3<u32>(4294967295u, 9648u, 53746u), vec4<i32>(48071i, -1806i, -32856i, 0i), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(27357i, 0i, i32(-2147483648), -1i), 4294967295u, vec3<u32>(44327u, 88538u, 0u), vec4<i32>(i32(-2147483648), i32(-2147483648), -14393i, -1i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(0i, 1i, 17644i, -34298i), 38758u, vec3<u32>(83040u, 59610u, 0u), vec4<i32>(-30463i, 10388i, -9809i, -22852i), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(-18460i, 2147483647i, -6871i, 56006i), 1u, vec3<u32>(0u, 1u, 1u), vec4<i32>(1i, 27795i, 2147483647i, i32(-2147483648)), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(-1i, 2147483647i, -1261i, 46894i), 1u, vec3<u32>(133966u, 24955u, 14798u), vec4<i32>(-23656i, -14134i, -1i, -32805i), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(-52210i, 1i, 36506i, 54627i), 20468u, vec3<u32>(4294967295u, 42325u, 0u), vec4<i32>(-1i, 1i, -20703i, 22539i), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(-1i, -19472i, 1i, -58082i), 11083u, vec3<u32>(4294967295u, 4294967295u, 23832u), vec4<i32>(-1i, 6945i, 9252i, 2147483647i), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(-1i, -15573i, 16510i, i32(-2147483648)), 1832u, vec3<u32>(1u, 50944u, 1u), vec4<i32>(-40416i, 49262i, 2147483647i, 0i), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(-5660i, -1i, 14322i, 2147483647i), 43426u, vec3<u32>(0u, 19372u, 0u), vec4<i32>(-1i, -13552i, 13087i, -55970i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(8668i, 34725i, 29277i, -1i), 1u, vec3<u32>(0u, 17402u, 0u), vec4<i32>(26018i, -28757i, i32(-2147483648), 33923i), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -40356i, -1i), 112679u, vec3<u32>(31802u, 1u, 0u), vec4<i32>(-11786i, -14218i, -22619i, -2227i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 43733i, i32(-2147483648)), 43811u, vec3<u32>(29643u, 42884u, 0u), vec4<i32>(i32(-2147483648), -45468i, -13735i, i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(-11581i, 2147483647i, -1i, -33781i), 4294967295u, vec3<u32>(4294967295u, 1u, 1u), vec4<i32>(14606i, 31406i, 2147483647i, -1i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-1i, -8777i, 22589i, 11014i), 0u, vec3<u32>(0u, 36531u, 23993u), vec4<i32>(42836i, -1i, i32(-2147483648), -1i), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(-27959i, -1i, -2468i, -48628i), 0u, vec3<u32>(82507u, 92188u, 4294967295u), vec4<i32>(59344i, 21202i, -23303i, 20545i), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(31420i, -43548i, 2147483647i, 1i), 0u, vec3<u32>(24129u, 4294967295u, 53106u), vec4<i32>(-3543i, -47880i, -1i, -17i), vec4<bool>(true, true, false, false)));

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: bool = false;

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<i32>(-1i, -2067i, 0i, -24045i), 11046u, vec3<u32>(4294967295u, 4294967295u, 2377u), vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(60134i, 0i, -45433i, -48810i), 4294967295u, vec3<u32>(0u, 0u, 1u), vec4<i32>(2386i, -2391i, 2147483647i, 7618i), vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(8702i, -16222i, -28680i, -1i), 7397u, vec3<u32>(1u, 4294967295u, 73354u), vec4<i32>(-1i, 46454i, 1988i, -1i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(10647i, 42598i, 2147483647i, 0i), 56534u, vec3<u32>(80627u, 793u, 15683u), vec4<i32>(-1773i, 1i, -10232i, 2147483647i), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(-1i, 57108i, 2147483647i, 1195i), 1u, vec3<u32>(23919u, 0u, 19594u), vec4<i32>(12995i, 1i, 28448i, 6535i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 27630i, 6988i), 24791u, vec3<u32>(1u, 1u, 36011u), vec4<i32>(-11265i, -34515i, -4196i, -183i), vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(0i, -44537i, -1i, -51315i), 0u, vec3<u32>(4294967295u, 0u, 22973u), vec4<i32>(-10446i, 0i, -9865i, 2679i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(0i, 5162i, 2147483647i, -1i), 0u, vec3<u32>(1u, 55866u, 45803u), vec4<i32>(-1i, -69938i, -90203i, -1i), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(-32025i, i32(-2147483648), -29837i, -32652i), 1u, vec3<u32>(1u, 0u, 55659u), vec4<i32>(-61012i, -9653i, 11383i, -1i), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(-12765i, 6353i, 10798i, -25341i), 1u, vec3<u32>(0u, 69861u, 46031u), vec4<i32>(-16514i, -21217i, 8939i, i32(-2147483648)), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 1i, 0i), 1u, vec3<u32>(58609u, 19159u, 39106u), vec4<i32>(0i, 29829i, -30014i, -736i), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(0i, -30675i, 2147483647i, -4677i), 9103u, vec3<u32>(42998u, 30200u, 0u), vec4<i32>(0i, 13282i, 2147483647i, -1i), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(37536i, -1i, 24234i, 0i), 5458u, vec3<u32>(4294967295u, 100115u, 2479u), vec4<i32>(0i, 17636i, 2147483647i, -32221i), vec4<bool>(false, true, false, true)), Struct_1(vec4<i32>(-17879i, 9428i, 25952i, -12509i), 60337u, vec3<u32>(39276u, 78993u, 24494u), vec4<i32>(-1i, i32(-2147483648), -1i, -11660i), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(0i, -1i, -41855i, -1i), 0u, vec3<u32>(4294967295u, 4294967295u, 93198u), vec4<i32>(-15622i, 18825i, -15534i, 668i), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(-48393i, -25133i, 2147483647i, -19110i), 35409u, vec3<u32>(1u, 26262u, 6981u), vec4<i32>(-33921i, 20820i, 2147483647i, 27921i), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(1i, i32(-2147483648), -63679i, -1i), 20601u, vec3<u32>(1u, 104164u, 18440u), vec4<i32>(i32(-2147483648), 14129i, i32(-2147483648), 1225i), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(1i, 0i, -2814i, -11392i), 18274u, vec3<u32>(1u, 4294967295u, 27662u), vec4<i32>(-11764i, -33467i, -1i, -1i), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, 0i), 26654u, vec3<u32>(0u, 55094u, 24381u), vec4<i32>(15397i, i32(-2147483648), 0i, -1i), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(50040i, i32(-2147483648), 2147483647i, -44142i), 73851u, vec3<u32>(12179u, 70074u, 4294967295u), vec4<i32>(i32(-2147483648), 2147483647i, 13346i, i32(-2147483648)), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(-11302i, 2147483647i, 1i, 20002i), 27317u, vec3<u32>(32750u, 4294967295u, 1u), vec4<i32>(-1i, -1i, 39466i, 2147483647i), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(-50951i, 6499i, -39102i, -1i), 32523u, vec3<u32>(0u, 4294967295u, 31178u), vec4<i32>(35272i, -14280i, 0i, 63806i), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(1034i, 1i, 1i, 2147483647i), 99777u, vec3<u32>(2651u, 4294967295u, 26495u), vec4<i32>(2147483647i, -47028i, -1i, -10447i), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(5186i, 12808i, 0i, -1i), 0u, vec3<u32>(21375u, 4570u, 55116u), vec4<i32>(8503i, -1i, 12207i, 36969i), vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(1i, -41116i, 31656i, 24834i), 94106u, vec3<u32>(4294967295u, 31324u, 18844u), vec4<i32>(2147483647i, 0i, 34176i, 0i), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(0i, -3976i, -14827i, -16390i), 43949u, vec3<u32>(1u, 16327u, 4294967295u), vec4<i32>(-1i, 1i, -18969i, i32(-2147483648)), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(2147483647i, 0i, 1i, 1i), 29065u, vec3<u32>(6164u, 11172u, 4294967295u), vec4<i32>(-21297i, 0i, -1500i, -1i), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(0i, 0i, 2147483647i, 1i), 878u, vec3<u32>(32679u, 70883u, 4294967295u), vec4<i32>(-19067i, -756i, 2147483647i, -32087i), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(1i, -9375i, 0i, i32(-2147483648)), 51767u, vec3<u32>(1u, 0u, 16489u), vec4<i32>(-4454i, 2147483647i, 0i, -1i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-25429i, 2147483647i, 27095i, i32(-2147483648)), 35630u, vec3<u32>(81954u, 96155u, 0u), vec4<i32>(12751i, 32734i, -1i, 0i), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(-54922i, 28008i, -1i, 49194i), 51643u, vec3<u32>(1u, 4294967295u, 2371u), vec4<i32>(i32(-2147483648), -83589i, 2147483647i, -21337i), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(-55788i, 0i, -10948i, 0i), 0u, vec3<u32>(79388u, 1u, 34219u), vec4<i32>(i32(-2147483648), -14159i, 23325i, 1i), vec4<bool>(false, true, false, true)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<bool> {
    global2 = array<vec2<u32>, 8>();
    var var_0 = reverseBits(u_input.a);
    global3 = 1u != ~(~_wgslsmith_add_u32(arg_0.x, u_input.b) & ~u_input.b);
    var var_1 = Struct_2(arg_0);
    global4 = array<Struct_1, 32>();
    return select(select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), !vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), true), !vec4<bool>(true, false, all(vec3<bool>(false, false, true)), true)), select(vec4<bool>(true, true, all(vec3<bool>(false, true, false)) & any(vec3<bool>(false, false, false)), select(true, true, true)), vec4<bool>(true, true, !any(vec2<bool>(false, true)), true), true), false);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_4(select(vec4<bool>(-939f > _wgslsmith_f_op_f32(trunc(arg_1.b)), any(!vec4<bool>(true, arg_0.b.a.x, false, arg_0.a.a.x)), arg_0.a.b.x, true), select(vec4<bool>(arg_1.a.a.x == arg_3.a.d.x, arg_1.b < arg_0.d.x, arg_0.a.b.x, true), vec4<bool>(true, false, false, all(arg_0.a.a)), select(arg_3.a.e, select(vec4<bool>(true, arg_0.a.b.x, true, false), vec4<bool>(true, true, arg_0.b.b.x, arg_3.a.e.x), arg_1.a.e.x), true)), all(!select(vec2<bool>(false, true), arg_0.b.a.yz, false))), arg_0.a.a.yy, ~arg_3.a.a.x);
    let var_1 = arg_0;
    var var_2 = arg_3.a.d.x;
    var var_3 = Struct_5(var_1.a, Struct_4(func_3(firstTrailingBit(arg_1.a.c.yz)), vec2<bool>(_wgslsmith_f_op_f32(trunc(-1228f)) != _wgslsmith_f_op_f32(732f + var_1.d.x), arg_0.a.a.x), ~_wgslsmith_mod_i32(1i, 1i)), reverseBits(u_input.a.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_0.d - vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(835f + arg_3.b), _wgslsmith_f_op_f32(-arg_3.b))))), (~(~arg_1.a.c.x) & _wgslsmith_clamp_u32(u_input.b, 8033u, reverseBits(28966u))) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, u_input.b), vec4<u32>(arg_3.a.b, 1u, 27911u, 1u)), countOneBits(51274u), _wgslsmith_mult_u32(8637u, arg_1.a.b)), vec3<u32>(_wgslsmith_mult_u32(var_1.e, 1u), 25849u, 1u)));
    var_2 = select(-(_wgslsmith_add_i32(-2147483647i, u_input.c.x) | -42034i), i32(-1i) * -_wgslsmith_clamp_i32(u_input.c.x, 2147483647i, arg_0.c), true);
    return -2147483647i;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: i32) -> u32 {
    var var_0 = vec3<f32>(arg_0, 1315f, -1162f);
    var var_1 = abs(vec4<u32>(reverseBits(57604u), countOneBits(abs(14454u)), 1u, 18809u));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-599f, -571f, 578f), vec3<f32>(arg_0, arg_1.x, arg_1.x), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1057f, -688f) - vec3<f32>(1822f, arg_1.x, -1000f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, arg_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1115f, -115f, var_0.x)))))));
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    return ~(var_1.x | 4294967295u);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> vec3<i32> {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(abs(u_input.a), vec4<i32>(-1i, u_input.d.x, 50470i, reverseBits(-9766i))), _wgslsmith_dot_vec3_i32(u_input.a.zzx, countOneBits(-u_input.a.yyz)), 26569i, u_input.c.x), 0u, vec3<u32>(func_4(-2038f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.zz, vec2<f32>(arg_1.x, arg_1.x)))), (u_input.a.x << (530u % 32u)) | func_2(Struct_5(Struct_4(vec4<bool>(false, false, true, true), vec2<bool>(true, false), u_input.c.x), Struct_4(vec4<bool>(false, true, true, true), vec2<bool>(false, false), 2147483647i), u_input.a.x, arg_1, 37381u), Struct_3(global1[_wgslsmith_index_u32(13522u, 20u)], 200f), Struct_2(vec2<u32>(arg_0.a.x, u_input.b)), Struct_3(Struct_1(u_input.a, arg_0.a.x, vec3<u32>(arg_0.a.x, arg_0.a.x, 53249u), u_input.a, vec4<bool>(true, false, true, true)), 565f))), 1u, 6070u), ~vec4<i32>(2147483647i, 2147483647i, firstTrailingBit(3288i), -select(1i, 29917i, false)), !(!(!func_3(global2[_wgslsmith_index_u32(1u, 8u)]))));
    global3 = var_0.e.x != true;
    let var_1 = i32(-1i) * -11891i;
    let var_2 = arg_0;
    var var_3 = arg_0;
    return vec3<i32>(min(select(-38383i, _wgslsmith_mod_i32(-var_0.d.x, func_2(Struct_5(Struct_4(var_0.e, vec2<bool>(true, var_0.e.x), var_1), Struct_4(vec4<bool>(var_0.e.x, true, true, var_0.e.x), vec2<bool>(var_0.e.x, false), var_0.a.x), var_1, vec3<f32>(-1000f, 308f, arg_1.x), 56802u), Struct_3(Struct_1(var_0.d, 29572u, var_0.c, vec4<i32>(u_input.d.x, 25733i, var_1, u_input.c.x), var_0.e), -1716f), arg_0, Struct_3(Struct_1(vec4<i32>(var_1, -23698i, var_0.d.x, var_1), u_input.b, vec3<u32>(4294967295u, var_3.a.x, var_2.a.x), u_input.a, vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.e.x)), arg_1.x))), var_0.e.x), var_0.d.x), -max(_wgslsmith_dot_vec2_i32(vec2<i32>(-37810i, u_input.a.x), ~var_0.d.zy), -25942i), ~2147483647i);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = global4[_wgslsmith_index_u32(arg_0.a.x, 32u)];
    let var_1 = ~(~(~(arg_0.a.x << (1u % 32u))));
    let var_2 = ~abs(_wgslsmith_sub_u32(30264u, var_1));
    var var_3 = Struct_5(Struct_4(vec4<bool>(var_0.e.x, _wgslsmith_sub_u32(var_0.c.x, var_1) > var_2, all(select(vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x), vec3<bool>(false, false, var_0.e.x), vec3<bool>(var_0.e.x, var_0.e.x, false))), var_0.e.x), select(var_0.e.xw, var_0.e.xz, true), -15899i), Struct_4(vec4<bool>(var_0.e.x, true, true, true), var_0.e.zw, reverseBits(arg_1.x)), 4939i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -182f) + _wgslsmith_f_op_f32(abs(2567f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(270f, 264f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1622f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1225f))), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-994f - 413f), -1000f)))), ~arg_0.a.x);
    var var_4 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~var_0.c, vec3<u32>(var_1, 46921u, 1u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 9016u, arg_0.a.x, 1u), vec4<u32>(38906u, 0u, var_3.e, 0u)), var_1, max(27456u, 4294967295u)))), ~var_0.c, var_0.c);
    return vec3<i32>(var_3.a.c, _wgslsmith_clamp_i32(_wgslsmith_div_i32(countOneBits(i32(-1i) * -17930i), var_0.d.x), 12654i, abs(14978i | (var_3.c << (0u % 32u)))), ~(-min(max(u_input.a.x, -13158i), _wgslsmith_div_i32(var_3.c, u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, 2147483647i, u_input.d.x, -5109i)), vec4<i32>(-29455i, 1i, -4119i, u_input.d.x)), ~reverseBits(u_input.a), true) & firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 1i, _wgslsmith_add_i32(u_input.a.x, 0i)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-2147483647i, u_input.d.x, 2147483647i, -8084i)), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_5(Struct_2(global2[_wgslsmith_index_u32(38990u, 8u)]), ~func_1(Struct_2(global2[_wgslsmith_index_u32(51683u, 8u)]), vec3<f32>(1633f, 125f, 128f)))), abs(global2[_wgslsmith_index_u32(~u_input.b, 8u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, -1875f))))), 1u, ~countOneBits(~(~vec3<u32>(u_input.b, 4294967295u, 62417u))));
}

