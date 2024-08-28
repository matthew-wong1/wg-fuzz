struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<Struct_3, 28>;

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(1209f, vec3<bool>(true, true, false), vec3<bool>(false, true, true), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec2<u32>(15475u, 4294967295u), -1i, vec4<i32>(i32(-2147483648), -26532i, 0i, 12748i)), 73140u), vec2<i32>(0i, 0i), 1i, Struct_1(vec2<u32>(4425u, 1u), 7952i, vec4<i32>(10689i, 1i, 12228i, 2147483647i)))), Struct_4(355f, vec3<bool>(true, true, true), vec3<bool>(true, true, false), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec2<u32>(1u, 12997u), 2147483647i, vec4<i32>(-16161i, -5215i, -44442i, 2147483647i)), 4294967295u), vec2<i32>(1i, -83622i), 1i, Struct_1(vec2<u32>(18384u, 9735u), 26098i, vec4<i32>(12652i, -47944i, i32(-2147483648), -1i)))), Struct_4(-2135f, vec3<bool>(true, false, false), vec3<bool>(false, true, false), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), i32(-2147483648), vec4<i32>(-53668i, -15598i, -26427i, 0i)), 5479u), vec2<i32>(-7430i, -1i), 2147483647i, Struct_1(vec2<u32>(4294967295u, 1u), -27086i, vec4<i32>(34726i, 58106i, 1i, 0i)))), Struct_4(1373f, vec3<bool>(false, true, true), vec3<bool>(true, true, false), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(53175u, 4294967295u), 0i, vec4<i32>(51937i, 0i, 36200i, 14893i)), 0u), vec2<i32>(1i, -1i), -18567i, Struct_1(vec2<u32>(0u, 9873u), -13720i, vec4<i32>(-30383i, i32(-2147483648), i32(-2147483648), -24051i)))), Struct_4(529f, vec3<bool>(false, true, true), vec3<bool>(true, true, true), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec2<u32>(0u, 130400u), 2147483647i, vec4<i32>(-1i, i32(-2147483648), -1i, 0i)), 6526u), vec2<i32>(1i, 33913i), -15406i, Struct_1(vec2<u32>(19656u, 0u), -21798i, vec4<i32>(0i, i32(-2147483648), -1i, -1i)))), Struct_4(228f, vec3<bool>(true, true, true), vec3<bool>(false, false, false), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 0i, vec4<i32>(2147483647i, i32(-2147483648), -1088i, 32739i)), 71227u), vec2<i32>(45806i, -8000i), -1i, Struct_1(vec2<u32>(4294967295u, 1u), -1i, vec4<i32>(1i, 32070i, -1i, -1i)))), Struct_4(-654f, vec3<bool>(true, true, false), vec3<bool>(true, false, true), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec2<u32>(1u, 0u), -1i, vec4<i32>(i32(-2147483648), -1i, -1i, -1i)), 0u), vec2<i32>(5723i, -13660i), -1i, Struct_1(vec2<u32>(32878u, 58955u), -3679i, vec4<i32>(-1i, 48604i, -19607i, -19100i)))), Struct_4(556f, vec3<bool>(true, false, false), vec3<bool>(true, false, true), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec2<u32>(34276u, 0u), -1i, vec4<i32>(1i, 8563i, 1i, 25193i)), 0u), vec2<i32>(7781i, 0i), 2147483647i, Struct_1(vec2<u32>(8634u, 4294967295u), -17494i, vec4<i32>(0i, -1i, -39031i, 26587i)))), Struct_4(-607f, vec3<bool>(true, true, false), vec3<bool>(false, false, true), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(8644u, 55187u), -8257i, vec4<i32>(6580i, 2147483647i, 2147483647i, 35050i)), 22156u), vec2<i32>(24026i, 44866i), 0i, Struct_1(vec2<u32>(5441u, 61097u), -56736i, vec4<i32>(411i, -3815i, 7354i, 1i)))), Struct_4(-483f, vec3<bool>(false, false, true), vec3<bool>(true, true, true), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(1u, 34553u), 6828i, vec4<i32>(0i, 1i, 0i, -1i)), 1u), vec2<i32>(2147483647i, -5211i), -1i, Struct_1(vec2<u32>(4294967295u, 89160u), -1i, vec4<i32>(7026i, i32(-2147483648), -1i, 8660i)))), Struct_4(516f, vec3<bool>(true, true, true), vec3<bool>(true, false, false), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec2<u32>(1u, 6220u), -1i, vec4<i32>(-1i, -66774i, -34850i, 0i)), 0u), vec2<i32>(-1i, 2147483647i), -30999i, Struct_1(vec2<u32>(50942u, 52613u), -60559i, vec4<i32>(57978i, 57312i, -10967i, 1i)))), Struct_4(590f, vec3<bool>(false, true, true), vec3<bool>(false, true, true), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec2<u32>(0u, 59525u), 1996i, vec4<i32>(33134i, -20063i, -24644i, -1i)), 24684u), vec2<i32>(0i, -80463i), i32(-2147483648), Struct_1(vec2<u32>(21945u, 33488u), -18899i, vec4<i32>(57016i, -1i, i32(-2147483648), 2147483647i)))), Struct_4(-832f, vec3<bool>(true, false, true), vec3<bool>(false, true, true), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec2<u32>(0u, 57306u), 1i, vec4<i32>(23638i, 51943i, 0i, 67585i)), 1u), vec2<i32>(-5414i, i32(-2147483648)), 70305i, Struct_1(vec2<u32>(0u, 3050u), 1i, vec4<i32>(17320i, 18630i, 2147483647i, -40864i)))), Struct_4(376f, vec3<bool>(false, false, true), vec3<bool>(false, true, false), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec2<u32>(1u, 36949u), 0i, vec4<i32>(-1i, 0i, i32(-2147483648), -1i)), 54620u), vec2<i32>(48922i, -1i), 25955i, Struct_1(vec2<u32>(6206u, 4294967295u), 18730i, vec4<i32>(2147483647i, -64146i, 2147483647i, 54096i)))), Struct_4(-381f, vec3<bool>(true, false, false), vec3<bool>(false, true, true), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec2<u32>(0u, 18912u), -24657i, vec4<i32>(-5221i, 25796i, 1i, -1i)), 12282u), vec2<i32>(2147483647i, 0i), -9688i, Struct_1(vec2<u32>(0u, 4294967295u), 37912i, vec4<i32>(1i, 548i, 0i, -49560i)))), Struct_4(-290f, vec3<bool>(true, true, true), vec3<bool>(true, false, false), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec2<u32>(13261u, 34701u), -1i, vec4<i32>(0i, -1i, 2147483647i, -52325i)), 0u), vec2<i32>(90651i, -36663i), 7755i, Struct_1(vec2<u32>(16952u, 47554u), -1i, vec4<i32>(0i, 47405i, 14206i, 8757i)))), Struct_4(-1238f, vec3<bool>(true, true, true), vec3<bool>(true, true, true), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(0u, 0u), -8783i, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -6491i)), 6762u), vec2<i32>(40779i, -1i), 17744i, Struct_1(vec2<u32>(39071u, 4294967295u), 5596i, vec4<i32>(3178i, 0i, -46802i, 2147483647i)))), Struct_4(-115f, vec3<bool>(false, true, false), vec3<bool>(false, false, false), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec2<u32>(4294967295u, 14074u), 0i, vec4<i32>(-1i, 54673i, 1i, -6962i)), 0u), vec2<i32>(26072i, -1i), 19i, Struct_1(vec2<u32>(1u, 31315u), 2147483647i, vec4<i32>(-15965i, 2147483647i, -1i, -1385i)))), Struct_4(829f, vec3<bool>(false, true, true), vec3<bool>(false, true, false), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec2<u32>(0u, 13319u), -14548i, vec4<i32>(27025i, 1i, -19854i, 726i)), 40574u), vec2<i32>(3129i, 20471i), -1i, Struct_1(vec2<u32>(35153u, 8062u), 27344i, vec4<i32>(-1i, -1i, 1i, 13895i)))), Struct_4(-1150f, vec3<bool>(false, false, true), vec3<bool>(false, false, false), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec2<u32>(1312u, 4294967295u), -27303i, vec4<i32>(0i, -63549i, i32(-2147483648), 28083i)), 57091u), vec2<i32>(0i, 1i), -1i, Struct_1(vec2<u32>(4294967295u, 1u), 28994i, vec4<i32>(-1i, 0i, i32(-2147483648), 1i)))), Struct_4(-609f, vec3<bool>(true, false, false), vec3<bool>(false, true, false), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(83707u, 0u), -17093i, vec4<i32>(1i, -1i, -1i, 2474i)), 30391u), vec2<i32>(2147483647i, i32(-2147483648)), 0i, Struct_1(vec2<u32>(1u, 35609u), -19024i, vec4<i32>(19359i, -14422i, 5101i, 16616i)))), Struct_4(1995f, vec3<bool>(true, true, false), vec3<bool>(false, false, true), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec2<u32>(35108u, 0u), 41169i, vec4<i32>(18430i, 2147483647i, 30887i, 2147483647i)), 42491u), vec2<i32>(i32(-2147483648), 1i), 54953i, Struct_1(vec2<u32>(3921u, 28225u), 2147483647i, vec4<i32>(i32(-2147483648), 0i, 18536i, -8266i)))), Struct_4(-184f, vec3<bool>(true, false, true), vec3<bool>(false, true, false), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(1u, 24421u), 1907i, vec4<i32>(0i, 32217i, 35730i, -9189i)), 4294967295u), vec2<i32>(8561i, -29631i), -3173i, Struct_1(vec2<u32>(30143u, 5589u), -22934i, vec4<i32>(0i, 6990i, 1i, -12512i)))), Struct_4(365f, vec3<bool>(false, true, false), vec3<bool>(false, true, false), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(0u, 1u), -7275i, vec4<i32>(5194i, 78576i, -12637i, 0i)), 0u), vec2<i32>(0i, 23525i), i32(-2147483648), Struct_1(vec2<u32>(0u, 0u), 0i, vec4<i32>(-1i, 37666i, -34613i, 56382i)))), Struct_4(-1143f, vec3<bool>(false, true, true), vec3<bool>(true, true, true), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec2<u32>(41973u, 20669u), 18660i, vec4<i32>(-1i, -24834i, -42016i, -1i)), 33958u), vec2<i32>(-14130i, -39759i), -20017i, Struct_1(vec2<u32>(13115u, 18831u), i32(-2147483648), vec4<i32>(85643i, -24862i, 0i, 2147483647i)))), Struct_4(-335f, vec3<bool>(true, true, true), vec3<bool>(true, false, true), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec2<u32>(23308u, 65874u), -17646i, vec4<i32>(80098i, 82722i, -10814i, -36922i)), 1u), vec2<i32>(19174i, -1i), 0i, Struct_1(vec2<u32>(11992u, 24913u), 30062i, vec4<i32>(-70386i, 2147483647i, 2147483647i, -5389i)))), Struct_4(-539f, vec3<bool>(false, true, false), vec3<bool>(true, false, false), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(29757u, 26085u), i32(-2147483648), vec4<i32>(57041i, i32(-2147483648), -1i, 11741i)), 1u), vec2<i32>(-57089i, 1i), i32(-2147483648), Struct_1(vec2<u32>(0u, 0u), 42841i, vec4<i32>(47542i, 1i, -12805i, 0i)))));

var<private> global3: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_5(global1[_wgslsmith_index_u32(abs(firstLeadingBit(4294967295u)), 28u)], countOneBits(max(~(u_input.c & u_input.a.x), 0u)), -1i, ~u_input.c);
    let var_1 = var_0;
    var var_2 = Struct_1(~(~select(u_input.a.ww, vec2<u32>(u_input.c, u_input.a.x) << (var_0.a.e.a % vec2<u32>(32u)), var_1.a.a.x && var_1.a.a.x)), u_input.b, vec4<i32>(var_0.a.b.a.c.x, var_0.c, _wgslsmith_mult_i32(19391i, var_0.a.c.x), global3.x));
    global1 = array<Struct_3, 28>();
    var var_3 = -16031i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-929f))))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))))));
    global2 = array<Struct_4, 27>();
    global0 = array<f32, 28>();
    return Struct_3(vec2<bool>(false, select(false, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)] - -977f) >= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 735f), 1i > countOneBits(global3.x))), Struct_2(Struct_1(vec2<u32>(_wgslsmith_mod_u32(0u, u_input.a.x), ~u_input.a.x), _wgslsmith_mod_i32(-arg_0.x, abs(arg_0.x)), firstTrailingBit(vec4<i32>(-1i, u_input.b, -2147483647i, global3.x))), ~474u), reverseBits(vec2<i32>(0i, -37706i)), countOneBits(~_wgslsmith_sub_i32(1i, abs(arg_0.x))), Struct_1(vec2<u32>(1754u, 0u), ~global3.x, reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, arg_0.x, 2147483647i, -41368i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, global3.x, -9742i, -2147483647i), vec4<i32>(-2147483647i, -1i, global3.x, -1i), vec4<i32>(global3.x, -28572i, 1i, -24143i))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -760f);
    let var_1 = arg_1.x;
    global2 = array<Struct_4, 27>();
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1665f, 260f, arg_2, arg_3))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_3)), arg_3, _wgslsmith_f_op_f32(1043f * arg_3), 1000f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(47405u, 28u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * -410f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, arg_3, true)) - _wgslsmith_div_f32(-386f, 1308f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, -203f, arg_1.x))))))));
    var_0 = 1250f;
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(-select(func_2(arg_0.e.c.wz).b.a.c.x, ~global3.x, !arg_0.a.x), _wgslsmith_dot_vec2_i32(max(-vec2<i32>(global3.x, -2147483647i), ~arg_0.b.a.c.wz), abs(global3.zx) >> (~vec2<u32>(139843u, 4294967295u) % vec2<u32>(32u)))), -14313i);
}

fn func_1() -> Struct_3 {
    global3 = vec3<i32>(max(1848i, u_input.b), func_4(func_2(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(global3.yx, global3.xz), global3.zy ^ vec2<i32>(54739i, global3.x))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c, 28u)], -675f))), _wgslsmith_f_op_f32(func_3())), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_div_i32(reverseBits(30712i ^ u_input.b), u_input.b), ~func_4(global1[_wgslsmith_index_u32(~55864u, 28u)], select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(sign(731f)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(76343u, 22954u), 28u)])));
    let var_0 = Struct_4(158f, select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)] >= -1500f), vec3<bool>(any(vec4<bool>(false, true, true, true)), func_2(vec2<i32>(-16883i, u_input.b)).a.x == any(vec3<bool>(true, true, false)), false), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)))), vec3<bool>(!(!any(vec3<bool>(false, false, true))), all(select(func_2(vec2<i32>(global3.x, u_input.b)).a, vec2<bool>(true, true), false)), !func_2(vec2<i32>(u_input.b, 25902i)).a.x), func_2(global3.yz));
    return var_0.d;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = arg_1;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(u_input.a.x), 0u), 28u)]), global0[_wgslsmith_index_u32(~1u, 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(381f)) * -388f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 28u)] - global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), -416f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -651f))))));
    var var_2 = Struct_5(Struct_3(vec2<bool>(arg_0.a.x, arg_0.a.x), Struct_2(arg_0.e, func_2(_wgslsmith_mult_vec2_i32(global3.yx, vec2<i32>(1875i, 10435i))).b.a.a.x), (vec2<i32>(arg_0.b.a.b, global3.x) & var_0.c.zx) ^ func_2(var_0.c.zx).c, reverseBits(~max(u_input.b, -30594i)), func_2(vec2<i32>(var_0.c.x | arg_0.b.a.b, -1193i)).b.a), u_input.c, ~(-2147483647i) >> (func_1().b.b % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(~4294967295u, var_0.a.x), _wgslsmith_mod_u32(55689u, 4584u)));
    let var_3 = _wgslsmith_f_op_f32(-var_1.x);
    let var_4 = !select(!(!vec3<bool>(arg_0.a.x, arg_0.a.x, true)), vec3<bool>(var_3 < _wgslsmith_f_op_f32(-var_1.x), !(arg_0.e.a.x >= u_input.c), any(!vec4<bool>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, arg_0.a.x))), select(vec3<bool>(770f != global0[_wgslsmith_index_u32(arg_1.a.x, 28u)], !var_2.a.a.x, true), !(!vec3<bool>(false, arg_0.a.x, var_2.a.a.x)), true));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1413f, 219f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-494f, 910f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.yx))))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = 432f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + -772f) + -683f), 489f));
    return Struct_4(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~abs(arg_1.d.e.a.x), 28u)]), vec3<bool>(arg_1.b.x, !arg_1.b.x, !arg_1.d.a.x), !select(arg_1.b, select(vec3<bool>(arg_1.b.x, arg_1.c.x, arg_1.c.x), vec3<bool>(arg_1.c.x, false, true), vec3<bool>(arg_1.b.x, false, arg_1.c.x)), !(!arg_1.d.a.x)), Struct_3(!vec2<bool>(all(vec2<bool>(true, arg_1.b.x)), true), Struct_2(func_1().e, 4294967295u >> (arg_1.d.e.a.x % 32u)), ~(~vec2<i32>(arg_1.d.c.x, -31484i)) & vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-14849i, -17171i, u_input.b)), _wgslsmith_mod_i32(arg_1.d.e.c.x, min(arg_1.d.c.x, arg_1.d.b.a.b) & arg_2.x), arg_1.d.e));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 27>();
    global1 = array<Struct_3, 28>();
    let var_0 = global2[_wgslsmith_index_u32(max(u_input.c, 78445u), 27u)];
    let var_1 = func_6(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1031f, var_0.a, 357f))))), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, countOneBits(var_0.d.b.b)), _wgslsmith_add_u32(var_0.d.e.a.x, _wgslsmith_div_u32(u_input.c, u_input.c)))), 27u)], vec4<i32>(-1i, ~u_input.b, i32(-1i) * -9206i, -55265i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_5(func_1(), var_0.d.e)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(8983u, 28u)], var_0.a), vec2<f32>(349f, 708f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(8682u, 28u)], global0[_wgslsmith_index_u32(21340u, 28u)]) - vec2<f32>(global0[_wgslsmith_index_u32(30065u, 28u)], -1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2164f, 123f) + vec2<f32>(var_0.a, 1169f))))));
    global0 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_0.d.e.a.x, ~0u, 1u), select(vec2<i32>(38621i >> (var_1.d.e.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-53630i, -39850i, -2147483647i, global3.x), var_1.d.e.c)), var_1.d.b.a.c.xz, any(select(var_1.b, vec3<bool>(var_1.b.x, true, var_1.c.x), var_1.d.a.x))) >> (countOneBits(_wgslsmith_add_vec2_u32(var_1.d.e.a, var_0.d.b.a.a) & vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u)), ~u_input.a.x, -169f);
}

