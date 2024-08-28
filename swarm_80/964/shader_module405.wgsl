struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1135f, -769f, -1000f, 1282f), 560f, vec4<bool>(false, true, true, true), vec4<u32>(25629u, 7772u, 10798u, 4294967295u));

var<private> global1: array<Struct_1, 10>;

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-392f, 1743f, 150f, -154f), vec4<f32>(-211f, 688f, -1346f, -164f), vec4<f32>(-1666f, 653f, 275f, 1178f), vec4<f32>(-285f, 460f, 688f, 432f), vec4<f32>(-401f, -1000f, -329f, -791f), vec4<f32>(3189f, -1718f, -1477f, 1000f), vec4<f32>(-472f, 629f, -251f, -1022f), vec4<f32>(1864f, -929f, -1245f, 515f), vec4<f32>(-215f, 785f, -415f, -324f), vec4<f32>(-600f, -1203f, 944f, -1473f), vec4<f32>(-1000f, -325f, -681f, 1646f), vec4<f32>(1191f, 580f, 927f, -765f), vec4<f32>(-307f, -1576f, 717f, -437f), vec4<f32>(343f, -343f, 1082f, 917f), vec4<f32>(-1632f, 784f, -1000f, -353f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> bool {
    let var_0 = (max(abs(abs(global2.d.d.x)), ~global2.e.d.x) > 1u) && (_wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(arg_2.x, u_input.d.x, -30718i, -56623i)), _wgslsmith_mult_vec4_i32(vec4<i32>(29767i, arg_2.x, -1i, 2147483647i) | vec4<i32>(arg_3, arg_3, 1i, arg_2.x), -vec4<i32>(arg_2.x, -1i, arg_2.x, 1i))) <= -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 8383i, 1804i), arg_2)));
    var var_1 = vec4<bool>(all(vec3<bool>(!(arg_1.b.c.x == global0.c.x), var_0, global0.c.x)), true, !select(!(arg_2.x != arg_2.x), !var_0, var_0), !any(select(!arg_1.d.c.zwx, select(arg_1.e.c.ywx, global2.e.c.wwz, true), arg_1.e.c.zxz)));
    let var_2 = _wgslsmith_div_f32(-1000f, global2.b.b);
    global3 = array<vec4<f32>, 15>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(736f, -1512f, arg_1.d.b, arg_0))) - vec4<f32>(403f, _wgslsmith_f_op_f32(arg_1.b.b - var_2), arg_0, var_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b * var_2))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-548f)) + arg_1.b.a.x)))), select(!vec4<bool>(false, true, global0.c.x, false), select(arg_1.d.c, global0.c, true), false), vec4<u32>(~_wgslsmith_mod_u32(firstTrailingBit(12898u), _wgslsmith_sub_u32(arg_1.b.d.x, 1u)), _wgslsmith_add_u32(~firstTrailingBit(arg_1.d.d.x), ~_wgslsmith_mod_u32(global0.d.x, 51155u)), ~(~(~72256u)), _wgslsmith_sub_u32(~global0.d.x | (global0.d.x | 4294967295u), _wgslsmith_add_u32(~41203u, max(global2.d.d.x, 1u)))));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec4<f32> {
    global0 = arg_1.d;
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(831f, 1000f, -666f, arg_1.e.a.x)))), _wgslsmith_f_op_f32(max(-875f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2511f), _wgslsmith_f_op_f32(-global2.e.a.x)))), !global0.c, ~_wgslsmith_mod_vec4_u32(abs(arg_1.b.d), vec4<u32>(4294967295u, global0.d.x, 4294967295u, global0.d.x))), !select(arg_1.e.c.wzy, vec3<bool>(true, false, func_3(global2.e.b, arg_1, vec3<i32>(57076i, u_input.b, u_input.b), 9295i)), global0.c.x), true);
    global0 = global1[_wgslsmith_index_u32(~20324u, 10u)];
    let var_1 = arg_0.e.c.x;
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(global2.d.d.x, 15u)]) * _wgslsmith_f_op_vec4_f32(global2.b.a - vec4<f32>(var_0.a.b, 181f, global2.d.b, 417f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(963f, -108f, arg_1.d.a.x, var_0.a.a.x)))), _wgslsmith_f_op_f32(-arg_1.e.b), vec4<bool>(true, !(!arg_1.b.c.x), any(var_0.b), any(select(vec3<bool>(true, arg_0.d.c.x, true), vec3<bool>(var_1, arg_1.d.c.x, false), global0.c.xwz))), vec4<u32>(14076u, _wgslsmith_div_u32(~global0.d.x, arg_1.d.d.x), 84647u, _wgslsmith_sub_u32(arg_1.b.d.x, arg_1.d.d.x))), vec3<bool>(arg_1.e.c.x, any(!select(var_0.a.c.wx, var_0.b.yy, true)), true), global0.c.x);
    return vec4<f32>(arg_0.b.a.x, global2.b.b, _wgslsmith_f_op_f32(f32(-1f) * -2217f), var_0.a.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = vec2<i32>(firstLeadingBit(-firstLeadingBit(u_input.b)), 0i);
    global1 = array<Struct_1, 10>();
    let var_1 = Struct_3(arg_0, !global2.e.c.wxw, arg_0.c.x);
    let var_2 = u_input.d;
    let var_3 = global1[_wgslsmith_index_u32(~arg_0.d.x, 10u)];
    return Struct_2(global2.e.c.x, Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(157f)), global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1253f), global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e.b, -816f, -2137f, 1387f) - vec4<f32>(446f, 694f, arg_0.a.x, 1981f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x * global2.b.b)), !select(vec4<bool>(false, true, global0.c.x, true), arg_1, var_1.a.c), ~arg_0.d), ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global2.e.d.x, 70007u, global0.d.x), vec3<u32>(var_3.d.x, 47493u, global0.d.x)))), global2.b, var_1.a);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 771f;
    let var_1 = global0.d.yzx;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(arg_0.b.a)), 317f, !select(!select(global2.b.c, vec4<bool>(global2.a, global0.c.x, arg_0.b.c.x, true), vec4<bool>(global0.c.x, true, false, false)), global2.e.c, false), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.c.x, ~global0.d.x, _wgslsmith_clamp_u32(var_1.x, arg_0.e.d.x, var_1.x), func_4(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 15u)], -922f, arg_0.b.c, vec4<u32>(0u, global2.c.x, arg_0.e.d.x, 63356u)), vec4<bool>(global2.d.c.x, global0.c.x, false, false)).d.d.x), ~(~global2.e.d)), firstLeadingBit(var_1.x), ~(1u >> (~4294967295u % 32u)), _wgslsmith_div_u32(18712u, _wgslsmith_dot_vec2_u32(~vec2<u32>(57476u, 1u), abs(global2.e.d.yy)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0.b.a))) - _wgslsmith_f_op_vec4_f32(-func_4(var_2, vec4<bool>(global0.c.x, false, global2.b.c.x, arg_0.a)).b.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-533f)), arg_0.e.a.x, _wgslsmith_f_op_f32(-global2.b.a.x), _wgslsmith_f_op_f32(ceil(var_2.b))) * vec4<f32>(_wgslsmith_f_op_f32(1624f - var_0), _wgslsmith_f_op_f32(783f + -807f), var_2.b, _wgslsmith_f_op_f32(-194f - 1327f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(1051f, global2.e.b), var_2.a.x))))), select(var_2.c, select(arg_0.d.c, func_4(Struct_1(vec4<f32>(arg_0.e.a.x, global2.d.a.x, 192f, global0.b), global2.e.b, var_2.c, var_2.d), func_4(var_2, vec4<bool>(false, global0.c.x, true, true)).d.c).b.c, global0.c.x), !vec4<bool>(all(global2.b.c.xy), true, false, true)), reverseBits(var_2.d));
    global3 = array<vec4<f32>, 15>();
    return func_4(Struct_1(global2.d.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), !select(select(vec4<bool>(false, global2.d.c.x, global2.d.c.x, true), vec4<bool>(false, false, false, global0.c.x), false), global0.c, !vec4<bool>(var_3.c.x, global0.c.x, true, arg_0.e.c.x)), var_2.d), !func_4(arg_0.b, func_4(func_4(Struct_1(arg_0.d.a, 875f, vec4<bool>(false, true, arg_0.e.c.x, var_2.c.x), vec4<u32>(global0.d.x, var_3.d.x, 87325u, global2.d.d.x)), arg_0.e.c).e, vec4<bool>(var_3.c.x, false, var_3.c.x, var_2.c.x)).e.c).d.c);
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    global2 = func_5(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(arg_0.c.x, Struct_1(vec4<f32>(global2.e.a.x, 1098f, global0.b, global2.e.a.x), 994f, global0.c, global2.e.d), global0.d.yww, Struct_1(global2.e.a, global0.b, vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global2.e.c.x), vec4<u32>(arg_0.d.x, global0.d.x, global0.d.x, 41357u)), global1[_wgslsmith_index_u32(934u, 10u)]), Struct_2(true, Struct_1(vec4<f32>(arg_0.a.x, 441f, -1550f, arg_0.a.x), 997f, vec4<bool>(global0.c.x, arg_0.c.x, global2.e.c.x, global2.d.c.x), global2.b.d), vec3<u32>(arg_0.d.x, 0u, global2.d.d.x), Struct_1(vec4<f32>(955f, -148f, 636f, 1302f), -1330f, vec4<bool>(false, false, arg_0.c.x, true), vec4<u32>(global0.d.x, 9536u, arg_0.d.x, global2.e.d.x)), Struct_1(global0.a, arg_0.a.x, arg_0.c, global2.e.d)), global2.e.a.x)), _wgslsmith_f_op_f32(-global2.d.a.x), vec4<bool>(true, false, true, any(global0.c.zww)), vec4<u32>(select(17584u, 8296u, arg_0.c.x), max(4294967295u, 3457u), 1u, global0.d.x)), global0.c));
    global1 = array<Struct_1, 10>();
    let var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(any(vec4<bool>(true, false, true, global2.a)), func_5(Struct_2(arg_0.c.x, global1[_wgslsmith_index_u32(global2.b.d.x, 10u)], global0.d.yyx, Struct_1(vec4<f32>(-1000f, arg_0.b, 1612f, 1163f), global2.b.b, vec4<bool>(false, true, false, true), global2.e.d), Struct_1(vec4<f32>(379f, arg_0.b, 729f, arg_0.b), global0.a.x, vec4<bool>(true, global0.c.x, true, global0.c.x), vec4<u32>(28597u, global0.d.x, global2.c.x, 4294967295u)))).b, vec3<u32>(global2.b.d.x, 1u, 4294967295u), global2.b, func_4(arg_0, arg_0.c).d), Struct_2(true, func_4(Struct_1(vec4<f32>(-192f, arg_0.a.x, 394f, -628f), 1365f, vec4<bool>(false, global2.e.c.x, true, false), global2.b.d), vec4<bool>(global2.d.c.x, true, global2.b.c.x, false)).d, arg_0.d.xyy ^ vec3<u32>(arg_0.d.x, 28704u, 75503u), func_4(global2.d, arg_0.c).b, Struct_1(vec4<f32>(arg_0.a.x, global0.b, arg_0.b, -2081f), 575f, vec4<bool>(global2.d.c.x, false, global0.c.x, true), vec4<u32>(global2.e.d.x, global2.d.d.x, arg_0.d.x, global0.d.x))), 213f)), 750f, select(select(!vec4<bool>(false, true, global0.c.x, arg_0.c.x), !vec4<bool>(false, false, false, global2.b.c.x), func_5(Struct_2(global2.b.c.x, Struct_1(global0.a, -1681f, vec4<bool>(global0.c.x, global0.c.x, true, arg_0.c.x), global2.d.d), global2.d.d.xzy, arg_0, global2.b)).a), global0.c, func_5(func_5(Struct_2(global0.c.x, arg_0, global0.d.zyz, Struct_1(vec4<f32>(arg_0.a.x, -1813f, -698f, 1026f), arg_0.b, global2.d.c, vec4<u32>(arg_0.d.x, global2.c.x, global2.e.d.x, 98408u)), global2.e))).d.c.x), ~(~(~vec4<u32>(27834u, 9386u, 4294967295u, 1u)))), ~arg_0.d.wyz, func_5(Struct_2(!global2.d.c.x, arg_0, ~global0.d.yyy, Struct_1(vec4<f32>(global2.d.a.x, arg_0.a.x, arg_0.b, global0.a.x), global0.a.x, func_4(arg_0, arg_0.c).d.c, vec4<u32>(19431u, 13920u, arg_0.d.x, arg_0.d.x)), global1[_wgslsmith_index_u32(4294967295u, 10u)])).e, global1[_wgslsmith_index_u32(global0.d.x, 10u)]);
    return vec3<u32>(43825u, max(select(countOneBits(_wgslsmith_mult_u32(90995u, global0.d.x)), var_0.e.d.x, 1i == _wgslsmith_mod_i32(u_input.b, u_input.b)), 0u), _wgslsmith_div_u32(firstTrailingBit(45180u), ~(~global0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    var var_0 = !global0.c;
    var var_1 = ~firstTrailingBit(_wgslsmith_mult_vec2_u32(global2.c.xx, ~vec2<u32>(global0.d.x, 61204u) ^ (global0.d.zy | vec2<u32>(103177u, global0.d.x))));
    global2 = Struct_2(true, Struct_1(vec4<f32>(1578f, global2.e.a.x, _wgslsmith_f_op_f32(-global2.b.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.b, -246f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), vec4<bool>(global2.d.a.x > _wgslsmith_f_op_f32(f32(-1f) * -547f), false, false, !all(vec3<bool>(false, var_0.x, false))), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.d.x, var_1.x, global2.b.d.x, 34307u), global0.d) | ~_wgslsmith_sub_vec4_u32(global2.d.d, vec4<u32>(4294967295u, 0u, global0.d.x, 71249u))), reverseBits(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1594f, global0.a.x, global0.b, -1208f))), _wgslsmith_f_op_f32(global2.e.a.x + -337f), !vec4<bool>(global0.c.x, global2.e.c.x, var_0.x, global0.c.x), global0.d))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(func_4(Struct_1(vec4<f32>(812f, 304f, -1000f, -470f), global2.e.b, global2.e.c, global2.b.d), !global0.c).d.d.x, global0.d.x), 1u), 10u)], func_5(Struct_2(_wgslsmith_add_i32(u_input.c, u_input.c) < _wgslsmith_sub_i32(u_input.b, u_input.a.x), global1[_wgslsmith_index_u32(global0.d.x, 10u)], _wgslsmith_div_vec3_u32(vec3<u32>(global0.d.x, 1u, var_1.x), global0.d.yxx << (global2.b.d.yxw % vec3<u32>(32u))), Struct_1(vec4<f32>(global0.b, global2.d.b, global0.b, 1647f), _wgslsmith_f_op_f32(746f - global0.a.x), func_5(Struct_2(global0.c.x, global2.d, vec3<u32>(var_1.x, 77980u, global2.d.d.x), Struct_1(global2.e.a, global2.d.a.x, vec4<bool>(false, global2.b.c.x, true, true), vec4<u32>(var_1.x, global2.e.d.x, global2.b.d.x, var_1.x)), global1[_wgslsmith_index_u32(63131u, 10u)])).b.c, vec4<u32>(global0.d.x, var_1.x, 4294967295u, 4294967295u)), global2.d)).e);
    var var_2 = func_4(func_5(func_4(global1[_wgslsmith_index_u32(~85284u, 10u)], !select(global0.c, vec4<bool>(true, false, false, var_0.x), global0.c))).e, select(vec4<bool>(all(vec4<bool>(var_0.x, true, global0.c.x, global2.e.c.x)), global2.b.c.x, !global2.d.c.x, any(!vec4<bool>(true, var_0.x, global2.b.c.x, global0.c.x))), vec4<bool>(!any(global0.c), all(func_4(Struct_1(global2.d.a, global2.d.a.x, vec4<bool>(var_0.x, global0.c.x, false, global0.c.x), global0.d), global0.c).b.c), all(vec4<bool>(false, true, false, global2.a)), !(global2.e.c.x | var_0.x)), func_5(func_4(global2.e, !global2.b.c)).a)).e.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~1i)), countOneBits(global0.d));
}

