struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_1(0u, vec2<i32>(2147483647i, i32(-2147483648))), i32(-2147483648), 22561i, 991f, 498f), Struct_4(Struct_1(1u, vec2<i32>(0i, -1i)), 27360i, -45348i, 1294f, 314f), Struct_4(Struct_1(1u, vec2<i32>(-3594i, -1i)), -48667i, 4900i, 1147f, -158f), Struct_4(Struct_1(32887u, vec2<i32>(21495i, -34331i)), -42575i, 0i, -203f, 1912f), Struct_4(Struct_1(44137u, vec2<i32>(0i, 12759i)), -40524i, -10354i, -1372f, -1554f), Struct_4(Struct_1(1u, vec2<i32>(13226i, 12800i)), -49014i, 14160i, 332f, 848f), Struct_4(Struct_1(4294967295u, vec2<i32>(13730i, -11947i)), -1i, 1i, -1836f, -1510f), Struct_4(Struct_1(71152u, vec2<i32>(1i, -9605i)), -1i, 22537i, 556f, 1177f), Struct_4(Struct_1(33318u, vec2<i32>(8010i, -1i)), 19869i, -20236i, 721f, 242f), Struct_4(Struct_1(0u, vec2<i32>(-1i, 6045i)), -16543i, -1i, -701f, -282f), Struct_4(Struct_1(33246u, vec2<i32>(2147483647i, 2147483647i)), 10326i, -1i, -1000f, 1000f), Struct_4(Struct_1(4294967295u, vec2<i32>(2147483647i, 3493i)), 8846i, -1i, 1038f, -448f), Struct_4(Struct_1(2028u, vec2<i32>(-9205i, -43658i)), -19019i, i32(-2147483648), 419f, -956f), Struct_4(Struct_1(4294967295u, vec2<i32>(-23532i, 0i)), 2147483647i, -61799i, 1334f, 983f), Struct_4(Struct_1(1u, vec2<i32>(-1i, 29796i)), 0i, 2147483647i, -431f, 1000f), Struct_4(Struct_1(0u, vec2<i32>(2147483647i, 0i)), 22711i, -1i, -981f, 1205f), Struct_4(Struct_1(4294967295u, vec2<i32>(-29995i, 12872i)), 1i, 1i, -1000f, 614f), Struct_4(Struct_1(13910u, vec2<i32>(-1i, 34294i)), -26791i, -44614i, 842f, 180f), Struct_4(Struct_1(34666u, vec2<i32>(6000i, -1i)), 10600i, -1569i, 231f, 736f), Struct_4(Struct_1(1u, vec2<i32>(69241i, 2147483647i)), -31997i, 2147483647i, -1504f, 724f), Struct_4(Struct_1(8322u, vec2<i32>(17642i, -42825i)), -1i, -23668i, 894f, -386f), Struct_4(Struct_1(17682u, vec2<i32>(10980i, 50840i)), 2147483647i, 1i, 1482f, -386f), Struct_4(Struct_1(28672u, vec2<i32>(28878i, -1539i)), 2147483647i, 76190i, -1708f, -1396f));

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 14039u, 0u), vec3<u32>(0u, 26163u, 1u), vec3<u32>(5306u, 83518u, 1u), vec3<u32>(0u, 1u, 46369u), vec3<u32>(1u, 26072u, 9212u), vec3<u32>(37445u, 0u, 53298u), vec3<u32>(1u, 4294967295u, 80011u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(14101u, 4326u, 0u), vec3<u32>(1u, 68408u, 44608u), vec3<u32>(62144u, 80877u, 43486u), vec3<u32>(1u, 1u, 46241u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(45251u, 44361u, 1u), vec3<u32>(4294967295u, 30010u, 5628u), vec3<u32>(20244u, 42273u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(86712u, 43293u, 4316u), vec3<u32>(23890u, 63664u, 1u), vec3<u32>(4294967295u, 42269u, 26086u), vec3<u32>(4294967295u, 104850u, 110849u));

var<private> global3: array<i32, 3> = array<i32, 3>(1614i, 43896i, 39751i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = arg_0;
    global1 = array<Struct_4, 23>();
    var var_1 = ~(_wgslsmith_div_i32(52612i, arg_1.a.b.x) & -6333i);
    var_1 = ~3877i;
    var var_2 = !(!vec3<bool>(!arg_0 || arg_0, true != any(vec3<bool>(true, true, true)), true | arg_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -924f) * -384f);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(false, Struct_2(arg_1.c, arg_1.c), -2147483647i)), _wgslsmith_f_op_f32(arg_1.d - -1799f), _wgslsmith_f_op_f32(f32(-1f) * -774f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d, _wgslsmith_div_f32(188f, 1000f), -1215f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1025f, -815f, arg_1.d)))))));
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_mult_vec4_i32(u_input.b, u_input.b);
    var_1 = select(1i, var_2.x, arg_1.b.x);
    var var_3 = ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(0u, 21u)] >> (global2[_wgslsmith_index_u32(arg_1.c.a, 21u)] % vec3<u32>(32u)), vec3<u32>(18078u, 4294967295u, u_input.a)), vec3<u32>(global0[_wgslsmith_index_u32(14308u, 18u)] & u_input.a, firstTrailingBit(arg_1.a), abs(29884u))));
    return !select(vec4<bool>(arg_1.b.x, false, arg_1.b.x, !(!arg_1.b.x)), select(select(vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x), select(vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_1.b.x), all(vec3<bool>(arg_1.b.x, true, true))), !select(vec4<bool>(false, true, true, arg_1.b.x), vec4<bool>(false, arg_1.b.x, false, arg_1.b.x), arg_1.b.x), vec4<bool>(arg_1.c.a >= 1u, arg_1.d <= var_0.x, true, !arg_1.b.x)), vec4<bool>(arg_1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -463f) != _wgslsmith_f_op_f32(-1124f - arg_1.d), !any(arg_1.b.yy)));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_1(countOneBits(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(select(37294u, 68359u, true), 41661u)), 18u)]), vec2<i32>(global3[_wgslsmith_index_u32(u_input.a | u_input.a, 3u)], ~firstLeadingBit(u_input.b.x & global3[_wgslsmith_index_u32(u_input.a, 3u)])));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(firstTrailingBit(1u), 3u)], ~(-38005i)), max(max(~(-45620i), ~min(12121i, 1046i)), -1i));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(34345u, u_input.a), 23u)];
    global2 = array<vec3<u32>, 21>();
    global0 = array<u32, 18>();
    return Struct_3(~60870u, vec3<bool>(all(arg_0.yy), any(arg_0.zy), arg_1 != false), var_0, _wgslsmith_f_op_f32(f32(-1f) * -1055f));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(314f, arg_0.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, 901f) + vec2<f32>(arg_0.d, 769f))), vec2<f32>(_wgslsmith_f_op_f32(857f - arg_0.d), _wgslsmith_f_op_f32(round(arg_0.d))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, 232f) * vec2<f32>(445f, -1443f)), vec2<f32>(arg_0.d, 356f)))))));
    let var_1 = vec4<u32>(~arg_3.x, ~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(80862u, arg_3.x, 8593u, arg_1), vec4<u32>(0u, 71980u, arg_3.x, arg_1), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true)), ~vec4<u32>(0u, 4294967295u, arg_0.a, 1u) & vec4<u32>(arg_0.c.a, arg_0.a, 38094u, 4294967295u)), arg_1, reverseBits(func_4(!vec4<bool>(true, arg_0.b.x, true, true), arg_0.c.a == 0u).c.a) >> (0u % 32u));
    global3 = array<i32, 3>();
    global0 = array<u32, 18>();
    global2 = array<vec3<u32>, 21>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0.d, _wgslsmith_div_f32(1028f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d))))))));
}

fn func_1() -> vec2<f32> {
    var var_0 = 1f;
    global1 = array<Struct_4, 23>();
    global1 = array<Struct_4, 23>();
    global2 = array<vec3<u32>, 21>();
    var var_1 = max(~(-(~vec2<i32>(u_input.b.x, 0i))), -u_input.b.yx);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-542f, _wgslsmith_f_op_f32(func_5(func_4(func_2(u_input.b.zwy, Struct_3(global0[_wgslsmith_index_u32(u_input.a, 18u)], vec3<bool>(false, true, true), Struct_1(u_input.a, u_input.b.yy), 1194f)), true), _wgslsmith_mod_u32(57722u, 33499u) & min(u_input.a, u_input.a), global0[_wgslsmith_index_u32(~1u, 18u)] | global0[_wgslsmith_index_u32(10627u, 18u)], select(abs(global2[_wgslsmith_index_u32(11494u, 21u)]), firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(63965u, 18u)], global0[_wgslsmith_index_u32(35131u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)])), vec3<bool>(false, true, false))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))))));
}

fn func_6(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_5) -> Struct_1 {
    global2 = array<vec3<u32>, 21>();
    global0 = array<u32, 18>();
    global2 = array<vec3<u32>, 21>();
    global2 = array<vec3<u32>, 21>();
    global3 = array<i32, 3>();
    return func_4(arg_2.a, arg_2.a.x).c;
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global2 = array<vec3<u32>, 21>();
    let var_0 = func_4(select(!func_2(-vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11753u, 18u)], 3u)], 16104i, global3[_wgslsmith_index_u32(arg_1.a, 3u)]), Struct_3(global0[_wgslsmith_index_u32(u_input.a, 18u)], vec3<bool>(true, true, false), arg_1, arg_0)), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true)), firstLeadingBit(reverseBits(firstTrailingBit(arg_1.b.x))) != arg_1.b.x).c;
    return func_4(select(vec4<bool>(true, true, (-1i << (arg_2.x % 32u)) <= countOneBits(-1500i), _wgslsmith_clamp_u32(u_input.a, arg_1.a, var_0.a) >= 21451u), !(!func_2(vec3<i32>(37665i, 1i, -2147483647i), Struct_3(arg_2.x, vec3<bool>(false, true, true), var_0, arg_0))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), arg_0 <= arg_0), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), func_2(vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.a, 18u)], 3u)], 13100i, global3[_wgslsmith_index_u32(4294967295u, 3u)]), Struct_3(57241u, vec3<bool>(false, false, true), Struct_1(1u, arg_1.b), arg_0)), true), true)), all(vec4<bool>(true, select(true, true, true) || true, false, true))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(-1318f, func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(192f - 787f))), Struct_5(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 18u)] <= 5027u, true), global1[_wgslsmith_index_u32(~max(14748u, u_input.a), 23u)], vec3<f32>(1f, 1f, 1f))), _wgslsmith_add_vec3_u32(reverseBits(~global2[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<u32>(4294967295u & u_input.a, 23689u, global0[_wgslsmith_index_u32(4924u, 18u)])) & vec3<u32>(37832u, global0[_wgslsmith_index_u32(~(~29689u), 18u)], ~global0[_wgslsmith_index_u32(u_input.a | 33844u, 18u)]));
    global3 = array<i32, 3>();
    var var_1 = ~var_0.a;
    global3 = array<i32, 3>();
    var var_2 = Struct_2(Struct_1(~(~1u), vec2<i32>(-2147483647i, var_0.b.x)), Struct_1(u_input.a, -u_input.b.yw));
    let var_3 = Struct_5(select(select(vec4<bool>(true, 1u >= u_input.a, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec2<bool>(true, true)), var_0.b.x <= var_0.b.x, false, var_0.a > u_input.a), func_2(u_input.b.xzx, Struct_3(~var_0.a, vec3<bool>(true, true, true), var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -657f)))), Struct_4(func_6(_wgslsmith_div_vec2_f32(vec2<f32>(-651f, 1112f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(426f, 1336f))), 246f, Struct_5(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), Struct_4(var_2.a, 8277i, var_0.b.x, 2327f, 1046f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-825f, -1871f, 538f) * vec3<f32>(-1678f, -624f, 1000f)))), select(i32(-1i) * -34818i, func_4(vec4<bool>(false, false, false, false), false).c.b.x, true) | select(-2147483647i, -2147483647i, true), 1i, 220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-361f, -1462f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-700f, -183f, -1000f))))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(365f, 333f, -2264f))))));
    let var_4 = var_3;
    global2 = array<vec3<u32>, 21>();
    var_1 = 18386u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 21u)], vec3<u32>(var_3.b.a.a, var_0.a, global0[_wgslsmith_index_u32(18547u, 18u)]), ~vec3<u32>(44119u, var_0.a, 64883u)) >> (~global2[_wgslsmith_index_u32(71000u, 21u)] % vec3<u32>(32u)), ~reverseBits(_wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 21u)], vec3<u32>(59006u, var_0.a, 0u)))), var_2.a.b.x, abs(firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(var_0.a, 3u)], 0i, -39260i), vec3<i32>(1i, global3[_wgslsmith_index_u32(var_3.b.a.a, 3u)], -2147483647i)), ~u_input.b.wxz))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.b.a.a, 1u ^ ~var_2.a.a, var_3.b.a.a, var_0.a), abs(firstLeadingBit(countOneBits(vec4<u32>(21114u, var_4.b.a.a, var_3.b.a.a, 4757u))))), -func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, var_3.c.x)))), _wgslsmith_f_op_f32(var_3.c.x * var_3.c.x), var_3).b);
}

