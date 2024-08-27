struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, false, true));

var<private> global1: Struct_2 = Struct_2(i32(-2147483648), vec2<u32>(47651u, 78071u), true, Struct_1(-1026f, 0u, 22755i, vec4<u32>(1u, 0u, 0u, 41961u), vec2<f32>(1255f, -1731f)), Struct_1(433f, 18371u, 10692i, vec4<u32>(59366u, 2050u, 3484u, 4294967295u), vec2<f32>(-1123f, 1497f)));

var<private> global2: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec3<f32>(-748f, -664f, -138f), vec3<bool>(true, true, false), vec3<f32>(-794f, -237f, -881f), 187f, vec2<f32>(1000f, -1717f)), Struct_4(vec3<f32>(1264f, -626f, -862f), vec3<bool>(true, true, true), vec3<f32>(-749f, 661f, 282f), 1205f, vec2<f32>(-1961f, -345f)), Struct_4(vec3<f32>(540f, 1000f, 536f), vec3<bool>(true, false, true), vec3<f32>(-1000f, -651f, -1000f), -733f, vec2<f32>(558f, -1563f)), Struct_4(vec3<f32>(-298f, -171f, 575f), vec3<bool>(true, false, false), vec3<f32>(-1291f, 282f, 962f), -1070f, vec2<f32>(424f, -1302f)), Struct_4(vec3<f32>(389f, -169f, -605f), vec3<bool>(true, true, false), vec3<f32>(2193f, -814f, 343f), -1526f, vec2<f32>(256f, 1212f)), Struct_4(vec3<f32>(-2004f, 1528f, 2662f), vec3<bool>(false, true, true), vec3<f32>(219f, -531f, 510f), 1051f, vec2<f32>(1000f, 164f)), Struct_4(vec3<f32>(733f, 208f, -1056f), vec3<bool>(false, false, false), vec3<f32>(363f, -523f, -576f), -205f, vec2<f32>(-1228f, 1404f)), Struct_4(vec3<f32>(-462f, 730f, -1689f), vec3<bool>(true, false, false), vec3<f32>(-475f, -2243f, -488f), 1186f, vec2<f32>(1407f, 1000f)), Struct_4(vec3<f32>(-843f, -940f, 1034f), vec3<bool>(true, true, false), vec3<f32>(644f, -307f, 371f), -460f, vec2<f32>(1320f, -1243f)), Struct_4(vec3<f32>(-636f, 548f, 1244f), vec3<bool>(false, false, true), vec3<f32>(730f, -1340f, 444f), -1000f, vec2<f32>(-634f, -848f)), Struct_4(vec3<f32>(-395f, -1108f, 631f), vec3<bool>(false, false, false), vec3<f32>(-997f, -662f, -1619f), -185f, vec2<f32>(-783f, 2440f)), Struct_4(vec3<f32>(386f, -351f, -1000f), vec3<bool>(false, false, true), vec3<f32>(2259f, -420f, 531f), 837f, vec2<f32>(-1199f, 699f)), Struct_4(vec3<f32>(-891f, -239f, -1805f), vec3<bool>(false, true, true), vec3<f32>(394f, 1674f, -968f), 105f, vec2<f32>(622f, 1124f)), Struct_4(vec3<f32>(557f, -535f, 438f), vec3<bool>(false, false, true), vec3<f32>(467f, -263f, 1818f), -630f, vec2<f32>(-649f, 1730f)), Struct_4(vec3<f32>(-1000f, -2093f, 467f), vec3<bool>(true, true, false), vec3<f32>(3140f, 1049f, 1336f), -1000f, vec2<f32>(728f, 513f)), Struct_4(vec3<f32>(-1000f, 123f, -1000f), vec3<bool>(true, true, true), vec3<f32>(-1294f, -837f, -138f), 1000f, vec2<f32>(879f, -539f)), Struct_4(vec3<f32>(-261f, 751f, -1952f), vec3<bool>(false, true, true), vec3<f32>(-1265f, 112f, 254f), 346f, vec2<f32>(-298f, 1047f)), Struct_4(vec3<f32>(-675f, 937f, -1667f), vec3<bool>(true, false, false), vec3<f32>(818f, -241f, 939f), -1000f, vec2<f32>(330f, 255f)), Struct_4(vec3<f32>(328f, -582f, 892f), vec3<bool>(false, false, true), vec3<f32>(455f, -1403f, -1090f), -809f, vec2<f32>(-1243f, -660f)), Struct_4(vec3<f32>(-1236f, 1000f, -1409f), vec3<bool>(false, false, false), vec3<f32>(160f, -140f, 1886f), -1045f, vec2<f32>(394f, -866f)), Struct_4(vec3<f32>(485f, 1020f, 789f), vec3<bool>(false, true, false), vec3<f32>(-799f, -340f, -502f), 1000f, vec2<f32>(367f, -231f)), Struct_4(vec3<f32>(1000f, 478f, -1131f), vec3<bool>(false, false, false), vec3<f32>(-1427f, -1245f, -242f), 364f, vec2<f32>(580f, 650f)), Struct_4(vec3<f32>(1330f, -1235f, -1614f), vec3<bool>(true, false, false), vec3<f32>(-156f, -186f, -905f), -286f, vec2<f32>(310f, 646f)), Struct_4(vec3<f32>(-1277f, -1049f, 1002f), vec3<bool>(false, false, true), vec3<f32>(303f, -1000f, -1383f), 1265f, vec2<f32>(-395f, -872f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> bool {
    let var_0 = !global0[_wgslsmith_index_u32(~global1.b.x, 1u)];
    global1 = Struct_2(_wgslsmith_add_i32(i32(-1i) * -2147483647i, -global1.e.c) & ~global1.a, ~global1.e.d.zw, all(select(global0[_wgslsmith_index_u32(~u_input.a, 1u)], vec3<bool>(var_0.x & var_0.x, global1.c, var_0.x), firstTrailingBit(97378i) == (global1.e.c ^ 1i))), global1.d, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -544f), 26484u, -firstLeadingBit(global1.d.c), countOneBits(vec4<u32>(select(arg_1, arg_1, false), ~u_input.a, 1u, firstTrailingBit(4294967295u))), vec2<f32>(global1.d.a, global1.e.a)));
    let var_1 = global2[_wgslsmith_index_u32((~global1.e.d.x & 50908u) & arg_1, 24u)];
    var var_2 = var_1.e;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x * 1028f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1085f, global1.e.e.x) * vec2<f32>(global1.e.a, _wgslsmith_f_op_f32(995f + 603f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(154f, var_2.x)), -1417f)), _wgslsmith_f_op_f32(-var_1.a.x)), var_0.xx));
    return select(global1.a, _wgslsmith_sub_i32(min(reverseBits(-8966i), _wgslsmith_dot_vec3_i32(vec3<i32>(16608i, global1.a, -46257i), vec3<i32>(1i, global1.a, global1.a))), _wgslsmith_add_i32(-72145i, global1.a) ^ firstLeadingBit(2147483647i)), var_0.x) >= -reverseBits(~_wgslsmith_div_i32(global1.e.c, global1.e.c));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(29081i, select(~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global1.e.b), vec2<u32>(1u, global1.b.x), arg_1.d.yw), arg_1.d.xz), _wgslsmith_mult_vec2_u32(arg_1.d.xw, global1.d.d.yy), !(!func_3(global1.e.d.zwy, global1.b.x))), true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2571f + -787f))), 23489u, firstTrailingBit(~arg_1.c | _wgslsmith_mod_i32(arg_0, 29529i)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.e.b, u_input.a, 4294967295u) | vec4<u32>(global1.e.d.x, global1.d.d.x, global1.e.b, arg_1.d.x), select(arg_1.d, global1.d.d, vec4<bool>(global1.c, global1.c, global1.c, false)), ~arg_1.d), select(arg_1.d, ~global1.d.d, select(vec4<bool>(global1.c, true, global1.c, false), vec4<bool>(global1.c, global1.c, false, global1.c), false)), _wgslsmith_sub_vec4_u32(arg_1.d, global1.e.d)), vec2<f32>(-777f, arg_1.a)), global1.d);
    global1 = var_0;
    let var_1 = vec4<bool>(~(~firstTrailingBit(arg_1.b)) <= (global1.d.b >> (u_input.a % 32u)), any(vec2<bool>(true, var_0.c)), !(!(all(vec2<bool>(global1.c, var_0.c)) && true)), _wgslsmith_div_u32(~(u_input.a ^ global1.d.d.x), 81889u) <= u_input.a);
    let var_2 = select(select(vec3<bool>(true, !global1.c, all(vec2<bool>(var_1.x, true))), !(!select(var_1.wzx, var_1.wxz, global1.c)), all(vec2<bool>(!var_1.x, true))), !global0[_wgslsmith_index_u32(1u, 1u)], false);
    var var_3 = vec3<i32>(select(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c, arg_0, -26337i, arg_0), vec4<i32>(51908i, 25139i, global1.e.c, arg_1.c), vec4<i32>(51889i, 0i, arg_1.c, 2147483647i)), ~vec4<i32>(0i, arg_0, 2147483647i, -2147483647i)), vec4<i32>(~arg_1.c, global1.e.c, ~(-16676i), reverseBits(arg_1.c))), abs(var_0.e.c), false), 1i, 18892i);
    return Struct_3(global1.a, var_2.x, vec3<bool>(all(!global0[_wgslsmith_index_u32(min(var_0.b.x, 33749u), 1u)]), select(var_1.x, true, false == var_0.c), !(arg_1.c > 33432i)), global1.e.c & ((global1.d.c & ~global1.a) | ~arg_1.c), _wgslsmith_dot_vec3_u32(~arg_1.d.yxx, ~arg_1.d.wyy));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    var var_0 = abs(arg_0.e) <= u_input.a;
    let var_1 = func_2(arg_0.d, global1.e);
    global0 = array<vec3<bool>, 1>();
    global1 = Struct_2(1i, vec2<u32>(~1u, u_input.a) & ~(~reverseBits(vec2<u32>(0u, global1.e.d.x))), false != (global1.c | func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.e.c, -41487i), vec2<i32>(var_1.d, arg_0.a)), global1.d).b), global1.e, global1.d);
    global0 = array<vec3<bool>, 1>();
    return global2[_wgslsmith_index_u32(54872u, 24u)];
}

fn func_1() -> Struct_5 {
    var var_0 = func_4(func_2(firstTrailingBit(abs(-global1.d.c)), Struct_1(global1.d.e.x, _wgslsmith_mod_u32(~global1.d.d.x, ~global1.d.d.x), 4577i, ~(vec4<u32>(global1.e.d.x, global1.e.b, u_input.a, global1.b.x) & vec4<u32>(u_input.a, 67793u, u_input.a, 4294967295u)), global1.e.e)), global1.a);
    global2 = array<Struct_4, 24>();
    global0 = array<vec3<bool>, 1>();
    global1 = Struct_2(-2147483647i, ~(~global1.d.d.yw), true, Struct_1(1000f, 2835u, countOneBits(global1.d.c >> (global1.d.b % 32u)) & ~1i, ~vec4<u32>(u_input.a, 1u, global1.d.b, u_input.a) ^ ((vec4<u32>(0u, 4294967295u, 26131u, 1u) & vec4<u32>(10316u, 1u, 0u, global1.b.x)) | ~vec4<u32>(global1.d.d.x, global1.e.d.x, 10541u, global1.b.x)), vec2<f32>(var_0.d, _wgslsmith_f_op_f32(-global1.d.e.x))), global1.e);
    let var_1 = !func_4(func_2(-firstTrailingBit(global1.d.c), global1.d), abs(~global1.d.c)).b.xy;
    return Struct_5(firstTrailingBit(min(u_input.a, firstLeadingBit(42739u))), Struct_3(~abs(-global1.e.c), false & global1.c, func_2(-(~2147483647i), global1.e).c, global1.d.c, u_input.a), vec2<u32>(u_input.a, ~((u_input.a >> (0u % 32u)) << (u_input.a % 32u))), 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 24>();
    global2 = array<Struct_4, 24>();
    var var_0 = func_1();
    let var_1 = true;
    global1 = Struct_2((1i & var_0.b.d) >> (_wgslsmith_dot_vec3_u32(global1.d.d.xyz, global1.e.d.wwz) % 32u), vec2<u32>(func_2(min(reverseBits(0i), i32(-1i) * -2147483647i), global1.d).e, _wgslsmith_dot_vec2_u32(global1.b, ~(~vec2<u32>(4294967295u, var_0.c.x)))), var_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), global1.b.x, 1i, ~vec4<u32>(~u_input.a, _wgslsmith_sub_u32(global1.b.x, global1.e.d.x), u_input.a, 20592u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1693f, global1.e.e.x), vec2<f32>(287f, var_0.d), var_0.b.c.xy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1274f, var_0.d) * vec2<f32>(-110f, 593f))))), Struct_1(-1161f, reverseBits(36663u), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(global1.e.c, global1.d.c)), ~vec2<i32>(global1.d.c, -647i)), _wgslsmith_add_vec4_u32(global1.e.d, _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, global1.e.d.x, global1.d.b, var_0.b.e), global1.d.d, true), global1.e.d)), global1.e.e));
    global1 = Struct_2(min(-var_0.b.d, var_0.b.a) & -(~(global1.a ^ global1.d.c)), _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(84351u, 4294967295u))), var_0.c), var_0.b.c.x, Struct_1(-788f, u_input.a, global1.d.c, ~vec4<u32>(~80637u, var_0.b.e, abs(4294967295u), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1.e.e)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - -1992f)), ~max(~var_0.c.x, 17091u), firstLeadingBit(firstLeadingBit(-global1.a)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.e.d.x, u_input.a, u_input.a, 29303u), ~vec4<u32>(u_input.a, var_0.c.x, global1.b.x, u_input.a)), global1.e.e));
    let var_2 = 1113f;
    var var_3 = var_0.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global1.d.c, global1.d.c));
}

