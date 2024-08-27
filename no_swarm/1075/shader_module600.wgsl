struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<i32>(2147483647i, -36876i, 1i), false, vec4<f32>(206f, 1310f, 694f, -1070f)), Struct_1(vec3<i32>(-1i, -1i, 1i), true, vec4<f32>(-839f, 1607f, -1895f, 1237f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 920i), false, vec4<f32>(-1280f, -1255f, -941f, -234f)), Struct_1(vec3<i32>(37683i, -1i, 42470i), true, vec4<f32>(521f, 988f, 1812f, 1000f)), Struct_1(vec3<i32>(0i, 0i, 40311i), false, vec4<f32>(1718f, 1000f, 752f, 1454f)), Struct_1(vec3<i32>(-30026i, 2147483647i, -1790i), false, vec4<f32>(583f, -429f, -794f, 2199f)), Struct_1(vec3<i32>(26651i, i32(-2147483648), 1i), true, vec4<f32>(126f, 550f, -3674f, -487f)), Struct_1(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), false, vec4<f32>(-760f, 249f, 663f, -1474f)), Struct_1(vec3<i32>(-14555i, i32(-2147483648), 1i), true, vec4<f32>(-195f, -2077f, -259f, 135f)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -19909i), true, vec4<f32>(-132f, -589f, -1677f, 124f)), Struct_1(vec3<i32>(2147483647i, -37793i, 2147483647i), true, vec4<f32>(-1507f, -1000f, 879f, 557f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 47949i), false, vec4<f32>(-618f, 156f, -319f, -353f)), Struct_1(vec3<i32>(2147483647i, 1i, 0i), false, vec4<f32>(-233f, -422f, -845f, 1354f)), Struct_1(vec3<i32>(-1i, 1i, -1033i), true, vec4<f32>(380f, -560f, -178f, 166f)), Struct_1(vec3<i32>(-36104i, i32(-2147483648), 20208i), true, vec4<f32>(-369f, 210f, 417f, -2002f)), Struct_1(vec3<i32>(2147483647i, -54050i, 7435i), true, vec4<f32>(1000f, 1020f, -492f, -803f)), Struct_1(vec3<i32>(2147483647i, 37126i, -38716i), false, vec4<f32>(-163f, -149f, -1000f, 563f)), Struct_1(vec3<i32>(-1i, 2147483647i, 0i), false, vec4<f32>(-469f, 240f, -671f, -1494f)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 3105i), false, vec4<f32>(-971f, 1498f, 1194f, -1767f)), Struct_1(vec3<i32>(25213i, -46463i, 32818i), false, vec4<f32>(-615f, 1000f, -892f, -476f)), Struct_1(vec3<i32>(73086i, 34549i, 27056i), false, vec4<f32>(-2821f, 1484f, 509f, -220f)));

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-482f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-314f)))), -287f, _wgslsmith_f_op_f32(1219f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 554f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(650f, 1139f, 175f, global0.x) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, 1250f, global0.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1178f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1302f, global0.x, 1125f, -1999f), vec4<f32>(590f, 393f, 562f, global0.x))))));
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    global1 = array<Struct_1, 21>();
    var var_1 = vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(u_input.b, 2147483647i, var_0.a.x)) & ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 33693i, 2147483647i, var_0.a.x), vec4<i32>(-2147483647i, 42205i, 2147483647i, var_0.a.x))), ~24651i, -2147483647i, _wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a.x, global2.x), global2.yx & var_0.a.yx), -select(-15458i, ~u_input.b, var_0.c.x < 1130f)));
    let var_2 = Struct_1(-global2.wzy, any(vec2<bool>(all(vec3<bool>(var_0.b, var_0.b, true)), var_0.b)), vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(sign(global0.x)), 1000f, _wgslsmith_f_op_f32(-var_0.c.x)));
    return var_0.c.x;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: f32) -> vec4<bool> {
    var var_0 = min(reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 52170u), vec2<u32>(u_input.a, 12003u)), max(arg_0.c.wx, vec2<u32>(20361u, 0u)))), arg_0.c.ww);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.x, ~4294967295u), abs(43534u)) ^ ~_wgslsmith_mult_u32(var_0.x, u_input.a), 21u)], Struct_1(global2.xyw, !arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1028f, global0.x, 1135f, 720f))) * vec4<f32>(1f, -911f, 1664f, _wgslsmith_f_op_f32(-arg_2)))));
    let var_2 = all(select(!(!vec3<bool>(arg_1, var_1.a.b, false)), !(!(!vec3<bool>(true, var_1.a.b, var_1.a.b))), all(!(!vec2<bool>(arg_1, var_1.b.b)))));
    let var_3 = _wgslsmith_f_op_f32(floor(-503f));
    global2 = vec4<i32>(firstLeadingBit(10206i), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, -var_1.b.a.x), var_1.b.a.x) >> (arg_0.c.x % 32u), ~_wgslsmith_add_i32(~2147483647i, var_1.a.a.x), -4653i);
    return !(!select(vec4<bool>(var_1.a.b, arg_0.a | false, false, true), select(select(vec4<bool>(var_1.a.b, true, true, arg_0.a), vec4<bool>(true, arg_0.a, var_2, true), true), !vec4<bool>(true, arg_0.a, true, var_1.a.b), !vec4<bool>(true, true, arg_1, true)), all(vec2<bool>(true, true))));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    let var_0 = select(select(vec4<bool>(arg_0.c.b, select(false, true, true), select(u_input.a, 0u, arg_0.c.b) > 24632u, all(vec2<bool>(arg_0.a.a.b, arg_0.c.b))), func_4(Struct_5(select(arg_0.c.b, arg_0.b.b, false), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 10635i, 16549i, arg_1), vec4<i32>(1i, 23466i, global2.x, u_input.b)), firstTrailingBit(vec4<u32>(1u, 11548u, 33106u, u_input.a))), true | !arg_0.a.a.b, _wgslsmith_f_op_f32(func_3())), true), func_4(Struct_5(select(u_input.a < u_input.a, !arg_0.b.b, arg_0.b.b), global2.x, vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) ^ firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 58936u, u_input.a))), (_wgslsmith_dot_vec2_i32(vec2<i32>(33623i, arg_1), vec2<i32>(-2147483647i, -2147483647i)) | -arg_1) >= _wgslsmith_mod_i32(-119374i, max(arg_1, arg_0.c.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.c.x - 604f), _wgslsmith_f_op_f32(1000f - -1214f), true & arg_0.b.b))), select(vec4<bool>(!arg_0.c.b, !(false && arg_0.a.b.b), false, _wgslsmith_f_op_f32(-global0.x) >= -793f), vec4<bool>(arg_0.c.b, any(select(vec2<bool>(false, arg_0.a.b.b), vec2<bool>(false, arg_0.a.a.b), vec2<bool>(arg_0.c.b, false))), all(vec2<bool>(false, true)) == all(vec4<bool>(arg_0.a.b.b, arg_0.c.b, arg_0.a.b.b, true)), arg_0.a.a.b), !(!(!vec4<bool>(true, arg_0.a.b.b, arg_0.b.b, false)))));
    var var_1 = !(false & !var_0.x);
    var var_2 = 0u;
    var var_3 = _wgslsmith_div_i32(reverseBits(-1i), -(~_wgslsmith_sub_i32(1i, -44906i)));
    var_3 = global2.x ^ ~_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(0i, arg_0.a.a.a.x), -global2.x), arg_1);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) - 520f), global0.x, 2352f));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.a << ((23492u >> (0u % 32u)) % 32u)), max(_wgslsmith_add_u32(~u_input.a, u_input.a), ~u_input.a)), 21u)], Struct_1(_wgslsmith_sub_vec3_i32(global2.wxx, global2.xwz), all(func_4(Struct_5(false, global2.x, vec4<u32>(12173u, u_input.a, u_input.a, u_input.a)), true, -989f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(Struct_2(Struct_1(global2.xzy, false, vec4<f32>(-785f, global0.x, -863f, arg_1.x)), Struct_1(global2.yyy, false, vec4<f32>(global0.x, 1279f, global0.x, arg_0.x))), Struct_1(vec3<i32>(-2147483647i, -7519i, global2.x), false, vec4<f32>(arg_0.x, arg_1.x, 1000f, arg_0.x)), Struct_1(vec3<i32>(-2147483647i, -2147483647i, global2.x), true, vec4<f32>(-166f, arg_1.x, -306f, arg_1.x))), 0i)).x * _wgslsmith_f_op_f32(-arg_1.x)), -377f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1108f * global0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.x)))))));
    let var_1 = Struct_4(i32(-1i) * -2147483647i);
    let var_2 = !(!(!any(!vec2<bool>(var_0.b.b, var_0.a.b))));
    global2 = -(~(~(~vec4<i32>(global2.x, -1i, -13932i, u_input.b)) | -(~vec4<i32>(global2.x, 2147483647i, global2.x, 2147483647i))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.c) - _wgslsmith_f_op_vec4_f32(-var_0.b.c))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_0.a.c.x, 753f, 571f), var_0.b.c) - vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(arg_0.x + var_0.b.c.x), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(trunc(777f)))), var_0.b.c, select(func_4(Struct_5(var_2, -15481i, vec4<u32>(0u, 62764u, 25196u, 4294967295u)), true, _wgslsmith_f_op_f32(select(-588f, arg_1.x, var_2))), !(!vec4<bool>(true, var_0.b.b, false, false)), !any(vec4<bool>(true, true, var_0.a.b, true))))));
    return u_input.b;
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, global0.x))));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b | u_input.b, func_5(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(Struct_2(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(27131u, 21u)]), Struct_1(vec3<i32>(u_input.b, u_input.b, global2.x), true, vec4<f32>(global0.x, 1000f, var_0.x, 565f)), global1[_wgslsmith_index_u32(31188u, 21u)]), ~global2.x)), global0.yw), i32(-1i) * -_wgslsmith_sub_i32(u_input.b, -1i)), _wgslsmith_add_vec3_i32(global2.zwz >> (vec3<u32>(~4294967295u, u_input.a, 1u) % vec3<u32>(32u)), max(vec3<i32>(1i, -10284i, 23740i), vec3<i32>(u_input.b, 26992i, -1i)) >> ((~vec3<u32>(u_input.a, u_input.a, u_input.a) ^ ~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))));
    var var_2 = Struct_3(Struct_2(Struct_1(global2.wzy, global2.x != 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 200f, -1000f, var_0.x)))), Struct_1(_wgslsmith_mod_vec3_i32(global2.xzx, global2.zyw | global2.wxy), 107f == _wgslsmith_f_op_f32(ceil(var_0.x)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-2077f - -1892f), _wgslsmith_f_op_vec3_f32(func_2(Struct_3(Struct_2(global1[_wgslsmith_index_u32(28655u, 21u)], global1[_wgslsmith_index_u32(24149u, 21u)]), Struct_1(global2.xzy, true, vec4<f32>(var_0.x, global0.x, 1351f, 1436f)), Struct_1(vec3<i32>(global2.x, 12530i, 65855i), true, vec4<f32>(-1755f, var_0.x, -420f, var_0.x))), global2.x)).x, _wgslsmith_f_op_f32(step(global0.x, 559f))))), global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(abs(firstLeadingBit(0u)), 21u)]);
    var var_3 = u_input.a;
    var_3 = ~u_input.a;
    return Struct_5(true, abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(global2.x, -8211i) | global2.x, -1i)), firstLeadingBit(abs(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 39881u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 130321u, u_input.a) % vec4<u32>(32u))))));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_4(-2664i);
    let var_1 = !(!(0i >= -u_input.b));
    var var_2 = arg_1.xx;
    global2 = vec4<i32>(2147483647i, -arg_0.b ^ select(u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_0.a, global2.x, -13388i), vec4<i32>(10434i, 11638i, 1i, arg_0.b)), countOneBits(vec4<i32>(global2.x, global2.x, arg_0.b, 26676i))), false), 1i, 2147483647i);
    let var_3 = arg_0;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(4364u, 21u)];
    let var_1 = func_6(func_1(), global0.yww, vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), func_1().c), 96278u));
    let var_2 = ~vec4<u32>(34670u, ~var_1, ~_wgslsmith_div_u32(4294967295u >> (u_input.a % 32u), var_1), var_1 ^ 39304u);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.wxw * vec3<f32>(_wgslsmith_f_op_f32(-405f * _wgslsmith_div_f32(var_0.c.x, -1280f)), _wgslsmith_f_op_f32(-960f + _wgslsmith_f_op_f32(f32(-1f) * -526f)), var_0.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, global0.x, 847f)), vec3<f32>(1000f, 240f, -775f), false)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(global0.zxw, vec3<f32>(1738f, 1897f, 1073f), var_0.b)))))), vec3<bool>(false, var_0.b, true)));
    let var_4 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.wxw, var_4);
}

