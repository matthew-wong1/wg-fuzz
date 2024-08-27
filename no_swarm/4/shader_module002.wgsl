struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_4,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(64460u, 20534u);

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(561f, -417f), vec2<f32>(946f, 404f), vec2<f32>(-1610f, 285f), vec2<f32>(561f, -203f), vec2<f32>(221f, -426f), vec2<f32>(-540f, -1265f), vec2<f32>(-1000f, -439f), vec2<f32>(-1338f, 597f), vec2<f32>(-321f, -1228f), vec2<f32>(-1030f, 195f), vec2<f32>(1000f, 1055f), vec2<f32>(-190f, -362f), vec2<f32>(204f, 1768f));

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<u32, 3>;

var<private> global4: array<f32, 27> = array<f32, 27>(-1172f, 1437f, -443f, 526f, 698f, -219f, -1614f, -720f, -2163f, 1000f, -139f, 2099f, 1408f, 1536f, 657f, -845f, -3051f, -898f, 117f, -1317f, -274f, -1426f, 1129f, -1000f, 1186f, -722f, -1904f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = global2[_wgslsmith_index_u32(0u, 28u)];
    var var_1 = ~(select(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, 1u, global3[_wgslsmith_index_u32(0u, 3u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(102445u, 3u)], 3u)], 1u, var_0.c.x, global3[_wgslsmith_index_u32(var_0.c.x, 3u)]) >> (vec4<u32>(4294967295u, 4294967295u, global0.x, 0u) % vec4<u32>(32u))), vec4<u32>(4294967295u, ~1u, min(4294967295u, var_0.c.x), ~global3[_wgslsmith_index_u32(var_0.c.x, 3u)]), arg_0.b.x) ^ _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(35876u, var_0.c.x, 4294967295u, var_0.c.x), vec4<u32>(var_0.c.x, 72875u, 149187u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30212u, 3u)], 3u)])), vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global3[_wgslsmith_index_u32(0u, 3u)], 9605u, 27236u), vec4<u32>(global0.x, 8152u, var_0.c.x, 1u)), 3u)], select(15223u, 52654u, arg_0.b.x), 1u, 48711u), vec4<u32>(global0.x, global3[_wgslsmith_index_u32(1u, 3u)], var_0.c.x, 41696u) & _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.c.x, 11364u, 1u), vec4<u32>(86674u, 1u, 4294967295u, global0.x))));
    global1 = array<vec2<f32>, 13>();
    global2 = array<Struct_1, 28>();
    let var_2 = var_0.a.xw;
    return vec4<i32>(u_input.a.x, ~u_input.a.x, -7608i, _wgslsmith_add_i32(i32(-1i) * -2147483647i, countOneBits(u_input.a.x) | select(-2147483647i, select(1i, u_input.a.x, false), all(var_0.a))));
}

fn func_2() -> Struct_2 {
    global3 = array<u32, 3>();
    let var_0 = Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(16292u, 1u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 60854u), vec2<u32>(0u, global3[_wgslsmith_index_u32(global0.x, 3u)]))), global3[_wgslsmith_index_u32(select(global0.x, ~global0.x ^ ~global3[_wgslsmith_index_u32(49046u, 3u)], any(vec2<bool>(false, true))), 3u)], ~(~53388u)), -reverseBits(func_3(Struct_3(vec4<f32>(-1000f, -857f, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 3u)], 27u)], global4[_wgslsmith_index_u32(50116u, 27u)]), vec4<bool>(false, false, false, false)))), select(max(~vec4<u32>(0u, global3[_wgslsmith_index_u32(global0.x, 3u)], 4294967295u, global3[_wgslsmith_index_u32(0u, 3u)]) ^ ~vec4<u32>(global3[_wgslsmith_index_u32(global0.x, 3u)], 0u, 13477u, global0.x), ~(~vec4<u32>(0u, 0u, global0.x, 816u))), vec4<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(32334u, 52280u), vec2<u32>(1u, 35255u)) | firstLeadingBit(global3[_wgslsmith_index_u32(global0.x, 3u)]), _wgslsmith_sub_u32(~0u, global3[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(4294967295u, 3u)]), 3u)])), vec4<bool>(true, true, (i32(-1i) * -38300i) <= func_3(Struct_3(vec4<f32>(1187f, global4[_wgslsmith_index_u32(77885u, 27u)], -946f, -499f), vec4<bool>(true, true, true, true))).x, true)));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.c.x, _wgslsmith_mult_u32(~var_0.c.x << (global3[_wgslsmith_index_u32(var_0.c.x, 3u)] % 32u), _wgslsmith_clamp_u32(25691u, ~var_0.c.x, 1u))), 13u)];
    let var_2 = global2[_wgslsmith_index_u32(global0.x, 28u)];
    var var_3 = var_2.a.x;
    return Struct_2(~max(firstTrailingBit(var_2.c), vec3<u32>(_wgslsmith_clamp_u32(var_2.c.x, global3[_wgslsmith_index_u32(var_0.c.x, 3u)], 4294967295u), ~var_0.a.x, 0u)), func_3(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -905f, var_2.b.x)), !vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x))) & select(var_0.b, _wgslsmith_div_vec4_i32(var_0.b, var_0.b), !vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, true)), ~abs(min(~vec4<u32>(23652u, global3[_wgslsmith_index_u32(34169u, 3u)], global3[_wgslsmith_index_u32(global0.x, 3u)], global0.x), vec4<u32>(1u, 1u, var_2.c.x, 4294967295u))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_2(abs(arg_1) | ~vec3<u32>(~global3[_wgslsmith_index_u32(arg_1.x, 3u)], 1u, global0.x), vec4<i32>(-1i) * -vec4<i32>(arg_0, select(arg_0, arg_0, true), 1i, arg_0), ~select(vec4<u32>(_wgslsmith_mult_u32(4294967295u, global0.x), 1u, _wgslsmith_sub_u32(global0.x, 4294967295u), 28321u), vec4<u32>(abs(global3[_wgslsmith_index_u32(0u, 3u)]), ~4294967295u, ~75270u, 35619u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))));
    var var_1 = var_0.a.xy;
    let var_2 = func_2();
    var var_3 = Struct_4(global2[_wgslsmith_index_u32(46313u, 28u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global0.x, 27u)], _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(4294967295u, 27u)])), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, var_1.x), 27u)], _wgslsmith_f_op_f32(-1026f + 183f)), vec4<f32>(global4[_wgslsmith_index_u32(~1501u, 27u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(55339u, 27u)] * global4[_wgslsmith_index_u32(88060u, 27u)]), 647f, 1262f))), 0u < _wgslsmith_dot_vec3_u32(vec3<u32>(21706u, 0u >> (var_2.c.x % 32u), 0u), arg_1));
    let var_4 = Struct_2(var_2.a, var_0.b, vec4<u32>(var_3.a.c.x, (33177u >> (~var_2.a.x % 32u)) >> (global3[_wgslsmith_index_u32(~(~8589u), 3u)] % 32u), arg_1.x, var_2.a.x));
    return Struct_4(var_3.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_3.b)) * vec4<f32>(global4[_wgslsmith_index_u32(var_1.x, 27u)], 1000f, 1426f, -183f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(var_3.b, vec4<f32>(1131f, -1761f, 1648f, -915f)))), true)))), var_3.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    return reverseBits(arg_0.c.xx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 13>();
    global0 = vec2<u32>(1u, ~(~_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(3807u, 3u)]))) | func_4(global2[_wgslsmith_index_u32(global0.x >> (1u % 32u), 28u)], func_1((u_input.a.x | u_input.a.x) >> (reverseBits(4294967295u) % 32u), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 9898u, 1u), vec3<u32>(global0.x, global0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]))), func_1(_wgslsmith_clamp_i32(22265i, -1i, 2147483647i) ^ (u_input.a.x >> (46957u % 32u)), ~(vec3<u32>(1u, 26762u, 1524u) >> (vec3<u32>(34949u, 25503u, global0.x) % vec3<u32>(32u)))).a, u_input.a.zy);
    global0 = func_1(u_input.a.x, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(3493u, 3u)], 1u, 1u), vec3<u32>(12144u, 1u, 0u)), vec3<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 3u)], 3u)], global3[_wgslsmith_index_u32(0u, 3u)], 1u)) << (abs(vec3<u32>(29812u, abs(38327u), _wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(0u, 3u)]))) % vec3<u32>(32u))).a.c.yx;
    var var_0 = -_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(8968i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -51956i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 3u)], 3u)], 22420u, global0.x, global0.x), vec4<u32>(1u, 8014u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 3u)], 3u)], 4294967295u)) % vec4<u32>(32u)), func_3(Struct_3(vec4<f32>(-624f, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 3u)], 3u)], 3u)], 27u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 3u)], 3u)], 27u)], global4[_wgslsmith_index_u32(24260u, 27u)]), vec4<bool>(false, false, true, true)))));
    global1 = array<vec2<f32>, 13>();
    var var_1 = ~0u;
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(-1i) * -u_input.a.yy);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(u_input.a.x, min(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], 3u)], 0u, 0u), vec3<u32>(global0.x, 4294967295u, 4294967295u)) & _wgslsmith_div_vec3_u32(vec3<u32>(31220u, 3463u, global0.x), vec3<u32>(38613u, 21166u, 0u))).a.b.x * global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 3u)], 3u)], 27u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1178f * _wgslsmith_f_op_f32(-654f - 1f)), vec4<i32>(~(~(var_2 | 2147483647i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -2147483647i, var_2, u_input.a.x), abs(vec4<i32>(-2147483647i, u_input.a.x, -1i, 0i))), u_input.a.x), min(39636i, _wgslsmith_sub_i32(abs(-46162i), -1i)), -2147483647i), _wgslsmith_div_u32(func_2().c.x, global0.x));
}

