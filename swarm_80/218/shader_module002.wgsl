struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<i32>(-48812i, 0i), vec4<i32>(-1i, i32(-2147483648), 41130i, 15847i)), Struct_1(vec2<i32>(-1i, 0i), vec4<i32>(1087i, 0i, 2147483647i, -1i)), Struct_1(vec2<i32>(-10159i, -1i), vec4<i32>(i32(-2147483648), 0i, -9775i, i32(-2147483648)))), Struct_2(Struct_1(vec2<i32>(-66121i, -24934i), vec4<i32>(2147483647i, 67232i, 59i, 2147483647i)), Struct_1(vec2<i32>(-10170i, -26859i), vec4<i32>(-1i, -9771i, 0i, -1i)), Struct_1(vec2<i32>(1i, 65680i), vec4<i32>(i32(-2147483648), -1i, 44548i, 1i))), Struct_2(Struct_1(vec2<i32>(-1i, 1i), vec4<i32>(-1i, 2147483647i, -33691i, -35920i)), Struct_1(vec2<i32>(-5598i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1209i, -1i, 33275i)), Struct_1(vec2<i32>(21053i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, i32(-2147483648)))), Struct_2(Struct_1(vec2<i32>(25182i, -2606i), vec4<i32>(8199i, i32(-2147483648), -578i, 2147483647i)), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<i32>(19062i, -12644i, -44792i, -35757i)), Struct_1(vec2<i32>(71073i, 0i), vec4<i32>(-366i, 0i, -10794i, 0i))), Struct_2(Struct_1(vec2<i32>(-1i, 0i), vec4<i32>(1i, 72161i, 2147483647i, 1i)), Struct_1(vec2<i32>(i32(-2147483648), 61474i), vec4<i32>(8094i, -46856i, 0i, -1i)), Struct_1(vec2<i32>(2147483647i, -1i), vec4<i32>(-55377i, 24786i, i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec2<i32>(48494i, -34822i), vec4<i32>(18263i, i32(-2147483648), -1i, 1i)), Struct_1(vec2<i32>(-37682i, -1i), vec4<i32>(-1i, -9336i, 33682i, 0i)), Struct_1(vec2<i32>(0i, -53863i), vec4<i32>(-14946i, 34916i, 17544i, 0i))), Struct_2(Struct_1(vec2<i32>(1i, 0i), vec4<i32>(15757i, 0i, 0i, -27064i)), Struct_1(vec2<i32>(1i, 0i), vec4<i32>(-27871i, 2147483647i, 0i, i32(-2147483648))), Struct_1(vec2<i32>(81699i, -654i), vec4<i32>(2147483647i, i32(-2147483648), 2585i, -1i))));

var<private> global1: array<vec2<i32>, 17>;

var<private> global2: u32 = 56263u;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(-25616i, -42912i), vec4<i32>(2147483647i, -1i, -1i, 1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global2 = abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 23124u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(4294967295u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4163u, 7159u), vec3<u32>(1u, 4294967295u, 35640u))))) | ~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(41059u, 1u, 1u, 0u), vec4<u32>(25207u, 1u, 24492u, 4294967295u)), 1u));
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-784f, 516f, -1978f), _wgslsmith_f_op_vec3_f32(vec3<f32>(415f, -2969f, -121f) - vec3<f32>(879f, 1000f, 503f)), false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1961f)), 1364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-223f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1085f)), _wgslsmith_f_op_f32(-213f + -127f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1196f)), _wgslsmith_f_op_f32(-417f + var_1.x)), var_1.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(var_1.x, var_1.x, 728f)), vec3<f32>(-399f, -236f, 249f))))), vec3<bool>(true, true, true)));
    var var_3 = Struct_1(global1[_wgslsmith_index_u32(reverseBits(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 29009u), vec3<u32>(1u, 32283u, 4294967295u)))), 17u)], global3.b);
    return ~1u;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec2<bool>, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_2, 7>();
    global1 = array<vec2<i32>, 17>();
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(abs(0u), _wgslsmith_add_u32(_wgslsmith_add_u32(~50515u, _wgslsmith_mod_u32(1u, 22659u)), func_3())), vec2<u32>(max(0u, abs(arg_0.e)), _wgslsmith_mult_u32(91574u, _wgslsmith_sub_u32(arg_0.e & arg_1, _wgslsmith_sub_u32(arg_0.e, 63027u)))));
    global1 = array<vec2<i32>, 17>();
    var var_1 = vec2<bool>(false, !any(vec2<bool>(all(arg_2), select(arg_2.x, false, true))));
    return Struct_1(vec2<i32>(1i, 0i), ~(global3.b >> (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.e, arg_1, 1671u, arg_1), vec4<u32>(arg_0.e, arg_0.e, 58750u, 51101u), vec4<u32>(arg_1, arg_1, var_0.x, 1u)), ~vec4<u32>(arg_0.e, arg_1, 0u, 4294967295u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = 1f;
    let var_1 = arg_0.e;
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-995f, -441f, arg_0.c, arg_0.c) + vec4<f32>(arg_0.d, arg_2, -327f, 993f)))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(491f, 2006f, -2332f, arg_0.d)))))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1223f))) * 305f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.c) * _wgslsmith_f_op_f32(abs(-615f))))), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + -511f)));
    var var_1 = -(min(arg_0.b.a.a.x, max(40406i, -34328i)) | (select(-2147483647i, _wgslsmith_sub_i32(global3.b.x, global3.a.x), true) ^ arg_0.b.a.a.x));
    let var_2 = vec3<i32>(-abs(global3.b.x), 1i, u_input.a.x);
    let var_3 = firstLeadingBit(vec4<u32>(~(~4294967295u), ~32656u, arg_0.e, arg_0.e));
    let var_4 = !select(select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true)), vec4<bool>(true, true, -2147483647i < arg_1.a.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)), vec4<bool>(_wgslsmith_div_f32(arg_2, 964f) >= _wgslsmith_f_op_f32(-arg_0.d), true, true, all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    return Struct_4(Struct_1(var_2.xy, vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-28427i, 1i, u_input.a.x, -37721i), vec4<i32>(-2147483647i, arg_0.b.c.b.x, -1049i, arg_1.a.x)), _wgslsmith_div_i32(global3.a.x, global3.b.x) & 33126i, var_2.x, min(u_input.a.x, _wgslsmith_sub_i32(arg_0.a, -5869i)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_3.x, firstLeadingBit(49053u), min(357u, 12828u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 4294967295u, 20626u, var_3.x), var_3)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_3, vec4<u32>(1u, 28582u, 4294967295u, 0u)), var_3, _wgslsmith_add_vec4_u32(var_3, vec4<u32>(var_3.x, 58131u, arg_0.e, var_3.x)))), ~max(36850u, _wgslsmith_sub_u32(3444u, var_3.x)), var_3.x, var_3.x));
}

fn func_1(arg_0: vec3<i32>) -> vec2<i32> {
    global3 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(42326i, arg_0.x)), ~(~global1[_wgslsmith_index_u32(0u, 17u)] >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), global3.b);
    var var_0 = arg_0.x;
    global0 = array<Struct_2, 7>();
    global2 = firstTrailingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), min(vec2<u32>(61517u, 17043u), vec2<u32>(14404u, 34487u)), select(vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), true)), select(~vec2<u32>(1u, 32844u), abs(~vec2<u32>(0u, 4294967295u)), true)));
    var var_1 = func_5(func_4(Struct_3(1i, Struct_2(func_2(Struct_3(global3.b.x, Struct_2(Struct_1(vec2<i32>(arg_0.x, arg_0.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0.x)), Struct_1(u_input.a, vec4<i32>(u_input.a.x, 0i, u_input.a.x, -1i)), Struct_1(vec2<i32>(global3.b.x, global3.a.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.a.x))), -1930f, -1451f, 25914u), 4294967295u, vec2<bool>(false, true), -32775i), func_2(Struct_3(global3.b.x, Struct_2(Struct_1(global3.b.wy, global3.b), Struct_1(vec2<i32>(u_input.a.x, 18547i), vec4<i32>(arg_0.x, -27476i, global3.b.x, -2546i)), Struct_1(u_input.a, vec4<i32>(global3.a.x, -51054i, u_input.a.x, arg_0.x))), -196f, 1000f, 3705u), 62406u, vec2<bool>(true, true), arg_0.x), Struct_1(vec2<i32>(arg_0.x, u_input.a.x), vec4<i32>(-1i, global3.a.x, -1i, 22978i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-364f, 1760f)) - _wgslsmith_f_op_f32(1373f - -903f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(639f + 2197f))), max(~0u, ~77094u)), Struct_4(func_2(Struct_3(u_input.a.x, global0[_wgslsmith_index_u32(0u, 7u)], 1080f, -1862f, 1u), countOneBits(69736u), vec2<bool>(true, true), i32(-1i) * -2147483647i), vec4<u32>(abs(55957u), min(4294967295u, 4294967295u), ~0u, 1u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8988u, 0u, 0u), abs(vec3<u32>(70660u, 1u, 4294967295u))), 1u)), func_4(Struct_3(global3.b.x, func_4(func_4(Struct_3(14972i, Struct_2(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, u_input.a.x)), Struct_1(arg_0.xx, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)), Struct_1(vec2<i32>(49037i, global3.b.x), vec4<i32>(u_input.a.x, 38641i, -1i, global3.a.x))), -1982f, -1105f, 43905u), Struct_4(Struct_1(global3.b.yz, vec4<i32>(u_input.a.x, -1i, arg_0.x, 11068i)), vec4<u32>(1u, 1u, 4294967295u, 25108u)), vec2<u32>(50506u, 25780u)), Struct_4(Struct_1(vec2<i32>(2147483647i, u_input.a.x), global3.b), vec4<u32>(47130u, 3643u, 1u, 4717u)), vec2<u32>(43572u, 1u)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1470f, 687f, true)) * _wgslsmith_f_op_f32(1539f - -218f)), _wgslsmith_f_op_f32(floor(1046f)), select(~1u, 6709u << (0u % 32u), true)), Struct_4(func_4(func_4(Struct_3(global3.b.x, Struct_2(Struct_1(global1[_wgslsmith_index_u32(48434u, 17u)], vec4<i32>(66268i, arg_0.x, -2147483647i, -1i)), Struct_1(vec2<i32>(2147483647i, 55722i), vec4<i32>(global3.b.x, global3.b.x, arg_0.x, -25395i)), Struct_1(vec2<i32>(81672i, 0i), global3.b)), -936f, -1000f, 45134u), Struct_4(Struct_1(vec2<i32>(-4370i, arg_0.x), global3.b), vec4<u32>(51097u, 1u, 4294967295u, 4294967295u)), vec2<u32>(1u, 11817u)), Struct_4(Struct_1(global3.a, vec4<i32>(arg_0.x, arg_0.x, 2147483647i, arg_0.x)), vec4<u32>(0u, 1u, 49031u, 11698u)), abs(vec2<u32>(1u, 30207u))).b.c, vec4<u32>(1u, 1u, 1u, 1u)), vec2<u32>(countOneBits(4294967295u), ~func_3())).b.b, _wgslsmith_f_op_f32(2263f - -1000f));
    return firstLeadingBit(_wgslsmith_div_vec2_i32(reverseBits(-vec2<i32>(-2147483647i, 0i)), global3.a) ^ -(_wgslsmith_mod_vec2_i32(arg_0.xx, vec2<i32>(arg_0.x, global3.b.x)) << ((var_1.b.wz & var_1.b.zx) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (1i <= _wgslsmith_clamp_i32(global3.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global3.b, vec4<i32>(-20670i, -2147483647i, global3.b.x, 23483i)), vec4<i32>(1i, 8963i, 2147483647i, u_input.a.x)), 43235i)) && any(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), false, all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true))));
    global3 = Struct_1(func_1(global3.b.www), ~(-vec4<i32>(func_1(vec3<i32>(u_input.a.x, u_input.a.x, global3.b.x)).x, ~2147483647i, global3.b.x, -u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(581f)), -1433f)), _wgslsmith_f_op_f32(abs(-2124f)), _wgslsmith_f_op_f32(f32(-1f) * -298f))));
    let var_2 = -300f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~(~max(vec2<u32>(3322u, 6065u), vec2<u32>(0u, 0u))), _wgslsmith_div_vec2_u32(vec2<u32>(41624u, func_4(Struct_3(global3.b.x, Struct_2(Struct_1(vec2<i32>(global3.a.x, 1i), vec4<i32>(global3.b.x, global3.a.x, -4984i, 2147483647i)), Struct_1(global1[_wgslsmith_index_u32(73821u, 17u)], global3.b), Struct_1(vec2<i32>(global3.b.x, u_input.a.x), global3.b)), var_1.x, var_2, 0u), Struct_4(Struct_1(u_input.a, vec4<i32>(-35579i, u_input.a.x, global3.b.x, global3.b.x)), vec4<u32>(29745u, 12600u, 957u, 0u)), vec2<u32>(11504u, 4294967295u)).e), firstTrailingBit(~vec2<u32>(8727u, 39238u)))));
}

