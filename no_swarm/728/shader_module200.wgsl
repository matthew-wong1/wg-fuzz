struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(-303f, vec3<i32>(i32(-2147483648), -1i, 1i)), Struct_3(-649f, vec3<i32>(-82222i, i32(-2147483648), 1i)), Struct_3(-699f, vec3<i32>(-4202i, 3970i, 1i)), Struct_3(1209f, vec3<i32>(1i, i32(-2147483648), -1i)), Struct_3(-693f, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_3(1000f, vec3<i32>(i32(-2147483648), 43540i, 18992i)), Struct_3(-768f, vec3<i32>(-10061i, -48347i, -90384i)), Struct_3(951f, vec3<i32>(-33714i, i32(-2147483648), -5525i)), Struct_3(148f, vec3<i32>(1i, 1i, 32429i)), Struct_3(-255f, vec3<i32>(-27728i, -19922i, -58183i)), Struct_3(-189f, vec3<i32>(43989i, 40121i, 33815i)), Struct_3(-300f, vec3<i32>(-1i, 1i, -5835i)), Struct_3(-575f, vec3<i32>(-5933i, 62743i, 0i)), Struct_3(1000f, vec3<i32>(0i, 734i, 2147483647i)));

var<private> global2: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(520f, -934f, 640f, 1176f), vec4<f32>(-1000f, 733f, 1000f, -1013f), vec4<f32>(1000f, -552f, -385f, -1998f), vec4<f32>(1408f, -1135f, -176f, 1942f), vec4<f32>(-1000f, -595f, 902f, 566f), vec4<f32>(-1156f, 1366f, -326f, -1000f), vec4<f32>(436f, -226f, 738f, 1000f), vec4<f32>(1346f, -592f, 2371f, -1316f), vec4<f32>(-1230f, -461f, -451f, -1066f), vec4<f32>(-172f, 501f, 163f, -434f), vec4<f32>(730f, -479f, 265f, 1771f), vec4<f32>(524f, 1308f, 1222f, -483f), vec4<f32>(-501f, 1225f, -820f, -1000f), vec4<f32>(1225f, 393f, 1350f, -1000f), vec4<f32>(1401f, -908f, 330f, 735f), vec4<f32>(-709f, 119f, 751f, 744f), vec4<f32>(-1009f, 562f, -445f, -448f));

var<private> global3: Struct_5 = Struct_5(vec2<bool>(false, true), false, vec2<bool>(true, true));

var<private> global4: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-1967f, -1147f), Struct_1(-1000f, -936f), Struct_1(-193f, 1470f), Struct_1(234f, 517f), Struct_1(-610f, -1210f), Struct_1(243f, 537f), Struct_1(-104f, 1000f), Struct_1(-836f, -579f), Struct_1(-795f, 771f), Struct_1(-168f, 1312f), Struct_1(-501f, 673f), Struct_1(1184f, -1280f), Struct_1(-765f, -106f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a, -615f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.a)), -1531f))))));
    let var_1 = ~(~reverseBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(18604u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, 1u), vec2<u32>(arg_2, arg_2)))));
    var var_2 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1917f * -784f), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 916f) + _wgslsmith_f_op_f32(abs(var_0.x)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-513f, _wgslsmith_f_op_f32(sign(arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1732f, var_2.b, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(1452f, arg_1.b)), -579f, 881f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1497f, var_2.b, -879f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b, var_2.b, arg_1.b), vec3<f32>(-1140f, -1008f, 997f), global0[_wgslsmith_index_u32(1u, 13u)])) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 419f, var_0.x), vec3<f32>(arg_1.b, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, 777f, arg_1.a)))), global0[_wgslsmith_index_u32(4294967295u, 13u)]));
    var var_4 = Struct_4(global3.a, vec4<i32>(arg_0.x, arg_0.x, select(arg_0.x, i32(-1i) * -40057i, !global3.c.x), firstTrailingBit(_wgslsmith_mult_i32(55935i, 1i) >> (_wgslsmith_mod_u32(122901u, u_input.a) % 32u))), select(!vec3<bool>(!global3.b, arg_0.x > arg_0.x, false), select(select(vec3<bool>(true, true, true), !vec3<bool>(global3.c.x, global0[_wgslsmith_index_u32(76458u, 13u)], true), true), select(vec3<bool>(global0[_wgslsmith_index_u32(41550u, 13u)], false, global0[_wgslsmith_index_u32(16652u, 13u)]), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(select(vec3<bool>(global3.b, global3.b, true), vec3<bool>(global3.b, false, global3.c.x), vec3<bool>(false, global3.a.x, global0[_wgslsmith_index_u32(4294967295u, 13u)])), select(vec3<bool>(true, global3.a.x, global0[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(false, global3.c.x, global3.b), false), !vec3<bool>(true, global0[_wgslsmith_index_u32(14979u, 13u)], global0[_wgslsmith_index_u32(var_1.x, 13u)]))), var_3.x > _wgslsmith_f_op_f32(-1452f * 169f)), countOneBits(vec2<i32>(arg_0.x << ((4294967295u ^ var_1.x) % 32u), -18220i)), Struct_2(~select(~vec3<u32>(1926u, var_1.x, 26022u), vec3<u32>(68608u, var_1.x, 4294967295u), select(vec3<bool>(global3.c.x, global3.c.x, global0[_wgslsmith_index_u32(arg_2, 13u)]), vec3<bool>(false, global3.c.x, true), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]))), global4[_wgslsmith_index_u32(countOneBits(~arg_2) | _wgslsmith_add_u32(0u, 4294967295u), 13u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(exp2(arg_1.b))), var_3.x, global4[_wgslsmith_index_u32(var_1.x, 13u)]));
    return _wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(abs(4294967295u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(87372u, 0u, var_1.x, 0u), abs(vec4<u32>(var_4.e.a.x, 1u, u_input.a, u_input.a))) % 32u), ~arg_2), arg_2);
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -740f, -465f, -2541f) - global2[_wgslsmith_index_u32(40062u, 17u)]) * global2[_wgslsmith_index_u32(min(u_input.a, 35911u), 17u)]))));
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a, 14u)];
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 22177u), vec3<u32>(1u, 0u, 4294967295u))) ^ max(vec4<u32>(4294967295u, u_input.a, 0u, 8396u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 14340u, 0u), vec4<u32>(u_input.a, u_input.a, 47813u, u_input.a))), reverseBits(vec4<u32>(u_input.a, 26077u, func_3(vec3<i32>(arg_0.x, 1i, arg_0.x), Struct_1(var_1.a, -2876f), u_input.a), 1u))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(57896u, u_input.a, 16362u, 28727u)), vec4<u32>(select(u_input.a, 77400u, false), 1308u, firstLeadingBit(u_input.a), u_input.a)) >> (~(~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u))), 13u)];
    var var_3 = vec2<i32>(var_1.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(var_1.b.x, var_1.b.x, arg_0.x), var_1.b), ~(vec3<i32>(var_1.b.x, var_1.b.x, arg_0.x) & vec3<i32>(arg_0.x, 1i, arg_0.x))), var_1.b));
    let var_4 = Struct_4(!select(select(vec2<bool>(global3.a.x, false), vec2<bool>(false, global3.a.x), select(global3.a, global3.a, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], false))), select(select(global3.c, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], true), false), global3.c, !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global3.a.x)), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(~1i, abs(10615i), -9961i, firstTrailingBit(max(arg_0.x, var_1.b.x))), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(39335i, var_3.x, var_3.x, var_1.b.x), vec4<i32>(-1i, 6942i, 43708i, arg_0.x))), ~vec4<i32>(var_1.b.x ^ arg_0.x, abs(var_3.x), var_3.x, 1i)), select(!vec3<bool>(true, true, any(vec2<bool>(true, false))), vec3<bool>(!any(vec2<bool>(true, false)), global3.a.x == true, global0[_wgslsmith_index_u32(u_input.a, 13u)] || false), global0[_wgslsmith_index_u32(1u, 13u)]), arg_0, Struct_2(~(~(~vec3<u32>(4294967295u, 4294967295u, 1u))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), ~abs(vec3<u32>(u_input.a, 1u, 1u))), 13u)], global4[_wgslsmith_index_u32(~firstTrailingBit(u_input.a), 13u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(302f, var_2.a), -999f)), Struct_1(_wgslsmith_f_op_f32(sign(-128f)), var_2.a)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1596f);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_5 {
    let var_0 = arg_0;
    var var_1 = select(select(!vec4<bool>(true | arg_1, global3.c.x, !global3.a.x, all(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2, 13u)], true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(~u_input.a, 13u)], arg_1, global3.c.x), vec4<bool>(true, !arg_1, true, global0[_wgslsmith_index_u32(~4294967295u, 13u)])), true), !select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 13u)], arg_1), select(!vec4<bool>(global3.b, false, true, true), !vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2, 13u)], true, false), all(vec2<bool>(false, global3.b))), true), any(select(select(vec3<bool>(false, false, true), !vec3<bool>(arg_1, true, global0[_wgslsmith_index_u32(1u, 13u)]), u_input.a >= 32095u), select(select(vec3<bool>(true, global3.b, arg_1), vec3<bool>(true, arg_1, false), global0[_wgslsmith_index_u32(0u, 13u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(arg_2, 13u)]), all(vec4<bool>(true, global3.c.x, global3.a.x, false))), false)));
    let var_2 = 1u;
    global1 = array<Struct_3, 14>();
    let var_3 = global1[_wgslsmith_index_u32(arg_2, 14u)];
    return Struct_5(global3.a, !global0[_wgslsmith_index_u32(func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.b.x, 2147483647i, var_3.b.x), ~var_3.b), Struct_1(-211f, _wgslsmith_f_op_f32(-var_3.a)), reverseBits(u_input.a >> (u_input.a % 32u))), 13u)], !select(!(!var_1.yy), var_1.yw, vec2<bool>(select(true, true, var_1.x), !var_1.x)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1307f, -442f) - _wgslsmith_f_op_f32(ceil(118f)))))));
    let var_1 = var_0;
    global4 = array<Struct_1, 13>();
    let var_2 = u_input.a;
    global3 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(-1i, 0i))))), 286f), false, u_input.a);
    return Struct_4(!(!vec2<bool>(false, global3.b || false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, -_wgslsmith_mod_i32(-24815i, -1i), 2147483647i, arg_0.x), vec4<i32>(arg_0.x, 0i, min(~arg_0.x, arg_0.x), _wgslsmith_clamp_i32(arg_0.x, 1i, ~arg_0.x)), min(countOneBits(vec4<i32>(arg_0.x, 30302i, 0i, arg_0.x) | vec4<i32>(-67223i, 39222i, -2147483647i, 22078i)), abs(~vec4<i32>(-2147483647i, arg_0.x, -2147483647i, arg_0.x)))), select(!select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global3.a.x, global3.c.x), !vec3<bool>(global3.a.x, global3.a.x, false), !vec3<bool>(false, false, global3.c.x)), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(66441u, 13u)], global3.a.x, false))), !(!(!vec3<bool>(false, global3.b, false)))), abs(firstTrailingBit(arg_0)), Struct_2((vec3<u32>(1u, 1u, 1u) & select(vec3<u32>(var_2, 22946u, 39448u), vec3<u32>(1u, var_2, var_2), vec3<bool>(global0[_wgslsmith_index_u32(8169u, 13u)], false, global0[_wgslsmith_index_u32(1u, 13u)]))) | min(vec3<u32>(u_input.a, 0u, 1u), ~vec3<u32>(u_input.a, u_input.a, var_2)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_0 * 699f))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 + 2264f))), _wgslsmith_f_op_f32(select(452f, _wgslsmith_f_op_f32(trunc(-1931f)), global3.c.x))), var_0, global4[_wgslsmith_index_u32(0u, 13u)]));
}

fn func_5(arg_0: Struct_4) -> vec3<u32> {
    global0 = array<bool, 13>();
    global2 = array<vec4<f32>, 17>();
    let var_0 = ~(-17768i);
    let var_1 = arg_0.b;
    var var_2 = func_4(_wgslsmith_div_f32(arg_0.e.e.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - arg_0.e.c.a))), global0[_wgslsmith_index_u32(arg_0.e.a.x, 13u)], _wgslsmith_mod_u32(arg_0.e.a.x, _wgslsmith_dot_vec3_u32(~arg_0.e.a, arg_0.e.a) | arg_0.e.a.x));
    return vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(43812u, _wgslsmith_mod_u32(1u, 5426u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.a.x, u_input.a, 104773u, u_input.a), abs(vec4<u32>(arg_0.e.a.x, u_input.a, arg_0.e.a.x, u_input.a))), ~func_1(arg_0.d).e.a.x), func_3(vec3<i32>(countOneBits(-var_0), -8785i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.yx, arg_0.d), -29883i << (0u % 32u))), Struct_1(_wgslsmith_f_op_f32(-arg_0.e.c.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.c.a * 704f), _wgslsmith_f_op_f32(-arg_0.e.d))), arg_0.e.a.x), func_3(arg_0.b.zyw, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.e.c.a + arg_0.e.d), arg_0.e.c.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1117f)), _wgslsmith_f_op_f32(-778f - arg_0.e.c.a)))), 1u << (~u_input.a % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 13>();
    var var_0 = firstTrailingBit(min(vec4<i32>(1i, ~abs(-77765i), 1i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -28118i, -1i), vec3<i32>(-56013i, 0i, -1i)), ~(-20924i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(38862i, 0i, -1i, 0i) << (vec4<u32>(u_input.a, 50142u, u_input.a, u_input.a) % vec4<u32>(32u)), -vec4<i32>(2147483647i, 46349i, 0i, -33218i))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_1(~_wgslsmith_div_vec2_i32(var_0.zw, vec2<i32>(var_0.x, var_0.x)))));
}

