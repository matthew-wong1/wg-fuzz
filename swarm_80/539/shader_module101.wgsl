struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(2609f, vec4<bool>(false, true, false, false), 40157u, true, vec4<f32>(308f, -449f, 219f, -1696f)), Struct_1(1558f, vec4<bool>(true, true, false, true), 33773u, true, vec4<f32>(-403f, 1293f, -464f, 700f)), Struct_1(660f, vec4<bool>(false, true, false, false), 37412u, false, vec4<f32>(-1461f, -204f, 968f, 158f)), Struct_1(-386f, vec4<bool>(false, false, true, false), 1u, false, vec4<f32>(-852f, 1313f, -447f, 1694f)), Struct_1(110f, vec4<bool>(true, true, false, false), 25299u, false, vec4<f32>(274f, -1296f, -2209f, 1832f)), Struct_1(-1146f, vec4<bool>(false, true, false, false), 40053u, false, vec4<f32>(884f, -1000f, -1553f, 313f)), Struct_1(989f, vec4<bool>(true, false, true, false), 1u, true, vec4<f32>(1424f, 1707f, -238f, -1343f)), Struct_1(1000f, vec4<bool>(true, true, false, true), 10764u, false, vec4<f32>(-748f, 308f, 120f, -209f)), Struct_1(-737f, vec4<bool>(true, false, false, true), 0u, true, vec4<f32>(-726f, -1241f, 160f, -139f)), Struct_1(1012f, vec4<bool>(false, false, true, true), 1u, true, vec4<f32>(-210f, 1578f, 1000f, -674f)), Struct_1(-866f, vec4<bool>(false, false, true, true), 4733u, true, vec4<f32>(-365f, -234f, -473f, 827f)), Struct_1(1387f, vec4<bool>(true, false, false, true), 10544u, false, vec4<f32>(236f, 1019f, -925f, -303f)), Struct_1(174f, vec4<bool>(false, false, true, true), 4294967295u, true, vec4<f32>(-1553f, 401f, -252f, 638f)), Struct_1(-234f, vec4<bool>(false, false, false, true), 28594u, true, vec4<f32>(449f, -925f, 1297f, -1393f)), Struct_1(-1704f, vec4<bool>(false, false, true, true), 0u, false, vec4<f32>(1547f, -104f, -816f, -743f)), Struct_1(322f, vec4<bool>(false, true, true, false), 4534u, true, vec4<f32>(551f, -451f, 119f, 718f)), Struct_1(547f, vec4<bool>(false, true, false, false), 0u, true, vec4<f32>(-694f, -1395f, 2041f, -1178f)), Struct_1(1281f, vec4<bool>(true, false, false, false), 0u, true, vec4<f32>(1000f, 106f, 847f, 474f)), Struct_1(-272f, vec4<bool>(false, false, false, true), 1u, false, vec4<f32>(684f, 180f, 547f, -1389f)), Struct_1(141f, vec4<bool>(false, false, true, true), 38001u, true, vec4<f32>(1238f, 1245f, 323f, -1000f)), Struct_1(824f, vec4<bool>(true, true, true, true), 4294967295u, true, vec4<f32>(1692f, 713f, 571f, 787f)), Struct_1(732f, vec4<bool>(true, false, false, true), 0u, false, vec4<f32>(-113f, 962f, -656f, -456f)), Struct_1(128f, vec4<bool>(true, true, false, false), 0u, true, vec4<f32>(-2095f, 1700f, 710f, 939f)), Struct_1(584f, vec4<bool>(false, true, true, false), 4294967295u, false, vec4<f32>(774f, -819f, -157f, 1268f)), Struct_1(347f, vec4<bool>(false, false, true, false), 45688u, false, vec4<f32>(208f, 660f, -123f, -231f)), Struct_1(825f, vec4<bool>(false, true, false, false), 1u, true, vec4<f32>(657f, -1922f, -1140f, -2140f)), Struct_1(-1000f, vec4<bool>(false, false, true, false), 0u, true, vec4<f32>(1197f, -1733f, -470f, 462f)), Struct_1(1505f, vec4<bool>(true, true, true, true), 4294967295u, true, vec4<f32>(-1000f, 257f, -944f, 284f)));

var<private> global4: array<i32, 20> = array<i32, 20>(0i, 2147483647i, 41788i, 29840i, -42759i, -1i, -1i, -6898i, i32(-2147483648), -1i, -34424i, -10046i, -15338i, 0i, 14839i, 29912i, -1i, 1i, 16262i, -1i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = global1.b.yz;
    global2 = u_input.a;
    let var_1 = global1.b;
    let var_2 = Struct_1(global1.e.x, vec4<bool>(any(!vec4<bool>(false, global1.b.x, var_0.x, var_0.x)), 19147u != arg_1, var_1.x, global1.b.x), firstLeadingBit(9112u) ^ min(arg_1 << (u_input.b % 32u), select(4294967295u, 1u, false)), true, global1.e);
    global0 = ~vec2<u32>(firstLeadingBit(var_2.c), 1u) ^ _wgslsmith_sub_vec2_u32(~countOneBits(vec2<u32>(var_2.c, var_2.c)) | reverseBits(~vec2<u32>(0u, u_input.b)), ~(~(~vec2<u32>(4294967295u, u_input.b))));
    return Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x * -128f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f), global1.a))), global1.b, abs(reverseBits(~1u)), all(vec2<bool>(true, true)), global1.e);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = array<Struct_1, 28>();
    var var_0 = global3[_wgslsmith_index_u32(~(1u | u_input.b), 28u)];
    let var_1 = any(arg_0.b);
    global2 = _wgslsmith_mult_i32(2147483647i, u_input.a);
    var_0 = Struct_1(-283f, vec4<bool>(!all(select(arg_0.b.xwx, vec3<bool>(true, false, global1.b.x), false)), !any(select(arg_0.b, vec4<bool>(true, true, false, var_0.b.x), var_0.b.x)), true, _wgslsmith_f_op_f32(-arg_0.a) == -811f), arg_0.c, arg_0.b.x, func_2(reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(6473i, global4[_wgslsmith_index_u32(u_input.b, 20u)], u_input.a, -2147483647i), vec4<i32>(2147483647i, global4[_wgslsmith_index_u32(u_input.b, 20u)], global4[_wgslsmith_index_u32(u_input.b, 20u)], u_input.a))), ~0u).e);
    return u_input.b;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<i32>) -> Struct_1 {
    global1 = global3[_wgslsmith_index_u32(countOneBits((global0.x >> (~max(global0.x, global1.c) % 32u)) & (select(_wgslsmith_sub_u32(23443u, u_input.b), global1.c, true) & u_input.b)), 28u)];
    let var_0 = global3[_wgslsmith_index_u32(func_3(func_2((-vec4<i32>(global4[_wgslsmith_index_u32(0u, 20u)], global4[_wgslsmith_index_u32(global1.c, 20u)], -1i, 16443i) >> (~vec4<u32>(0u, 31419u, global1.c, 0u) % vec4<u32>(32u))) >> (vec4<u32>(~0u, 4157u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global1.c), vec2<u32>(1u, 177u)), ~27352u) % vec4<u32>(32u)), u_input.b)), 28u)];
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.x, 4294967295u, var_0.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(53450u, var_0.c, global0.x), vec3<u32>(0u, u_input.b, global0.x)))) << (_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(var_0.c, var_0.c) | 1u), global0.x & 0u) % 32u);
    global0 = ~vec2<u32>(u_input.b | 39818u, 1u);
    global4 = array<i32, 20>();
    return global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(~global0.x, _wgslsmith_mod_u32(func_2(vec4<i32>(global4[_wgslsmith_index_u32(1u, 20u)], global4[_wgslsmith_index_u32(0u, 20u)], u_input.a, -2147483647i), u_input.b).c, _wgslsmith_clamp_u32(var_0.c, 15851u, 90942u))), 1u), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(!global1.b.x, global1.e.xyy, vec3<i32>(2147483647i, -38515i, global4[_wgslsmith_index_u32(48398u, 20u)] ^ min(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(global1.c, 20u)], -1i), u_input.a & 37940i)));
    global2 = ~0i;
    let var_0 = any(vec4<bool>(true, global1.b.x, true, !(!(!global1.d))));
    global4 = array<i32, 20>();
    var var_1 = func_2(~(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-24036i, -2147483647i, u_input.a, 0i), vec4<i32>(global4[_wgslsmith_index_u32(0u, 20u)], u_input.a, global4[_wgslsmith_index_u32(41287u, 20u)], 1i))) & vec4<i32>(~(-40737i), _wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(24631u, 20u)], global4[_wgslsmith_index_u32(u_input.b, 20u)], -30201i, global4[_wgslsmith_index_u32(global0.x, 20u)]), vec4<i32>(-2147483647i, u_input.a, 0i, global4[_wgslsmith_index_u32(1u, 20u)])), -2147483647i, global4[_wgslsmith_index_u32(global0.x, 20u)])), countOneBits(4294967295u));
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(-_wgslsmith_mod_i32(0i, u_input.a), min(i32(-1i) * -42119i, u_input.a), global4[_wgslsmith_index_u32(1u, 20u)], u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(firstTrailingBit(firstTrailingBit(0u)), max(func_1(var_0, vec3<f32>(global1.e.x, var_1.e.x, global1.a), var_2.xzx).c, ~global0.x), u_input.b)), firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.xyz, vec3<i32>(global4[_wgslsmith_index_u32(global1.c, 20u)], var_2.x, u_input.a)), 0i, ~var_2.x, u_input.a)) ^ _wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-48083i, global4[_wgslsmith_index_u32(29858u, 20u)], -7947i, var_2.x), vec4<i32>(14418i, u_input.a, -4989i, var_2.x))), _wgslsmith_add_vec4_i32(-vec4<i32>(global4[_wgslsmith_index_u32(global0.x, 20u)], 17895i, global4[_wgslsmith_index_u32(u_input.b, 20u)], -1i), ~vec4<i32>(global4[_wgslsmith_index_u32(0u, 20u)], -28256i, global4[_wgslsmith_index_u32(global0.x, 20u)], var_2.x)), vec4<i32>(-2147483647i, var_2.x, _wgslsmith_mod_i32(2147483647i, var_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global4[_wgslsmith_index_u32(0u, 20u)], var_2.x, var_2.x), vec4<i32>(60622i, global4[_wgslsmith_index_u32(u_input.b, 20u)], -12104i, var_2.x)))), 20248i, ~(~_wgslsmith_add_u32(u_input.b, global1.c >> (u_input.b % 32u))), _wgslsmith_add_u32(u_input.b | ~48966u, func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(var_1.c, 20u)], var_2.x, var_2.x, global4[_wgslsmith_index_u32(35267u, 20u)]), vec4<i32>(u_input.a, 26391i, -1i, global4[_wgslsmith_index_u32(var_1.c, 20u)])), global1.c << (var_1.c % 32u)).c) << (u_input.b % 32u));
}

