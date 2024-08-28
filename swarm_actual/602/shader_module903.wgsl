struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<i32> = vec2<i32>(0i, -1i);

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(1348f, -917f, 682f, 472f), vec4<f32>(1318f, 619f, -1063f, -150f), vec4<f32>(1037f, -615f, -278f, -698f), vec4<f32>(-825f, 1267f, 588f, -1000f), vec4<f32>(1128f, -742f, 464f, 1643f), vec4<f32>(-271f, 1704f, -1000f, 422f), vec4<f32>(-127f, 154f, 2285f, 227f), vec4<f32>(-1000f, 222f, -1184f, 1000f), vec4<f32>(338f, -212f, 291f, 723f), vec4<f32>(-1310f, -183f, -712f, 799f), vec4<f32>(-524f, 1292f, 188f, 1173f), vec4<f32>(-1245f, 603f, 603f, -1000f), vec4<f32>(-990f, 542f, -534f, 696f), vec4<f32>(-1000f, -249f, 1000f, -1346f), vec4<f32>(1829f, -2007f, -1616f, -1769f), vec4<f32>(1669f, 1172f, -663f, -622f), vec4<f32>(-799f, -1624f, 1026f, 1000f), vec4<f32>(-733f, 986f, 797f, -265f), vec4<f32>(-471f, 2588f, -275f, 1713f), vec4<f32>(429f, 1094f, 141f, -904f), vec4<f32>(-879f, -197f, 203f, 1050f), vec4<f32>(-726f, 941f, -592f, 694f), vec4<f32>(-780f, -2106f, -176f, -437f), vec4<f32>(-387f, -1547f, 1678f, 1134f), vec4<f32>(-2391f, -401f, 1202f, 1777f), vec4<f32>(-530f, 1210f, -1151f, -870f), vec4<f32>(-999f, 114f, -1830f, -1000f), vec4<f32>(2017f, -1756f, 1610f, -397f), vec4<f32>(-711f, 142f, -458f, -1000f));

var<private> global4: array<bool, 27> = array<bool, 27>(false, false, false, true, true, true, false, false, false, true, false, false, true, false, false, false, false, false, true, true, true, false, true, true, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    global2 = select(select(arg_3.yy, select(select(select(vec2<bool>(global2.x, false), arg_3.zw, arg_3.xy), vec2<bool>(true, true), all(vec2<bool>(global4[_wgslsmith_index_u32(arg_0.x, 27u)], arg_3.x))), vec2<bool>(arg_3.x, false), !(!vec2<bool>(true, global2.x))), !global2.x), select(arg_3.xz, arg_3.zx, arg_3.x), false);
    global1 = _wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(select(firstTrailingBit(u_input.c), vec2<i32>(-6253i, global1.x), false), u_input.c), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, ~(-2147483647i)), abs(-vec2<i32>(global1.x, 36477i))));
    global3 = array<vec4<f32>, 29>();
    var var_0 = Struct_2(vec4<u32>(54666u, ~0u, 1u, 1u), max(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, u_input.a.x) >> (vec3<u32>(0u, 4294967295u, 46874u) % vec3<u32>(32u)), ~vec3<u32>(38177u, 0u, arg_2)), arg_0.x));
    var var_1 = vec4<f32>(1438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1379f + 560f) - _wgslsmith_f_op_f32(f32(-1f) * -746f)) * 1017f)), -858f, _wgslsmith_f_op_f32(select(984f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), true)));
    return Struct_1(0u & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(22261u, var_0.a.x), vec2<u32>(1u, 1u)), ~(arg_2 | 4294967295u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(37861u, arg_2.a), _wgslsmith_clamp_u32(~(~39260u), 0u, 1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.a, 0u), vec2<u32>(48345u, arg_0.c.a)) % 32u)));
    var var_1 = func_2(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(4294967295u, arg_0.a.a, 41928u, u_input.a.x), vec4<u32>(u_input.b, 4804u, arg_0.a.a, 1u), false), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1.c.a, 1u), func_2(vec4<u32>(arg_0.a.a, 3391u, 1u, arg_2.a), u_input.b, arg_0.a.a, vec4<bool>(true, false, global2.x, false)).a), _wgslsmith_clamp_u32(4294967295u, ~arg_1.a.a, arg_1.c.a), arg_1.c.a >> (58467u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, 4294967295u, u_input.b), vec3<u32>(arg_2.a, 6790u, 18678u)) | ~34432u)), u_input.a.x, firstLeadingBit(1360u), !(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global4[_wgslsmith_index_u32(46914u, 27u)], global4[_wgslsmith_index_u32(26199u, 27u)], false), true)));
    var var_2 = u_input.a.x;
    var_1 = Struct_1(abs(arg_2.a));
    global3 = array<vec4<f32>, 29>();
    return vec2<bool>(true, !global2.x);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = !any(func_3(Struct_3(Struct_1(43089u), 68940i, arg_2, _wgslsmith_f_op_f32(arg_0 - -1000f)), Struct_3(arg_3, -14350i, arg_2, _wgslsmith_div_f32(arg_0, -905f)), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(33168u, arg_2.a, u_input.a.x, u_input.a.x), vec4<u32>(arg_3.a, 1u, 59205u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 10563u, 0u, arg_3.a), vec4<u32>(0u, 47333u, u_input.a.x, 13008u)), 0u, vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 27u)], true, true, true))));
    global4 = array<bool, 27>();
    var var_1 = arg_2;
    global0 = true;
    global1 = min(~(~vec2<i32>(global1.x, ~18653i)), ~vec2<i32>(~1i, _wgslsmith_add_i32(global1.x, 1i)));
    return vec2<bool>(func_3(Struct_3(Struct_1(arg_3.a), ~(-2763i), arg_2, arg_0), Struct_3(Struct_1(u_input.a.x), i32(-1i) * -2147483647i, arg_3, 248f), Struct_1(~select(u_input.a.x, u_input.a.x, false))).x, any(!select(select(vec3<bool>(true, false, global2.x), vec3<bool>(global2.x, false, true), global2.x), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 27u)], global2.x, false), vec3<bool>(global2.x, var_0, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1533f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1011f, 1312f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)))), select(!select(vec2<bool>(false, false), vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 27u)], true), global2.x), vec2<bool>(global2.x, global2.x), !select(select(vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 27u)]), vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 27u)], global2.x), vec2<bool>(false, true)), select(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec2<bool>(global4[_wgslsmith_index_u32(1u, 27u)], global4[_wgslsmith_index_u32(u_input.b, 27u)]), global2.x), any(vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 27u)])))), Struct_1(_wgslsmith_clamp_u32(4294967295u << (u_input.b % 32u), u_input.a.x, 17770u)), Struct_1(1u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-300f)), _wgslsmith_f_op_f32(f32(-1f) * -346f)))));
    var var_2 = func_2(reverseBits(min(countOneBits(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 63862u, u_input.b))), vec4<u32>(~0u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.b), abs(u_input.b)))), 1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(23163u, ~u_input.b) | ~func_2(vec4<u32>(u_input.a.x, u_input.b, 31460u, 45662u), u_input.a.x, 31297u, vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 27u)], var_0.x, global4[_wgslsmith_index_u32(u_input.b, 27u)])).a, u_input.a.x), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 27u)], var_0.x, reverseBits(_wgslsmith_mult_u32(u_input.b, 46671u)) >= u_input.b, global2.x));
    var var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_2.a, _wgslsmith_sub_u32(~4294967295u, ~reverseBits(var_2.a))), ~vec3<u32>(19960u, ~abs(50477u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), abs(vec2<u32>(var_2.a, 17350u)))));
    let var_4 = _wgslsmith_f_op_f32(-593f * -150f);
    var_1 = _wgslsmith_f_op_f32(-var_4);
    var var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(704f, -1913f, true)) - var_4), var_4, -4176i <= u_input.c.x)))));
    var_1 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

