struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: array<vec3<i32>, 26>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<i32>(2147483647i, -72164i, 32800i, 32381i), 1673f, vec3<f32>(-422f, -229f, -902f), -1i, vec2<bool>(false, true)), Struct_1(vec4<i32>(-37015i, -12711i, -19962i, i32(-2147483648)), 1234f, vec3<f32>(1000f, -375f, 1167f), -1i, vec2<bool>(false, false)), Struct_1(vec4<i32>(2147483647i, -4153i, 2147483647i, i32(-2147483648)), -992f, vec3<f32>(670f, 208f, 377f), 38483i, vec2<bool>(true, true)), Struct_1(vec4<i32>(32685i, 0i, 1i, -35335i), 358f, vec3<f32>(103f, 194f, 2110f), 1i, vec2<bool>(false, true)), Struct_1(vec4<i32>(23312i, 59618i, 21637i, -1i), 1186f, vec3<f32>(321f, -275f, -2343f), 62901i, vec2<bool>(true, true)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -28635i, -2311i), 471f, vec3<f32>(796f, -418f, 1000f), 55125i, vec2<bool>(true, false)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 56788i, i32(-2147483648)), 2091f, vec3<f32>(1000f, -188f, -1535f), 2147483647i, vec2<bool>(false, false)), Struct_1(vec4<i32>(0i, 1i, -1i, 55183i), -708f, vec3<f32>(-415f, -807f, 1000f), 1i, vec2<bool>(false, true)), Struct_1(vec4<i32>(1i, 0i, -25311i, -1i), 816f, vec3<f32>(-183f, 206f, 963f), 6237i, vec2<bool>(false, true)), Struct_1(vec4<i32>(-27707i, 1i, 50632i, 7832i), 1487f, vec3<f32>(792f, 1322f, -1585f), 1i, vec2<bool>(true, false)), Struct_1(vec4<i32>(15887i, 3278i, 81304i, -1i), -199f, vec3<f32>(727f, 1137f, 733f), 13640i, vec2<bool>(true, true)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 574i, 38602i), -284f, vec3<f32>(-733f, 1668f, -1248f), -14360i, vec2<bool>(true, false)), Struct_1(vec4<i32>(0i, 1i, -1i, i32(-2147483648)), 1000f, vec3<f32>(855f, 1000f, 1192f), 84709i, vec2<bool>(true, false)), Struct_1(vec4<i32>(2147483647i, 33325i, 0i, -8314i), -1000f, vec3<f32>(-1824f, 613f, 588f), -4342i, vec2<bool>(true, true)), Struct_1(vec4<i32>(3312i, -27161i, -1i, 1i), -575f, vec3<f32>(1241f, 667f, 313f), i32(-2147483648), vec2<bool>(true, true)), Struct_1(vec4<i32>(20220i, -1i, 29264i, 1435i), -759f, vec3<f32>(-1689f, 2347f, -756f), 2147483647i, vec2<bool>(true, false)), Struct_1(vec4<i32>(0i, i32(-2147483648), -2487i, -10696i), 939f, vec3<f32>(552f, 990f, -742f), 2147483647i, vec2<bool>(false, false)), Struct_1(vec4<i32>(18474i, -1i, -4318i, -10452i), -606f, vec3<f32>(-251f, -165f, -1829f), i32(-2147483648), vec2<bool>(true, true)), Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 2757i), -903f, vec3<f32>(-1758f, -2310f, -327f), 1207i, vec2<bool>(false, true)), Struct_1(vec4<i32>(-1i, -1i, 1i, 38607i), -2298f, vec3<f32>(272f, 442f, -318f), 25512i, vec2<bool>(true, true)), Struct_1(vec4<i32>(1i, -13223i, -1i, -21513i), 2251f, vec3<f32>(-491f, -1299f, -1461f), 14932i, vec2<bool>(false, true)), Struct_1(vec4<i32>(0i, 1i, 7477i, i32(-2147483648)), 254f, vec3<f32>(834f, -1332f, 346f), -43390i, vec2<bool>(false, false)), Struct_1(vec4<i32>(23821i, -16041i, -21438i, 42030i), -776f, vec3<f32>(-1000f, -1499f, -1746f), 55843i, vec2<bool>(true, false)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec4_u32(max(max(~vec4<u32>(23744u, u_input.a, 0u, u_input.a), vec4<u32>(50908u, u_input.b, u_input.c.x, 14118u)), ~vec4<u32>(4294967295u, 1u, 45784u, u_input.c.x)), abs(vec4<u32>(~17800u, 104401u << (u_input.a % 32u), _wgslsmith_add_u32(u_input.b, 0u), u_input.b << (u_input.b % 32u)))));
    global0 = array<vec4<bool>, 31>();
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.b.c)));
    let var_2 = arg_0;
    let var_3 = true;
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c | vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 59505u, 4294967295u), var_0, u_input.a), ~u_input.c), 4294967295u), 31u)];
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = select(select(!select(select(global0[_wgslsmith_index_u32(u_input.b, 31u)], vec4<bool>(arg_0.x, true, false, false), true), !global0[_wgslsmith_index_u32(23413u, 31u)], arg_3 > arg_2), select(global0[_wgslsmith_index_u32(arg_2, 31u)], vec4<bool>(true, true, !arg_0.x, true), func_3(Struct_2(0i, global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), !vec3<bool>(arg_0.x, true, arg_0.x), vec2<f32>(144f, arg_1))), any(!(!vec3<bool>(true, arg_0.x, arg_0.x)))), vec4<bool>(!(!(arg_1 == 1002f)), arg_2 <= 29903u, select(false, any(!vec3<bool>(true, false, arg_0.x)), any(!vec3<bool>(arg_0.x, false, false))), !arg_0.x), vec4<bool>(true, any(vec4<bool>(all(vec4<bool>(false, arg_0.x, false, true)), true, false, arg_0.x)), false, _wgslsmith_div_u32(4294967295u, arg_2) > (arg_3 & arg_2)));
    global2 = array<Struct_1, 23>();
    var var_1 = reverseBits(vec4<u32>(0u, arg_3, _wgslsmith_add_u32(reverseBits(24000u >> (0u % 32u)), arg_2), min(77526u, _wgslsmith_mult_u32(u_input.c.x, firstTrailingBit(u_input.c.x)))));
    global0 = array<vec4<bool>, 31>();
    global2 = array<Struct_1, 23>();
    return -1016f;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> Struct_2 {
    global2 = array<Struct_1, 23>();
    global2 = array<Struct_1, 23>();
    let var_0 = Struct_1(_wgslsmith_mod_vec4_i32(-arg_1.a, vec4<i32>(arg_1.d >> (u_input.b % 32u), max(-1i, arg_1.a.x), _wgslsmith_mod_i32(i32(-1i) * -40260i, ~arg_1.d), -1i)), -1478f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2479f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1969f, -1095f))), 1090f), _wgslsmith_sub_i32(arg_1.d, arg_1.a.x), arg_3.zy);
    global1 = array<vec3<i32>, 26>();
    var var_1 = arg_1.a.xz;
    return Struct_2(~(~_wgslsmith_dot_vec3_i32(-vec3<i32>(17540i, 1i, -1i), vec3<i32>(arg_1.d, var_1.x, -1i))), Struct_1(firstTrailingBit(~_wgslsmith_sub_vec4_i32(arg_1.a, arg_1.a)), _wgslsmith_div_f32(147f, -1077f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_2(vec2<bool>(true, arg_3.x), -277f, u_input.b, 45299u)), -451f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(654f, var_0.c.x, 933f) + arg_1.c)), true)), 22154i, arg_1.e));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_2(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_3.b.a.x, arg_3.b.d, -2147483647i), firstLeadingBit(arg_1.b.a))), arg_3.b);
    var var_1 = arg_1.b.c.zz;
    let var_2 = u_input.c;
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (abs(abs(75096u << (u_input.b % 32u))) | max(~u_input.c.x, _wgslsmith_clamp_u32(abs(u_input.b), ~13913u, 46022u))) == _wgslsmith_mod_u32(~69366u, ~_wgslsmith_mult_u32(~u_input.c.x, 76750u));
    global2 = array<Struct_1, 23>();
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(~abs(27369u), func_4(_wgslsmith_f_op_f32(1001f - -874f), Struct_2(-40085i, Struct_1(vec4<i32>(0i, 2147483647i, 1i, -33503i), 669f, vec3<f32>(596f, 454f, -1049f), 6139i, vec2<bool>(var_0, false))), vec4<bool>(true, var_0, var_0, false), func_1(187f, Struct_1(vec4<i32>(-5065i, -58030i, 42060i, -17875i), 944f, vec3<f32>(664f, 324f, 1598f), 0i, vec2<bool>(var_0, false)), -185f, vec3<bool>(var_0, var_0, var_0)))) >> (reverseBits(0u) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), select(1u, 0u, true)), _wgslsmith_sub_vec2_u32(max(~vec2<u32>(69460u, 68108u), u_input.c.yx), u_input.c.zz)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~4294967295u, 11517u, 2624u), ~(~(u_input.b << (4294967295u % 32u)))));
    let var_2 = ~(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b, 66325u, var_1.x), u_input.c), min(vec3<u32>(1u, 4294967295u, 1u) >> (vec3<u32>(31400u, var_1.x, 25307u) % vec3<u32>(32u)), select(u_input.c, u_input.c, vec3<bool>(true, true, var_0)))) << (~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(u_input.c.x, 4294967295u))) % 32u));
    global2 = array<Struct_1, 23>();
    let var_3 = countOneBits(min(select(firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.c, u_input.c)), ~vec3<u32>(4294967295u, 0u, var_2), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, false), select(vec3<bool>(false, true, true), vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, true)))), vec3<u32>(4294967295u, _wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(0u, 26862u, 57062u))), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -808f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) + 1334f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-893f + 1103f)))), 709f, ~(-vec2<i32>(-4133i, 0i)) | vec2<i32>(max(43002i, _wgslsmith_mod_i32(32327i, -5044i)), _wgslsmith_clamp_i32(1i, abs(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-23065i, 0i, 0i, 1i), vec4<i32>(-21623i, 52922i, 94074i, 9650i)))), ~abs(-1i));
}

