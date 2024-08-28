struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(24987i, 15429i, -1i, -44179i), vec3<u32>(4294967295u, 4294967295u, 48677u), vec4<bool>(true, true, true, false));

var<private> global1: array<f32, 24>;

var<private> global2: Struct_5 = Struct_5(vec2<u32>(12926u, 4294967295u), Struct_3(-238f, Struct_2(1u, Struct_1(vec4<i32>(1i, -18858i, 6288i, 2147483647i), vec3<u32>(83031u, 1289u, 41645u), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(0i, 26970i, 27284i, 8693i), vec3<u32>(63570u, 82861u, 5685u), vec4<bool>(false, false, true, false)), -442f)), Struct_3(302f, Struct_2(0u, Struct_1(vec4<i32>(-41009i, i32(-2147483648), 7629i, -4383i), vec3<u32>(18993u, 69102u, 997u), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(-1i, 2147483647i, -5091i, 0i), vec3<u32>(0u, 4294967295u, 39356u), vec4<bool>(true, true, true, true)), -612f)));

var<private> global3: i32;

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_5) -> vec2<bool> {
    return vec2<bool>(!(!(!arg_2.c.b.c.c.x)), ~(-37010i) > (((arg_1.b.a.x >> (global2.c.b.b.b.x % 32u)) & -13863i) >> (~global2.a.x % 32u)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> vec2<u32> {
    global1 = array<f32, 24>();
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + 806f), -486f)), Struct_2(global2.a.x, global2.b.b.b, Struct_1(-global2.c.b.b.a, ~vec3<u32>(global0.b.x, global2.b.b.b.b.x, 0u), global2.b.b.b.c), _wgslsmith_f_op_f32(select(-638f, global1[_wgslsmith_index_u32(abs(110151u), 24u)], arg_0 <= global0.a.x)))));
    global1 = array<f32, 24>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-606f, -506f, global2.c.a));
    let var_2 = ~vec4<u32>(global0.b.x, 0u, ~(global0.b.x & (var_0.a.b.a ^ global4.x)), 4294967295u);
    return ~(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 1u), 28790u, global2.b.b.c.b.x), 4294967295u) & _wgslsmith_add_vec2_u32(~(global0.b.yx ^ vec2<u32>(0u, global0.b.x)), global2.b.b.b.b.xy | vec2<u32>(4294967295u, var_0.a.b.b.b.x)));
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    let var_0 = select(global0.b.yz, vec2<u32>(_wgslsmith_div_u32(global2.c.b.a, global0.b.x), _wgslsmith_add_u32(81336u, global0.b.x)), func_2(-(~(-49848i)), global2.b.b, Struct_5(vec2<u32>(global4.x, _wgslsmith_clamp_u32(2676u, global2.a.x, 22726u)), global2.c, global2.c)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.a - _wgslsmith_f_op_f32(f32(-1f) * -557f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 24u)]), _wgslsmith_f_op_f32(global2.c.a + _wgslsmith_f_op_f32(-global2.b.b.d)), -690f);
    var var_2 = global2.c.b.b.c.zy;
    let var_3 = Struct_5(func_3(global2.b.b.b.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.zyy - var_1.zyx), _wgslsmith_f_op_vec3_f32(-var_1.zxx), !var_2.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.yww), var_1.xyx, vec3<bool>(var_2.x, var_2.x, var_2.x))))), Struct_3(-1216f, Struct_2(_wgslsmith_add_u32(_wgslsmith_div_u32(global4.x, 4294967295u), 17038u), Struct_1(vec4<i32>(global2.b.b.b.a.x, 1i, global2.c.b.b.a.x, 1i), ~global0.b, !vec4<bool>(false, false, global2.c.b.b.c.x, global2.b.b.c.c.x)), global2.c.b.c, var_1.x)), global2.b);
    global1 = array<f32, 24>();
    return reverseBits(_wgslsmith_add_vec2_u32(~var_3.b.b.c.b.zz, firstTrailingBit(global2.a)) | ((var_0 >> (~vec2<u32>(global4.x, global2.c.b.c.b.x) % vec2<u32>(32u))) ^ ~var_0));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = vec4<u32>(~16838u, 4294967295u, 51261u, 29850u);
    var var_1 = global2.b.b.b;
    var_0 = ~(~firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, global2.b.b.b.b.x, 10293u, var_1.b.x), vec4<u32>(4294967295u, var_0.x, global0.b.x, 85166u))));
    var_0 = abs(~(~(~(~vec4<u32>(1u, var_1.b.x, global0.b.x, global0.b.x)))));
    var var_2 = select(~(vec4<i32>(15895i, global0.a.x, global0.a.x, var_1.a.x) ^ global0.a), reverseBits(u_input.a), select(!global0.c, select(var_1.c, var_1.c, !vec4<bool>(false, true, false, arg_0.x)), select(var_1.c, var_1.c, func_2(global2.c.b.c.a.x, Struct_2(32326u, Struct_1(vec4<i32>(6887i, 27269i, u_input.a.x, -8610i), vec3<u32>(8539u, 4294967295u, 4294967295u), vec4<bool>(false, global0.c.x, false, global2.b.b.c.c.x)), Struct_1(vec4<i32>(var_1.a.x, 0i, 1i, 27427i), vec3<u32>(15580u, 75840u, 0u), vec4<bool>(false, arg_0.x, var_1.c.x, true)), global2.c.a), Struct_5(arg_1, global2.c, global2.c)).x))) << (vec4<u32>(~firstTrailingBit(0u) >> (global2.a.x % 32u), 0u, ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.x, global0.b.x, 0u, var_0.x), vec4<u32>(90714u, global4.x, var_1.b.x, global0.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global4.x, var_0.x, var_1.b.x, var_0.x), vec4<u32>(global2.b.b.c.b.x, global0.b.x, 24965u, var_1.b.x))), var_1.b.x) % vec4<u32>(32u));
    return vec4<u32>(var_0.x, ~(~max(var_0.x, 8629u)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.x, var_1.b.x) << (vec4<u32>(102687u, global4.x, 1u, arg_1.x) % vec4<u32>(32u)), max(vec4<u32>(arg_1.x, global4.x, 0u, global4.x), vec4<u32>(37976u, 4294967295u, 15655u, 969u)), ~vec4<u32>(global2.a.x, 58870u, var_1.b.x, global4.x)), ~(vec4<u32>(arg_1.x, 4294967295u, 1u, var_0.x) ^ vec4<u32>(global2.a.x, 7472u, arg_1.x, 4294967295u))), 50836u, func_1(var_2.zy).x);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_5 {
    global4 = ~max(vec4<u32>(_wgslsmith_add_u32(37338u, 1u), ~37617u, abs(global2.c.b.c.b.x), arg_0.x), arg_0);
    global4 = vec4<u32>(~1179u, 1u, ~93164u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mod_u32(~global4.x, 1u ^ global4.x), 4294967295u), ~reverseBits(~vec3<u32>(0u, global0.b.x, arg_0.x))));
    global3 = -min(~(-(i32(-1i) * -2147483647i)), 2739i);
    let var_0 = global0.a.yy;
    let var_1 = _wgslsmith_mult_u32(34834u, _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(51227u), ~global2.a.x, global4.x & global0.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, global4.x, 4294967295u), arg_0), func_4(global0.c.yx, arg_0.xz).x), ~(~global4.zyy))));
    return Struct_5(~(~countOneBits(~global2.c.b.c.b.yz)), Struct_3(-176f, Struct_2(func_1(global2.c.b.b.a.xy).x, arg_2, Struct_1(vec4<i32>(u_input.a.x, u_input.b, global0.a.x, var_0.x) >> (vec4<u32>(40575u, arg_2.b.x, 4294967295u, 0u) % vec4<u32>(32u)), vec3<u32>(global0.b.x, global4.x, global2.b.b.b.b.x), select(arg_2.c, arg_1, arg_2.c)), _wgslsmith_f_op_f32(f32(-1f) * -353f))), global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-3108f, _wgslsmith_f_op_f32(939f + global1[_wgslsmith_index_u32(global0.b.x, 24u)]), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(20979u, 24u)]))))) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.c.b.d, _wgslsmith_f_op_f32(global2.c.a - global2.c.b.d), -1494f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(542f, global2.b.b.d, -192f), vec3<f32>(global1[_wgslsmith_index_u32(9487u, 24u)], global2.b.b.d, global2.c.b.d), false))))));
    global2 = func_5(func_4(global2.c.b.b.c.yy, ~max(func_1(vec2<i32>(global0.a.x, 0i)), firstLeadingBit(global4.yz))), select(global2.c.b.c.c, !select(vec4<bool>(true, true, global2.c.b.c.c.x, true), select(global0.c, vec4<bool>(true, global0.c.x, global2.c.b.c.c.x, global0.c.x), true), !global2.c.b.c.c.x), true), global2.c.b.c, true);
    var var_1 = !func_5(~(~abs(vec4<u32>(0u, global4.x, 3192u, global2.b.b.a))), select(vec4<bool>(all(global0.c.wx), !global0.c.x, all(vec4<bool>(false, false, global0.c.x, global0.c.x)), global0.c.x), vec4<bool>(global0.c.x, all(global2.c.b.b.c.xz), true, global2.b.b.b.c.x), !select(vec4<bool>(false, global0.c.x, global0.c.x, false), global0.c, global2.b.b.c.c)), global2.b.b.c, any(!(!global0.c.xwx))).b.b.c.c.zxw;
    var var_2 = var_0;
    let var_3 = !global2.c.b.b.c.x | true;
    let var_4 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 25871i, 2147483647i, global0.a.x), global2.c.b.c.a) & select(u_input.a, u_input.a, global0.c), u_input.a), u_input.a), abs(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(global2.c.b.b.b, global0.b), global2.c.b.b.b << (global2.c.b.b.b % vec3<u32>(32u)), global0.b)), vec4<bool>(!any(global2.b.b.b.c), !all(func_5(vec4<u32>(54223u, 0u, global2.b.b.a, global4.x), global0.c, Struct_1(vec4<i32>(42964i, 30716i, 0i, -2147483647i), vec3<u32>(0u, global0.b.x, 24046u), global2.b.b.b.c), false).c.b.b.c), select(true, false, !global2.c.b.c.c.x), all(vec4<bool>(select(true, true, var_3), global2.b.b.c.c.x, !var_3, var_3))));
    let var_5 = !(257f < _wgslsmith_f_op_f32(trunc(var_2.x)));
    global0 = func_5(vec4<u32>(0u ^ abs(~var_4.b.x), ~_wgslsmith_clamp_u32(0u, 4294967295u, global0.b.x) << (global0.b.x % 32u), max(9591u, ~(~global2.a.x)), 1u), vec4<bool>(true, var_3, !var_3, var_5), func_5(vec4<u32>(1u, ~global2.c.b.a, global2.a.x, ~global0.b.x | global2.c.b.c.b.x), !select(var_4.c, func_5(vec4<u32>(1u, global2.b.b.c.b.x, 20042u, 1u), var_4.c, Struct_1(vec4<i32>(u_input.a.x, 31455i, -15248i, global2.b.b.b.a.x), global2.b.b.b.b, global2.b.b.c.c), global0.c.x).c.b.c.c, false), Struct_1(-select(vec4<i32>(u_input.a.x, -79370i, global0.a.x, -54213i), vec4<i32>(global2.b.b.c.a.x, 43181i, 2147483647i, 2147483647i), vec4<bool>(global0.c.x, false, var_4.c.x, true)), _wgslsmith_add_vec3_u32(global0.b, vec3<u32>(56593u, global4.x, 20665u)), !var_4.c), !func_2(u_input.a.x, global2.b.b, Struct_5(global2.b.b.b.b.yx, global2.c, Struct_3(-455f, Struct_2(global0.b.x, Struct_1(vec4<i32>(var_4.a.x, -90577i, -26870i, -1i), vec3<u32>(37251u, 0u, 12681u), vec4<bool>(false, global0.c.x, true, global2.b.b.c.c.x)), var_4, 1307f)))).x & true).c.b.c, all(var_1.yx) && !(var_4.c.x && true)).c.b.b;
    let var_6 = _wgslsmith_div_vec2_f32(var_0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(40132u, 4294967295u, 4294967295u), global0.b), 24u)]) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, 547f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-252f, global2.b.b.d), var_0.zz)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32((select(vec2<i32>(var_4.a.x, 11905i), global2.c.b.c.a.yx, var_4.c.yx) & select(var_4.a.yx, global0.a.yw, var_1.x)) ^ abs(vec2<i32>(u_input.a.x, var_4.a.x) | vec2<i32>(33189i, global0.a.x)), var_4.a.zx), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(627u, 24u)], 500f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.a, var_0.x, global1[_wgslsmith_index_u32(global0.b.x, 24u)])), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(var_4.b.x, 24u)], -324f, -1144f)))))))), vec4<i32>(-1i, _wgslsmith_div_i32(u_input.a.x, var_4.a.x), 25060i, _wgslsmith_mod_i32(2147483647i, func_5(vec4<u32>(26070u, global4.x, 20524u, var_4.b.x), global0.c, Struct_1(global2.c.b.b.a, vec3<u32>(101871u, 53884u, 0u), global0.c), var_3).b.b.c.a.x << (var_4.b.x % 32u))), -293f, 51286u);
}

