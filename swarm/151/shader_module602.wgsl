struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_1(-24675i), vec4<bool>(true, false, false, false), Struct_2(vec2<u32>(0u, 50471u)), Struct_1(i32(-2147483648))), Struct_3(Struct_1(-1i), vec4<bool>(false, false, true, false), Struct_2(vec2<u32>(4294967295u, 0u)), Struct_1(3552i)), Struct_3(Struct_1(1i), vec4<bool>(true, true, true, false), Struct_2(vec2<u32>(0u, 60062u)), Struct_1(-1888i)), Struct_3(Struct_1(-50584i), vec4<bool>(false, true, false, true), Struct_2(vec2<u32>(4294967295u, 1u)), Struct_1(-16005i)), Struct_3(Struct_1(23152i), vec4<bool>(false, false, false, false), Struct_2(vec2<u32>(241u, 1u)), Struct_1(2147483647i)), Struct_3(Struct_1(-64743i), vec4<bool>(false, true, false, true), Struct_2(vec2<u32>(14555u, 54383u)), Struct_1(-55063i)), Struct_3(Struct_1(-12272i), vec4<bool>(false, false, false, true), Struct_2(vec2<u32>(4294967295u, 406u)), Struct_1(-1i)), Struct_3(Struct_1(2147483647i), vec4<bool>(true, false, true, false), Struct_2(vec2<u32>(69624u, 1u)), Struct_1(i32(-2147483648))), Struct_3(Struct_1(i32(-2147483648)), vec4<bool>(true, false, true, true), Struct_2(vec2<u32>(35673u, 3622u)), Struct_1(1i)), Struct_3(Struct_1(11141i), vec4<bool>(true, true, false, false), Struct_2(vec2<u32>(0u, 13072u)), Struct_1(-15057i)), Struct_3(Struct_1(-1i), vec4<bool>(false, true, true, false), Struct_2(vec2<u32>(35362u, 4294967295u)), Struct_1(-1i)), Struct_3(Struct_1(-36071i), vec4<bool>(false, false, false, true), Struct_2(vec2<u32>(43338u, 2662u)), Struct_1(-6369i)), Struct_3(Struct_1(1i), vec4<bool>(false, true, false, true), Struct_2(vec2<u32>(1u, 1u)), Struct_1(-1i)), Struct_3(Struct_1(2147483647i), vec4<bool>(true, true, false, false), Struct_2(vec2<u32>(0u, 20126u)), Struct_1(10077i)), Struct_3(Struct_1(2147483647i), vec4<bool>(true, true, true, false), Struct_2(vec2<u32>(71115u, 4294967295u)), Struct_1(1i)), Struct_3(Struct_1(-1i), vec4<bool>(true, false, true, false), Struct_2(vec2<u32>(59177u, 30368u)), Struct_1(-1i)));

var<private> global2: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(0u, 56486u), vec2<u32>(64035u, 12807u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 22720u), vec2<u32>(4294967295u, 71491u), vec2<u32>(0u, 1u), vec2<u32>(66411u, 1u), vec2<u32>(77824u, 55448u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 58770u), vec2<u32>(46673u, 51485u), vec2<u32>(38859u, 0u), vec2<u32>(61187u, 18481u), vec2<u32>(31411u, 4294967295u), vec2<u32>(142613u, 1u), vec2<u32>(1u, 0u), vec2<u32>(0u, 17473u), vec2<u32>(35255u, 54654u), vec2<u32>(1u, 4697u), vec2<u32>(42036u, 23569u), vec2<u32>(4294967295u, 58819u), vec2<u32>(4460u, 33319u), vec2<u32>(1u, 4294967295u), vec2<u32>(8847u, 0u), vec2<u32>(60218u, 39556u), vec2<u32>(4294967295u, 0u), vec2<u32>(26208u, 24377u), vec2<u32>(57065u, 0u), vec2<u32>(0u, 35877u));

var<private> global3: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(-969f, Struct_2(vec2<u32>(4294967295u, 4294967295u)), vec3<f32>(-399f, -1609f, -1000f), vec2<f32>(-534f, 489f), -857f), Struct_4(-1038f, Struct_2(vec2<u32>(4294967295u, 23350u)), vec3<f32>(1098f, 408f, 485f), vec2<f32>(-194f, 879f), -403f), Struct_4(437f, Struct_2(vec2<u32>(87546u, 29463u)), vec3<f32>(-823f, -744f, 1234f), vec2<f32>(1105f, -1000f), -1350f), Struct_4(120f, Struct_2(vec2<u32>(82638u, 0u)), vec3<f32>(-190f, 425f, 1830f), vec2<f32>(950f, -461f), 180f), Struct_4(398f, Struct_2(vec2<u32>(4294967295u, 51797u)), vec3<f32>(1000f, -219f, 1172f), vec2<f32>(430f, -1499f), -172f), Struct_4(1346f, Struct_2(vec2<u32>(21506u, 75312u)), vec3<f32>(-411f, -824f, -237f), vec2<f32>(312f, -1000f), 293f), Struct_4(1197f, Struct_2(vec2<u32>(31354u, 4294967295u)), vec3<f32>(-390f, 578f, -1091f), vec2<f32>(-778f, -1347f), -1613f), Struct_4(-1151f, Struct_2(vec2<u32>(1u, 4294967295u)), vec3<f32>(1995f, 1000f, 795f), vec2<f32>(-1000f, 362f), 416f), Struct_4(607f, Struct_2(vec2<u32>(1u, 0u)), vec3<f32>(671f, -404f, -1004f), vec2<f32>(2993f, 1532f), 920f), Struct_4(-1264f, Struct_2(vec2<u32>(1u, 1u)), vec3<f32>(979f, -205f, 1288f), vec2<f32>(-1000f, 923f), 1000f), Struct_4(1516f, Struct_2(vec2<u32>(1u, 41813u)), vec3<f32>(-180f, -1000f, 309f), vec2<f32>(434f, 374f), -475f), Struct_4(852f, Struct_2(vec2<u32>(0u, 1u)), vec3<f32>(1000f, -1186f, -759f), vec2<f32>(-108f, -1000f), -247f), Struct_4(-1000f, Struct_2(vec2<u32>(0u, 71672u)), vec3<f32>(546f, 121f, 236f), vec2<f32>(1168f, 405f), 422f), Struct_4(-394f, Struct_2(vec2<u32>(1u, 1u)), vec3<f32>(1081f, -626f, 515f), vec2<f32>(-318f, -876f), -2256f), Struct_4(-977f, Struct_2(vec2<u32>(13521u, 27663u)), vec3<f32>(233f, -1142f, -789f), vec2<f32>(-799f, 1563f), -1485f), Struct_4(-2431f, Struct_2(vec2<u32>(1u, 4294967295u)), vec3<f32>(3262f, 457f, 1000f), vec2<f32>(569f, 1000f), 274f), Struct_4(-1496f, Struct_2(vec2<u32>(1u, 63356u)), vec3<f32>(-1352f, 562f, 808f), vec2<f32>(778f, 727f), -1401f), Struct_4(-155f, Struct_2(vec2<u32>(18889u, 0u)), vec3<f32>(-1793f, 1852f, -807f), vec2<f32>(-1280f, -631f), -646f), Struct_4(-737f, Struct_2(vec2<u32>(31562u, 0u)), vec3<f32>(-1000f, 212f, -653f), vec2<f32>(584f, -1891f), -725f), Struct_4(-1509f, Struct_2(vec2<u32>(0u, 35278u)), vec3<f32>(304f, -432f, -640f), vec2<f32>(133f, 526f), 2820f), Struct_4(450f, Struct_2(vec2<u32>(0u, 2079u)), vec3<f32>(760f, -1000f, -1000f), vec2<f32>(828f, -1296f), -1245f), Struct_4(-1881f, Struct_2(vec2<u32>(1u, 4294967295u)), vec3<f32>(-498f, -1192f, -487f), vec2<f32>(-606f, -1845f), -371f), Struct_4(-239f, Struct_2(vec2<u32>(1u, 1u)), vec3<f32>(-1079f, 1392f, 1112f), vec2<f32>(-1147f, 1000f), 1000f), Struct_4(511f, Struct_2(vec2<u32>(37592u, 27486u)), vec3<f32>(132f, 710f, 2048f), vec2<f32>(146f, 1000f), -747f), Struct_4(-671f, Struct_2(vec2<u32>(24677u, 26583u)), vec3<f32>(725f, -594f, -199f), vec2<f32>(-795f, -563f), -2011f), Struct_4(999f, Struct_2(vec2<u32>(4294967295u, 1u)), vec3<f32>(-1000f, -267f, -114f), vec2<f32>(-100f, 191f), 449f), Struct_4(1002f, Struct_2(vec2<u32>(1u, 1u)), vec3<f32>(-922f, -615f, -1492f), vec2<f32>(-318f, -1587f), 1000f), Struct_4(1815f, Struct_2(vec2<u32>(1u, 1u)), vec3<f32>(629f, 264f, -1645f), vec2<f32>(833f, 1965f), -387f), Struct_4(927f, Struct_2(vec2<u32>(35118u, 0u)), vec3<f32>(1033f, -1000f, 1230f), vec2<f32>(-151f, 501f), 510f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(firstTrailingBit(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2.a.a, -35351i, -1i), vec4<i32>(17616i, arg_2.a.a, 2147483647i, -20668i))))), arg_2.b, Struct_2(vec2<u32>(~arg_2.c.a.x, arg_1 ^ 47466u)), arg_2.d);
    let var_1 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(1i), -var_0.a.a, 0i, countOneBits(2147483647i)) >> (~(~vec4<u32>(arg_1, 7928u, 39448u, 1u)) % vec4<u32>(32u)), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.d.a, -31966i, arg_2.a.a, 15988i), vec4<i32>(1i, 2147483647i, -1i, var_0.d.a))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(32646u, var_0.c.a.x, 1u, arg_1), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0, arg_2.c.a.x, var_0.c.a.x), vec4<u32>(arg_1, arg_2.c.a.x, u_input.a.x, arg_1))) % vec4<u32>(32u)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(328f)), _wgslsmith_div_f32(661f, 607f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(638f)) + _wgslsmith_f_op_f32(abs(-295f)))))), Struct_2(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_dot_vec2_u32(var_0.c.a, global2[_wgslsmith_index_u32(arg_1, 29u)])) & countOneBits(var_0.c.a)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(890f, 1693f, -1000f)), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0.c.a.x, arg_0), 11u)]), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~(~arg_0), 11u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1603f, _wgslsmith_f_op_f32(floor(1220f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1217f, 2069f)))))), 635f);
    let var_3 = Struct_3(arg_2.a, select(arg_2.b, vec4<bool>(!(arg_3 && var_0.b.x), all(!var_0.b), var_0.b.x, false), !arg_2.b), var_0.c, var_0.d);
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c.x)));
    return !select(!select(!var_3.b, select(arg_2.b, vec4<bool>(false, arg_3, arg_2.b.x, false), vec4<bool>(var_3.b.x, true, true, false)), any(arg_2.b.zyw)), vec4<bool>(_wgslsmith_f_op_f32(exp2(var_2.e)) >= _wgslsmith_f_op_f32(floor(var_2.d.x)), !any(vec4<bool>(arg_3, arg_3, arg_2.b.x, var_0.b.x)), true, all(!vec2<bool>(arg_3, var_0.b.x))), !select(!var_0.b, select(var_0.b, var_0.b, var_0.b), true));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(Struct_1(-_wgslsmith_mod_i32(1i, 1i)), select(!func_3(~52289u, _wgslsmith_mod_u32(u_input.a.x, 22804u), Struct_3(Struct_1(55903i), vec4<bool>(false, true, true, true), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), Struct_1(2147483647i)), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), true), func_3(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 25501u, u_input.a.x, u_input.a.x)), ~vec4<u32>(67758u, 1u, u_input.a.x, u_input.a.x)), 29125u, global1[_wgslsmith_index_u32(1u, 16u)], true)), Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, select(25855u, u_input.a.x, false)), ~(~global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<u32>(u_input.a.x, 4294967295u))), Struct_1(_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(-75277i, 0i)), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-13385i, 2147483647i))))));
    let var_1 = var_0.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-733f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1658f))) * -104f), 122f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1131f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f) * _wgslsmith_f_op_f32(f32(-1f) * -2048f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(1407f + -1000f)) - -711f)));
    let var_3 = var_0.c;
    let var_4 = vec4<i32>(5296i, var_0.d.a, var_1.a, var_1.a) >> (firstTrailingBit(~(~reverseBits(vec4<u32>(var_3.a.x, var_3.a.x, u_input.a.x, var_3.a.x)))) % vec4<u32>(32u));
    return 1i;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = (vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_2.a, -1i, arg_2.a, arg_2.a), vec4<i32>(arg_3, arg_2.a, -17008i, 40130i), arg_1.b), min(vec4<i32>(-1398i, -2147483647i, arg_2.a, arg_3), vec4<i32>(arg_3, arg_1.a.a, 0i, 31656i)))) << (vec4<u32>((~u_input.a.x >> ((arg_1.c.a.x >> (u_input.a.x % 32u)) % 32u)) & 0u, u_input.a.x, ~(_wgslsmith_mult_u32(u_input.a.x, arg_1.c.a.x) ^ 1u), ~arg_1.c.a.x) % vec4<u32>(32u));
    var var_1 = _wgslsmith_mult_i32(-func_2(), ~min(1i, ~arg_2.a) >> (_wgslsmith_add_u32(arg_1.c.a.x, ~u_input.a.x >> (~0u % 32u)) % 32u));
    global3 = array<Struct_4, 29>();
    let var_2 = vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 12637u, 4294967295u)), ~0u), ~(~abs(arg_1.c.a.x))), 0u);
    var_1 = arg_2.a;
    return _wgslsmith_f_op_f32(select(-2014f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-527f + _wgslsmith_f_op_f32(round(947f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1365f, -1342f)))), 725f)), !any(vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 11>();
    var var_0 = vec3<u32>(u_input.a.x << (~(~61479u) % 32u), ~u_input.a.x, min(_wgslsmith_dot_vec3_u32(u_input.a, max(u_input.a, u_input.a)), u_input.a.x)) & u_input.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_f_op_f32(abs(-772f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, global1[_wgslsmith_index_u32(var_0.x, 16u)], Struct_1(30245i), 27044i)))))), _wgslsmith_f_op_f32(sign(387f)));
    global2 = array<vec2<u32>, 29>();
    let var_2 = Struct_2(vec2<u32>(~21042u, var_0.x));
    global3 = array<Struct_4, 29>();
    let var_3 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1398f)) - var_1.x))), Struct_2(vec2<u32>(_wgslsmith_mult_u32(~var_0.x, 38929u << (var_2.a.x % 32u)), u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.x, -1221f)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x))), 2877f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1734f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 + var_1) + vec2<f32>(265f, var_1.x)))), 368f);
    let var_4 = var_3.e;
    let var_5 = global1[_wgslsmith_index_u32(0u, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-var_5.d.a, 1i, select(var_5.d.a, -2147483647i, var_5.b.x)), var_4, var_5.d.a, vec3<i32>(_wgslsmith_div_i32(var_5.d.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_5.d.a, var_5.a.a, 1i, var_5.a.a), vec4<i32>(var_5.d.a, 2147483647i, var_5.d.a, -2147483647i))), select(var_5.d.a >> (reverseBits(1014u) % 32u), ~(var_5.a.a & -1i), true), var_5.a.a), _wgslsmith_mult_i32(var_5.d.a, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(var_5.a.a), abs(19820i), func_2()), vec3<i32>(-67583i, var_5.d.a, -30198i))));
}

