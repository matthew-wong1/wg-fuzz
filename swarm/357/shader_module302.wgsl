struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 4921u, 1u, 23882u);

var<private> global1: vec3<i32> = vec3<i32>(1i, 15631i, 39260i);

var<private> global2: array<vec3<bool>, 23>;

var<private> global3: i32;

var<private> global4: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(79220u, 48329u, 4294967295u, 0u), vec4<u32>(57263u, 49884u, 4294967295u, 1u), vec4<bool>(false, false, false, false), vec2<u32>(1u, 48933u))), vec2<u32>(55219u, 55750u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(337u, 6350u, 7849u, 1u), vec4<u32>(16442u, 1u, 36106u, 1u), vec4<bool>(true, true, false, true), vec2<u32>(88469u, 4294967295u))), 9267i), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(64183u, 32760u, 68114u, 4294967295u), vec4<u32>(100606u, 1u, 63285u, 5212u), vec4<bool>(true, false, true, false), vec2<u32>(0u, 4294967295u))), vec2<u32>(23855u, 4294967295u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(0u, 18867u, 4294967295u, 6904u), vec4<u32>(30797u, 0u, 4631u, 1u), vec4<bool>(false, false, true, false), vec2<u32>(0u, 19316u))), -1i), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(10804u, 24395u, 0u, 54767u), vec4<u32>(30067u, 24016u, 1u, 0u), vec4<bool>(false, false, false, true), vec2<u32>(1u, 40535u))), vec2<u32>(1u, 0u), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1373u, 12931u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 5286u, 0u), vec4<bool>(true, true, false, true), vec2<u32>(30127u, 41513u))), 14407i), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(47766u, 4294967295u, 506u, 1u), vec4<u32>(4294967295u, 9719u, 10646u, 14733u), vec4<bool>(false, true, true, true), vec2<u32>(0u, 12014u))), vec2<u32>(4294967295u, 39951u), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(25419u, 4294967295u, 27162u, 4294967295u), vec4<u32>(4294967295u, 1u, 1299u, 81467u), vec4<bool>(true, true, false, false), vec2<u32>(8008u, 4294967295u))), 1i), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(633u, 30768u, 0u, 0u), vec4<u32>(8555u, 4294967295u, 6420u, 0u), vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 3208u))), vec2<u32>(1u, 594u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(20320u, 0u, 1u, 0u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<bool>(false, true, true, true), vec2<u32>(53119u, 4294967295u))), 61074i), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(4294967295u, 1u, 49164u, 4294967295u), vec4<u32>(0u, 13547u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, false), vec2<u32>(72409u, 14322u))), vec2<u32>(1u, 20267u), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(26843u, 51508u, 0u, 42637u), vec4<u32>(43289u, 0u, 0u, 99624u), vec4<bool>(false, false, true, false), vec2<u32>(13317u, 30519u))), -30908i), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1u, 28876u, 4294967295u, 100166u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<bool>(false, false, false, false), vec2<u32>(89567u, 44620u))), vec2<u32>(34590u, 85692u), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(32733u, 1u, 0u, 0u), vec4<u32>(4294967295u, 22669u, 4294967295u, 1080u), vec4<bool>(true, true, true, false), vec2<u32>(6218u, 4294967295u))), 5001i), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1u, 1u, 63385u, 29216u), vec4<u32>(30416u, 67803u, 20734u, 4294967295u), vec4<bool>(false, false, true, true), vec2<u32>(12338u, 0u))), vec2<u32>(1u, 5211u), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 10002u), vec4<u32>(0u, 8556u, 4497u, 509u), vec4<bool>(true, false, false, true), vec2<u32>(2534u, 1u))), -41613i), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(4294967295u, 6970u, 0u, 1u), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, false), vec2<u32>(58443u, 0u))), vec2<u32>(8658u, 13857u), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(13471u, 52391u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 55831u, 28488u), vec4<bool>(false, false, true, false), vec2<u32>(60157u, 412u))), -32804i), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(0u, 4294967295u, 8079u, 60137u), vec4<u32>(4342u, 0u, 1u, 28764u), vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 14932u))), vec2<u32>(0u, 77680u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(0u, 1u, 1u, 28678u), vec4<u32>(41308u, 4294967295u, 124444u, 4294967295u), vec4<bool>(true, false, false, false), vec2<u32>(28386u, 30992u))), i32(-2147483648)), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(72056u, 4294967295u, 92861u, 4294967295u), vec4<u32>(0u, 1u, 14699u, 89181u), vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 69336u))), vec2<u32>(37753u, 1u), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(1u, 0u, 0u, 37590u), vec4<u32>(4294967295u, 4294967295u, 50539u, 1u), vec4<bool>(false, false, true, false), vec2<u32>(23066u, 4294967295u))), -10415i), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(4294967295u, 9475u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 3992u, 45054u), vec4<bool>(false, true, true, false), vec2<u32>(1u, 11106u))), vec2<u32>(0u, 4294967295u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(37837u, 1u, 1u, 71471u), vec4<u32>(7860u, 1u, 0u, 88286u), vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 1u))), i32(-2147483648)), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(24454u, 1u, 138825u, 0u), vec4<u32>(65148u, 4294967295u, 20234u, 9056u), vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 87386u))), vec2<u32>(45456u, 53362u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(4294967295u, 30878u, 21528u, 4294967295u), vec4<u32>(17980u, 36863u, 4294967295u, 4294967295u), vec4<bool>(true, true, true, true), vec2<u32>(0u, 10073u))), -1i), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(51587u, 0u, 7578u, 66973u), vec4<u32>(24681u, 39115u, 1400u, 76278u), vec4<bool>(true, false, false, false), vec2<u32>(11411u, 1u))), vec2<u32>(1u, 1u), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(0u, 4294967295u, 44309u, 33217u), vec4<u32>(0u, 11305u, 7460u, 4294967295u), vec4<bool>(false, false, false, false), vec2<u32>(116465u, 1u))), -1i), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(46303u, 64998u, 1u, 4668u), vec4<u32>(103405u, 54823u, 31757u, 7325u), vec4<bool>(false, false, false, true), vec2<u32>(80800u, 1u))), vec2<u32>(19114u, 0u), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(0u, 4751u, 39529u, 0u), vec4<u32>(37152u, 6203u, 4557u, 58744u), vec4<bool>(true, false, true, false), vec2<u32>(1084u, 24169u))), -1i), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(0u, 40031u, 4294967295u, 0u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 0u))), vec2<u32>(51521u, 4294967295u), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 34408u), vec4<bool>(false, false, false, true), vec2<u32>(21292u, 67738u))), 100384i), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(25199u, 0u, 1u, 25398u), vec4<u32>(0u, 73096u, 4294967295u, 19370u), vec4<bool>(true, true, false, false), vec2<u32>(41852u, 49901u))), vec2<u32>(1395u, 4294967295u), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(16181u, 84106u, 1u, 9008u), vec4<u32>(9828u, 90180u, 58413u, 29568u), vec4<bool>(true, false, false, true), vec2<u32>(0u, 4294967295u))), 1i), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(24284u, 41127u, 4294967295u, 4294967295u), vec4<u32>(35593u, 1u, 4294967295u, 23357u), vec4<bool>(false, false, false, true), vec2<u32>(29375u, 56068u))), vec2<u32>(4294967295u, 17119u), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(4294967295u, 1294u, 0u, 0u), vec4<bool>(true, true, true, true), vec2<u32>(30263u, 0u))), 31555i), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(59183u, 2109u, 11120u, 32309u), vec4<u32>(4052u, 41701u, 56417u, 4294967295u), vec4<bool>(true, false, false, true), vec2<u32>(0u, 4294967295u))), vec2<u32>(4294967295u, 46791u), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(1u, 14009u, 18777u, 4294967295u), vec4<u32>(4294967295u, 35259u, 1u, 10495u), vec4<bool>(false, false, false, true), vec2<u32>(9919u, 2530u))), -27038i), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(1u, 0u, 50604u, 4294967295u), vec4<u32>(25372u, 42141u, 1u, 1u), vec4<bool>(false, true, false, true), vec2<u32>(1u, 12753u))), vec2<u32>(57477u, 16034u), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(4661u, 16647u, 10017u, 1u), vec4<u32>(41943u, 4294967295u, 25401u, 4294967295u), vec4<bool>(true, false, true, false), vec2<u32>(0u, 11368u))), -20580i), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(0u, 1u, 1u, 15917u), vec4<u32>(31997u, 27945u, 11561u, 116712u), vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 49775u))), vec2<u32>(1u, 4294967295u), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<bool>(false, false, true, true), vec2<u32>(18616u, 18869u))), 2147483647i), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(1u, 114551u, 1u, 4294967295u), vec4<u32>(1u, 39132u, 1u, 4294967295u), vec4<bool>(true, true, false, false), vec2<u32>(30594u, 4294967295u))), vec2<u32>(39152u, 1u), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(3137u, 29270u, 0u, 4294967295u), vec4<u32>(1u, 0u, 33854u, 1u), vec4<bool>(false, false, false, true), vec2<u32>(46199u, 0u))), -3785i), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(49308u, 24678u, 57950u, 38224u), vec4<u32>(2075u, 4294967295u, 10920u, 0u), vec4<bool>(true, false, true, true), vec2<u32>(0u, 4294967295u))), vec2<u32>(1u, 20121u), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(412u, 4294967295u, 4294967295u, 1u), vec4<u32>(10783u, 70036u, 29697u, 1u), vec4<bool>(true, true, false, true), vec2<u32>(0u, 4294967295u))), -18901i), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(7717u, 8591u, 0u, 30040u), vec4<u32>(1u, 0u, 4294967295u, 56827u), vec4<bool>(false, false, false, true), vec2<u32>(47029u, 4294967295u))), vec2<u32>(13707u, 9346u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 29923u, 0u, 145517u), vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 0u))), -15863i), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(24739u, 23247u, 31711u, 0u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<bool>(true, false, false, false), vec2<u32>(49578u, 18569u))), vec2<u32>(27081u, 1u), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(51830u, 24954u, 44357u, 4294967295u), vec4<u32>(1u, 42023u, 1u, 1u), vec4<bool>(false, false, false, true), vec2<u32>(0u, 22714u))), -14051i), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 56240u, 3201u, 15433u), vec4<bool>(false, false, false, false), vec2<u32>(73063u, 29719u))), vec2<u32>(117676u, 81190u), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(78203u, 4294967295u, 0u, 16762u), vec4<u32>(0u, 73170u, 0u, 15332u), vec4<bool>(false, true, false, true), vec2<u32>(1u, 84798u))), -36888i), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(58221u, 1u, 1u, 0u), vec4<u32>(36119u, 5319u, 126546u, 1u), vec4<bool>(false, false, true, true), vec2<u32>(64834u, 4294967295u))), vec2<u32>(43534u, 1u), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(1u, 51060u, 1u, 2382u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<bool>(true, true, false, false), vec2<u32>(97221u, 15974u))), 2147483647i), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(83776u, 39378u, 19625u, 8852u), vec4<u32>(83696u, 4294967295u, 1u, 4294967295u), vec4<bool>(true, true, true, false), vec2<u32>(1u, 4294967295u))), vec2<u32>(4294967295u, 3803u), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(47731u, 50047u, 4294967295u, 26624u), vec4<u32>(24970u, 2477u, 1u, 15200u), vec4<bool>(false, false, true, true), vec2<u32>(109267u, 15021u))), -19546i), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(1u, 4294967295u, 23402u, 75229u), vec4<u32>(81838u, 4294967295u, 39668u, 36433u), vec4<bool>(false, true, true, true), vec2<u32>(11679u, 4294967295u))), vec2<u32>(0u, 0u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(43792u, 0u, 34240u, 0u), vec4<u32>(95132u, 4294967295u, 1u, 4561u), vec4<bool>(false, false, false, true), vec2<u32>(23286u, 19601u))), -65988i), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(1u, 69095u, 89651u, 22207u), vec4<u32>(49279u, 9476u, 1u, 52372u), vec4<bool>(true, false, true, true), vec2<u32>(21763u, 0u))), vec2<u32>(47761u, 4294967295u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1053u), vec4<u32>(0u, 23190u, 58227u, 157202u), vec4<bool>(false, true, true, true), vec2<u32>(50947u, 0u))), 2147483647i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = global1.yz;
    var var_1 = Struct_2(vec2<bool>(true, false), arg_1);
    var var_2 = vec2<f32>(-520f, _wgslsmith_f_op_f32(-arg_0));
    var var_3 = arg_1;
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-486f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return var_1.b.b.x;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = global1.x;
    global4 = array<Struct_3, 30>();
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~func_3(-565f, Struct_1(vec4<u32>(1u, 1u, 31402u, u_input.a), vec4<u32>(41554u, 54731u, global0.x, 0u), vec4<bool>(arg_0, arg_0, arg_0, arg_0), global0.zw), abs(4294967295u)), _wgslsmith_div_u32(select(4294967295u, ~global0.x, all(global2[_wgslsmith_index_u32(u_input.a, 23u)])), ~func_3(569f, Struct_1(vec4<u32>(global0.x, 24317u, u_input.a, global0.x), vec4<u32>(global0.x, 4294967295u, global0.x, u_input.a), vec4<bool>(arg_0, arg_0, arg_0, true), vec2<u32>(global0.x, 38136u)), 5186u)), func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1447f + -1775f))), Struct_1(~vec4<u32>(global0.x, u_input.a, 0u, 37499u), min(vec4<u32>(global0.x, global0.x, u_input.a, 72569u), vec4<u32>(u_input.a, u_input.a, 30928u, global0.x)), !vec4<bool>(arg_0, false, true, arg_0), vec2<u32>(u_input.a, 0u)), ~19706u << (0u % 32u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(12783u, 11453u, u_input.a)) << (firstLeadingBit(vec3<u32>(global0.x, u_input.a, u_input.a)) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(global0.xzw, global0.xwz, vec3<u32>(33540u, 73757u, 4294967295u)))), ~(abs(vec4<u32>(global0.x, 30112u, u_input.a, u_input.a)) & abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u), vec4<u32>(global0.x, global0.x, 0u, u_input.a)))), ~(~(~max(vec4<u32>(0u, u_input.a, 0u, 105327u), vec4<u32>(14025u, 1u, global0.x, global0.x)))));
    let var_1 = all(!vec2<bool>(any(vec3<bool>(arg_0, arg_0, false)) | true, arg_0));
    global1 = _wgslsmith_mult_vec3_i32(vec3<i32>(abs(-countOneBits(2147483647i)), _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-29064i, global1.x, 22578i), vec3<i32>(-16766i, 1i, global1.x)), vec3<i32>(~(-30357i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 27414i, 4251i, global1.x), vec4<i32>(global1.x, 2147483647i, -2147483647i, global1.x)), global1.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global1.x, global1.x, 2147483647i) & vec4<i32>(-1i, 1i, global1.x, global1.x), -vec4<i32>(0i, -1i, -478i, -2147483647i)), max(-vec4<i32>(1i, global1.x, global1.x, global1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(14173i, global1.x, global1.x, global1.x), vec4<i32>(10794i, -13526i, global1.x, -3954i))))), reverseBits(-_wgslsmith_add_vec3_i32(select(vec3<i32>(global1.x, -23895i, 79073i), vec3<i32>(global1.x, 0i, 1i), true), select(vec3<i32>(global1.x, global1.x, 2147483647i), vec3<i32>(global1.x, 15432i, global1.x), vec3<bool>(arg_0, var_1, var_1)))));
    return !(!(!select(vec4<bool>(false, arg_0, true, var_1), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(!select(select(vec2<bool>(true, arg_0.c.a.x), vec2<bool>(true, arg_2.b.c.x), true), arg_0.c.b.c.yy, !arg_3.a.a), Struct_1(firstTrailingBit(arg_2.b.a), arg_2.b.a >> (vec4<u32>(72135u, 0u, arg_3.a.b.a.x, u_input.a) % vec4<u32>(32u)), vec4<bool>(arg_2.a.x, true, true, select(arg_1, arg_1, arg_1)), max(reverseBits(vec2<u32>(1u, arg_2.b.b.x)), countOneBits(global0.wx)))), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(arg_2.b.d, global0.zz & vec2<u32>(66945u, u_input.a)), abs(vec2<u32>(arg_0.b.x, arg_0.c.b.a.x))), arg_2.b.a.yy), arg_3.c, firstLeadingBit(arg_0.d));
    let var_1 = -140f;
    var var_2 = 1000f;
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(var_0.c.b.b, ~reverseBits(vec4<u32>(global0.x, arg_2.b.d.x, global0.x, 1u)), ~arg_0.c.b.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(min(select(4567u, 14748u, arg_1), ~4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_3.c.b.a, arg_2.b.b), select(arg_0.c.b.b, vec4<u32>(5500u, arg_3.c.b.a.x, 26538u, 50769u), var_0.c.b.c)), _wgslsmith_mod_u32(arg_2.b.d.x, arg_0.c.b.b.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2.b.a, var_0.a.b.b), countOneBits(vec4<u32>(47850u, arg_0.c.b.a.x, global0.x, 33335u)))), ~_wgslsmith_sub_vec4_u32(abs(arg_0.a.b.b), ~arg_3.a.b.a), arg_2.b.b << ((vec4<u32>(arg_3.b.x, 49685u, u_input.a, 37295u) >> (~vec4<u32>(0u, u_input.a, arg_0.c.b.d.x, 6086u) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_3.a.b.c, var_0.c.b.d);
    var var_4 = vec4<u32>(23707u, func_3(_wgslsmith_f_op_f32(-var_1), Struct_1(min(~vec4<u32>(var_3.d.x, 29770u, 34928u, 118u), ~vec4<u32>(25067u, arg_2.b.d.x, 1u, 53457u)), var_0.a.b.a, func_2(arg_2.a.x), ~max(vec2<u32>(0u, arg_3.b.x), global0.zz)), var_3.a.x), 1025u, 1u);
    return var_0.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = arg_1;
    global3 = 1i;
    global0 = func_4(Struct_3(arg_0, ~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 8379u), arg_1.a.b.a.zw)), Struct_2(var_0.a.a, var_0.a.b), 1i), all(func_4(arg_1, select(false, arg_0.b.c.x, var_0.a.b.c.x) & !var_0.a.a.x, func_4(Struct_3(Struct_2(vec2<bool>(false, false), var_0.c.b), vec2<u32>(arg_0.b.a.x, 4294967295u), var_0.c, -81i), true, arg_1.a, arg_1), global4[_wgslsmith_index_u32(5599u, 30u)]).b.c.wxy), var_0.a, Struct_3(Struct_2(select(func_2(true).yw, select(vec2<bool>(arg_0.a.x, arg_1.a.b.c.x), vec2<bool>(arg_0.b.c.x, arg_1.a.a.x), var_0.a.b.c.zy), all(vec2<bool>(arg_0.b.c.x, arg_0.a.x))), func_4(Struct_3(arg_1.a, vec2<u32>(1u, u_input.a), Struct_2(arg_1.a.b.c.xz, arg_0.b), var_0.d), true, Struct_2(vec2<bool>(true, true), Struct_1(var_0.c.b.b, vec4<u32>(0u, 0u, var_0.b.x, var_0.b.x), arg_1.a.b.c, var_0.c.b.d)), Struct_3(Struct_2(vec2<bool>(false, false), arg_1.c.b), vec2<u32>(arg_1.a.b.b.x, u_input.a), arg_0, 2147483647i)).b), select(_wgslsmith_sub_vec2_u32(abs(arg_0.b.d), global0.wy << (var_0.b % vec2<u32>(32u))), var_0.b, !(!arg_0.a)), arg_1.c, min(2147483647i, countOneBits(var_0.d)))).b.a;
    var var_1 = _wgslsmith_mod_vec4_i32(select(arg_2, select(~(-vec4<i32>(0i, 1i, 12333i, 0i)), min(vec4<i32>(var_0.d, arg_1.d, global1.x, arg_2.x), vec4<i32>(1i, 0i, var_0.d, 7491i)), any(vec3<bool>(arg_1.a.a.x, false, arg_3)) || arg_3), select(!(!arg_0.b.c), !func_4(global4[_wgslsmith_index_u32(0u, 30u)], true, Struct_2(arg_1.a.a, Struct_1(arg_0.b.b, arg_0.b.b, vec4<bool>(false, false, true, false), arg_0.b.a.wx)), var_0).b.c, !(!vec4<bool>(arg_1.a.b.c.x, arg_1.a.b.c.x, arg_3, false)))), firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(~2147483647i, ~15572i), _wgslsmith_dot_vec3_i32(arg_2.xww, arg_2.zyw & vec3<i32>(var_0.d, var_0.d, var_0.d)), global1.x, 20140i)));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(48034u, 1u), 4294967295u), func_3(1000f, func_4(arg_1, false, arg_1.c, Struct_3(func_4(Struct_3(Struct_2(vec2<bool>(arg_1.a.a.x, arg_1.c.a.x), Struct_1(vec4<u32>(1u, arg_0.b.d.x, 0u, 91614u), arg_0.b.a, vec4<bool>(arg_3, var_0.c.b.c.x, arg_1.c.b.c.x, arg_3), global0.xy)), arg_0.b.b.xy, arg_1.a, arg_2.x), arg_0.b.c.x, Struct_2(vec2<bool>(arg_3, arg_1.c.a.x), Struct_1(arg_0.b.b, vec4<u32>(31932u, 72085u, 13720u, global0.x), vec4<bool>(false, var_0.a.a.x, true, false), vec2<u32>(4416u, var_0.b.x))), Struct_3(Struct_2(var_0.c.a, Struct_1(vec4<u32>(0u, 0u, 71204u, var_0.b.x), arg_0.b.b, vec4<bool>(arg_3, false, false, arg_3), vec2<u32>(4294967295u, arg_0.b.a.x))), vec2<u32>(55575u, 1u), arg_0, global1.x)), ~vec2<u32>(global0.x, arg_1.a.b.a.x), arg_0, _wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(1i, 40495i, arg_1.d, var_0.d)))).b, 1u));
    return func_4(Struct_3(func_4(var_0, true, func_4(Struct_3(var_0.c, vec2<u32>(var_0.a.b.b.x, arg_0.b.b.x), arg_1.a, arg_1.d), true, arg_0, Struct_3(Struct_2(vec2<bool>(false, false), arg_0.b), vec2<u32>(var_0.b.x, var_0.c.b.d.x), Struct_2(vec2<bool>(arg_1.a.b.c.x, true), arg_1.c.b), var_0.d)), Struct_3(func_4(Struct_3(Struct_2(arg_0.a, arg_0.b), arg_1.b, Struct_2(vec2<bool>(false, arg_3), Struct_1(arg_0.b.a, var_0.a.b.b, arg_0.b.c, var_0.c.b.b.zy)), 8464i), true, Struct_2(vec2<bool>(arg_1.a.a.x, false), Struct_1(vec4<u32>(40366u, 1u, 9423u, u_input.a), vec4<u32>(94694u, 4294967295u, u_input.a, 37055u), arg_1.a.b.c, var_0.a.b.d)), global4[_wgslsmith_index_u32(var_0.c.b.a.x, 30u)]), vec2<u32>(arg_1.b.x, 1u), arg_0, arg_2.x)), arg_0.b.a.zz, func_4(global4[_wgslsmith_index_u32(~arg_1.c.b.d.x, 30u)], _wgslsmith_f_op_f32(205f * 488f) >= _wgslsmith_f_op_f32(select(2245f, -326f, true)), var_0.c, global4[_wgslsmith_index_u32(u_input.a, 30u)]), var_1.x), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2186f)), 367f) != -894f), func_4(Struct_3(arg_1.a, ~(~vec2<u32>(arg_1.c.b.a.x, 4294967295u)), Struct_2(arg_0.a, func_4(arg_1, true, Struct_2(arg_1.c.a, Struct_1(arg_1.c.b.b, arg_0.b.a, arg_1.a.b.c, vec2<u32>(9945u, arg_1.a.b.d.x))), Struct_3(Struct_2(arg_0.a, arg_1.a.b), arg_0.b.a.xy, arg_0, var_1.x)).b), _wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, var_0.d), global1.x)), func_2(false).x, func_4(var_0, true, arg_1.a, Struct_3(Struct_2(var_0.c.a, Struct_1(vec4<u32>(global0.x, u_input.a, 4294967295u, 28786u), var_0.a.b.b, var_0.c.b.c, vec2<u32>(4294967295u, 1u))), var_0.c.b.d, Struct_2(arg_1.a.a, Struct_1(arg_1.a.b.b, arg_1.c.b.a, vec4<bool>(var_0.a.a.x, arg_1.c.b.c.x, var_0.c.b.c.x, arg_1.a.a.x), vec2<u32>(1u, 1u))), 44074i)), Struct_3(arg_1.c, vec2<u32>(u_input.a, select(4294967295u, 4294967295u, arg_1.c.b.c.x)), func_4(arg_1, true, func_4(Struct_3(Struct_2(arg_0.b.c.yz, Struct_1(var_0.a.b.b, arg_1.a.b.b, vec4<bool>(arg_3, var_0.c.a.x, true, arg_1.a.b.c.x), vec2<u32>(32994u, 112170u))), vec2<u32>(u_input.a, 41123u), var_0.a, 21201i), var_0.a.a.x, Struct_2(vec2<bool>(true, arg_1.a.b.c.x), arg_1.c.b), Struct_3(arg_0, vec2<u32>(u_input.a, 1u), Struct_2(vec2<bool>(arg_3, false), arg_0.b), 38068i)), Struct_3(Struct_2(var_0.c.a, arg_1.c.b), vec2<u32>(1u, u_input.a), Struct_2(arg_1.a.a, Struct_1(var_0.c.b.a, vec4<u32>(u_input.a, global0.x, arg_0.b.d.x, 26620u), arg_1.a.b.c, var_0.c.b.a.zx)), 1i)), 2147483647i)), global4[_wgslsmith_index_u32(~(~arg_0.b.a.x), 30u)]).b;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = func_5(func_4(global4[_wgslsmith_index_u32(~global0.x, 30u)], all(!func_2(true)), Struct_2(!(!vec2<bool>(arg_1.x, arg_1.x)), Struct_1(vec4<u32>(global0.x, 24246u, global0.x, global0.x) >> (vec4<u32>(1u, 79136u, global0.x, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, global0.x, 40619u), vec4<u32>(global0.x, global0.x, 4294967295u, global0.x)), vec4<bool>(true, false, arg_1.x, false), _wgslsmith_mult_vec2_u32(global0.zw, vec2<u32>(20986u, 28225u)))), global4[_wgslsmith_index_u32(u_input.a, 30u)]), Struct_3(func_4(Struct_3(Struct_2(vec2<bool>(arg_1.x, arg_1.x), Struct_1(vec4<u32>(global0.x, u_input.a, u_input.a, 0u), vec4<u32>(43861u, u_input.a, 7529u, u_input.a), vec4<bool>(false, true, arg_1.x, false), global0.yy)), vec2<u32>(global0.x, global0.x) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), func_4(Struct_3(Struct_2(vec2<bool>(arg_1.x, arg_1.x), Struct_1(vec4<u32>(u_input.a, global0.x, u_input.a, 0u), vec4<u32>(0u, 4294967295u, 26473u, global0.x), vec4<bool>(false, arg_1.x, false, arg_1.x), global0.wz)), vec2<u32>(global0.x, global0.x), Struct_2(vec2<bool>(arg_1.x, false), Struct_1(vec4<u32>(25440u, global0.x, 1u, 38528u), vec4<u32>(u_input.a, global0.x, global0.x, 0u), vec4<bool>(false, true, arg_1.x, true), global0.xy)), global1.x), arg_1.x, Struct_2(arg_1, Struct_1(vec4<u32>(global0.x, 1u, global0.x, u_input.a), vec4<u32>(2582u, u_input.a, u_input.a, 29760u), vec4<bool>(false, arg_1.x, true, arg_1.x), global0.zy)), global4[_wgslsmith_index_u32(global0.x, 30u)]), -global1.x), true, func_4(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, 4294967295u), 30u)], false, func_4(global4[_wgslsmith_index_u32(22823u, 30u)], true, Struct_2(vec2<bool>(arg_1.x, false), Struct_1(vec4<u32>(global0.x, global0.x, 4294967295u, 12170u), vec4<u32>(0u, global0.x, u_input.a, u_input.a), vec4<bool>(arg_1.x, true, false, arg_1.x), global0.zw)), global4[_wgslsmith_index_u32(59253u, 30u)]), global4[_wgslsmith_index_u32(global0.x, 30u)]), Struct_3(func_4(global4[_wgslsmith_index_u32(global0.x, 30u)], false, Struct_2(arg_1, Struct_1(vec4<u32>(u_input.a, 51658u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, global0.x), vec4<bool>(arg_1.x, true, false, arg_1.x), vec2<u32>(global0.x, global0.x))), Struct_3(Struct_2(vec2<bool>(arg_1.x, arg_1.x), Struct_1(vec4<u32>(u_input.a, global0.x, u_input.a, u_input.a), vec4<u32>(0u, 1u, 21177u, 0u), vec4<bool>(arg_1.x, false, true, false), vec2<u32>(u_input.a, global0.x))), vec2<u32>(24380u, global0.x), Struct_2(arg_1, Struct_1(vec4<u32>(u_input.a, 13370u, u_input.a, u_input.a), vec4<u32>(u_input.a, global0.x, 17398u, global0.x), vec4<bool>(true, arg_1.x, false, arg_1.x), vec2<u32>(global0.x, global0.x))), 14384i)), global0.yx, func_4(global4[_wgslsmith_index_u32(0u, 30u)], arg_1.x, Struct_2(arg_1, Struct_1(vec4<u32>(24884u, u_input.a, global0.x, global0.x), vec4<u32>(global0.x, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, arg_1.x, arg_1.x), global0.wy)), global4[_wgslsmith_index_u32(u_input.a, 30u)]), firstTrailingBit(global1.x))), vec2<u32>(u_input.a, ~global0.x), Struct_2(select(vec2<bool>(true, false), arg_1, true), Struct_1(abs(vec4<u32>(1u, 52386u, u_input.a, 34336u)), vec4<u32>(85790u, 0u, global0.x, 0u), func_2(true), global0.wx)), 36267i), -_wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(global1.x, global1.x, global1.x, 0i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global1.x, 2147483647i, -8378i, -2147i), -vec4<i32>(global1.x, global1.x, global1.x, 0i), vec4<i32>(2147483647i, -13285i, -56586i, global1.x))), false != !(!arg_1.x & false));
    var var_1 = true;
    var_0 = func_5(Struct_2(!arg_1, func_4(Struct_3(Struct_2(var_0.c.zw, Struct_1(vec4<u32>(1u, var_0.b.x, global0.x, var_0.b.x), vec4<u32>(23949u, 28304u, global0.x, 54418u), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), global0.xx)), global0.yz, func_4(global4[_wgslsmith_index_u32(global0.x, 30u)], true, Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(19985u, 68928u, 40029u, 4294967295u), var_0.b, var_0.c, vec2<u32>(global0.x, u_input.a))), global4[_wgslsmith_index_u32(var_0.b.x, 30u)]), global1.x), var_0.c.x, func_4(global4[_wgslsmith_index_u32(4294967295u, 30u)], true, func_4(Struct_3(Struct_2(var_0.c.xx, Struct_1(var_0.a, vec4<u32>(0u, 87347u, var_0.d.x, global0.x), var_0.c, vec2<u32>(34885u, 6693u))), global0.xy, Struct_2(vec2<bool>(true, arg_1.x), Struct_1(vec4<u32>(27460u, 90u, 4294967295u, 53219u), vec4<u32>(global0.x, global0.x, 0u, global0.x), var_0.c, vec2<u32>(33774u, 1u))), -2147483647i), false, Struct_2(var_0.c.yz, Struct_1(var_0.b, var_0.a, var_0.c, vec2<u32>(36838u, global0.x))), Struct_3(Struct_2(var_0.c.xx, Struct_1(var_0.a, vec4<u32>(34229u, 0u, 4294967295u, 4294967295u), vec4<bool>(arg_1.x, arg_1.x, true, true), var_0.a.zz)), vec2<u32>(u_input.a, 4294967295u), Struct_2(vec2<bool>(arg_1.x, arg_1.x), Struct_1(var_0.a, vec4<u32>(4294967295u, global0.x, global0.x, 1985u), var_0.c, vec2<u32>(4294967295u, var_0.b.x))), -2147483647i)), global4[_wgslsmith_index_u32(select(0u, 4294967295u, true), 30u)]), global4[_wgslsmith_index_u32(global0.x, 30u)]).b), global4[_wgslsmith_index_u32(4294967295u, 30u)], abs(min(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 1i), global1.x, global1.x, -global1.x), ~(~vec4<i32>(global1.x, global1.x, global1.x, global1.x)))), all(vec4<bool>(arg_1.x, arg_1.x, func_2(false).x, !(0i >= global1.x))));
    global0 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(countOneBits(global0.zy), _wgslsmith_clamp_vec2_u32(max(global0.xz, var_0.a.zx), var_0.d & vec2<u32>(global0.x, global0.x), ~vec2<u32>(27870u, 37095u))), u_input.a), _wgslsmith_dot_vec2_u32(firstTrailingBit(global0.yx), global0.ww), 1u, select(_wgslsmith_add_u32(var_0.a.x, _wgslsmith_sub_u32(max(57229u, global0.x), 28922u)), ~1u, false));
    var var_2 = Struct_1((firstTrailingBit(vec4<u32>(var_0.d.x, 4294967295u, 60986u, var_0.b.x)) >> (~vec4<u32>(1u, u_input.a, 5987u, u_input.a) % vec4<u32>(32u))) ^ ((firstLeadingBit(var_0.b) >> (var_0.a % vec4<u32>(32u))) << (firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 4294967295u, 9402u, 28217u), var_0.b)) % vec4<u32>(32u))), var_0.b, !(!select(var_0.c, !vec4<bool>(arg_1.x, var_0.c.x, true, false), vec4<bool>(arg_1.x, true, var_0.c.x, arg_1.x))), global0.yx >> (vec2<u32>(u_input.a, var_0.d.x) % vec2<u32>(32u)));
    return _wgslsmith_div_u32(34116u, ~(_wgslsmith_add_u32(var_0.d.x, func_4(Struct_3(Struct_2(vec2<bool>(arg_1.x, var_2.c.x), Struct_1(var_2.b, vec4<u32>(var_2.d.x, 3020u, 4294967295u, 21050u), vec4<bool>(false, true, true, var_2.c.x), vec2<u32>(var_0.a.x, var_0.b.x))), var_0.d, Struct_2(var_2.c.zz, Struct_1(var_0.b, vec4<u32>(var_0.d.x, 5069u, var_2.b.x, u_input.a), vec4<bool>(var_0.c.x, arg_1.x, true, var_2.c.x), vec2<u32>(var_2.b.x, 1u))), global1.x), true, Struct_2(vec2<bool>(var_0.c.x, false), Struct_1(var_2.a, var_0.a, vec4<bool>(true, true, var_0.c.x, false), var_2.b.yw)), Struct_3(Struct_2(vec2<bool>(var_2.c.x, false), Struct_1(var_0.b, var_0.b, vec4<bool>(false, var_2.c.x, var_0.c.x, true), vec2<u32>(1u, global0.x))), var_2.d, Struct_2(arg_1, Struct_1(vec4<u32>(29806u, 1u, 39095u, global0.x), vec4<u32>(3892u, u_input.a, u_input.a, u_input.a), vec4<bool>(var_2.c.x, true, true, false), vec2<u32>(var_0.d.x, var_0.a.x))), -53685i)).b.a.x) ^ _wgslsmith_mult_u32(0u, 59365u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1531f * -845f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-151f))))))), -1000f);
    let var_1 = Struct_1(vec4<u32>(u_input.a, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1621f, -648f, -1566f, var_0.x) * vec4<f32>(var_0.x, -358f, var_0.x, -910f)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_div_u32(abs(u_input.a), global0.x), global0.x) & reverseBits(vec4<u32>(53913u, reverseBits(global0.x), u_input.a & 1u, global0.x)), countOneBits(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.x, 1u), 60675u, global0.x), 0u, 4294967295u)), func_2(any(select(global2[_wgslsmith_index_u32(4294967295u, 23u)], vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(56404u, global0.x), 23u)]))), global0.zz);
    let var_2 = var_1.c.zz;
    global0 = var_1.a;
    let var_3 = func_4(Struct_3(Struct_2(var_1.c.ww, var_1), countOneBits(global0.xw), func_4(global4[_wgslsmith_index_u32(~countOneBits(60692u), 30u)], true, Struct_2(var_1.c.xw, func_5(Struct_2(vec2<bool>(false, false), Struct_1(var_1.b, vec4<u32>(23298u, 30870u, global0.x, 0u), var_1.c, vec2<u32>(var_1.a.x, var_1.a.x))), global4[_wgslsmith_index_u32(var_1.a.x, 30u)], vec4<i32>(global1.x, 1i, -1i, global1.x), var_2.x)), global4[_wgslsmith_index_u32(u_input.a, 30u)]), 2147483647i), true, Struct_2(vec2<bool>(!var_1.c.x, 38690u >= abs(global0.x)), Struct_1(abs(~var_1.a), func_4(global4[_wgslsmith_index_u32(countOneBits(4294967295u), 30u)], true, Struct_2(vec2<bool>(true, var_1.c.x), Struct_1(vec4<u32>(0u, 4294967295u, 20658u, 0u), var_1.b, var_1.c, vec2<u32>(4294967295u, u_input.a))), Struct_3(Struct_2(vec2<bool>(false, var_1.c.x), Struct_1(vec4<u32>(125u, 29579u, 25665u, global0.x), var_1.b, var_1.c, vec2<u32>(u_input.a, 4294967295u))), vec2<u32>(u_input.a, 0u), Struct_2(var_2, var_1), global1.x)).b.b, select(var_1.c, !vec4<bool>(false, var_2.x, false, var_2.x), var_1.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(65182u, global0.x) >> (global0.yw % vec2<u32>(32u)), global0.wy))), Struct_3(Struct_2(!func_2(var_2.x).xz, var_1), ~vec2<u32>(0u, global0.x << (u_input.a % 32u)), func_4(Struct_3(func_4(Struct_3(Struct_2(vec2<bool>(var_2.x, var_1.c.x), Struct_1(var_1.a, var_1.a, var_1.c, vec2<u32>(global0.x, 1u))), global0.yy, Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1u, var_1.b.x, global0.x, 1u), var_1.b, var_1.c, vec2<u32>(38664u, global0.x))), 5958i), true, Struct_2(var_1.c.zy, var_1), global4[_wgslsmith_index_u32(u_input.a, 30u)]), global0.zy, func_4(Struct_3(Struct_2(var_2, var_1), vec2<u32>(u_input.a, 0u), Struct_2(var_2, Struct_1(vec4<u32>(0u, var_1.d.x, u_input.a, u_input.a), vec4<u32>(37267u, u_input.a, 41942u, 0u), var_1.c, vec2<u32>(u_input.a, u_input.a))), -2147483647i), var_2.x, Struct_2(vec2<bool>(true, true), Struct_1(var_1.b, vec4<u32>(0u, global0.x, var_1.a.x, u_input.a), vec4<bool>(true, true, false, true), global0.zx)), global4[_wgslsmith_index_u32(global0.x, 30u)]), 1i), 0u < ~global0.x, func_4(global4[_wgslsmith_index_u32(global0.x | 15046u, 30u)], false | var_1.c.x, Struct_2(var_1.c.yz, var_1), Struct_3(Struct_2(var_2, Struct_1(vec4<u32>(0u, u_input.a, 1u, 1u), vec4<u32>(0u, 0u, global0.x, 4294967295u), var_1.c, global0.xw)), vec2<u32>(0u, 4294967295u), Struct_2(var_2, var_1), 24835i)), global4[_wgslsmith_index_u32(1u, 30u)]), global1.x)).b;
    global4 = array<Struct_3, 30>();
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(~max(u_input.a, 0u)), _wgslsmith_mod_u32(4294967295u, firstTrailingBit(0u) ^ ~var_3.d.x), 18318u, _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(35598u, 93086u), var_3.a.yx), ~(~1u))), ~(~vec4<u32>(_wgslsmith_clamp_u32(var_3.b.x, var_1.d.x, 4294967295u), global0.x, 28729u, min(var_3.d.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_clamp_u32(0u, ~global0.x, abs(func_4(Struct_3(Struct_2(vec2<bool>(var_3.c.x, false), var_1), var_1.a.zx, Struct_2(vec2<bool>(false, var_2.x), var_3), 1i), true, func_4(global4[_wgslsmith_index_u32(16684u, 30u)], false, Struct_2(vec2<bool>(false, var_1.c.x), Struct_1(var_1.b, var_3.a, vec4<bool>(true, false, true, var_1.c.x), vec2<u32>(var_3.a.x, var_1.b.x))), Struct_3(Struct_2(vec2<bool>(true, var_3.c.x), Struct_1(vec4<u32>(3614u, var_1.a.x, 1u, 4294967295u), vec4<u32>(0u, u_input.a, 72746u, var_1.d.x), vec4<bool>(true, true, true, var_1.c.x), vec2<u32>(29258u, 27967u))), global0.wx, Struct_2(var_1.c.ww, var_1), 0i)), Struct_3(Struct_2(vec2<bool>(var_2.x, var_2.x), Struct_1(var_1.a, vec4<u32>(0u, 11983u, global0.x, var_3.a.x), vec4<bool>(var_3.c.x, true, false, false), vec2<u32>(16759u, 1u))), vec2<u32>(var_3.a.x, 1u), Struct_2(var_2, Struct_1(var_1.b, var_1.a, vec4<bool>(false, var_3.c.x, var_2.x, false), var_3.b.yz)), global1.x)).b.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -395f) - vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, 1482f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1445f, var_0.x)))), var_2))), ~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, 16389i)) ^ ~vec2<i32>(7687i, global1.x), _wgslsmith_mult_vec2_i32(global1.zx, global1.zx) ^ global1.yy));
}

