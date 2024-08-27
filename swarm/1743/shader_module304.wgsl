struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec2<i32>(30110i, -9940i), vec2<f32>(224f, -1000f)), 12139u, Struct_1(vec2<i32>(0i, 2147483647i), vec2<f32>(-236f, -1059f))), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -10048i), vec2<f32>(-1065f, -1048f)), 47518u, Struct_1(vec2<i32>(-9508i, 29666i), vec2<f32>(-972f, 828f))), Struct_2(Struct_1(vec2<i32>(61087i, -3292i), vec2<f32>(-1169f, -2840f)), 321u, Struct_1(vec2<i32>(1i, -12538i), vec2<f32>(-831f, -839f))), Struct_2(Struct_1(vec2<i32>(0i, 19392i), vec2<f32>(1895f, -427f)), 8728u, Struct_1(vec2<i32>(-2670i, -20396i), vec2<f32>(-697f, -116f))), Struct_2(Struct_1(vec2<i32>(0i, 20713i), vec2<f32>(-1416f, -969f)), 1u, Struct_1(vec2<i32>(-40127i, -3198i), vec2<f32>(-868f, 762f))), Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<f32>(477f, -406f)), 57629u, Struct_1(vec2<i32>(-36204i, 18112i), vec2<f32>(-626f, 347f))), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(-315f, 1000f)), 29939u, Struct_1(vec2<i32>(-19044i, -1i), vec2<f32>(-897f, -273f))), Struct_2(Struct_1(vec2<i32>(1i, 1i), vec2<f32>(-1057f, -619f)), 1u, Struct_1(vec2<i32>(0i, -8069i), vec2<f32>(262f, -1000f))), Struct_2(Struct_1(vec2<i32>(0i, -28685i), vec2<f32>(531f, 2339f)), 0u, Struct_1(vec2<i32>(2147483647i, 1737i), vec2<f32>(1072f, -754f))), Struct_2(Struct_1(vec2<i32>(-33226i, -32788i), vec2<f32>(1000f, -1000f)), 77464u, Struct_1(vec2<i32>(39151i, 67587i), vec2<f32>(-563f, 135f))), Struct_2(Struct_1(vec2<i32>(5873i, i32(-2147483648)), vec2<f32>(-230f, 134f)), 0u, Struct_1(vec2<i32>(2147483647i, -40032i), vec2<f32>(1136f, -2035f))), Struct_2(Struct_1(vec2<i32>(44374i, 1i), vec2<f32>(-1411f, -527f)), 1u, Struct_1(vec2<i32>(10748i, -51116i), vec2<f32>(-793f, 1020f))), Struct_2(Struct_1(vec2<i32>(0i, 1i), vec2<f32>(419f, 1002f)), 44910u, Struct_1(vec2<i32>(0i, 1i), vec2<f32>(1400f, -746f))), Struct_2(Struct_1(vec2<i32>(53055i, 10335i), vec2<f32>(-1817f, 1000f)), 1u, Struct_1(vec2<i32>(-1210i, -31568i), vec2<f32>(-179f, -743f))), Struct_2(Struct_1(vec2<i32>(0i, 18457i), vec2<f32>(-687f, -1000f)), 7776u, Struct_1(vec2<i32>(-31649i, -30306i), vec2<f32>(-129f, 1298f))), Struct_2(Struct_1(vec2<i32>(-44460i, 2147483647i), vec2<f32>(-1000f, -235f)), 1u, Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(-166f, 1082f))), Struct_2(Struct_1(vec2<i32>(-41607i, -7173i), vec2<f32>(-455f, 594f)), 4294967295u, Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<f32>(-295f, -559f))), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec2<f32>(1000f, 1000f)), 19938u, Struct_1(vec2<i32>(-6721i, i32(-2147483648)), vec2<f32>(1643f, 1231f))), Struct_2(Struct_1(vec2<i32>(2147483647i, -54867i), vec2<f32>(-316f, 242f)), 4294967295u, Struct_1(vec2<i32>(i32(-2147483648), -38887i), vec2<f32>(354f, -579f))), Struct_2(Struct_1(vec2<i32>(32893i, 55728i), vec2<f32>(-1973f, -556f)), 0u, Struct_1(vec2<i32>(19512i, 1i), vec2<f32>(-1000f, -1000f))), Struct_2(Struct_1(vec2<i32>(12504i, 1269i), vec2<f32>(1847f, 1665f)), 1u, Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(-519f, -264f))), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<f32>(1336f, 610f)), 0u, Struct_1(vec2<i32>(10799i, 0i), vec2<f32>(1170f, 545f))), Struct_2(Struct_1(vec2<i32>(49744i, 10781i), vec2<f32>(591f, 1539f)), 0u, Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<f32>(204f, -547f))));

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<i32>(-16050i, -63396i), vec2<f32>(-1000f, 913f)), Struct_1(vec2<i32>(-50355i, i32(-2147483648)), vec2<f32>(-361f, -338f)), Struct_1(vec2<i32>(2147483647i, 1i), vec2<f32>(506f, -900f)), Struct_1(vec2<i32>(-1i, 32688i), vec2<f32>(-291f, 1024f)), Struct_1(vec2<i32>(-1i, 1i), vec2<f32>(-1788f, 641f)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<f32>(2746f, -1289f)), Struct_1(vec2<i32>(-1i, -1i), vec2<f32>(-1990f, 679f)), Struct_1(vec2<i32>(-25374i, -302i), vec2<f32>(1000f, -1325f)), Struct_1(vec2<i32>(-1991i, 90334i), vec2<f32>(-505f, 721f)), Struct_1(vec2<i32>(-2523i, 0i), vec2<f32>(-588f, -829f)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<f32>(453f, -444f)), Struct_1(vec2<i32>(-27347i, 2147483647i), vec2<f32>(-1404f, -1431f)), Struct_1(vec2<i32>(-57203i, i32(-2147483648)), vec2<f32>(1000f, 787f)), Struct_1(vec2<i32>(-1i, -71302i), vec2<f32>(-343f, -1102f)), Struct_1(vec2<i32>(-29296i, -1018i), vec2<f32>(-771f, -878f)), Struct_1(vec2<i32>(-12769i, -23552i), vec2<f32>(535f, 988f)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<f32>(-682f, 1557f)), Struct_1(vec2<i32>(12955i, 49729i), vec2<f32>(-249f, 1195f)), Struct_1(vec2<i32>(0i, 11283i), vec2<f32>(2071f, 1145f)), Struct_1(vec2<i32>(1i, -1i), vec2<f32>(-972f, 1039f)), Struct_1(vec2<i32>(-1i, -13758i), vec2<f32>(1855f, -150f)), Struct_1(vec2<i32>(38205i, i32(-2147483648)), vec2<f32>(-1508f, -1477f)), Struct_1(vec2<i32>(-44405i, -21616i), vec2<f32>(252f, 1000f)), Struct_1(vec2<i32>(2147483647i, 1i), vec2<f32>(716f, -1000f)), Struct_1(vec2<i32>(3475i, 13705i), vec2<f32>(-1460f, 1206f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: i32) -> vec2<i32> {
    global0 = array<Struct_2, 16>();
    global1 = array<Struct_2, 23>();
    var var_0 = arg_0;
    var_0 = reverseBits(arg_0 << (u_input.c % 32u));
    global2 = array<Struct_1, 25>();
    return vec2<i32>(_wgslsmith_sub_i32(~firstTrailingBit(0i), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, -2147483647i), 0i)), _wgslsmith_div_i32(62164i, 2147483647i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(414f - -2023f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.a.b.x)), _wgslsmith_f_op_f32(-arg_3.b.c.b.x)))));
    var var_1 = Struct_1(~_wgslsmith_add_vec2_i32(select(arg_3.b.c.a, vec2<i32>(34219i, -2147483647i), arg_0), vec2<i32>(~arg_3.a.x, abs(arg_3.c))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 799f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.b.a.b.x)))), _wgslsmith_f_op_f32(round(940f))));
    let var_2 = 0i | _wgslsmith_dot_vec2_i32(vec2<i32>(~arg_3.a.x, u_input.b >> (4294967295u % 32u)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b.b, u_input.d.x, arg_3.b.b, arg_3.b.b), vec4<u32>(arg_3.b.b, arg_3.b.b, arg_3.b.b, arg_3.b.b)), ~0u) % vec2<u32>(32u)), vec2<i32>(2147483647i, ~(-19557i)));
    var_1 = arg_3.b.c;
    var var_3 = vec2<bool>(arg_0, arg_0);
    return _wgslsmith_dot_vec4_u32(reverseBits(select(vec4<u32>(arg_3.b.b, min(73864u, u_input.a.x), arg_3.b.b, u_input.d.x), ~vec4<u32>(1u, arg_3.b.b, 57288u, u_input.d.x), select(vec4<bool>(arg_0, true, var_3.x, false), vec4<bool>(var_3.x, var_3.x, true, true), select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, var_3.x, arg_0, true), true)))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 37414u, 0u, u_input.d.x) ^ vec4<u32>(34939u, u_input.c, 39182u, arg_3.b.b), select(vec4<u32>(24447u, 0u, 10022u, 45852u), vec4<u32>(arg_3.b.b, 1u, u_input.c, u_input.a.x), vec4<bool>(arg_0, arg_0, arg_0, arg_0)) & ~vec4<u32>(arg_3.b.b, u_input.d.x, 44353u, u_input.d.x)));
}

fn func_1() -> u32 {
    let var_0 = i32(-1i) * -_wgslsmith_mod_i32(-4431i, countOneBits(u_input.b << (4294967295u % 32u)));
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~(~firstLeadingBit(vec2<i32>(u_input.b, var_0))), vec2<i32>(1i, abs(~u_input.b))), select(-func_2(-2147483647i), select(min(vec2<i32>(var_0, u_input.b), vec2<i32>(63274i, 23517i)), vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)), vec2<bool>(true, true)), false & any(vec3<bool>(true, false, true))) | vec2<i32>(-2147483647i & u_input.b, _wgslsmith_add_i32(1i, var_0) | _wgslsmith_add_i32(2147483647i, 0i)));
    let var_2 = global2[_wgslsmith_index_u32(u_input.a.x, 25u)];
    let var_3 = global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(min(~4294967295u, func_3(true, global2[_wgslsmith_index_u32(u_input.c, 25u)], var_2.b, Struct_3(vec2<i32>(u_input.b, -1i), Struct_2(global2[_wgslsmith_index_u32(u_input.d.x, 25u)], u_input.d.x, global2[_wgslsmith_index_u32(u_input.c, 25u)]), u_input.b))), ~abs(u_input.d.x))), 25u)];
    let var_4 = Struct_3(var_3.a, Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d.x >> (70692u % 32u), _wgslsmith_add_u32(0u, u_input.a.x)), 25u)], 77178u, Struct_1(_wgslsmith_mult_vec2_i32(var_2.a, func_2(1i)), var_2.b)), _wgslsmith_div_i32(var_2.a.x, firstTrailingBit(var_1.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u ^ _wgslsmith_sub_u32(~(4294967295u & _wgslsmith_clamp_u32(u_input.d.x, 1u, u_input.a.x)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c, ~u_input.c, ~3445u), _wgslsmith_mod_u32(u_input.d.x, func_1())));
    global0 = array<Struct_2, 16>();
    let var_1 = _wgslsmith_add_vec3_i32(select(firstTrailingBit(vec3<i32>(u_input.b, u_input.b, 0i) >> (vec3<u32>(u_input.c, 0u, u_input.d.x) % vec3<u32>(32u))), ~vec3<i32>(u_input.b, u_input.b, -11309i), _wgslsmith_sub_u32(u_input.c, 52409u) != u_input.c) >> (vec3<u32>(u_input.c, u_input.c, ~firstTrailingBit(24908u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, ~u_input.b, u_input.b) & ((vec3<i32>(7474i, 445i, -2147483647i) ^ vec3<i32>(27876i, u_input.b, 10715i)) ^ (vec3<i32>(2147483647i, 2452i, 0i) >> (vec3<u32>(0u, 39701u, u_input.a.x) % vec3<u32>(32u)))), firstTrailingBit(vec3<i32>(8982i, i32(-1i) * -40810i, u_input.b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-189f, -291f, -373f), vec3<f32>(-945f, -1473f, 1153f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1652f, 751f, -1330f) + vec3<f32>(-1188f, -1854f, -416f))))))));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(53173u, u_input.d.x), u_input.a.x) >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(72838u, u_input.c & 1u), ~_wgslsmith_mult_u32(~u_input.c, u_input.d.x), u_input.c) % 32u), 25u)];
    global1 = array<Struct_2, 23>();
    var var_4 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(-1i, var_3.a.x), var_3.a.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.b.x)))), _wgslsmith_div_f32(var_2.x, var_3.b.x)));
    global1 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(451f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(824f, _wgslsmith_f_op_f32(-1982f + var_3.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)))));
}

