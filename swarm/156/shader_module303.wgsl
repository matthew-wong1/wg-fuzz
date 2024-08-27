struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(15308u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(26337u, 4294967295u), vec2<u32>(0u, 89305u), vec2<u32>(1488u, 100227u), vec2<u32>(35942u, 24138u), vec2<u32>(1u, 40147u), vec2<u32>(4294967295u, 3030u), vec2<u32>(24075u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 14482u), vec2<u32>(56633u, 60044u), vec2<u32>(26807u, 28691u), vec2<u32>(22699u, 28677u), vec2<u32>(42628u, 28995u), vec2<u32>(65203u, 1u), vec2<u32>(15544u, 30232u), vec2<u32>(4294967295u, 24231u), vec2<u32>(0u, 1u), vec2<u32>(0u, 105564u), vec2<u32>(9069u, 21499u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 37718u), vec2<u32>(4294967295u, 1u), vec2<u32>(2352u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 20533u));

var<private> global1: array<Struct_2, 11>;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(-372f, 588f, vec4<f32>(318f, -1306f, -694f, -1164f), 12792i, vec3<f32>(-445f, 1625f, 645f)), Struct_2(152f, -238f, vec4<f32>(-1000f, 225f, 259f, 630f), 2147483647i, vec3<f32>(-1143f, 508f, -582f)), Struct_2(843f, 267f, vec4<f32>(883f, -1349f, -481f, 480f), -21534i, vec3<f32>(1486f, -544f, 270f)), Struct_2(-1392f, 858f, vec4<f32>(934f, -372f, -691f, -520f), 1i, vec3<f32>(-211f, -1525f, 284f)), Struct_2(-562f, 437f, vec4<f32>(-519f, 215f, -332f, -698f), -56726i, vec3<f32>(1211f, -572f, 210f)), Struct_2(305f, -520f, vec4<f32>(-785f, -1000f, 508f, -352f), -26595i, vec3<f32>(-1975f, -1609f, -516f)), Struct_2(443f, 457f, vec4<f32>(-1016f, 1166f, -1940f, -1381f), -10252i, vec3<f32>(-388f, 295f, -891f)), Struct_2(-167f, 1144f, vec4<f32>(579f, 487f, 140f, -531f), i32(-2147483648), vec3<f32>(1054f, -1240f, 919f)), Struct_2(-712f, 388f, vec4<f32>(-1228f, 1887f, -514f, 554f), -2481i, vec3<f32>(-279f, -1062f, -105f)), Struct_2(-1692f, 672f, vec4<f32>(-673f, 1335f, 1604f, -439f), 1i, vec3<f32>(851f, -862f, 971f)), Struct_2(1114f, -867f, vec4<f32>(849f, 463f, -1230f, -1420f), i32(-2147483648), vec3<f32>(-326f, 1582f, -489f)), Struct_2(1007f, -3266f, vec4<f32>(914f, -719f, -115f, -984f), 17882i, vec3<f32>(3166f, -838f, 299f)), Struct_2(-328f, 1237f, vec4<f32>(-1869f, -1496f, -529f, -1617f), 2147483647i, vec3<f32>(-188f, -794f, -667f)), Struct_2(-188f, -335f, vec4<f32>(-1133f, -370f, 929f, -625f), -20563i, vec3<f32>(-608f, 1000f, 2677f)), Struct_2(254f, -1843f, vec4<f32>(-257f, -890f, 854f, 544f), -37549i, vec3<f32>(2101f, -349f, 1000f)), Struct_2(1541f, 1854f, vec4<f32>(1014f, -829f, -619f, -641f), -4805i, vec3<f32>(-1436f, 487f, 157f)), Struct_2(-576f, 472f, vec4<f32>(547f, -298f, -1013f, 933f), -1i, vec3<f32>(1027f, 383f, 372f)), Struct_2(-1728f, -191f, vec4<f32>(1245f, 209f, 1466f, -895f), -35099i, vec3<f32>(-485f, -450f, -734f)), Struct_2(-1074f, -1662f, vec4<f32>(-474f, 1000f, 2489f, 1100f), -22106i, vec3<f32>(-292f, -863f, 159f)), Struct_2(-314f, -1507f, vec4<f32>(-1727f, 1631f, -1846f, 218f), 58818i, vec3<f32>(1606f, -2209f, -630f)), Struct_2(-1566f, 931f, vec4<f32>(-682f, -310f, -208f, -907f), -1i, vec3<f32>(976f, 1224f, -1369f)), Struct_2(743f, 1000f, vec4<f32>(-1137f, -273f, 978f, -541f), 2147483647i, vec3<f32>(-1539f, -542f, 619f)), Struct_2(2779f, -163f, vec4<f32>(438f, -2165f, 1340f, -771f), -60075i, vec3<f32>(213f, 515f, -1000f)), Struct_2(565f, -1050f, vec4<f32>(387f, -1175f, -1000f, 355f), 28659i, vec3<f32>(275f, -1574f, -663f)), Struct_2(-828f, 1000f, vec4<f32>(-1000f, 748f, -1744f, 332f), i32(-2147483648), vec3<f32>(877f, -528f, -232f)));

var<private> global3: Struct_3;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> vec3<u32> {
    var var_0 = reverseBits(global4.c);
    global2 = array<Struct_2, 25>();
    var var_1 = Struct_1(false, global4.d.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(14251u, reverseBits(_wgslsmith_dot_vec3_u32(global3.b, vec3<u32>(arg_3, 1u, global3.b.x))), 40244u, arg_3), (reverseBits(vec4<u32>(0u, arg_3, 0u, global4.b.x)) << (vec4<u32>(global4.b.x, global3.b.x, 0u, global3.b.x) % vec4<u32>(32u))) | vec4<u32>(7771u, _wgslsmith_mult_u32(4294967295u, global3.b.x), min(18896u, 0u), 4294967295u), vec4<u32>(~global3.b.x, u_input.a, ~_wgslsmith_clamp_u32(arg_3, arg_3, 0u), arg_3)));
    var var_2 = arg_3;
    let var_3 = Struct_1(any(vec2<bool>(!(false && var_1.a), select(var_1.a, var_1.a, true))), _wgslsmith_f_op_f32(-global4.d.x), vec4<u32>(~(~abs(u_input.a)), 21746u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~global4.b.x, _wgslsmith_sub_u32(4294967295u, var_1.c.x)), _wgslsmith_div_u32(arg_3, 94303u | u_input.a), arg_3 << (4294967295u % 32u)), ~(~arg_3 << (~1u % 32u))));
    return vec3<u32>(37462u, ~var_3.c.x | ~min(_wgslsmith_mult_u32(1u, var_3.c.x), ~37205u), ~(~countOneBits(_wgslsmith_mod_u32(22663u, 36167u))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global4 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.b - 296f), 2433f, 766f, arg_0.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global3.a, global3.a))))), !vec4<bool>(global3.b.x >= arg_0.c.x, arg_0.a, all(vec2<bool>(true, false)), true))), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, arg_0.b, -1000f))), -(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 0i, 29698i), vec4<i32>(global3.c.x, 51761i, global3.e, global3.c.x)) ^ vec4<i32>(global4.e, global3.e, global4.e, -2147483647i)), global2[_wgslsmith_index_u32(~countOneBits(~arg_0.c.x), 25u)], abs(select(56028u, global3.b.x, all(vec2<bool>(true, arg_0.a))))), global4.c ^ _wgslsmith_sub_vec2_i32(global3.c, _wgslsmith_div_vec2_i32(global4.c, global4.c)), global3.d, firstTrailingBit(-_wgslsmith_sub_i32(select(-1i, global4.e, true), 31362i >> (0u % 32u))));
    global3 = Struct_3(global4.a, select(vec3<u32>(1u, u_input.a, global3.b.x), arg_0.c.ywz, !(!vec3<bool>(true, arg_0.a, arg_0.a))), global3.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(global3.d.x - 1113f), _wgslsmith_div_f32(arg_0.b, global4.a.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global3.d)) + global3.d)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(-462f * 1000f)) * vec3<f32>(-387f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-global3.d.x)))), abs(global4.c.x));
    let var_0 = global2[_wgslsmith_index_u32(71192u, 25u)];
    global2 = array<Struct_2, 25>();
    var var_1 = Struct_2(global4.d.x, -1538f, global4.a, _wgslsmith_mult_i32(abs(min(var_0.d, -3005i)), _wgslsmith_mult_i32(global4.c.x, -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, -942f, global4.d.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.c.xxw)))))));
    return global1[_wgslsmith_index_u32(36106u & global3.b.x, 11u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool) -> vec2<i32> {
    global0 = array<vec2<u32>, 28>();
    var var_0 = !vec3<bool>(all(!select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, true), vec2<bool>(true, false))), false, all(select(!vec2<bool>(arg_2, false), vec2<bool>(false, true), any(vec2<bool>(true, arg_2)))));
    global1 = array<Struct_2, 11>();
    global4 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(global3.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global3.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), -127f, -145f), global4.b, global4.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(func_2(Struct_1(arg_2, global3.a.x, vec4<u32>(1u, global4.b.x, 32872u, global4.b.x))).c.wxw, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-868f, global4.a.x, global4.a.x)))))), global4.c.x);
    let var_1 = vec4<bool>(false, true, any(!select(vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_2, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(var_0.x, false, true))), select(false, false, !(!var_0.x)));
    return ~vec2<i32>(2147483647i, ~global4.e << (~global4.b.x % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(32486u, 11u)];
    global3 = Struct_3(_wgslsmith_f_op_vec4_f32(max(global3.a, vec4<f32>(_wgslsmith_f_op_f32(max(global4.a.x, -1777f)), var_0.b, global4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.d.x)))))), vec3<u32>(1u, countOneBits(_wgslsmith_mod_u32(43565u, global3.b.x) << (_wgslsmith_clamp_u32(10486u, global3.b.x, u_input.a) % 32u)), global4.b.x), -_wgslsmith_mult_vec2_i32(select(global3.c, vec2<i32>(-12935i, global4.e), vec2<bool>(false, true)) << (~global4.b.xz % vec2<u32>(32u)), func_4(~vec3<i32>(7410i, global4.c.x, 22079i), func_2(Struct_1(false, 376f, vec4<u32>(52292u, global3.b.x, 27058u, 4294967295u))), global4.b.x != 4294967295u)), global3.a.yzy, global4.c.x);
    var var_1 = Struct_3(vec4<f32>(-1058f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.a.x), global4.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1459f, _wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(min(157f, _wgslsmith_f_op_f32(-global4.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.a.x * -1631f)))), vec3<u32>(1u, firstTrailingBit(abs(global3.b.x)), u_input.a), firstTrailingBit(~vec2<i32>(global3.c.x & 0i, global3.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-573f, var_0.e.x))), 468f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(1334f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global3.d))) * global4.d)), -global4.e);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(398f, -1738f), _wgslsmith_div_vec2_f32(var_0.e.zz, vec2<f32>(391f, 1000f))))) + vec2<f32>(func_2(Struct_1(false, global4.d.x, vec4<u32>(u_input.a, global3.b.x, 3915u, 18011u))).a, -137f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.xx)));
    var var_3 = true;
    return Struct_1(!(-10168i > _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.d, -13058i, var_1.e, 23365i), vec4<i32>(var_1.c.x, 2480i, global4.e, -41057i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global3.c.x, 2147483647i, global4.e), vec4<i32>(var_1.c.x, global4.c.x, -20578i, global4.e), vec4<i32>(31854i, 5191i, global3.e, -10102i)))), _wgslsmith_f_op_f32(f32(-1f) * -258f), vec4<u32>(abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global4.b.x, global3.b.x), _wgslsmith_mod_u32(95267u, 1u))), 82597u, 4294967295u, ~(~65899u)));
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1848f), -790f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-375f, 1063f, true))) * global3.d.x), 340f, _wgslsmith_f_op_f32(round(432f)), 2032f), -(-(~36832i) | -_wgslsmith_dot_vec4_i32(vec4<i32>(3788i, 12334i, global4.e, 1i), vec4<i32>(-1i, global4.e, global4.e, -15411i))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-global4.d.x))), _wgslsmith_f_op_vec3_f32(global3.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.x, global4.d.x, 406f) - vec3<f32>(196f, global3.a.x, global3.a.x)))), select(vec3<bool>(true, !arg_0.a, true), select(!vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(true, true, true), !vec3<bool>(false, arg_0.a, false)), select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(false, arg_0.a, false), vec3<bool>(false, false, arg_0.a), arg_0.a), !vec3<bool>(true, true, arg_0.a))))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.d.x), global4.a.x));
    let var_2 = arg_0;
    global4 = Struct_3(vec4<f32>(_wgslsmith_div_f32(279f, func_1().b), _wgslsmith_div_f32(func_1().b, _wgslsmith_f_op_f32(f32(-1f) * -877f)), var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4.a.x)) * arg_0.b), arg_0.b)), _wgslsmith_div_vec3_u32(var_2.c.wyy, min(max(_wgslsmith_add_vec3_u32(arg_0.c.wyz, global3.b), var_2.c.yyx << (global4.b % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(global4.b), var_2.c.xzx, var_2.c.xwy & vec3<u32>(992u, var_2.c.x, u_input.a)))), firstLeadingBit((global4.c >> ((global0[_wgslsmith_index_u32(global3.b.x, 28u)] | global0[_wgslsmith_index_u32(0u, 28u)]) % vec2<u32>(32u))) & global4.c), var_0.c.xwz, 34177i);
    global2 = array<Struct_2, 25>();
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-402f, arg_0.b, -2772f))))), _wgslsmith_f_op_vec3_f32(-var_0.e), any(vec4<bool>(!var_2.a, true, arg_0.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global3.a)), global3.a), global3.b, select(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global3.e) >> (vec2<u32>(u_input.a, 41331u) % vec2<u32>(32u)), ~vec2<i32>(global4.c.x, global4.e), global3.c)), reverseBits(global3.c), !(true & (153f >= global3.d.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -923f)), _wgslsmith_f_op_f32(global4.d.x * global4.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x + global4.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -415f))), _wgslsmith_f_op_vec3_f32(func_5(func_1())), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), select(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(-global4.c.x, 1i), global4.e), global3.e, 43654u != ~firstLeadingBit(u_input.a)));
    let var_0 = select(vec4<bool>(true, false, all(vec3<bool>(true, true, true)), true), vec4<bool>(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), 0i > global3.e, true, true), select(vec4<bool>(_wgslsmith_f_op_f32(-1079f - global4.d.x) != _wgslsmith_f_op_f32(global4.d.x - global3.d.x), all(vec3<bool>(true, false, false)) || true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)))), !vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, all(vec2<bool>(true, true))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, all(vec2<bool>(false, false)), select(true, true, true), true), !(global4.b.x != 0u))));
    global0 = array<vec2<u32>, 28>();
    let var_1 = 1i;
    let var_2 = 4294967295u;
    var var_3 = func_2(func_1());
    let var_4 = 4294967295u;
    global2 = array<Struct_2, 25>();
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(global3.b.x, 1u, 16631u, _wgslsmith_div_u32(0u, func_3(vec3<f32>(global3.a.x, -2293f, -1027f), vec4<i32>(-19410i, global4.e, -1i, var_1), global1[_wgslsmith_index_u32(1u, 11u)], 1u).x))));
}

