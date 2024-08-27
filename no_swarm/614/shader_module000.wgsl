struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec3<u32>(0u, 1u, 51782u), 0u, false, vec3<i32>(i32(-2147483648), -37219i, -35572i)), Struct_1(vec3<u32>(22310u, 43190u, 1u), 4294967295u, true, vec3<i32>(1i, 51343i, -35986i))), Struct_2(Struct_1(vec3<u32>(0u, 18273u, 0u), 1u, false, vec3<i32>(1190i, -61611i, -38781i)), Struct_1(vec3<u32>(1u, 67865u, 1u), 4294967295u, true, vec3<i32>(22962i, -71900i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), 0u, true, vec3<i32>(2147483647i, 2147483647i, 1i)), Struct_1(vec3<u32>(1u, 42148u, 4294967295u), 1u, false, vec3<i32>(2147483647i, -1i, -1i))), Struct_2(Struct_1(vec3<u32>(2068u, 5732u, 142424u), 1u, true, vec3<i32>(i32(-2147483648), -73740i, 16557i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), 4298u, true, vec3<i32>(16862i, -2069i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(23396u, 1u, 4294967295u), 16124u, false, vec3<i32>(0i, 1i, 1i)), Struct_1(vec3<u32>(1u, 1u, 23136u), 0u, false, vec3<i32>(4732i, 59021i, -51287i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 18298u), 4294967295u, false, vec3<i32>(-39368i, i32(-2147483648), 15644i)), Struct_1(vec3<u32>(2827u, 1u, 36090u), 4294967295u, true, vec3<i32>(49287i, -20741i, 2161i))), Struct_2(Struct_1(vec3<u32>(54377u, 17441u, 233u), 1u, false, vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_1(vec3<u32>(5608u, 1u, 66320u), 4294967295u, true, vec3<i32>(1i, 3408i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 2286u), 1u, false, vec3<i32>(-22285i, 0i, -1i)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), 4294967295u, true, vec3<i32>(0i, -19285i, 43709i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 9763u, 1u), 47006u, false, vec3<i32>(-1i, 1i, 1i)), Struct_1(vec3<u32>(38951u, 66726u, 4294967295u), 45635u, true, vec3<i32>(1i, i32(-2147483648), -4343i))), Struct_2(Struct_1(vec3<u32>(27805u, 0u, 39075u), 4294967295u, true, vec3<i32>(-27264i, -1i, 35681i)), Struct_1(vec3<u32>(0u, 17726u, 0u), 11306u, false, vec3<i32>(-63254i, -16068i, -19067i))), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), 3308u, false, vec3<i32>(2147483647i, 41575i, -17797i)), Struct_1(vec3<u32>(1u, 50452u, 4294967295u), 1u, true, vec3<i32>(0i, -5063i, 12783i))), Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u), 0u, false, vec3<i32>(i32(-2147483648), 2147483647i, -8773i)), Struct_1(vec3<u32>(4294967295u, 18916u, 0u), 4294967295u, false, vec3<i32>(-3881i, 7618i, 1i))), Struct_2(Struct_1(vec3<u32>(0u, 29701u, 16058u), 0u, true, vec3<i32>(-1i, i32(-2147483648), -36244i)), Struct_1(vec3<u32>(48529u, 1u, 4294967295u), 0u, true, vec3<i32>(-1i, 19869i, 1i))), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 42951u), 72863u, false, vec3<i32>(0i, 2297i, 38075i)), Struct_1(vec3<u32>(36424u, 1955u, 34714u), 4294967295u, true, vec3<i32>(26889i, -1i, 0i))), Struct_2(Struct_1(vec3<u32>(36794u, 4294967295u, 4294967295u), 25001u, false, vec3<i32>(-34210i, -1i, -1i)), Struct_1(vec3<u32>(1u, 53985u, 0u), 14298u, false, vec3<i32>(-8553i, 22653i, 25651i))), Struct_2(Struct_1(vec3<u32>(1u, 67949u, 30518u), 4294967295u, false, vec3<i32>(5298i, 1i, i32(-2147483648))), Struct_1(vec3<u32>(41023u, 21940u, 4294967295u), 102254u, true, vec3<i32>(-28822i, -12076i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(4294967295u, 13859u, 4294967295u), 4294967295u, true, vec3<i32>(0i, -69901i, 16932i)), Struct_1(vec3<u32>(42831u, 24854u, 13366u), 991u, true, vec3<i32>(1i, 1i, -101460i))), Struct_2(Struct_1(vec3<u32>(1u, 42778u, 52103u), 4294967295u, true, vec3<i32>(5452i, -18223i, i32(-2147483648))), Struct_1(vec3<u32>(67082u, 26005u, 877u), 33849u, true, vec3<i32>(2147483647i, -57516i, 1i))));

var<private> global1: array<bool, 32> = array<bool, 32>(false, true, true, true, true, true, false, false, true, true, true, false, false, true, false, false, false, false, false, true, false, false, true, false, false, true, false, false, true, true, true, false);

var<private> global2: array<vec3<bool>, 7>;

var<private> global3: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-991f, -2204f), vec2<f32>(991f, 532f), vec2<f32>(-717f, 374f), vec2<f32>(280f, 1000f), vec2<f32>(-1245f, -775f), vec2<f32>(-1124f, 1292f), vec2<f32>(-1000f, -1000f), vec2<f32>(-1800f, 1000f), vec2<f32>(-653f, 1616f), vec2<f32>(-674f, 1495f), vec2<f32>(1000f, 728f), vec2<f32>(-429f, 379f), vec2<f32>(886f, 194f), vec2<f32>(-555f, -1082f), vec2<f32>(-191f, 560f), vec2<f32>(1000f, -253f), vec2<f32>(-883f, -1609f), vec2<f32>(-255f, -663f), vec2<f32>(743f, -1105f), vec2<f32>(159f, -890f), vec2<f32>(1242f, 1376f), vec2<f32>(446f, -211f), vec2<f32>(1000f, -1129f), vec2<f32>(115f, -514f), vec2<f32>(1331f, -1791f), vec2<f32>(398f, 550f), vec2<f32>(-312f, 302f), vec2<f32>(247f, -673f), vec2<f32>(1188f, -712f), vec2<f32>(476f, -361f), vec2<f32>(-964f, 517f));

var<private> global4: array<f32, 19> = array<f32, 19>(-2049f, 1325f, -888f, 2005f, -804f, -1399f, -863f, -728f, -1708f, -816f, 555f, 190f, -992f, 966f, 439f, -1019f, -2232f, -127f, 1008f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> u32 {
    global4 = array<f32, 19>();
    global2 = array<vec3<bool>, 7>();
    global4 = array<f32, 19>();
    var var_0 = ~(~abs(-vec3<i32>(u_input.a, arg_1.x, u_input.a) & vec3<i32>(arg_1.x, u_input.a, u_input.a)));
    var_0 = ~vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(12418i, -2697i, var_0.x), vec3<i32>(0i, 17460i, 19990i)), u_input.a), -(~46744i), -(~1i)) >> (~u_input.b % vec3<u32>(32u));
    return _wgslsmith_add_u32(~(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.c, u_input.c, 4294967295u))), u_input.b.x) << (_wgslsmith_sub_u32(u_input.b.x, ~u_input.c) % 32u);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    let var_0 = Struct_1(~(u_input.b ^ _wgslsmith_mult_vec3_u32(abs(vec3<u32>(38526u, u_input.b.x, 18801u)), vec3<u32>(6710u, 0u, 1u) >> (u_input.b % vec3<u32>(32u)))), u_input.c, global1[_wgslsmith_index_u32(func_3(Struct_4(!(!global1[_wgslsmith_index_u32(u_input.c, 32u)])), firstTrailingBit(min(vec2<i32>(arg_0, -31617i) << (u_input.b.xy % vec2<u32>(32u)), vec2<i32>(arg_2, u_input.a) ^ vec2<i32>(2147483647i, arg_0)))), 32u)], ~min(~vec3<i32>(52107i, -1i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 2147483647i, 39361i), vec3<i32>(-1i, arg_0, u_input.a))) ^ ~_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, arg_2, arg_0), vec3<i32>(u_input.a, u_input.a, 1i) >> (vec3<u32>(u_input.c, 14391u, 2286u) % vec3<u32>(32u))));
    global1 = array<bool, 32>();
    var var_1 = abs(2147483647i);
    let var_2 = vec3<i32>(firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-9480i, arg_0, 2147483647i, arg_0), ~vec4<i32>(arg_2, 45756i, arg_2, 320i)))), select(arg_0, 0i, !global1[_wgslsmith_index_u32(countOneBits(~u_input.b.x), 32u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, 1858i, arg_2), vec3<i32>(firstLeadingBit(max(arg_2, arg_2)), -1i, ~(-1i))));
    global3 = array<vec2<f32>, 31>();
    return _wgslsmith_dot_vec4_u32((firstLeadingBit(vec4<u32>(4294967295u, u_input.b.x, var_0.a.x, 0u)) | ~vec4<u32>(var_0.b, var_0.b, 1u, var_0.a.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 62399u, 4294967295u, 12228u), min(vec4<u32>(var_0.b, 42777u, 76083u, var_0.b), vec4<u32>(var_0.b, var_0.a.x, var_0.a.x, var_0.a.x))) % vec4<u32>(32u)), abs(max(vec4<u32>(19344u, 0u, 1u, 1u), vec4<u32>(u_input.c, var_0.b, var_0.a.x, u_input.c)))) >> (reverseBits(~var_0.b & u_input.c) % 32u);
}

fn func_1() -> u32 {
    var var_0 = reverseBits(_wgslsmith_div_vec3_u32(~(~(vec3<u32>(u_input.b.x, 0u, 60391u) ^ u_input.b)), vec3<u32>(u_input.b.x, 32729u, u_input.c)));
    var var_1 = vec2<bool>(any(select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 32u)], global1[_wgslsmith_index_u32(1u, 32u)], !global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), global2[_wgslsmith_index_u32(func_2(_wgslsmith_clamp_i32(u_input.a, 32400i, 1i), vec4<f32>(global4[_wgslsmith_index_u32(u_input.c, 19u)], -1639f, 792f, global4[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_add_i32(u_input.a, -1i)), 7u)], !global2[_wgslsmith_index_u32(var_0.x, 7u)])), select(select(false, !global1[_wgslsmith_index_u32(func_2(-1i, vec4<f32>(global4[_wgslsmith_index_u32(54792u, 19u)], 192f, 576f, global4[_wgslsmith_index_u32(18282u, 19u)]), u_input.a), 32u)], global1[_wgslsmith_index_u32(~8638u, 32u)]), all(vec4<bool>(true, true, true, true)), any(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], false))));
    var var_2 = Struct_3(Struct_1(firstTrailingBit(~vec3<u32>(1u, 4294967295u, u_input.b.x)) | _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 68067u, u_input.c), ~u_input.b), u_input.b.x, any(!(!global2[_wgslsmith_index_u32(var_0.x, 7u)])), vec3<i32>(-1i, -2147483647i, u_input.a)), Struct_1(u_input.b, 0u, true, ~_wgslsmith_mult_vec3_i32(vec3<i32>(32812i, -32524i, u_input.a), vec3<i32>(23500i, u_input.a, 1i)) | select(~vec3<i32>(-1i, -1i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-34650i, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), true)), Struct_1(vec3<u32>(_wgslsmith_mod_u32(reverseBits(u_input.b.x), var_0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(14164u, u_input.c, u_input.b.x, 0u), vec4<u32>(var_0.x, u_input.c, u_input.b.x, 2302u)), _wgslsmith_mult_vec4_u32(vec4<u32>(44629u, var_0.x, 0u, 1u), vec4<u32>(var_0.x, 1u, u_input.c, 0u))), ~(0u >> (u_input.b.x % 32u))), func_3(Struct_4(!var_1.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 2147483647i), abs(vec2<i32>(u_input.a, 2147483647i)))), !var_1.x, reverseBits(vec3<i32>(u_input.a, u_input.a, -26061i) << (select(vec3<u32>(44687u, 33332u, 75057u), vec3<u32>(0u, var_0.x, 4294967295u), var_1.x) % vec3<u32>(32u)))), vec2<u32>(1u, u_input.c));
    var_1 = !select(select(select(!vec2<bool>(true, var_1.x), !vec2<bool>(global1[_wgslsmith_index_u32(3897u, 32u)], var_2.b.c), select(vec2<bool>(false, var_1.x), vec2<bool>(true, var_2.b.c), vec2<bool>(true, global1[_wgslsmith_index_u32(98136u, 32u)]))), select(select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x), var_1.x), select(vec2<bool>(true, true), vec2<bool>(false, true), true), all(vec4<bool>(true, var_2.c.c, global1[_wgslsmith_index_u32(59618u, 32u)], true))), false | global1[_wgslsmith_index_u32(~30713u, 32u)]), !select(!vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(var_0.x, 32u)]), vec2<bool>(true, true), false), vec2<bool>(var_1.x, global4[_wgslsmith_index_u32(u_input.b.x, 19u)] >= _wgslsmith_f_op_f32(671f * global4[_wgslsmith_index_u32(u_input.c, 19u)])));
    global4 = array<f32, 19>();
    return ~(~func_2(-var_2.a.d.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1116f, -726f, -1563f, global4[_wgslsmith_index_u32(23470u, 19u)]), vec4<f32>(-515f, 672f, global4[_wgslsmith_index_u32(43382u, 19u)], global4[_wgslsmith_index_u32(var_0.x, 19u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1032f, 242f, 229f, 241f)), select(vec4<bool>(var_1.x, false, var_2.a.c, var_2.a.c), vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_0.x, 32u)], global1[_wgslsmith_index_u32(47316u, 32u)]), var_2.b.c))), abs(~u_input.a)));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = !(!select(!(!vec2<bool>(global1[_wgslsmith_index_u32(4384u, 32u)], true)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], global1[_wgslsmith_index_u32(10491u, 32u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], true), global1[_wgslsmith_index_u32(27513u, 32u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true), vec2<bool>(true, false), false), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 32u)]))));
    let var_1 = u_input.a <= _wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(0i, u_input.a) << (_wgslsmith_mod_u32(4294967295u, max(1u, u_input.b.x)) % 32u));
    global3 = array<vec2<f32>, 31>();
    var var_2 = ~_wgslsmith_mod_u32(60893u, u_input.b.x) ^ u_input.b.x;
    var_2 = _wgslsmith_dot_vec2_u32(u_input.b.yx & vec2<u32>(1u, 1u), vec2<u32>(58882u, firstLeadingBit(~func_1())));
    return Struct_1(abs(max(firstLeadingBit(vec3<u32>(0u, u_input.c, 1u) & u_input.b), vec3<u32>(u_input.b.x, 79581u, u_input.b.x))), func_3(Struct_4(_wgslsmith_div_f32(arg_0.x, 363f) != arg_0.x), vec2<i32>(-u_input.a, 1i)), true, select(_wgslsmith_mod_vec3_i32(max(abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(-1i, -26835i, u_input.a)), ~(~vec3<i32>(33604i, u_input.a, u_input.a))), firstLeadingBit(vec3<i32>(u_input.a, -6881i, u_input.a)) ^ -vec3<i32>(u_input.a, u_input.a, 1i), true));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = ~(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(51105u, 31u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 738f) + global3[_wgslsmith_index_u32(arg_0.a.x, 31u)]))).a.xx | vec2<u32>(_wgslsmith_dot_vec3_u32(min(u_input.b, vec3<u32>(71181u, arg_0.b, u_input.c)), vec3<u32>(arg_0.a.x, 4086u, u_input.c) >> (vec3<u32>(arg_0.b, 37212u, 42592u) % vec3<u32>(32u))), ~_wgslsmith_sub_u32(arg_0.a.x, 0u)));
    var var_1 = Struct_3(Struct_1(~select(_wgslsmith_sub_vec3_u32(arg_0.a, vec3<u32>(1u, u_input.b.x, 32594u)), vec3<u32>(arg_0.b, 0u, u_input.b.x), global2[_wgslsmith_index_u32(func_2(arg_0.d.x, vec4<f32>(arg_2.x, global4[_wgslsmith_index_u32(0u, 19u)], arg_2.x, arg_2.x), arg_0.d.x), 7u)]), u_input.b.x, all(select(!vec3<bool>(arg_1.x, false, global1[_wgslsmith_index_u32(arg_0.b, 32u)]), vec3<bool>(arg_0.c, arg_0.c, true), arg_3.x)), ~(-arg_0.d)), arg_0, Struct_1(arg_0.a, 127399u, !all(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.a, u_input.b), 7u)]), arg_0.d), min(~vec2<u32>(u_input.c, ~var_0.x), vec2<u32>(arg_0.b, ~arg_0.a.x)));
    global0 = array<Struct_2, 18>();
    var_1 = Struct_3(var_1.b, Struct_1(vec3<u32>(arg_0.a.x, 4294967295u, var_1.d.x), var_1.d.x, func_4(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), 306f)).c, vec3<i32>(-(-2147483647i | u_input.a), -8122i, ~(~2147483647i))), Struct_1(~(~u_input.b), 1u, global1[_wgslsmith_index_u32(arg_0.a.x, 32u)] || false, var_1.b.d), vec2<u32>(arg_0.b, 1u));
    global2 = array<vec3<bool>, 7>();
    return StorageBuffer(-1434f, ~(abs(~vec4<u32>(4294967295u, 0u, 36861u, arg_0.a.x)) << (firstLeadingBit(~vec4<u32>(9835u, 12322u, 4446u, var_0.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(global3[_wgslsmith_index_u32(abs(select(35120u, 4294967295u, global1[_wgslsmith_index_u32(0u, 32u)])) | func_1(), 31u)]), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b.x, 19u)] * 722f), -1158f, global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 113807u, 11111u, 47420u), vec4<u32>(u_input.c, u_input.c, 4294967295u, 40603u)), 19u)], global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(u_input.c, 0u)), 19u)])), vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 32u)], false));
}

