struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(2147483647i, -10559i, 2147483647i, vec2<u32>(0u, 1u), vec4<i32>(1i, 2147483647i, -1i, -56684i)), 1u, true, 0i, Struct_1(36062i, 1i, i32(-2147483648), vec2<u32>(0u, 0u), vec4<i32>(-17771i, 28170i, -1i, -35328i))), Struct_2(Struct_1(-1i, 0i, i32(-2147483648), vec2<u32>(31037u, 58736u), vec4<i32>(i32(-2147483648), 0i, 1i, 0i)), 74090u, true, i32(-2147483648), Struct_1(4364i, 2147483647i, -13809i, vec2<u32>(0u, 0u), vec4<i32>(2147483647i, 0i, -104583i, i32(-2147483648)))), Struct_2(Struct_1(2147483647i, 0i, i32(-2147483648), vec2<u32>(1u, 1u), vec4<i32>(36444i, 2147483647i, 6596i, -1i)), 10026u, true, -27868i, Struct_1(-8431i, 9837i, -1i, vec2<u32>(9334u, 1u), vec4<i32>(-33355i, -1i, 14529i, i32(-2147483648)))), Struct_2(Struct_1(-37082i, 53165i, -5705i, vec2<u32>(1u, 1u), vec4<i32>(-1i, 0i, 35952i, i32(-2147483648))), 99935u, false, -48367i, Struct_1(1i, 54772i, 25620i, vec2<u32>(1u, 73620u), vec4<i32>(1i, 17302i, 53828i, -32196i))), Struct_2(Struct_1(-1i, 1i, -2806i, vec2<u32>(1u, 23004u), vec4<i32>(3782i, 0i, 72615i, -1i)), 32121u, true, -34606i, Struct_1(-10952i, i32(-2147483648), 1i, vec2<u32>(0u, 4294967295u), vec4<i32>(1i, 14214i, 18113i, 26324i))), Struct_2(Struct_1(1i, 1i, -1i, vec2<u32>(33934u, 11521u), vec4<i32>(-27082i, 1i, -5836i, 0i)), 0u, false, 2147483647i, Struct_1(24141i, 1i, i32(-2147483648), vec2<u32>(28086u, 1u), vec4<i32>(i32(-2147483648), 1i, 25366i, -23764i))), Struct_2(Struct_1(0i, i32(-2147483648), i32(-2147483648), vec2<u32>(2904u, 23426u), vec4<i32>(1i, 2147483647i, 1i, -1447i)), 29956u, false, -1i, Struct_1(1i, 0i, 1i, vec2<u32>(41613u, 4294967295u), vec4<i32>(-14238i, -1i, 22664i, 90051i))), Struct_2(Struct_1(-21719i, -26742i, -18322i, vec2<u32>(44455u, 1u), vec4<i32>(12678i, 1i, -18069i, 1839i)), 1u, true, -8112i, Struct_1(i32(-2147483648), 21654i, -1i, vec2<u32>(104707u, 1u), vec4<i32>(39800i, -13608i, 1i, i32(-2147483648)))), Struct_2(Struct_1(-9439i, 0i, 0i, vec2<u32>(9061u, 7047u), vec4<i32>(i32(-2147483648), -43817i, 36729i, -8810i)), 0u, false, 27195i, Struct_1(2147483647i, -1i, -68009i, vec2<u32>(54172u, 1u), vec4<i32>(-8161i, 68226i, 0i, i32(-2147483648)))), Struct_2(Struct_1(-1772i, i32(-2147483648), 2147483647i, vec2<u32>(18796u, 8953u), vec4<i32>(0i, 1i, i32(-2147483648), -1i)), 1u, true, -22404i, Struct_1(629i, -33523i, 4922i, vec2<u32>(18826u, 0u), vec4<i32>(12491i, 39002i, -1i, -1i))), Struct_2(Struct_1(-1i, -33480i, 1i, vec2<u32>(1u, 4294967295u), vec4<i32>(-40669i, i32(-2147483648), -518i, -44453i)), 20037u, true, -6175i, Struct_1(8124i, 1i, -24564i, vec2<u32>(3066u, 33151u), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i))), Struct_2(Struct_1(18256i, -29159i, 41947i, vec2<u32>(7259u, 82910u), vec4<i32>(0i, 38224i, -6826i, -1i)), 0u, false, 1279i, Struct_1(-1i, 13638i, -50883i, vec2<u32>(60554u, 36563u), vec4<i32>(1i, 12108i, -29092i, -1048i))), Struct_2(Struct_1(-8857i, 64627i, 2147483647i, vec2<u32>(0u, 10325u), vec4<i32>(-60708i, 0i, 54069i, 28792i)), 46883u, false, -1i, Struct_1(i32(-2147483648), 787i, 16472i, vec2<u32>(4294967295u, 1u), vec4<i32>(-1i, 25942i, 9748i, -2407i))), Struct_2(Struct_1(0i, 1i, 0i, vec2<u32>(5782u, 40047u), vec4<i32>(1i, 1i, 0i, -39568i)), 1u, true, i32(-2147483648), Struct_1(34469i, -1i, 1i, vec2<u32>(0u, 26558u), vec4<i32>(2147483647i, 39786i, -19104i, 8939i))), Struct_2(Struct_1(0i, 0i, 23057i, vec2<u32>(0u, 45212u), vec4<i32>(-28139i, -19592i, 0i, 0i)), 4195u, false, 23449i, Struct_1(2147483647i, 16597i, 5423i, vec2<u32>(1u, 1u), vec4<i32>(2147483647i, 7207i, -25054i, 66403i))), Struct_2(Struct_1(-1i, -5603i, -9117i, vec2<u32>(4294967295u, 18912u), vec4<i32>(-28260i, 7001i, 13513i, 1i)), 766u, false, 1i, Struct_1(1i, 20782i, i32(-2147483648), vec2<u32>(21286u, 4294967295u), vec4<i32>(2147483647i, 23046i, 2147483647i, 1i))), Struct_2(Struct_1(1i, -24928i, 1i, vec2<u32>(21659u, 0u), vec4<i32>(19602i, 2147483647i, 0i, 0i)), 0u, false, 8334i, Struct_1(-51039i, -1i, -1i, vec2<u32>(4294967295u, 7879u), vec4<i32>(0i, 2147483647i, -8284i, 2147483647i))), Struct_2(Struct_1(2147483647i, 3079i, i32(-2147483648), vec2<u32>(66089u, 1u), vec4<i32>(1i, i32(-2147483648), 20730i, 26291i)), 38118u, false, 31136i, Struct_1(-23638i, 14726i, 53470i, vec2<u32>(1u, 9260u), vec4<i32>(-63379i, 33996i, 1i, 11063i))), Struct_2(Struct_1(-38012i, 2147483647i, 20807i, vec2<u32>(0u, 1u), vec4<i32>(-53992i, 0i, 2147483647i, -36059i)), 35740u, false, 1i, Struct_1(1i, 46007i, i32(-2147483648), vec2<u32>(45254u, 1u), vec4<i32>(19037i, -40687i, 1898i, 2147483647i))), Struct_2(Struct_1(-1i, -38688i, 0i, vec2<u32>(18158u, 1u), vec4<i32>(2147483647i, -1i, 0i, 38116i)), 20250u, true, i32(-2147483648), Struct_1(14977i, -9981i, 31118i, vec2<u32>(0u, 28006u), vec4<i32>(9916i, 0i, 22303i, 37156i))), Struct_2(Struct_1(i32(-2147483648), -50382i, 1i, vec2<u32>(6593u, 1u), vec4<i32>(-46616i, 2147483647i, -15648i, -1i)), 12451u, false, -1i, Struct_1(i32(-2147483648), 22425i, 29905i, vec2<u32>(4294967295u, 33632u), vec4<i32>(-30568i, -1i, -38768i, 8266i))), Struct_2(Struct_1(-547i, 1517i, 2147483647i, vec2<u32>(58434u, 51095u), vec4<i32>(1i, 25866i, -24991i, -45307i)), 1u, false, 1i, Struct_1(0i, -1i, 25472i, vec2<u32>(0u, 1u), vec4<i32>(2147483647i, 50126i, 13665i, 2147483647i))), Struct_2(Struct_1(2147483647i, 21587i, -14978i, vec2<u32>(4376u, 4294967295u), vec4<i32>(i32(-2147483648), -1i, 0i, 15752i)), 37703u, false, 13922i, Struct_1(-48619i, -13484i, 0i, vec2<u32>(4294967295u, 4294967295u), vec4<i32>(-28290i, -1i, i32(-2147483648), 2147483647i))), Struct_2(Struct_1(5792i, -19685i, 2147483647i, vec2<u32>(4294967295u, 22755u), vec4<i32>(i32(-2147483648), i32(-2147483648), -30193i, -31642i)), 0u, true, -482i, Struct_1(0i, 0i, 16641i, vec2<u32>(4294967295u, 24470u), vec4<i32>(i32(-2147483648), 1i, -1i, i32(-2147483648)))), Struct_2(Struct_1(-37695i, -37146i, -22354i, vec2<u32>(17416u, 633u), vec4<i32>(20105i, -7173i, 0i, -1i)), 0u, true, 1i, Struct_1(20200i, -1i, 11362i, vec2<u32>(1u, 20397u), vec4<i32>(-1i, -41799i, -1i, 2147483647i))), Struct_2(Struct_1(29390i, -1i, 35872i, vec2<u32>(1u, 20132u), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 2147483647i)), 39102u, true, 0i, Struct_1(0i, -10286i, 2147483647i, vec2<u32>(4294967295u, 21052u), vec4<i32>(i32(-2147483648), 0i, 1i, 0i))), Struct_2(Struct_1(1i, 2147483647i, -10694i, vec2<u32>(14609u, 42237u), vec4<i32>(-1i, -39653i, 1587i, 2147483647i)), 8545u, false, i32(-2147483648), Struct_1(11612i, -10749i, i32(-2147483648), vec2<u32>(34095u, 1u), vec4<i32>(i32(-2147483648), -32117i, -46120i, -45747i))), Struct_2(Struct_1(-28167i, 0i, 1i, vec2<u32>(97529u, 4294967295u), vec4<i32>(0i, 41640i, 2147483647i, 0i)), 5048u, true, 0i, Struct_1(i32(-2147483648), -1i, 0i, vec2<u32>(0u, 1u), vec4<i32>(1i, 17600i, 24848i, -14197i))), Struct_2(Struct_1(1i, 11964i, 584i, vec2<u32>(38279u, 1u), vec4<i32>(0i, 4203i, 0i, 23079i)), 52399u, true, 0i, Struct_1(0i, 1i, 1i, vec2<u32>(1u, 45313u), vec4<i32>(-1i, 2147483647i, 7744i, -10180i))), Struct_2(Struct_1(31224i, i32(-2147483648), 3520i, vec2<u32>(60126u, 22842u), vec4<i32>(i32(-2147483648), -9189i, 15357i, 25333i)), 0u, true, -1i, Struct_1(14397i, -1i, 49349i, vec2<u32>(1u, 59624u), vec4<i32>(3640i, i32(-2147483648), 28958i, 0i))));

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(Struct_1(-firstLeadingBit(70943i) >> (countOneBits(reverseBits(u_input.a)) % 32u), -2147483647i, -50298i, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(103175u, 0u), vec2<u32>(17461u, u_input.a)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 21016u), vec2<u32>(4294967295u, 16546u)) % vec2<u32>(32u)), ~(vec2<u32>(0u, 1u) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))), select(select(max(vec4<i32>(global1.x, global1.x, -9403i, 12430i), vec4<i32>(u_input.c.x, 2239i, 0i, global1.x)), ~vec4<i32>(2147483647i, u_input.c.x, 1i, 3137i), true), vec4<i32>(-u_input.b, ~global1.x, abs(u_input.b), 1i), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)))), max(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(22218u, u_input.a, u_input.a)), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(38486u, 48000u, 4294967295u), vec3<bool>(true, true, true))), 1u & _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 56158u), min(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(1u, u_input.a, 48224u)))), true, abs(-abs(_wgslsmith_div_i32(u_input.b, global1.x))), Struct_1(-5905i, -29173i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, u_input.c.x) | select(u_input.b, u_input.c.x, false), _wgslsmith_clamp_i32(global1.x, -2147483647i, ~(-11189i))), vec2<u32>(0u, 1u), firstTrailingBit(select(select(vec4<i32>(u_input.c.x, u_input.b, global1.x, u_input.b), vec4<i32>(u_input.b, 58727i, 0i, global1.x), vec4<bool>(false, true, false, true)), ~vec4<i32>(37148i, -1i, u_input.c.x, global1.x), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true)))));
    var var_1 = var_0.c;
    var var_2 = global0[_wgslsmith_index_u32(var_0.e.d.x, 30u)];
    var var_3 = abs(u_input.c.x);
    global0 = array<Struct_2, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    global0 = array<Struct_2, 30>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 380f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-593f)), _wgslsmith_f_op_f32(f32(-1f) * -158f), 481f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, 336f, 1243f))))));
    let var_1 = _wgslsmith_div_vec2_i32(-arg_2, u_input.c & vec2<i32>(reverseBits(0i), arg_2.x));
    var var_2 = (i32(-1i) * -2147483647i) >= global1.x;
    let var_3 = Struct_1(reverseBits(-2147483647i), u_input.c.x, -1i, min(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, arg_1.a.d.x), ~vec2<u32>(8969u, arg_1.e.d.x)), select(abs(vec2<u32>(u_input.a, 4294967295u)), arg_1.e.d, false) ^ (vec2<u32>(u_input.a, 21039u) & vec2<u32>(arg_1.b, 0u))), ((arg_1.e.e >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, arg_1.a.d.x), vec4<u32>(arg_1.e.d.x, 29392u, u_input.a, 93682u)) % vec4<u32>(32u))) | arg_1.a.e) << (countOneBits(vec4<u32>(62481u, abs(4294967295u), _wgslsmith_mod_u32(arg_1.b, arg_1.e.d.x), 4294967295u)) % vec4<u32>(32u)));
    return -(~(-_wgslsmith_add_i32(var_3.b, -global1.x)));
}

fn func_1() -> bool {
    let var_0 = ~(u_input.b >> (u_input.a % 32u));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, min(global1.x, ~firstTrailingBit(var_0)), ~u_input.b, abs(_wgslsmith_div_i32(u_input.c.x, var_0 ^ global1.x))), max(vec4<i32>(_wgslsmith_add_i32(min(global1.x, -2147483647i), -4621i), u_input.c.x, -u_input.c.x, ~(-16253i << (u_input.a % 32u))), _wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, 0i, u_input.b) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 55325u, u_input.a, 15244u)) % vec4<u32>(32u)), vec4<i32>(func_2(vec4<bool>(false, false, false, true), global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.c), reverseBits(u_input.b), _wgslsmith_add_i32(global1.x, var_0), global1.x))));
    let var_2 = !(!(all(vec2<bool>(true, true)) | select(any(vec3<bool>(false, true, false)), true, u_input.a > 8895u)));
    var var_3 = (~(~vec2<u32>(u_input.a, 11955u) >> (firstTrailingBit(vec2<u32>(1u, u_input.a)) % vec2<u32>(32u))) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(5310u, 0u), vec2<u32>(1u, u_input.a)), min(vec2<u32>(1u, 5114u), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u))) << (~select(~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(71660u, u_input.a) % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(3524u, 1u)), var_2) % vec2<u32>(32u));
    let var_4 = Struct_1(~(~(-_wgslsmith_mod_i32(-11432i, var_1.x))), -(~global1.x), _wgslsmith_dot_vec2_i32(min(select(u_input.c, vec2<i32>(1i, -37138i), !var_2), _wgslsmith_sub_vec2_i32(~vec2<i32>(43809i, 28589i), ~u_input.c)), -vec2<i32>(i32(-1i) * -2147483647i, var_0)), _wgslsmith_div_vec2_u32(~(~firstLeadingBit(vec2<u32>(u_input.a, var_3.x))), vec2<u32>(~u_input.a, 46139u) & _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(14897u, u_input.a)), vec2<u32>(u_input.a, 11377u) ^ vec2<u32>(43330u, 28718u), vec2<u32>(4294967295u, 4294967295u))), vec4<i32>(_wgslsmith_mod_i32(-(~(-103849i)), var_1.x), 24045i, global1.x, var_0));
    return !all(!vec2<bool>(all(vec4<bool>(var_2, var_2, true, var_2)), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.c;
    var var_0 = vec2<bool>(true, !(!(!func_1())));
    var var_1 = Struct_1(global1.x, 44275i, _wgslsmith_clamp_i32(reverseBits(global1.x >> (13107u % 32u)), global1.x, global1.x) | global1.x, _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, ~1u), vec2<u32>(countOneBits(_wgslsmith_mod_u32(38142u, u_input.a)), min(u_input.a >> (4294967295u % 32u), _wgslsmith_mod_u32(u_input.a, 1u)))), vec4<i32>(-_wgslsmith_clamp_i32(-9708i, _wgslsmith_sub_i32(2147483647i, 0i), ~u_input.b), -min(~u_input.c.x, 16604i), 179i, ~u_input.c.x | global1.x));
    var_1 = Struct_1(var_1.b, 13991i, ~global1.x, var_1.d, -_wgslsmith_sub_vec4_i32(var_1.e, min(vec4<i32>(15841i, 29500i, 61402i, 76048i), vec4<i32>(-2147483647i, -70950i, u_input.c.x, var_1.b))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-207f)), _wgslsmith_f_op_f32(f32(-1f) * -961f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2 - var_2), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2869f), _wgslsmith_f_op_f32(max(102f, var_2))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(var_2 + var_2)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(abs(553f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * var_2) + 1314f), var_2))));
}

