struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<u32, 9> = array<u32, 9>(24804u, 33727u, 10535u, 0u, 3702u, 4294967295u, 8618u, 1u, 1u);

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<f32>(294f, -151f, -354f), -1i, 16519u, -1379f), Struct_2(vec3<f32>(-2169f, 782f, -861f), 24276i, 27054u, 1286f), Struct_2(vec3<f32>(-447f, -1464f, 499f), 2147483647i, 20744u, 116f), Struct_2(vec3<f32>(538f, -613f, -724f), 2147483647i, 1u, -1728f), Struct_2(vec3<f32>(-168f, -375f, 466f), 0i, 4294967295u, -1050f), Struct_2(vec3<f32>(-389f, 1000f, -962f), -2691i, 53850u, -157f), Struct_2(vec3<f32>(878f, -1665f, -1354f), -61279i, 28319u, -225f), Struct_2(vec3<f32>(-1000f, 1551f, -171f), 61599i, 56760u, -1000f), Struct_2(vec3<f32>(1638f, -1033f, -237f), -1i, 1u, -180f), Struct_2(vec3<f32>(1000f, 917f, 416f), i32(-2147483648), 0u, 628f), Struct_2(vec3<f32>(-1000f, 749f, -875f), 60137i, 4294967295u, -1484f), Struct_2(vec3<f32>(632f, 1598f, -196f), 2147483647i, 4516u, -343f), Struct_2(vec3<f32>(-1789f, 704f, 234f), 2428i, 4294967295u, -1538f), Struct_2(vec3<f32>(-600f, -192f, 1015f), 1i, 19335u, -911f), Struct_2(vec3<f32>(1000f, -255f, -439f), 1193i, 16719u, -1676f), Struct_2(vec3<f32>(-1000f, -172f, -1761f), 43061i, 1u, -1000f), Struct_2(vec3<f32>(586f, -776f, 971f), 0i, 0u, 347f), Struct_2(vec3<f32>(-436f, 324f, 175f), 0i, 1u, 1038f), Struct_2(vec3<f32>(-894f, 417f, 543f), 0i, 4294967295u, -1427f), Struct_2(vec3<f32>(1000f, 811f, 969f), 41703i, 23737u, 2225f), Struct_2(vec3<f32>(-306f, 773f, -596f), i32(-2147483648), 56960u, 335f), Struct_2(vec3<f32>(-1000f, 847f, 857f), 1i, 1u, 1027f), Struct_2(vec3<f32>(-1367f, 1000f, 477f), -8206i, 0u, -285f), Struct_2(vec3<f32>(752f, 1371f, -1080f), 0i, 56628u, 1344f), Struct_2(vec3<f32>(-223f, 511f, -718f), 2147483647i, 36903u, 892f), Struct_2(vec3<f32>(-337f, -986f, 709f), -16242i, 4294967295u, 1407f), Struct_2(vec3<f32>(798f, 829f, -279f), -46881i, 1u, 230f), Struct_2(vec3<f32>(1000f, -715f, -1000f), i32(-2147483648), 4294967295u, 849f), Struct_2(vec3<f32>(643f, -509f, -923f), -384i, 17360u, 1246f));

var<private> global3: array<i32, 4>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    global0 = vec2<bool>(all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, global0.x, true)))), false);
    let var_0 = global2[_wgslsmith_index_u32(~(~arg_0.c.x), 29u)];
    let var_1 = any(!select(!vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), true))) && !(all(vec2<bool>(global0.x, true)) || !global0.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.a.x, var_0.a.x)), arg_0.a.x, -303f)) + _wgslsmith_f_op_vec3_f32(-var_0.a)), ~2628i, max(~countOneBits(~u_input.a), var_0.c), -817f);
    global1 = array<u32, 9>();
    return _wgslsmith_f_op_f32(trunc(arg_0.a.x));
}

fn func_2(arg_0: u32) -> vec4<f32> {
    global2 = array<Struct_2, 29>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-267f + 759f), _wgslsmith_div_f32(1000f, -911f), _wgslsmith_f_op_f32(max(-1223f, -400f)), -273f))))), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, 303f, 475f, 867f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-824f, -776f, -1347f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1017f + 3229f)), _wgslsmith_div_vec2_u32(vec2<u32>(33973u, 1u), vec2<u32>(66354u, global1[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1678f, -2170f, 846f, -184f), vec4<f32>(1089f, -683f, -312f, -1991f))), vec4<f32>(-1223f, -1300f, 232f, -852f), !vec4<bool>(global0.x, global0.x, true, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(275f, -412f, -2266f, -361f), vec4<f32>(677f, 1160f, 188f, 258f)))))), _wgslsmith_mod_vec2_u32((~vec2<u32>(28346u, u_input.c) >> (~vec2<u32>(17202u, arg_0) % vec2<u32>(32u))) >> ((~vec2<u32>(arg_0, 0u) & abs(vec2<u32>(15810u, 1u))) % vec2<u32>(32u)), vec2<u32>(~34105u, 4294967295u)));
    let var_1 = all(vec4<bool>(!global0.x, (false || global0.x) || global0.x, true, _wgslsmith_div_f32(219f, -1253f) != _wgslsmith_f_op_f32(var_0.b * 1892f)));
    var var_2 = select(!(!vec4<bool>(any(vec4<bool>(var_1, false, var_1, global0.x)), global3[_wgslsmith_index_u32(1u, 4u)] != 41188i, select(var_1, true, true), var_0.a.x <= -1517f)), select(select(vec4<bool>(true, all(vec2<bool>(false, var_1)), 5162u != arg_0, global0.x), select(vec4<bool>(false, var_1, global0.x, true), !vec4<bool>(global0.x, var_1, global0.x, global0.x), vec4<bool>(false, true, var_1, var_1)), !vec4<bool>(global0.x, true, true, global0.x)), !select(!vec4<bool>(true, true, var_1, var_1), !vec4<bool>(true, var_1, true, var_1), select(vec4<bool>(global0.x, true, global0.x, var_1), vec4<bool>(global0.x, var_1, var_1, global0.x), vec4<bool>(var_1, global0.x, global0.x, global0.x))), !select(select(vec4<bool>(var_1, false, var_1, true), vec4<bool>(true, true, true, var_1), vec4<bool>(global0.x, global0.x, true, var_1)), vec4<bool>(global0.x, true, var_1, false), select(vec4<bool>(false, var_1, false, true), vec4<bool>(var_1, var_1, false, true), vec4<bool>(var_1, var_1, var_1, var_1)))), !var_1);
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b)))), var_0.a.x, -2504f), firstLeadingBit(abs(firstLeadingBit(-1i))), ~arg_0, var_0.a.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(abs(var_0.a))))))));
}

fn func_1() -> vec2<bool> {
    global3 = array<i32, 4>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(257f, -1248f, -1525f, 311f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1746f, -754f, -1141f, -1558f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(876f, 779f, -1489f, -456f))) + vec4<f32>(481f, 117f, 196f, 396f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.b, 0u)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(623f, 1145f, 211f, -296f) + vec4<f32>(1187f, 789f, 1498f, 279f)) + vec4<f32>(-1253f, -1000f, 900f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1188f), -350f, false))), vec2<u32>(1u, _wgslsmith_mult_u32(0u, u_input.a)));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, global1[_wgslsmith_index_u32(~4294967295u << (var_0.c.x % 32u), 9u)]), var_0.c.x), ~56466u, _wgslsmith_sub_u32(abs(u_input.a) | (~1u | _wgslsmith_add_u32(1u, u_input.a)), ~(~45196u << (~var_0.c.x % 32u))));
    var var_2 = var_0.c;
    var var_3 = global2[_wgslsmith_index_u32(0u, 29u)];
    return !select(vec2<bool>(select(all(vec2<bool>(global0.x, true)), true, var_1.x > var_2.x), all(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, true, global0.x, false), true))), vec2<bool>(global0.x, true), !all(select(vec2<bool>(true, true), vec2<bool>(true, global0.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(u_input.b, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~reverseBits(global1[_wgslsmith_index_u32(17999u, 9u)]), 9u)], 9u)], ~max(1u, 17694u))), 29u)];
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(404f, 465f, _wgslsmith_f_op_f32(f32(-1f) * -970f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -294f, -946f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(-766f, 264f, var_0.d)), select(vec3<bool>(true, true, global0.x), vec3<bool>(false, false, false), vec3<bool>(true, global0.x, false)))))), !(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, global0.x), true)))), countOneBits((firstLeadingBit(60015i) ^ firstLeadingBit(var_0.b)) ^ ~_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(4241u, 4u)], -1287i, 1i)), _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(10523u, 58937u))), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(14907u, var_0.c) ^ vec2<u32>(u_input.c, u_input.b)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(global1[_wgslsmith_index_u32(65926u, 9u)], 37801u)))), _wgslsmith_f_op_f32(-var_0.d));
    global1 = array<u32, 9>();
    var var_1 = -12402i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -var_0.b, max(~var_0.b, global3[_wgslsmith_index_u32(var_0.c, 4u)])), -2147483647i, var_0.b << (abs(~0u) % 32u), -_wgslsmith_mod_i32(-var_0.b, firstLeadingBit(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 4u)]))), ~u_input.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.xz * var_0.a.yy) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x), var_0.a.zy)))), vec2<f32>(-433f, _wgslsmith_f_op_f32(f32(-1f) * -1286f))), ~var_0.c);
}

