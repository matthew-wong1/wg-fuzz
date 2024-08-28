struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec4<f32>(1174f, -669f, 397f, -397f), Struct_1(0u, -1673f), Struct_2(1720i), false, Struct_2(9208i)), Struct_3(vec4<f32>(1830f, -1401f, 2112f, -1283f), Struct_1(6345u, -342f), Struct_2(i32(-2147483648)), true, Struct_2(13260i)), Struct_3(vec4<f32>(168f, -1064f, 757f, -1251f), Struct_1(4294967295u, 1144f), Struct_2(17071i), false, Struct_2(-161i)), Struct_3(vec4<f32>(705f, 642f, -1971f, 211f), Struct_1(34808u, 827f), Struct_2(-31629i), false, Struct_2(0i)), Struct_3(vec4<f32>(917f, 672f, 1384f, 2450f), Struct_1(8867u, -1163f), Struct_2(2147483647i), false, Struct_2(13300i)), Struct_3(vec4<f32>(-751f, 986f, -415f, -1105f), Struct_1(1u, 766f), Struct_2(22456i), true, Struct_2(20483i)), Struct_3(vec4<f32>(-967f, -1000f, 1110f, 1000f), Struct_1(36470u, -2440f), Struct_2(1i), false, Struct_2(28895i)), Struct_3(vec4<f32>(-508f, 539f, -3040f, -639f), Struct_1(6626u, 1000f), Struct_2(1i), false, Struct_2(0i)), Struct_3(vec4<f32>(-939f, -684f, 1355f, 468f), Struct_1(31688u, 487f), Struct_2(i32(-2147483648)), false, Struct_2(-38256i)), Struct_3(vec4<f32>(-635f, 555f, 1353f, -1674f), Struct_1(40263u, -1595f), Struct_2(2147483647i), true, Struct_2(12909i)), Struct_3(vec4<f32>(329f, 1012f, 779f, 756f), Struct_1(4294967295u, -889f), Struct_2(13502i), false, Struct_2(-1i)), Struct_3(vec4<f32>(917f, 1000f, 423f, 1883f), Struct_1(8057u, -189f), Struct_2(1i), true, Struct_2(24683i)), Struct_3(vec4<f32>(-1647f, -173f, 888f, -846f), Struct_1(36868u, 125f), Struct_2(-1i), true, Struct_2(-1i)), Struct_3(vec4<f32>(2659f, 149f, 1736f, 1921f), Struct_1(4294967295u, 113f), Struct_2(18029i), false, Struct_2(792i)), Struct_3(vec4<f32>(-410f, 1282f, 656f, -105f), Struct_1(74694u, 331f), Struct_2(1i), false, Struct_2(-5181i)), Struct_3(vec4<f32>(-484f, 249f, 1002f, -225f), Struct_1(4294967295u, -1039f), Struct_2(-1i), false, Struct_2(2147483647i)), Struct_3(vec4<f32>(-660f, -520f, -606f, -734f), Struct_1(1u, 429f), Struct_2(2147483647i), false, Struct_2(i32(-2147483648))), Struct_3(vec4<f32>(795f, -415f, -447f, 657f), Struct_1(9855u, 1792f), Struct_2(-1i), false, Struct_2(i32(-2147483648))), Struct_3(vec4<f32>(-777f, -854f, -1163f, -1453f), Struct_1(87827u, -141f), Struct_2(18241i), false, Struct_2(23252i)), Struct_3(vec4<f32>(-1360f, -1000f, -1080f, 613f), Struct_1(4294967295u, -997f), Struct_2(i32(-2147483648)), false, Struct_2(20015i)), Struct_3(vec4<f32>(-1027f, -1630f, -1784f, 1174f), Struct_1(49530u, -1000f), Struct_2(-21392i), false, Struct_2(7713i)), Struct_3(vec4<f32>(-2411f, 140f, 152f, 300f), Struct_1(0u, 579f), Struct_2(2147483647i), true, Struct_2(i32(-2147483648))), Struct_3(vec4<f32>(984f, -993f, -1000f, 892f), Struct_1(0u, 968f), Struct_2(-1i), true, Struct_2(-10732i)), Struct_3(vec4<f32>(-875f, -2292f, -336f, -455f), Struct_1(21858u, 512f), Struct_2(1i), false, Struct_2(2147483647i)), Struct_3(vec4<f32>(-334f, 622f, -289f, 376f), Struct_1(4294967295u, 1000f), Struct_2(-6757i), true, Struct_2(-13007i)), Struct_3(vec4<f32>(1391f, 387f, -2327f, -1968f), Struct_1(4294967295u, 694f), Struct_2(-7678i), false, Struct_2(4093i)), Struct_3(vec4<f32>(987f, 230f, 629f, -2100f), Struct_1(30144u, -372f), Struct_2(1i), false, Struct_2(2147483647i)), Struct_3(vec4<f32>(1359f, -1573f, -884f, -795f), Struct_1(90035u, -978f), Struct_2(6006i), true, Struct_2(20664i)), Struct_3(vec4<f32>(145f, -1328f, -1075f, -192f), Struct_1(7688u, -2601f), Struct_2(-1i), false, Struct_2(1i)));

var<private> global1: array<vec2<u32>, 24>;

var<private> global2: i32;

var<private> global3: array<Struct_3, 19>;

var<private> global4: array<f32, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, -59009i, -u_input.a & ~u_input.a), vec3<i32>(select(0i, -_wgslsmith_mod_i32(-20974i, u_input.a), true), u_input.a, _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, 0i, 0i), u_input.a >> (u_input.b.x % 32u)), 0i)));
    let var_0 = (abs(vec2<u32>(~90400u, u_input.b.x)) & abs(vec2<u32>(u_input.b.x ^ 34965u, _wgslsmith_div_u32(0u, 13683u)))) << (u_input.b.yz % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, global4[_wgslsmith_index_u32(0u, 12u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), 1090f)))));
    var var_2 = Struct_2(_wgslsmith_div_i32(~_wgslsmith_sub_i32(select(u_input.a, u_input.a, true), _wgslsmith_mod_i32(1i, u_input.a)), -1i));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1295f, -464f, _wgslsmith_div_f32(-1039f, arg_0), _wgslsmith_f_op_f32(var_1.x + -2003f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 973f, var_1.x, 153f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2168f, 1133f, var_1.x, 2052f))))))), Struct_1(~(var_0.x << (~16779u % 32u)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(40198u, 12u)]))))), Struct_2(~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -34907i, var_2.a), -vec3<i32>(var_2.a, 20200i, -14557i))), true, Struct_2(~(~u_input.a)));
    return max(firstTrailingBit((_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.c.a, u_input.a, -1i, 2147483647i), vec4<i32>(var_2.a, 0i, var_3.c.a, -1i)) & vec4<i32>(var_2.a, 1i, u_input.a, 1i)) | min(~vec4<i32>(6537i, var_3.e.a, 2147483647i, var_3.e.a), min(vec4<i32>(27453i, u_input.a, 0i, -14564i), vec4<i32>(var_3.e.a, 2147483647i, var_2.a, var_3.c.a)))), max(vec4<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(var_2.a, 4480i), vec2<i32>(var_2.a, var_2.a)), reverseBits(vec2<i32>(u_input.a, var_3.e.a))), -30035i, 10329i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, var_2.a), vec3<i32>(-1i, var_2.a, var_3.e.a)))), -select(vec4<i32>(0i, var_2.a, 1i, 51458i), vec4<i32>(var_3.c.a, -39447i, 2147483647i, 2402i), vec4<bool>(true, false, true, true))));
}

fn func_2(arg_0: Struct_4) -> i32 {
    global2 = abs(i32(-1i) * -16885i);
    var var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(func_3(-1056f), abs(_wgslsmith_mod_vec4_i32(arg_0.a, arg_0.a))), arg_0.b);
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-705f)) + global4[_wgslsmith_index_u32(min(arg_0.e, 4294967295u), 12u)]), -539f))));
    var var_2 = !any(!select(vec3<bool>(true, arg_0.d, false), !vec3<bool>(arg_0.d, false, false), true));
    let var_3 = all(select(select(vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d), !select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, true, false), true), arg_0.d), vec4<bool>(arg_0.d, select(772f >= var_1.a.x, false, false), true, arg_0.d), !(!select(arg_0.d, arg_0.d, false))));
    return u_input.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> StorageBuffer {
    global2 = countOneBits(select(arg_2.x, arg_2.x >> (u_input.b.x % 32u), true)) | func_2(Struct_4(-firstLeadingBit(vec4<i32>(u_input.a, 16206i, 1i, arg_2.x)), select(reverseBits(vec4<i32>(arg_2.x, -2147483647i, -1i, 8484i)), ~vec4<i32>(-1i, u_input.a, 22574i, arg_2.x), !vec4<bool>(true, arg_0.x, true, arg_0.x)), vec3<i32>(~(-23952i), -5084i ^ arg_2.x, 15179i), all(!vec4<bool>(true, arg_0.x, arg_0.x, false)), _wgslsmith_mult_u32(u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(u_input.b, arg_1.wzx))));
    var var_0 = arg_1;
    global0 = array<Struct_3, 29>();
    global4 = array<f32, 12>();
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-119f, global4[_wgslsmith_index_u32(18917u, 12u)]), vec2<f32>(863f, 594f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(var_0.x, 12u)], 908f) * vec2<f32>(-890f, 983f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1175f, 1000f))))))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(451f, 1122f, global4[_wgslsmith_index_u32(4682u, 12u)], global4[_wgslsmith_index_u32(var_0.x, 12u)]) + vec4<f32>(var_1.a.x, global4[_wgslsmith_index_u32(4294967295u, 12u)], global4[_wgslsmith_index_u32(0u, 12u)], -550f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 12u)], var_1.a.x, -634f, 1945f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, global4[_wgslsmith_index_u32(u_input.b.x, 12u)], -371f)) + vec3<f32>(1f, 1f, 1f)))))), ~countOneBits(firstTrailingBit(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = func_1(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, 29740u >= u_input.b.x)), vec4<u32>(abs(u_input.b.x), u_input.b.x, 47312u, abs(u_input.b.x)), vec2<i32>(countOneBits(u_input.a), firstLeadingBit(-1i)));
}

