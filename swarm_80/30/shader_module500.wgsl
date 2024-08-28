struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-349f, -1169f, -720f, -625f), vec2<u32>(0u, 4294967295u), 13287i), 3408i), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(274f, -429f, -1265f, -396f), vec2<u32>(27136u, 1u), -18452i), 49967i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<f32>(420f, 1196f, 1328f, -1373f), vec2<u32>(0u, 4294967295u), 41368i), 0i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1004f, -2328f, 1897f, -1237f), vec2<u32>(65847u, 4294967295u), 0i), i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1355f, -780f, 966f, 286f), vec2<u32>(36718u, 82966u), -1i), 34730i), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-152f, -1224f, 1478f, -389f), vec2<u32>(30796u, 1963u), 1i), 1i), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-565f, 1000f, -553f, 408f), vec2<u32>(86424u, 51065u), 2147483647i), -1i), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(-2482f, 627f, -882f, 915f), vec2<u32>(21534u, 109146u), 1i), -67297i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<f32>(1518f, 577f, 882f, 543f), vec2<u32>(11939u, 0u), 1i), i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-1480f, -1400f, -565f, -219f), vec2<u32>(4294967295u, 1u), -1i), -11982i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1831f, -1902f, 949f, -2252f), vec2<u32>(63183u, 1u), -18477i), i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1067f, 534f, -712f, -336f), vec2<u32>(125163u, 1u), 9147i), 2147483647i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<f32>(118f, -1750f, 129f, 585f), vec2<u32>(22298u, 7821u), 2147483647i), -43063i), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-251f, -283f, 122f, 1357f), vec2<u32>(41483u, 12486u), 9583i), -1i), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(1228f, 261f, -400f, -1000f), vec2<u32>(4294967295u, 1u), -28688i), 0i), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(949f, -284f, -1129f, -574f), vec2<u32>(1719u, 4294967295u), 1i), i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-237f, 953f, 353f, -476f), vec2<u32>(1u, 75133u), 2147483647i), -25400i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-2066f, 770f, -821f, -1353f), vec2<u32>(18364u, 4294967295u), i32(-2147483648)), 25473i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(292f, 1162f, -1847f, 1000f), vec2<u32>(80713u, 0u), 3181i), -22148i), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(1239f, 859f, -698f, 707f), vec2<u32>(98050u, 1u), 20980i), -16538i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(1268f, 1835f, -2195f, -394f), vec2<u32>(73607u, 0u), -1i), -59460i), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<f32>(618f, -264f, -434f, -1512f), vec2<u32>(4294967295u, 0u), -35867i), -27717i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(149f, -472f, 1300f, -204f), vec2<u32>(24416u, 0u), -51851i), 5176i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(594f, 1193f, -996f, -171f), vec2<u32>(4294967295u, 26821u), -18780i), i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(3265f, -804f, 895f, -1203f), vec2<u32>(43408u, 0u), -1i), 1i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-497f, 1251f, 1061f, 364f), vec2<u32>(15194u, 1u), 1i), 1i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-259f, -934f, -1000f, 1813f), vec2<u32>(40618u, 4294967295u), -41283i), 0i), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<f32>(1306f, 1000f, -110f, -282f), vec2<u32>(25422u, 1u), 0i), 1i), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1222f, -1000f, -775f, 1145f), vec2<u32>(11329u, 6101u), -1i), 10139i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(1160f, 486f, -474f, 1672f), vec2<u32>(4558u, 0u), 76678i), 1i), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(-839f, 937f, 825f, -553f), vec2<u32>(1u, 80684u), 19010i), 2147483647i));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(747f, -220f, -819f, 1672f), vec2<u32>(4294967295u, 40265u), 2147483647i), -1i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = array<vec2<bool>, 15>();
    let var_0 = Struct_4(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.a.c.x, global2.a.c.x), ~global2.a.c.x), 58152u, 1u), ~vec3<u32>(20636u, global2.a.c.x, 5138u) << (vec3<u32>(abs(26756u), global2.a.c.x, arg_0.a.c.x) % vec3<u32>(32u))), global2.a.b.xw, u_input.d, arg_0.a);
    var var_1 = vec2<i32>(var_0.d.d, 0i & global2.b) & ~vec2<i32>(var_0.d.d, select(arg_0.a.d, arg_0.a.d, arg_0.a.a.x));
    global2 = Struct_2(Struct_1(!global2.a.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1061f, -363f, var_0.d.b.x, arg_0.a.b.x))))), min(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.a.c.x, global2.a.c.x), ~vec2<u32>(21359u, arg_0.a.c.x)), _wgslsmith_sub_vec2_u32(abs(u_input.a.xz), ~global2.a.c)), firstTrailingBit(u_input.c.x)), abs(abs(_wgslsmith_sub_i32(arg_0.b, firstTrailingBit(u_input.b.x)))));
    global2 = Struct_2(Struct_1(vec3<bool>(any(vec2<bool>(var_0.d.a.x, global2.a.a.x)), var_0.d.a.x || false, !(global2.a.b.x >= -1897f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.b)) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -820f, -839f, arg_0.a.b.x)), firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(u_input.d, u_input.a.x), 1u)), 70209i & _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, 6297i, arg_0.b), vec3<i32>(var_0.d.d, u_input.b.x, var_0.d.d)), abs(vec3<i32>(-1i, -14814i, var_0.d.d)))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(min(~u_input.c, -vec4<i32>(-44813i, -59949i, u_input.b.x, 2147483647i)), vec4<i32>(_wgslsmith_div_i32(var_0.d.d, var_0.d.d), _wgslsmith_add_i32(var_1.x, 0i), _wgslsmith_clamp_i32(15684i, 7557i, -15565i), reverseBits(2147483647i))), firstTrailingBit(reverseBits(-u_input.c))));
    return firstLeadingBit(-firstTrailingBit(-(~global2.b)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = -reverseBits(vec2<i32>(-(i32(-1i) * -2147483647i), global2.a.d));
    let var_1 = Struct_4(~u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1411f - global2.a.b.x), _wgslsmith_f_op_f32(min(arg_2.b.x, global2.a.b.x))))), ~(~arg_0.a.c.x), Struct_1(select(vec3<bool>(all(vec4<bool>(false, arg_2.a.x, arg_3, false)), arg_1, all(vec4<bool>(arg_0.a.a.x, global2.a.a.x, arg_0.a.a.x, true))), arg_2.a, !select(true, arg_3, true)), global2.a.b, arg_0.a.c, u_input.b.x));
    var var_2 = 0u;
    global2 = Struct_2(Struct_1(select(var_1.d.a, vec3<bool>(1918f <= global2.a.b.x, true, false), select(select(global2.a.a, vec3<bool>(arg_2.a.x, true, false), arg_1), vec3<bool>(arg_2.a.x, arg_1, arg_2.a.x), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, global2.a.b.x, 482f, -712f)))) - vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -183f), -1620f, _wgslsmith_f_op_f32(var_1.d.b.x + global2.a.b.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_2.c.x, ~var_1.a.x), vec2<u32>(arg_0.a.c.x >> (arg_0.a.c.x % 32u), _wgslsmith_sub_u32(44562u, 0u)), vec2<u32>(u_input.d, 0u)), var_1.d.d), select(var_0.x ^ 1i, arg_0.b, any(global2.a.a.yx)));
    global1 = array<Struct_2, 31>();
    return -2147483647i;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    global0 = array<vec2<bool>, 15>();
    let var_0 = ~21358u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-389f))))));
    global2 = Struct_2(global2.a, max(global2.a.d, func_4(arg_0, all(vec4<bool>(global2.a.a.x, true, global2.a.a.x, false)), Struct_1(global2.a.a, _wgslsmith_f_op_vec4_f32(max(arg_2, vec4<f32>(1334f, arg_0.a.b.x, -297f, 290f))), vec2<u32>(var_0, 20127u), func_3(Struct_2(arg_0.a, arg_0.a.d))), false)));
    let var_2 = select(countOneBits(_wgslsmith_div_vec2_i32(u_input.c.zz, -_wgslsmith_sub_vec2_i32(vec2<i32>(26292i, 2147483647i), u_input.c.xx))), select(~u_input.b ^ _wgslsmith_mod_vec2_i32(u_input.c.yw, vec2<i32>(2147483647i, arg_0.b)), ~(-u_input.c.zx), arg_0.a.a.x) >> (~_wgslsmith_mult_vec2_u32(global2.a.c, ~vec2<u32>(77068u, 4294967295u)) % vec2<u32>(32u)), any(!vec2<bool>(arg_0.a.a.x, true)));
    return u_input.e;
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = ~vec4<i32>(-2147483647i, global2.a.d, 8586i, func_2(global1[_wgslsmith_index_u32(u_input.d, 31u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1139f, -986f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global2.a.b)) * vec4<f32>(global2.a.b.x, 1000f, global2.a.b.x, global2.a.b.x))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-419f * global2.a.b.x), 646f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global2.a.b.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -1450f)), global2.a.b.x, global2.a.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2.a.b.x, global2.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -828f), global2.a.b.x, _wgslsmith_f_op_f32(exp2(global2.a.b.x)))) * global2.a.b));
    let var_2 = Struct_4(firstTrailingBit(u_input.a) >> (_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.d, u_input.a.x, u_input.d) << (vec3<u32>(u_input.d, u_input.a.x, global2.a.c.x) % vec3<u32>(32u))), u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.b.x), _wgslsmith_f_op_f32(-global2.a.b.x))))), ~21309u, global2.a);
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2238f), 157f, 639f, -1643f));
    let var_3 = select(vec3<bool>(arg_0.x, !arg_0.x, arg_0.x), vec3<bool>(any(arg_0), var_2.d.b.x != _wgslsmith_f_op_f32(562f * _wgslsmith_f_op_f32(ceil(var_2.d.b.x))), arg_0.x != (!global2.a.a.x && all(vec3<bool>(arg_0.x, false, var_2.d.a.x)))), !any(vec4<bool>(false, any(vec2<bool>(arg_0.x, global2.a.a.x)), all(arg_0.yzz), !global2.a.a.x)));
    return u_input.a.x >> (u_input.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~0u, abs(global2.a.c.x), (u_input.a.x << (func_1(vec4<bool>(global2.a.a.x, global2.a.a.x, global2.a.a.x, global2.a.a.x)) % 32u)) | (global2.a.c.x ^ 14180u), select(u_input.d, firstLeadingBit(u_input.a.x), true));
    let var_1 = Struct_1(global2.a.a, _wgslsmith_f_op_vec4_f32(step(global2.a.b, global2.a.b)), vec2<u32>(1u, 0u), global2.b);
    let var_2 = countOneBits(~2147483647i);
    let var_3 = !vec3<bool>(!(!any(global0[_wgslsmith_index_u32(77053u, 15u)])), any(vec4<bool>(false, global2.a.a.x, var_1.a.x, var_1.a.x)) & select(!global2.a.a.x, true, true), global2.a.a.x);
    global1 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, ~(vec2<i32>(-1i) * -vec2<i32>(0i, 2147483647i)), -1259f, ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.wx, var_1.c), countOneBits(1u), global2.a.c.x, 87239u | u_input.a.x)), global2.a.b.zww);
}

