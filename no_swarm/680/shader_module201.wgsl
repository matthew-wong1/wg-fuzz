struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-587f, vec4<bool>(true, false, false, false), vec3<i32>(2147483647i, -1i, 26303i), -754f), Struct_1(-3583f, vec4<bool>(true, true, false, false), vec3<i32>(13827i, -35534i, 0i), -711f), Struct_1(-475f, vec4<bool>(false, true, false, true), vec3<i32>(-1i, 1i, -14808i), -2165f), Struct_1(1000f, vec4<bool>(true, true, false, false), vec3<i32>(0i, 7128i, 2147483647i), 731f), Struct_1(287f, vec4<bool>(true, false, false, false), vec3<i32>(-1i, -20438i, i32(-2147483648)), 245f), Struct_1(402f, vec4<bool>(true, true, true, false), vec3<i32>(2147483647i, 0i, 111008i), 1771f), Struct_1(138f, vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, 0i, -8094i), 568f), Struct_1(629f, vec4<bool>(false, false, true, true), vec3<i32>(2147483647i, 37544i, 11171i), 547f), Struct_1(-1154f, vec4<bool>(false, true, false, false), vec3<i32>(-15055i, -45640i, -147i), 293f), Struct_1(-508f, vec4<bool>(true, false, true, true), vec3<i32>(6825i, -1i, -18829i), 842f), Struct_1(-376f, vec4<bool>(false, false, false, false), vec3<i32>(9692i, i32(-2147483648), 40587i), 763f), Struct_1(1434f, vec4<bool>(false, true, false, false), vec3<i32>(4150i, -2876i, i32(-2147483648)), 533f), Struct_1(845f, vec4<bool>(true, true, true, true), vec3<i32>(24123i, 1i, 0i), 976f), Struct_1(-572f, vec4<bool>(false, true, false, false), vec3<i32>(0i, 9613i, i32(-2147483648)), -548f), Struct_1(1905f, vec4<bool>(false, false, true, false), vec3<i32>(2147483647i, 18735i, -49274i), -519f), Struct_1(-752f, vec4<bool>(false, false, true, false), vec3<i32>(27121i, 11232i, 13467i), 628f), Struct_1(923f, vec4<bool>(false, false, true, false), vec3<i32>(-23054i, 2147483647i, i32(-2147483648)), -1073f), Struct_1(-328f, vec4<bool>(false, true, false, true), vec3<i32>(18323i, 20626i, 23589i), 1000f), Struct_1(-1381f, vec4<bool>(true, false, false, false), vec3<i32>(3629i, i32(-2147483648), 0i), 397f), Struct_1(-1000f, vec4<bool>(false, true, true, true), vec3<i32>(-1i, 1i, 32470i), 158f), Struct_1(-154f, vec4<bool>(true, true, false, false), vec3<i32>(19598i, 0i, i32(-2147483648)), 181f), Struct_1(688f, vec4<bool>(false, true, true, true), vec3<i32>(2147483647i, i32(-2147483648), 1i), -1046f), Struct_1(585f, vec4<bool>(true, true, true, true), vec3<i32>(2147483647i, 40121i, i32(-2147483648)), -795f), Struct_1(-151f, vec4<bool>(true, true, false, false), vec3<i32>(-52431i, 1i, 0i), 2142f), Struct_1(1023f, vec4<bool>(true, true, true, true), vec3<i32>(23812i, -4186i, i32(-2147483648)), -680f), Struct_1(287f, vec4<bool>(true, false, false, true), vec3<i32>(12711i, i32(-2147483648), 2147483647i), 113f));

var<private> global2: vec2<i32> = vec2<i32>(-1i, 46195i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    let var_0 = -420f;
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 26u)];
    global2 = var_1.c.xz;
    let var_2 = ~(-vec4<i32>(i32(-1i) * -arg_0.c.x, abs(_wgslsmith_add_i32(global2.x, var_1.c.x)), 2147483647i, select(-var_1.c.x, -2147483647i, true | arg_0.b.x)));
    var var_3 = arg_2;
    return select(select(select(select(!var_3.b, arg_2.b, false), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 25u)], var_1.b.x, true, true)), !(!vec4<bool>(false, arg_2.b.x, true, true))), vec4<bool>(-876f >= _wgslsmith_f_op_f32(-var_1.a), any(select(var_3.b.yww, vec3<bool>(arg_0.b.x, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(46820u, 25u)], var_3.b.x))), var_0 == _wgslsmith_f_op_f32(select(var_1.d, arg_2.d, arg_0.b.x)), true), arg_2.b), !select(select(select(vec4<bool>(false, true, arg_0.b.x, true), vec4<bool>(arg_0.b.x, false, true, false), false), arg_2.b, !vec4<bool>(true, true, true, arg_0.b.x)), select(!var_1.b, !vec4<bool>(global0[_wgslsmith_index_u32(arg_3, 25u)], arg_2.b.x, var_1.b.x, false), arg_2.b), !(!arg_0.b)), select(vec4<bool>(all(!vec2<bool>(false, arg_2.b.x)), true || var_1.b.x, arg_0.b.x, all(vec3<bool>(arg_0.b.x, true, false))), !vec4<bool>(true, all(var_1.b.ywz), -1000f <= arg_0.a, all(vec2<bool>(var_1.b.x, var_1.b.x))), var_3.b));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-713f, _wgslsmith_f_op_f32(-arg_0.x)))))), select(vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(62328u, 25u)], true, all(arg_1)), !func_3(global1[_wgslsmith_index_u32(~0u, 26u)], ~u_input.b.zy, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], ~u_input.b.x), select(!(!vec4<bool>(false, arg_1.x, arg_2.x, global0[_wgslsmith_index_u32(u_input.a, 25u)])), select(select(vec4<bool>(global0[_wgslsmith_index_u32(1703u, 25u)], arg_1.x, arg_1.x, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true, arg_2.x), false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 25u)], true), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 25u)], true), vec4<bool>(false, true, false, true), false)), all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], false, true)))), ~(~(vec3<i32>(-1i, global2.x, global2.x) ^ vec3<i32>(global2.x, 2147483647i, global2.x)) ^ (min(vec3<i32>(global2.x, global2.x, 11679i), vec3<i32>(-1i, 2147483647i, -1i)) >> (~vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-arg_0.x));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(245f + var_0.d), _wgslsmith_f_op_f32(max(-429f, var_0.d))))), select(func_3(Struct_1(_wgslsmith_f_op_f32(405f * arg_0.x), func_3(Struct_1(602f, vec4<bool>(true, false, false, false), vec3<i32>(13992i, -1i, global2.x), -426f), u_input.b.xy, Struct_1(-1437f, vec4<bool>(arg_2.x, false, true, true), var_0.c, -463f), u_input.b.x), reverseBits(vec3<i32>(global2.x, global2.x, 19277i)), arg_0.x), vec2<u32>(~35308u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.b.x, 4294967295u), vec4<u32>(u_input.a, 1u, 0u, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(sign(var_0.a)), select(var_0.b, vec4<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], arg_1.x, global0[_wgslsmith_index_u32(u_input.a, 25u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(85958u, 25u)], false, true)), -vec3<i32>(-1i, global2.x, var_0.c.x), -574f), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 0u), vec4<u32>(1u, 85113u, 44408u, 76794u))), select(select(vec4<bool>(true, arg_1.x, arg_1.x, arg_2.x), var_0.b, vec4<bool>(false, false, true, arg_1.x)), vec4<bool>(true, any(vec4<bool>(arg_1.x, arg_2.x, true, global0[_wgslsmith_index_u32(u_input.b.x, 25u)])), var_0.b.x, all(vec2<bool>(false, true))), select(var_0.b, select(vec4<bool>(false, var_0.b.x, global0[_wgslsmith_index_u32(u_input.a, 25u)], true), var_0.b, var_0.b), false)), !(!(!arg_1.x))), var_0.c, _wgslsmith_f_op_f32(sign(var_0.d)));
    var var_1 = 10697u;
    var_1 = u_input.a;
    let var_2 = global1[_wgslsmith_index_u32(0u, 26u)];
    return arg_1.x && true;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = !func_2(arg_2, arg_0.b.ywz, vec2<bool>(true, true));
    global0 = array<bool, 25>();
    var var_1 = ~arg_1.x;
    let var_2 = -abs(select(vec4<i32>(5170i, global2.x, -2147483647i, arg_0.c.x) >> (vec4<u32>(272u, arg_1.x, 4294967295u, arg_1.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, -31389i, arg_0.c.x), vec4<i32>(15509i, global2.x, 36740i, -36547i)), arg_0.b));
    return 1068f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = vec2<i32>(-arg_3.c.x, -global2.x);
    var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(min(~arg_0.c.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(-5405i, arg_0.c.x), arg_0.c.xx)), ~max(arg_2.c.xy, vec2<i32>(-4287i, arg_1.c.x))) | (_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.c.zz, arg_3.c.zx, vec2<i32>(arg_1.c.x, arg_1.c.x)), arg_1.c.xy) | arg_2.c.xy), ~(~arg_3.c.zy >> (vec2<u32>(11231u, u_input.b.x) % vec2<u32>(32u))) ^ arg_1.c.yx);
    global2 = arg_1.c.yx;
    var var_1 = global0[_wgslsmith_index_u32(~(~(~4294967295u)), 25u)];
    var var_2 = vec4<bool>(func_2(vec4<f32>(-726f, arg_1.a, _wgslsmith_f_op_f32(-arg_2.a), arg_1.d), vec3<bool>(any(!arg_1.b), false, all(vec3<bool>(arg_0.b.x, true, true))), select(func_3(arg_1, firstLeadingBit(vec2<u32>(u_input.b.x, 3098u)), Struct_1(-446f, vec4<bool>(false, true, true, false), arg_2.c, arg_2.d), ~u_input.b.x).xw, select(vec2<bool>(false, arg_1.b.x), vec2<bool>(false, false), arg_3.b.x), !arg_1.b.yx)), select(true, true, true), -57233i < arg_3.c.x, select(true, (u_input.a ^ u_input.a) != 30214u, !all(arg_2.b.yzz)));
    return StorageBuffer(countOneBits(vec4<i32>(~arg_3.c.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_3.c.x), vec2<i32>(20942i, 1i)), -_wgslsmith_dot_vec2_i32(arg_3.c.zy, arg_0.c.zz), arg_3.c.x)), ~vec3<u32>(u_input.a, max(u_input.b.x, 0u), firstLeadingBit(u_input.a ^ u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-513f)))))), arg_3.a, reverseBits(i32(-1i) * -arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-(~_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(-2147483647i, -1i)), vec2<i32>(1i, -31817i) << (u_input.b.zy % vec2<u32>(32u)))), vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 9738i, 8937i), vec3<i32>(-63088i, global2.x, -59593i)), i32(-1i) * -21865i), -41246i));
    let var_1 = _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.a, 136686u) >> (4516u % 32u)), countOneBits(~firstLeadingBit(0u))));
    let x = u_input.a;
    s_output = func_4(Struct_1(_wgslsmith_f_op_f32(step(982f, -2392f)), !vec4<bool>(var_0.x == 0i, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(reverseBits(114120u), 25u)], global0[_wgslsmith_index_u32(5753u, 25u)]), _wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(var_0.x, var_0.x), 1i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -52790i, 2147483647i), vec3<i32>(-1i, 39492i, var_0.x)) >> (~u_input.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_div_f32(684f, 253f), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], true, global0[_wgslsmith_index_u32(3632u, 25u)], global0[_wgslsmith_index_u32(16485u, 25u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(6494u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true), true), vec3<i32>(31940i, -20566i, 41312i), 1000f), u_input.b.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-534f, 387f, -746f, 1118f)) - vec4<f32>(470f, 156f, 2094f, 1042f)), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(global2.x, global2.x, 31628i)), ~vec3<i32>(-1i, -27390i, 50508i))))), global1[_wgslsmith_index_u32(91183u ^ (_wgslsmith_mult_u32(var_1, u_input.a >> (u_input.b.x % 32u)) | ~(var_1 << (1u % 32u))), 26u)], global1[_wgslsmith_index_u32(~(~(~var_1)), 26u)], global1[_wgslsmith_index_u32(var_1, 26u)]);
}

