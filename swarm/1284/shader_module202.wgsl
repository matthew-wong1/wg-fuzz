struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true));

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(37622u, vec3<u32>(51467u, 57598u, 30788u), true, vec2<u32>(0u, 1u), vec4<f32>(-1058f, -1155f, 270f, -857f))), Struct_2(Struct_1(47502u, vec3<u32>(9303u, 37015u, 4294967295u), false, vec2<u32>(61685u, 0u), vec4<f32>(1000f, -352f, -220f, -595f))), Struct_2(Struct_1(24839u, vec3<u32>(36130u, 1u, 1u), false, vec2<u32>(6116u, 25728u), vec4<f32>(454f, -1539f, -1502f, -232f))), Struct_2(Struct_1(4294967295u, vec3<u32>(4294967295u, 1391u, 28308u), false, vec2<u32>(4294967295u, 8213u), vec4<f32>(-1816f, -365f, -752f, -2179f))), Struct_2(Struct_1(38649u, vec3<u32>(4294967295u, 0u, 0u), false, vec2<u32>(0u, 0u), vec4<f32>(-1973f, 475f, 1319f, 133f))), Struct_2(Struct_1(65599u, vec3<u32>(14694u, 0u, 4294967295u), false, vec2<u32>(19191u, 6201u), vec4<f32>(576f, -786f, 273f, 358f))), Struct_2(Struct_1(34283u, vec3<u32>(4294967295u, 45992u, 10230u), false, vec2<u32>(15035u, 127163u), vec4<f32>(-791f, 1000f, 492f, -1196f))), Struct_2(Struct_1(4294967295u, vec3<u32>(4294967295u, 88886u, 4294967295u), false, vec2<u32>(0u, 10217u), vec4<f32>(765f, 974f, 350f, -645f))), Struct_2(Struct_1(6579u, vec3<u32>(68554u, 67383u, 4294967295u), false, vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-637f, -304f, 1394f, 1000f))), Struct_2(Struct_1(4294967295u, vec3<u32>(53265u, 0u, 8852u), false, vec2<u32>(4294967295u, 0u), vec4<f32>(389f, 283f, -730f, 978f))), Struct_2(Struct_1(43171u, vec3<u32>(4294967295u, 0u, 31581u), false, vec2<u32>(72844u, 31843u), vec4<f32>(-604f, 954f, -1029f, 168f))), Struct_2(Struct_1(1u, vec3<u32>(4294967295u, 1u, 1u), false, vec2<u32>(19242u, 4294967295u), vec4<f32>(-748f, -249f, 1872f, 378f))), Struct_2(Struct_1(1u, vec3<u32>(4294967295u, 1u, 4294967295u), true, vec2<u32>(1u, 72551u), vec4<f32>(-210f, -746f, 313f, 299f))), Struct_2(Struct_1(0u, vec3<u32>(1u, 8751u, 0u), true, vec2<u32>(4294u, 1u), vec4<f32>(-1136f, 918f, 1000f, -518f))), Struct_2(Struct_1(1u, vec3<u32>(1u, 0u, 7694u), false, vec2<u32>(49775u, 1u), vec4<f32>(-1000f, 934f, 1115f, 489f))), Struct_2(Struct_1(1u, vec3<u32>(0u, 0u, 5587u), false, vec2<u32>(74018u, 4294967295u), vec4<f32>(1137f, 1100f, 1000f, -806f))), Struct_2(Struct_1(0u, vec3<u32>(1u, 9699u, 84160u), true, vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-1636f, 988f, -905f, -457f))), Struct_2(Struct_1(0u, vec3<u32>(1u, 0u, 4294967295u), false, vec2<u32>(70646u, 70097u), vec4<f32>(1007f, 505f, -1810f, -918f))), Struct_2(Struct_1(4294967295u, vec3<u32>(43901u, 6581u, 36163u), false, vec2<u32>(40313u, 1u), vec4<f32>(120f, -1365f, -1000f, 643f))));

var<private> global4: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(1u, 61482u, 5189u, 0u), vec4<u32>(26188u, 65275u, 19851u, 4294967295u), vec4<u32>(61734u, 0u, 51156u, 27976u), vec4<u32>(0u, 107024u, 38550u, 0u), vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(19702u, 0u, 29687u, 4294967295u), vec4<u32>(4294967295u, 6443u, 4294967295u, 4294967295u), vec4<u32>(4849u, 24332u, 4294967295u, 12188u), vec4<u32>(1u, 67542u, 1u, 1u), vec4<u32>(5792u, 159u, 1u, 4294967295u), vec4<u32>(1u, 0u, 40558u, 47524u), vec4<u32>(22298u, 4294967295u, 63647u, 0u), vec4<u32>(43065u, 4294967295u, 3691u, 0u), vec4<u32>(22560u, 1u, 29974u, 20441u), vec4<u32>(0u, 3137u, 28707u, 51083u), vec4<u32>(5384u, 4294967295u, 0u, 56692u), vec4<u32>(4294967295u, 0u, 81841u, 0u), vec4<u32>(22024u, 0u, 1u, 86557u), vec4<u32>(4294967295u, 22533u, 0u, 4294967295u), vec4<u32>(9151u, 4294967295u, 1u, 0u), vec4<u32>(118271u, 24600u, 59749u, 0u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(37938u, 32156u, 1u, 40391u), vec4<u32>(4294967295u, 1u, 55898u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 43023u, 9995u), vec4<u32>(28586u, 23944u, 4294967295u, 0u), vec4<u32>(1u, 38569u, 79183u, 19787u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(164f, 950f, var_0, global0.x) * vec4<f32>(var_0, global0.x, -1000f, -501f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1419f, 1000f, var_0, var_0)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(var_0, -134f)), 1199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-483f, 390f)), global0.x)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1313f, global0.x, 852f, -579f), vec4<f32>(var_0, var_0, 1042f, global0.x))))))));
    global2 = array<vec4<bool>, 20>();
    let var_1 = Struct_1(u_input.c, abs(~(~(~vec3<u32>(24741u, 38304u, 28072u)))), false, vec2<u32>(~0u, 56221u) & ~(~(vec2<u32>(23172u, 1u) ^ vec2<u32>(4294967295u, u_input.c))), vec4<f32>(global0.x, var_0, var_0, _wgslsmith_f_op_f32(-var_0)));
    var var_2 = !select(vec3<bool>(true, !(!var_1.c), true), vec3<bool>(var_1.c, select(false, var_1.c, false) | true, var_1.c | (var_1.c || var_1.c)), !select(vec3<bool>(var_1.c, false, false), vec3<bool>(var_1.c, var_1.c, false), true));
    return all(!vec4<bool>(select(any(global2[_wgslsmith_index_u32(76347u, 20u)]), true, true), !(u_input.a.x != 2147483647i), true, var_2.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec4<f32> {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1.e)) - vec4<f32>(-373f, _wgslsmith_f_op_f32(floor(arg_1.e.x)), _wgslsmith_f_op_f32(floor(-1282f)), arg_1.e.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-131f, global0.x, -1000f, global0.x) * arg_1.e), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -919f, global0.x, 337f))), arg_0.b)))), _wgslsmith_f_op_f32(sign(arg_0.d.d)) <= -145f)), vec4<f32>(arg_1.e.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(201f - arg_1.e.x)), _wgslsmith_div_f32(arg_0.d.e.e.x, 1774f), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-343f)), _wgslsmith_f_op_f32(f32(-1f) * -588f))), arg_0.d.c.e.x));
    let var_0 = arg_1.c;
    var var_1 = reverseBits(-u_input.a);
    var var_2 = _wgslsmith_f_op_f32(arg_0.d.c.e.x - 729f);
    let var_3 = select(select(vec2<bool>(_wgslsmith_add_i32(arg_0.a, -2147483647i) < reverseBits(-1i), !arg_1.c), arg_0.c.xy, ~0i <= (1i & firstTrailingBit(var_1.x))), !(!arg_0.c.ww), vec2<bool>(select(!arg_0.d.c.c & (arg_0.c.x || arg_1.c), select(false, arg_1.c, arg_0.d.c.e.x >= arg_0.d.c.e.x), !(false & arg_1.c)), false));
    return arg_1.e;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = global0.xz;
    global1 = array<Struct_2, 17>();
    global0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(~arg_1.x, 0i, arg_1.x), -vec3<i32>(u_input.a.x, arg_1.x, arg_1.x) ^ (arg_1.xyz << (vec3<u32>(u_input.c, 4256u, 110310u) % vec3<u32>(32u)))), func_3(), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 20u)], Struct_3(func_3(), select(firstTrailingBit(u_input.c), ~arg_0, var_0.x < global0.x), Struct_1(arg_0, vec3<u32>(u_input.c, u_input.c, u_input.c), true, ~vec2<u32>(46287u, 8631u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0.x, -2105f, var_0.x) * vec4<f32>(-743f, -820f, 2865f, global0.x))), global0.x, Struct_1(arg_0, ~vec3<u32>(16421u, 17882u, u_input.c), true, ~vec2<u32>(59071u, 59393u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, 550f, -713f)))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, 9470u, 0u)), countOneBits(vec3<u32>(arg_0, u_input.c, 10971u))), ~vec3<u32>(arg_0, 4294967295u, 0u))), Struct_1(firstLeadingBit(_wgslsmith_mod_u32(firstTrailingBit(9712u), arg_0)), vec3<u32>(~(24520u << (arg_0 % 32u)), ~(~arg_0), abs(4294967295u)), false, _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, u_input.c), vec2<u32>(20534u, 0u)), ~vec2<u32>(arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.x, 440f, -270f)) * vec4<f32>(1481f, -967f, -1000f, -2257f))))));
    global3 = array<Struct_2, 19>();
    return _wgslsmith_div_vec2_u32(~(~vec2<u32>(1u, _wgslsmith_mult_u32(u_input.c, arg_0))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, arg_0), global4[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_div_u32(arg_0, 1u)), 23797u), firstTrailingBit(~abs(vec2<u32>(arg_0, 0u)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: i32) -> Struct_1 {
    global4 = array<vec4<u32>, 28>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -710f);
    global2 = array<vec4<bool>, 20>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 450f, var_0) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0, -364f, -920f)))))));
    global3 = array<Struct_2, 19>();
    return Struct_1(abs(4854u), ~(~vec3<u32>(62986u, _wgslsmith_add_u32(30986u, 1u), ~u_input.c)), true, func_2(_wgslsmith_mod_u32(~(~1u), ~u_input.c), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(904f, 1983f, var_0, var_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, var_0, 1339f, 1251f) * vec4<f32>(1000f, global0.x, 1482f, global0.x)) * vec4<f32>(global0.x, global0.x, 2059f, -313f)))));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = !(!any(!(!vec2<bool>(false, arg_2.c))));
    return arg_1.x;
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = false;
    global3 = array<Struct_2, 19>();
    global0 = _wgslsmith_f_op_vec4_f32(func_4(arg_2, func_1(vec3<bool>(u_input.c > arg_2.e, arg_0 < 452f, arg_1), vec3<i32>(_wgslsmith_div_i32(arg_2.a, u_input.a.x), 10589i, arg_2.a) >> (~(~vec3<u32>(1u, 0u, arg_2.e)) % vec3<u32>(32u)), ~u_input.b.x << (24842u % 32u))));
    let var_1 = true;
    var var_2 = select(!arg_2.c.xyw, select(vec3<bool>(arg_0 < _wgslsmith_f_op_f32(-1289f * -342f), abs(55644u) > u_input.c, false), select(vec3<bool>(arg_2.c.x, true, var_1), vec3<bool>(select(arg_1, false, arg_3.x), !arg_3.x, arg_2.b), var_1), all(vec3<bool>(false, var_1, false)) || true), select(select(select(select(vec3<bool>(true, false, var_1), vec3<bool>(true, false, arg_2.b), arg_1), arg_2.c.zxz, arg_2.b), select(select(vec3<bool>(arg_1, var_1, false), vec3<bool>(false, var_1, arg_2.b), arg_2.c.zzx), vec3<bool>(true, false, false), true), arg_2.c.yyy), !select(select(arg_2.c.wxy, arg_2.c.ywz, arg_2.c.yxw), !arg_2.c.ywx, false), false));
    return global3[_wgslsmith_index_u32(firstLeadingBit(arg_2.d.c.b.x), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 17>();
    var var_0 = abs(u_input.a.wwz);
    var var_1 = func_6(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(global0.x, 740f)), -598f)))), any(!global2[_wgslsmith_index_u32(~1u, 20u)]) & any(vec2<bool>(true, true)), Struct_4(func_5(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, var_0.x), u_input.b), func_1(vec3<bool>(false, true, false), u_input.a.zyw, var_0.x)) >> (~max(0u, u_input.c) % 32u), false, !global2[_wgslsmith_index_u32(u_input.c, 20u)], Struct_3(false, ~_wgslsmith_mod_u32(u_input.c, u_input.c), Struct_1(u_input.c, vec3<u32>(18929u, 1u, u_input.c) | vec3<u32>(86514u, 1u, u_input.c), true, vec2<u32>(u_input.c, 4294967295u), _wgslsmith_f_op_vec4_f32(func_4(Struct_4(u_input.a.x, false, global2[_wgslsmith_index_u32(0u, 20u)], Struct_3(true, 1u, Struct_1(u_input.c, vec3<u32>(165757u, 4294967295u, 46173u), false, vec2<u32>(20259u, 1u), vec4<f32>(-362f, global0.x, global0.x, -958f)), 1673f, Struct_1(u_input.c, vec3<u32>(u_input.c, u_input.c, 0u), true, vec2<u32>(0u, 0u), vec4<f32>(global0.x, -1184f, global0.x, 1393f))), 0u), Struct_1(u_input.c, vec3<u32>(u_input.c, 4294967295u, 1u), true, vec2<u32>(u_input.c, u_input.c), vec4<f32>(global0.x, -782f, global0.x, global0.x))))), -440f, func_1(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), ~u_input.a.ywz, _wgslsmith_add_i32(u_input.b.x, 32550i))), u_input.c), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true));
    let var_2 = Struct_4(10065i, _wgslsmith_f_op_f32(abs(func_1(!vec3<bool>(true, var_1.a.c, false), _wgslsmith_sub_vec3_i32(u_input.a.yxy, vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x)), var_0.x).e.x)) < _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_vec4_f32(func_4(Struct_4(2147483647i, true, global2[_wgslsmith_index_u32(u_input.c, 20u)], Struct_3(var_1.a.c, u_input.c, Struct_1(7816u, var_1.a.b, false, var_1.a.b.yz, var_1.a.e), global0.x, Struct_1(u_input.c, var_1.a.b, var_1.a.c, vec2<u32>(0u, 29577u), vec4<f32>(var_1.a.e.x, global0.x, 464f, -2074f))), var_1.a.b.x), func_1(vec3<bool>(true, var_1.a.c, var_1.a.c), vec3<i32>(u_input.b.x, 28935i, 1i), var_0.x))).x), !(!global2[_wgslsmith_index_u32((2912u >> (var_1.a.d.x % 32u)) << (_wgslsmith_mod_u32(u_input.c, var_1.a.b.x) % 32u), 20u)]), Struct_3(select(all(vec2<bool>(true, false)) && !var_1.a.c, !all(vec3<bool>(var_1.a.c, false, var_1.a.c)), _wgslsmith_div_i32(var_0.x, -1i) >= 2147483647i), firstLeadingBit(45007u), var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -773f), var_1.a), ~(~(~abs(var_1.a.a))));
    global3 = array<Struct_2, 19>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(func_1(!vec3<bool>(false, var_1.a.c, false), vec3<i32>(abs(var_0.x), var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), var_0.zx)), _wgslsmith_sub_i32(var_0.x, -1i)).e.ww)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.e.e, _wgslsmith_mult_i32(max(var_0.x & ~(-2147483647i), _wgslsmith_add_i32(_wgslsmith_add_i32(var_2.a, var_2.a), _wgslsmith_clamp_i32(var_0.x, -1i, var_2.a))), firstLeadingBit(~_wgslsmith_mult_i32(-16810i, var_0.x))), -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.a, -60621i, -46796i, u_input.b.x), vec4<i32>(-23811i, -2147483647i, var_2.a, var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -99428i, 2147483647i, var_0.x), u_input.a)), var_2.a), _wgslsmith_f_op_f32(step(321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1049f + func_1(vec3<bool>(false, true, var_1.a.c), vec3<i32>(1i, var_0.x, u_input.a.x), 0i).e.x)))), ~max(_wgslsmith_mult_u32(var_2.d.b, var_2.e << (u_input.c % 32u)), _wgslsmith_add_u32(var_1.a.d.x, var_1.a.d.x & var_1.a.b.x)));
}

