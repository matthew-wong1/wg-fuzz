struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(true, vec4<i32>(-21674i, -59603i, i32(-2147483648), -1i), vec3<u32>(43009u, 23821u, 3291u), Struct_1(559f, -1i, vec2<u32>(4294967295u, 4294967295u)), -17387i), Struct_2(true, vec4<i32>(-44646i, 1i, i32(-2147483648), -10718i), vec3<u32>(4294967295u, 74688u, 4294967295u), Struct_1(-951f, 1i, vec2<u32>(1u, 1u)), 0i), Struct_2(true, vec4<i32>(-1i, 0i, 49044i, 62557i), vec3<u32>(1u, 13907u, 54659u), Struct_1(1112f, 2147483647i, vec2<u32>(6413u, 34658u)), 25424i), Struct_2(false, vec4<i32>(-28297i, 12334i, i32(-2147483648), -69810i), vec3<u32>(54396u, 33080u, 4294967295u), Struct_1(1171f, 47691i, vec2<u32>(363u, 42963u)), -29878i), Struct_2(true, vec4<i32>(-32364i, 2147483647i, 2147483647i, 1i), vec3<u32>(1u, 67871u, 4294967295u), Struct_1(460f, 0i, vec2<u32>(4294967295u, 4294967295u)), -1i), Struct_2(true, vec4<i32>(-1i, 2147483647i, 1i, 2147483647i), vec3<u32>(1u, 1u, 33655u), Struct_1(1076f, 16751i, vec2<u32>(4294967295u, 39953u)), 1i), Struct_2(true, vec4<i32>(-5933i, 1i, -9047i, -29422i), vec3<u32>(87021u, 70434u, 1u), Struct_1(-135f, -26177i, vec2<u32>(40803u, 1u)), i32(-2147483648)), Struct_2(false, vec4<i32>(0i, 33414i, 1i, 2782i), vec3<u32>(63159u, 23370u, 1u), Struct_1(1589f, -32940i, vec2<u32>(4294967295u, 67790u)), -23999i), Struct_2(false, vec4<i32>(1i, -11009i, -1i, 1i), vec3<u32>(18292u, 1u, 0u), Struct_1(-221f, -1i, vec2<u32>(25022u, 102547u)), 0i), Struct_2(false, vec4<i32>(2147483647i, 2147483647i, -30372i, 40638i), vec3<u32>(4294967295u, 1u, 27904u), Struct_1(1611f, -1i, vec2<u32>(22995u, 21643u)), 2147483647i), Struct_2(false, vec4<i32>(1i, 577i, -67571i, -1693i), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(-234f, 33294i, vec2<u32>(4294967295u, 48413u)), -53854i), Struct_2(true, vec4<i32>(-92309i, i32(-2147483648), -40334i, 26420i), vec3<u32>(1u, 1u, 10936u), Struct_1(286f, 30713i, vec2<u32>(1u, 55410u)), -3561i), Struct_2(false, vec4<i32>(-80191i, 0i, -3952i, 0i), vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(-972f, 1i, vec2<u32>(26557u, 3145u)), i32(-2147483648)), Struct_2(true, vec4<i32>(-17552i, -12141i, -1775i, -1i), vec3<u32>(1u, 415u, 4294967295u), Struct_1(159f, 13775i, vec2<u32>(0u, 1u)), -1i), Struct_2(true, vec4<i32>(0i, 1i, 0i, 5917i), vec3<u32>(33425u, 31525u, 0u), Struct_1(-239f, 33714i, vec2<u32>(49800u, 108949u)), -1i), Struct_2(false, vec4<i32>(2147483647i, 28744i, -1i, 43251i), vec3<u32>(4294967295u, 0u, 1693u), Struct_1(-305f, 11697i, vec2<u32>(0u, 0u)), 0i), Struct_2(true, vec4<i32>(-49220i, -5533i, -25233i, -3663i), vec3<u32>(57924u, 1u, 2804u), Struct_1(369f, 2147483647i, vec2<u32>(4294967295u, 0u)), 10831i), Struct_2(true, vec4<i32>(-157i, 1i, -1i, -51256i), vec3<u32>(1u, 53057u, 1u), Struct_1(-808f, -9374i, vec2<u32>(1u, 4294967295u)), i32(-2147483648)), Struct_2(false, vec4<i32>(0i, -22872i, 0i, 1i), vec3<u32>(0u, 4294967295u, 25101u), Struct_1(-1022f, -927i, vec2<u32>(51124u, 0u)), 1i), Struct_2(true, vec4<i32>(12924i, -1i, i32(-2147483648), 0i), vec3<u32>(1u, 42296u, 42333u), Struct_1(-131f, 2147483647i, vec2<u32>(76386u, 36639u)), 2147483647i), Struct_2(true, vec4<i32>(i32(-2147483648), -11892i, 41838i, 34013i), vec3<u32>(0u, 29784u, 59083u), Struct_1(-1080f, -26646i, vec2<u32>(0u, 4294967295u)), 8859i), Struct_2(true, vec4<i32>(71830i, 0i, -1907i, 1i), vec3<u32>(1u, 8367u, 4237u), Struct_1(812f, 35976i, vec2<u32>(45060u, 0u)), -20184i), Struct_2(true, vec4<i32>(-52039i, 30528i, 31891i, -3473i), vec3<u32>(0u, 0u, 52336u), Struct_1(923f, -1i, vec2<u32>(68704u, 78732u)), 1i), Struct_2(true, vec4<i32>(0i, 1i, -14913i, -15350i), vec3<u32>(4294967295u, 19457u, 1u), Struct_1(639f, i32(-2147483648), vec2<u32>(49057u, 4294967295u)), -1i), Struct_2(true, vec4<i32>(1i, 47873i, 12044i, 50899i), vec3<u32>(24644u, 1u, 113896u), Struct_1(489f, -1i, vec2<u32>(90531u, 4165u)), -37224i), Struct_2(true, vec4<i32>(30298i, 13833i, 1i, -9038i), vec3<u32>(0u, 1u, 4294967295u), Struct_1(-248f, 2147483647i, vec2<u32>(1224u, 48661u)), -4108i));

var<private> global2: Struct_1 = Struct_1(1264f, -1i, vec2<u32>(5879u, 0u));

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(899f, -5442i, vec2<u32>(35021u, 6552u)), Struct_1(-342f, 1i, vec2<u32>(33321u, 4294967295u)), Struct_1(450f, -5289i, vec2<u32>(4294967295u, 1u)), Struct_1(1044f, -1i, vec2<u32>(8608u, 55342u)), Struct_1(1197f, -12901i, vec2<u32>(30671u, 26521u)), Struct_1(-242f, 2147483647i, vec2<u32>(33121u, 1u)), Struct_1(2032f, 74392i, vec2<u32>(4294967295u, 28919u)), Struct_1(1003f, 2147483647i, vec2<u32>(68022u, 4294967295u)), Struct_1(1114f, -7248i, vec2<u32>(1u, 1u)), Struct_1(511f, 2i, vec2<u32>(4294967295u, 19163u)), Struct_1(-358f, -2547i, vec2<u32>(4294967295u, 48148u)), Struct_1(1000f, -45273i, vec2<u32>(47215u, 33300u)), Struct_1(-186f, 4093i, vec2<u32>(1u, 4294967295u)), Struct_1(-863f, -1i, vec2<u32>(21727u, 4294967295u)), Struct_1(471f, 0i, vec2<u32>(27564u, 33889u)), Struct_1(223f, 16817i, vec2<u32>(1u, 48340u)), Struct_1(-567f, -22667i, vec2<u32>(31960u, 0u)), Struct_1(-725f, -13546i, vec2<u32>(4294967295u, 0u)), Struct_1(-266f, 0i, vec2<u32>(1u, 103210u)), Struct_1(-653f, -61488i, vec2<u32>(1u, 27098u)), Struct_1(-286f, 43439i, vec2<u32>(68445u, 4294967295u)), Struct_1(-1127f, -23993i, vec2<u32>(13537u, 69432u)), Struct_1(470f, i32(-2147483648), vec2<u32>(40000u, 4294967295u)), Struct_1(1402f, -18895i, vec2<u32>(0u, 0u)), Struct_1(-723f, 32165i, vec2<u32>(72590u, 31092u)), Struct_1(-817f, 2147483647i, vec2<u32>(1u, 53069u)), Struct_1(-660f, 2147483647i, vec2<u32>(22912u, 86320u)), Struct_1(-1335f, i32(-2147483648), vec2<u32>(39635u, 1u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global0 = array<vec3<f32>, 28>();
    var var_0 = Struct_2(!select(true, any(vec2<bool>(global3.x, global3.x)), all(vec4<bool>(global3.x, false, false, true))), _wgslsmith_clamp_vec4_i32(arg_0, arg_0, ~vec4<i32>(~global2.b, _wgslsmith_add_i32(0i, global2.b), arg_0.x & -2147483647i, ~2147483647i)), abs(~_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(global2.c.x, 69785u, u_input.d.x))) << (max(_wgslsmith_sub_vec3_u32(u_input.d << (vec3<u32>(u_input.b.x, global2.c.x, global2.c.x) % vec3<u32>(32u)), abs(vec3<u32>(u_input.b.x, 51030u, 64900u))), _wgslsmith_add_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, global2.c.x), vec3<u32>(24196u, 39002u, 1u)))) % vec3<u32>(32u)), global4[_wgslsmith_index_u32(~global2.c.x, 28u)], arg_0.x);
    let var_1 = global1[_wgslsmith_index_u32(5972u, 26u)];
    global1 = array<Struct_2, 26>();
    var var_2 = Struct_2(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(!vec4<bool>(var_0.a, true, false, true), vec4<bool>(true, var_1.a, true, global3.x), true))), vec4<i32>(select(2147483647i, 0i, !global3.x) | abs(42412i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~var_0.b.xxx, countOneBits(vec3<i32>(var_0.e, global2.b, arg_0.x))), firstLeadingBit(var_1.b.zxw)), 17953i, countOneBits(firstLeadingBit(firstTrailingBit(-23555i)))), var_0.c, var_1.d, -3167i);
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, 23785u, 1u), var_1.c, global3.x), var_1.c), max(_wgslsmith_div_vec3_u32(var_2.c, var_0.c), firstTrailingBit(vec3<u32>(34457u, 1u, 85931u)))), 41644u, _wgslsmith_sub_u32(~select(4294967295u, u_input.d.x, false), 18622u)), 0u);
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~((func_3(vec4<i32>(global2.b, 0i, global2.b, u_input.c)) ^ (2410u | u_input.d.x)) >> (70395u % 32u)), ~max(1u, u_input.d.x)), 28u)];
    var var_1 = _wgslsmith_mod_u32(select(50607u, 73790u, 1390f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a, var_0.a, global3.x)) + _wgslsmith_f_op_f32(var_0.a * -1000f))), countOneBits(~27686u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(1816f)), _wgslsmith_mod_i32(u_input.a.x, -global2.b >> (u_input.d.x % 32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zy, ~(~global2.c)), abs(_wgslsmith_mult_u32(~var_0.c.x, var_0.c.x))));
    var var_3 = -2842i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f * -362f));
    return _wgslsmith_f_op_f32(f32(-1f) * -208f);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = vec3<bool>(!(!(!any(global3.xx))), select(true, _wgslsmith_f_op_f32(-arg_2.d.a) < arg_0, !arg_2.a), arg_2.a);
    let var_1 = select(arg_2.b.xww, arg_2.b.ywy, vec3<bool>(select(all(select(vec4<bool>(arg_2.a, var_0.x, true, global3.x), vec4<bool>(arg_2.a, var_0.x, true, arg_2.a), var_0.x)), arg_2.a, false), any(select(!vec4<bool>(false, false, true, arg_2.a), vec4<bool>(false, true, var_0.x, arg_2.a), !vec4<bool>(false, false, var_0.x, false))), any(select(vec4<bool>(var_0.x, false, false, var_0.x), !vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(true, true, true, true)))));
    global0 = array<vec3<f32>, 28>();
    var_0 = vec3<bool>(global3.x, true, global3.x);
    global2 = Struct_1(1913f, 1i, u_input.d.yx);
    return -59237i;
}

fn func_1() -> bool {
    let var_0 = true;
    var var_1 = global4[_wgslsmith_index_u32(4294967295u, 28u)];
    let var_2 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(!all(vec3<bool>(false, global3.x, true)))), var_1.a)), global4[_wgslsmith_index_u32(~var_1.c.x, 28u)], Struct_2(any(select(select(vec3<bool>(global3.x, true, var_0), vec3<bool>(var_0, false, false), global3.x), select(vec3<bool>(true, var_0, false), vec3<bool>(global3.x, global3.x, true), vec3<bool>(var_0, false, false)), u_input.a.x < 1i)), max(min(firstLeadingBit(vec4<i32>(2147483647i, -1i, var_1.b, -2852i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, -1i, var_1.b, -35159i), vec4<i32>(u_input.a.x, var_1.b, var_1.b, var_1.b))), select(~vec4<i32>(global2.b, 0i, global2.b, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 47863i, u_input.c, 25651i), vec4<i32>(1431i, 8550i, global2.b, var_1.b)), var_1.c.x >= global2.c.x)), u_input.b, Struct_1(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_add_i32(u_input.c, -148i), countOneBits(global2.c)), _wgslsmith_clamp_i32(select(min(0i, -1i), u_input.a.x, true), global2.b, _wgslsmith_mult_i32(var_1.b, ~(-2147483647i)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 1097f))))), 0i, vec2<u32>(_wgslsmith_div_u32(min(54344u & global2.c.x, reverseBits(9503u)), ~global2.c.x), countOneBits((u_input.b.x & global2.c.x) & firstTrailingBit(var_1.c.x))));
    global1 = array<Struct_2, 26>();
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 20319u;
    global1 = array<Struct_2, 26>();
    let var_1 = select(!(!vec4<bool>(func_1(), global3.x, global3.x || global3.x, true)), vec4<bool>(global2.a <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-950f)), -318f), all(!select(vec4<bool>(global3.x, global3.x, true, false), vec4<bool>(true, false, global3.x, global3.x), false)), any(!select(vec4<bool>(global3.x, false, true, true), vec4<bool>(global3.x, true, true, global3.x), false)), global3.x), global3.x);
    global3 = var_1.xwy;
    global3 = select(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(var_1.x, global3.x, global3.x), var_1.wxy, false), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.yzw), var_1.yzy), !vec3<bool>(all(select(var_1, vec4<bool>(var_1.x, false, false, false), vec4<bool>(global3.x, var_1.x, global3.x, global3.x))), !var_1.x, !global3.x), !(-(2147483647i >> (0u % 32u)) >= u_input.a.x));
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.c.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global2.c.x, 1u, _wgslsmith_mod_u32(global2.c.x, var_0)), func_3(vec4<i32>(u_input.c, -22258i, u_input.c, -35652i)))) ^ _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(global2.c.x, var_0, global2.c.x, 1u)), vec4<u32>(var_0, 45598u, 4294967295u, u_input.d.x) | vec4<u32>(global2.c.x, var_0, 0u, global2.c.x))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, u_input.b.x, var_0, 10529u), vec4<u32>(38401u, 1320u, u_input.d.x, u_input.d.x)) << (~vec4<u32>(0u, 0u, 0u, 17530u) % vec4<u32>(32u)))), 28u)];
    let var_3 = global1[_wgslsmith_index_u32(global2.c.x, 26u)];
    let var_4 = !(!var_1.wyw);
    global2 = global4[_wgslsmith_index_u32(u_input.b.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(-410f, _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(var_3.d.c.x | var_3.d.c.x), 4294967295u), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, var_3.c.x), abs(var_2.c)) ^ max(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global2.c.x), var_3.c.zy), var_3.c.yx)), ~min(-var_3.b.yzx, -var_3.b.zzx), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.d.a, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_3.d.a)))), 631f))));
}

