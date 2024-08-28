struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(vec4<i32>(2147483647i, 0i, -26174i, -1i), 1u, vec4<u32>(78933u, 1u, 4294967295u, 77298u)), -536f, vec2<f32>(-2194f, 284f), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec4<i32>(-1567i, -41447i, 1i, 32863i), 0u, vec4<u32>(89456u, 0u, 10980u, 4294967295u)), -605f, vec2<f32>(334f, 848f), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec4<i32>(-28990i, 2147483647i, 2147483647i, -33493i), 0u, vec4<u32>(0u, 38273u, 0u, 49014u)), -228f, vec2<f32>(1313f, 731f), vec4<bool>(false, true, true, false)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -1i, -51033i, 0i), 22430u, vec4<u32>(61205u, 0u, 33627u, 35049u)), 905f, vec2<f32>(1402f, -1207f), vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec4<i32>(2147483647i, 43900i, 10705i, 1i), 1u, vec4<u32>(4294967295u, 51624u, 39524u, 61588u)), -563f, vec2<f32>(1906f, -1020f), vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 1i, 12327i, 72387i), 24486u, vec4<u32>(48545u, 0u, 4294967295u, 24512u)), -816f, vec2<f32>(-1150f, 536f), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec4<i32>(-1i, 0i, 0i, -1i), 0u, vec4<u32>(0u, 39390u, 4294967295u, 1u)), 176f, vec2<f32>(101f, 459f), vec4<bool>(false, true, false, false)), Struct_3(Struct_1(vec4<i32>(86284i, 60972i, 0i, i32(-2147483648)), 4294967295u, vec4<u32>(0u, 2982u, 1u, 4294967295u)), -156f, vec2<f32>(1660f, -527f), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec4<i32>(2147483647i, 0i, -1i, -23734i), 4294967295u, vec4<u32>(4294967295u, 1u, 0u, 0u)), 1000f, vec2<f32>(1098f, 1021f), vec4<bool>(false, true, false, false)), Struct_3(Struct_1(vec4<i32>(18390i, 0i, -1i, 2147483647i), 90728u, vec4<u32>(0u, 1u, 1u, 1u)), -269f, vec2<f32>(-1821f, -482f), vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -9075i, 33961i, 7435i), 46316u, vec4<u32>(10921u, 10234u, 4294967295u, 4294967295u)), 892f, vec2<f32>(-1000f, 340f), vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec4<i32>(0i, 1i, i32(-2147483648), 1i), 18120u, vec4<u32>(28947u, 0u, 1u, 7907u)), 1234f, vec2<f32>(-691f, -1316f), vec4<bool>(true, false, true, true)), Struct_3(Struct_1(vec4<i32>(-56644i, 1i, i32(-2147483648), 1i), 7050u, vec4<u32>(93397u, 0u, 0u, 4294967295u)), 770f, vec2<f32>(-1726f, 963f), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec4<i32>(47497i, 56404i, -1i, -23274i), 4294967295u, vec4<u32>(0u, 50814u, 4294967295u, 22684u)), -771f, vec2<f32>(1206f, 884f), vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec4<i32>(0i, -1431i, i32(-2147483648), -4240i), 12989u, vec4<u32>(17101u, 15825u, 1u, 611u)), -1146f, vec2<f32>(-1083f, -1442f), vec4<bool>(true, true, true, false)), Struct_3(Struct_1(vec4<i32>(2147483647i, 0i, 49875i, -30339i), 20918u, vec4<u32>(4487u, 7396u, 4294967295u, 30940u)), 1280f, vec2<f32>(-352f, 1453f), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec4<i32>(-1i, 1i, 1i, 7489i), 144704u, vec4<u32>(15544u, 51688u, 36981u, 0u)), 1000f, vec2<f32>(1128f, 1012f), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec4<i32>(-7172i, -1i, 33253i, -19044i), 36394u, vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), 1831f, vec2<f32>(-444f, 1833f), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec4<i32>(24120i, 2147483647i, -24195i, -8597i), 19726u, vec4<u32>(93107u, 1u, 4294967295u, 81047u)), -516f, vec2<f32>(-343f, 1255f), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec4<i32>(2147483647i, 1i, i32(-2147483648), -7617i), 25386u, vec4<u32>(19114u, 4294967295u, 1u, 0u)), 855f, vec2<f32>(-119f, -1587f), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -16321i, 2147483647i), 0u, vec4<u32>(4294967295u, 0u, 9228u, 11344u)), -1204f, vec2<f32>(464f, 1407f), vec4<bool>(true, true, true, false)), Struct_3(Struct_1(vec4<i32>(23102i, 9275i, i32(-2147483648), 0i), 4370u, vec4<u32>(61398u, 50930u, 1u, 0u)), -310f, vec2<f32>(-1054f, 221f), vec4<bool>(false, true, true, false)), Struct_3(Struct_1(vec4<i32>(3002i, -26536i, 2147483647i, i32(-2147483648)), 0u, vec4<u32>(39169u, 0u, 79427u, 13314u)), -654f, vec2<f32>(2488f, -607f), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec4<i32>(0i, i32(-2147483648), 1i, -1961i), 0u, vec4<u32>(1u, 17225u, 0u, 8241u)), 172f, vec2<f32>(1000f, -354f), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec4<i32>(0i, i32(-2147483648), 4598i, -1i), 4294967295u, vec4<u32>(35357u, 1u, 9694u, 119546u)), 1000f, vec2<f32>(-259f, 2055f), vec4<bool>(false, true, true, false)), Struct_3(Struct_1(vec4<i32>(-12489i, 1i, -64000i, 1i), 0u, vec4<u32>(8604u, 4294967295u, 23517u, 2840u)), -815f, vec2<f32>(-621f, -655f), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec4<i32>(31897i, 61740i, i32(-2147483648), i32(-2147483648)), 14669u, vec4<u32>(1u, 29412u, 31861u, 20539u)), -1019f, vec2<f32>(-1000f, -1551f), vec4<bool>(false, false, false, false)), Struct_3(Struct_1(vec4<i32>(1572i, 2147483647i, -9347i, 2147483647i), 1u, vec4<u32>(29360u, 0u, 5156u, 18714u)), -854f, vec2<f32>(891f, 1507f), vec4<bool>(true, false, true, true)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 30087i, 2147483647i, 2774i), 4294967295u, vec4<u32>(62003u, 41401u, 61557u, 21135u)), 793f, vec2<f32>(-251f, -1493f), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec4<i32>(0i, -32522i, -12580i, 2147483647i), 1u, vec4<u32>(1u, 1u, 4294967295u, 1u)), -1562f, vec2<f32>(-609f, -370f), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec4<i32>(-1i, 18627i, 15238i, 2147483647i), 100855u, vec4<u32>(1u, 1u, 0u, 7455u)), 777f, vec2<f32>(-370f, -245f), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 16595i, 52113i, -5534i), 0u, vec4<u32>(52191u, 0u, 58033u, 3754u)), -961f, vec2<f32>(184f, -549f), vec4<bool>(false, false, true, false)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-851f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c.x))))), _wgslsmith_f_op_f32(exp2(arg_1.b)));
    global0 = array<u32, 18>();
    let var_1 = Struct_1(vec4<i32>(select(2147483647i, _wgslsmith_sub_i32(arg_2.a.x, 7517i), !arg_3.x), arg_2.a.x & ~(-30562i), arg_2.a.x, arg_2.a.x) >> (~(~(~vec4<u32>(77263u, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(0u, 18u)]))) % vec4<u32>(32u)), 510u, ~(vec4<u32>(_wgslsmith_mult_u32(0u, u_input.a.x), ~4294967295u, u_input.b >> (arg_2.b % 32u), min(global0[_wgslsmith_index_u32(1u, 18u)], arg_1.a.c.x)) << (~vec4<u32>(1u, arg_1.a.b, u_input.a.x, 17004u) % vec4<u32>(32u))));
    global0 = array<u32, 18>();
    let var_2 = Struct_4(Struct_2(Struct_1(arg_1.a.a, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, u_input.b, var_1.b), firstTrailingBit(u_input.b)), ~arg_1.a.c), 4294967295u, vec2<i32>(max(1i, ~1i), arg_0.x)));
    return 25853i;
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = any(select(vec4<bool>(true, false, any(vec2<bool>(true, true)), false), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), any(vec2<bool>(false, false))), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, false), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false)))));
    var var_1 = Struct_2(Struct_1(vec4<i32>(-_wgslsmith_dot_vec4_i32(arg_3, arg_3), -10560i, _wgslsmith_dot_vec4_i32(arg_3 & vec4<i32>(2147483647i, 0i, arg_3.x, 1i), ~arg_3), 2147483647i), _wgslsmith_dot_vec3_u32(arg_1, ~arg_1), firstTrailingBit(max(firstLeadingBit(u_input.a), abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 18u)], arg_1.x, 4294967295u, 45768u))))), 4294967295u, _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(arg_3.x, arg_3.x), reverseBits(-24917i)), ~(~arg_3.yw)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-38762i, arg_3.x), arg_3.x), arg_3.x)));
    global1 = array<Struct_3, 32>();
    var var_2 = -241f;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~23706u, 24489u), 32u)];
    return var_3.c.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = 618f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-102f))))) * _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.wz, u_input.a.yz | vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26519u, 18u)], 18u)], 18u)], 46910u)), _wgslsmith_div_vec2_u32(~u_input.a.yw, ~vec2<u32>(arg_1.b, arg_1.c.x))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, ~9238u), vec3<u32>(45436u, 1u, reverseBits(u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-746f, -743f, -949f, 1306f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1999f, 1907f, -229f, 805f)))), vec4<i32>(-4176i, firstLeadingBit(arg_0.x & 0i), _wgslsmith_sub_i32(reverseBits(arg_2), 17756i), func_2(arg_0 | vec2<i32>(-18188i, arg_0.x), Struct_3(arg_1, 539f, vec2<f32>(584f, 363f), vec4<bool>(true, false, false, true)), arg_1, vec4<bool>(true, true, true, true))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1362f, 1164f, 212f, 985f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x, -492f, _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(550f, _wgslsmith_f_op_f32(109f + 769f), -1386f, _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, -228f))))))), vec4<f32>(var_1.x, -1000f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-658f - 1213f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -435f) + _wgslsmith_f_op_f32(ceil(195f)))))));
    let var_2 = select(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.c, countOneBits(vec4<u32>(1144u, 8482u, global0[_wgslsmith_index_u32(0u, 18u)], 1u))), vec4<u32>(4294967295u, 30293u, 1u, global0[_wgslsmith_index_u32(arg_1.b, 18u)]) >> (u_input.a % vec4<u32>(32u))) >> (abs(abs(u_input.a) & arg_1.c) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(min(u_input.a, ~(vec4<u32>(arg_1.c.x, u_input.a.x, 0u, 4294967295u) << (u_input.a % vec4<u32>(32u)))), vec4<u32>(global0[_wgslsmith_index_u32(0u, 18u)], u_input.b, _wgslsmith_clamp_u32(u_input.b, u_input.a.x, 0u), 11652u) & (arg_1.c << (reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 34529u, 0u, u_input.a.x)) % vec4<u32>(32u)))), vec4<bool>(true & !(var_1.x <= 1367f), 1i < ((0i >> (u_input.b % 32u)) >> (arg_1.c.x % 32u)), false, !any(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), true))) * var_1.x);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> f32 {
    global1 = array<Struct_3, 32>();
    let var_0 = arg_2.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 475f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-645f + arg_1), _wgslsmith_f_op_f32(535f * arg_1))))));
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_0, var_0.a.x, arg_0, arg_0), -reverseBits(vec4<i32>(-1i, arg_0, 2147483647i, arg_0))) << (~(~(~vec4<u32>(48152u, arg_2.b, var_0.c.x, 0u))) % vec4<u32>(32u)), abs(u_input.b ^ u_input.b), select(_wgslsmith_div_vec4_u32(~vec4<u32>(21867u, 1u, 4294967295u, 4294967295u), vec4<u32>(92712u, 10312u, 45559u, 16853u) >> (var_0.c % vec4<u32>(32u))), var_0.c, true) | _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.x, global0[_wgslsmith_index_u32(var_0.c.x, 18u)], arg_2.b, arg_3) >> (var_0.c % vec4<u32>(32u)), u_input.a));
    global0 = array<u32, 18>();
    return _wgslsmith_div_f32(-212f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 18>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(74213i, _wgslsmith_f_op_f32(func_1(vec2<i32>(-1i, 1i), Struct_1(vec4<i32>(-2147483647i, 63566i, 1i, 1i), 0u, u_input.a), 1i)), Struct_2(Struct_1(vec4<i32>(1i, -50817i, 2147483647i, -50601i), u_input.b, vec4<u32>(30758u, 49102u, 4294967295u, u_input.b)), global0[_wgslsmith_index_u32(4294967295u, 18u)], vec2<i32>(-51607i, 1i)), u_input.b))))));
    global0 = array<u32, 18>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(459f - 212f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-236f * -1222f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(37925u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<u32>(u_input.a.x, u_input.b, 1u))));
}

